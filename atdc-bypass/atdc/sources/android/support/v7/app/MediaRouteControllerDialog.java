package android.support.v7.app;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaControllerCompat.Callback;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.app.OverlayListView.OverlayObject;
import android.support.v7.app.OverlayListView.OverlayObject.OnAnimationEndListener;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.RouteGroup;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.support.v7.mediarouter.R;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class MediaRouteControllerDialog extends AlertDialog {
    static final int BUTTON_DISCONNECT_RES_ID = 16908314;
    private static final int BUTTON_NEUTRAL_RES_ID = 16908315;
    static final int BUTTON_STOP_RES_ID = 16908313;
    static final int CONNECTION_TIMEOUT_MILLIS = ((int) TimeUnit.SECONDS.toMillis(30));
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    static final String TAG = "MediaRouteCtrlDialog";
    static final int VOLUME_UPDATE_DELAY_MILLIS = 500;
    private Interpolator mAccelerateDecelerateInterpolator;
    final AccessibilityManager mAccessibilityManager;
    int mArtIconBackgroundColor;
    Bitmap mArtIconBitmap;
    boolean mArtIconIsLoaded;
    Bitmap mArtIconLoadedBitmap;
    Uri mArtIconUri;
    private ImageView mArtView;
    private boolean mAttachedToWindow;
    private final MediaRouterCallback mCallback;
    private ImageButton mCloseButton;
    Context mContext;
    MediaControllerCallback mControllerCallback;
    private boolean mCreated;
    private FrameLayout mCustomControlLayout;
    private View mCustomControlView;
    FrameLayout mDefaultControlLayout;
    MediaDescriptionCompat mDescription;
    private LinearLayout mDialogAreaLayout;
    private int mDialogContentWidth;
    private Button mDisconnectButton;
    private View mDividerView;
    private FrameLayout mExpandableAreaLayout;
    private Interpolator mFastOutSlowInInterpolator;
    FetchArtTask mFetchArtTask;
    private MediaRouteExpandCollapseButton mGroupExpandCollapseButton;
    int mGroupListAnimationDurationMs;
    Runnable mGroupListFadeInAnimation;
    private int mGroupListFadeInDurationMs;
    private int mGroupListFadeOutDurationMs;
    private List<RouteInfo> mGroupMemberRoutes;
    Set<RouteInfo> mGroupMemberRoutesAdded;
    Set<RouteInfo> mGroupMemberRoutesAnimatingWithBitmap;
    private Set<RouteInfo> mGroupMemberRoutesRemoved;
    boolean mHasPendingUpdate;
    private Interpolator mInterpolator;
    boolean mIsGroupExpanded;
    boolean mIsGroupListAnimating;
    boolean mIsGroupListAnimationPending;
    private Interpolator mLinearOutSlowInInterpolator;
    MediaControllerCompat mMediaController;
    private LinearLayout mMediaMainControlLayout;
    boolean mPendingUpdateAnimationNeeded;
    private ImageButton mPlayPauseButton;
    private RelativeLayout mPlaybackControlLayout;
    final RouteInfo mRoute;
    RouteInfo mRouteInVolumeSliderTouched;
    private TextView mRouteNameTextView;
    final MediaRouter mRouter;
    PlaybackStateCompat mState;
    private Button mStopCastingButton;
    private TextView mSubtitleView;
    private TextView mTitleView;
    VolumeChangeListener mVolumeChangeListener;
    private boolean mVolumeControlEnabled;
    private LinearLayout mVolumeControlLayout;
    VolumeGroupAdapter mVolumeGroupAdapter;
    OverlayListView mVolumeGroupList;
    private int mVolumeGroupListItemHeight;
    private int mVolumeGroupListItemIconSize;
    private int mVolumeGroupListMaxHeight;
    private final int mVolumeGroupListPaddingTop;
    SeekBar mVolumeSlider;
    Map<RouteInfo, SeekBar> mVolumeSliderMap;

    private final class ClickListener implements OnClickListener {
        ClickListener() {
        }

        public void onClick(View view) {
            int id = view.getId();
            int i = 1;
            if (id == MediaRouteControllerDialog.BUTTON_STOP_RES_ID || id == MediaRouteControllerDialog.BUTTON_DISCONNECT_RES_ID) {
                if (MediaRouteControllerDialog.this.mRoute.isSelected()) {
                    MediaRouter mediaRouter = MediaRouteControllerDialog.this.mRouter;
                    if (id == MediaRouteControllerDialog.BUTTON_STOP_RES_ID) {
                        i = 2;
                    }
                    mediaRouter.unselect(i);
                }
                MediaRouteControllerDialog.this.dismiss();
            } else if (id == R.id.mr_control_play_pause) {
                if (MediaRouteControllerDialog.this.mMediaController != null && MediaRouteControllerDialog.this.mState != null) {
                    if (MediaRouteControllerDialog.this.mState.getState() != 3) {
                        i = 0;
                    }
                    if (i != 0) {
                        MediaRouteControllerDialog.this.mMediaController.getTransportControls().pause();
                    } else {
                        MediaRouteControllerDialog.this.mMediaController.getTransportControls().play();
                    }
                    if (MediaRouteControllerDialog.this.mAccessibilityManager != null && MediaRouteControllerDialog.this.mAccessibilityManager.isEnabled()) {
                        AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
                        obtain.setPackageName(MediaRouteControllerDialog.this.mContext.getPackageName());
                        obtain.setClassName(getClass().getName());
                        obtain.getText().add(MediaRouteControllerDialog.this.mContext.getString(i != 0 ? R.string.mr_controller_pause : R.string.mr_controller_play));
                        MediaRouteControllerDialog.this.mAccessibilityManager.sendAccessibilityEvent(obtain);
                    }
                }
            } else if (id == R.id.mr_close) {
                MediaRouteControllerDialog.this.dismiss();
            }
        }
    }

    private class FetchArtTask extends AsyncTask<Void, Void, Bitmap> {
        private static final long SHOW_ANIM_TIME_THRESHOLD_MILLIS = 120;
        private int mBackgroundColor;
        private final Bitmap mIconBitmap;
        private final Uri mIconUri;
        private long mStartTimeMillis;

        FetchArtTask() {
            Uri uri = null;
            Bitmap iconBitmap = MediaRouteControllerDialog.this.mDescription == null ? null : MediaRouteControllerDialog.this.mDescription.getIconBitmap();
            if (MediaRouteControllerDialog.this.isBitmapRecycled(iconBitmap)) {
                Log.w(MediaRouteControllerDialog.TAG, "Can't fetch the given art bitmap because it's already recycled.");
                iconBitmap = null;
            }
            this.mIconBitmap = iconBitmap;
            if (MediaRouteControllerDialog.this.mDescription != null) {
                uri = MediaRouteControllerDialog.this.mDescription.getIconUri();
            }
            this.mIconUri = uri;
        }

        public Bitmap getIconBitmap() {
            return this.mIconBitmap;
        }

        public Uri getIconUri() {
            return this.mIconUri;
        }

        /* Access modifiers changed, original: protected */
        public void onPreExecute() {
            this.mStartTimeMillis = SystemClock.uptimeMillis();
            MediaRouteControllerDialog.this.clearLoadedBitmap();
        }

        /* Access modifiers changed, original: protected|varargs */
        /* JADX WARNING: Removed duplicated region for block: B:79:0x00ff A:{SKIP} */
        /* JADX WARNING: Removed duplicated region for block: B:77:0x00e8  */
        /* JADX WARNING: Removed duplicated region for block: B:37:0x007e  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x005a A:{SYNTHETIC, Splitter:B:26:0x005a} */
        /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x004f */
        /* JADX WARNING: Removed duplicated region for block: B:65:0x00d4 A:{SYNTHETIC, Splitter:B:65:0x00d4} */
        /* JADX WARNING: Removed duplicated region for block: B:77:0x00e8  */
        /* JADX WARNING: Removed duplicated region for block: B:79:0x00ff A:{SKIP} */
        /* JADX WARNING: Removed duplicated region for block: B:69:0x00db A:{SYNTHETIC, Splitter:B:69:0x00db} */
        /* JADX WARNING: Removed duplicated region for block: B:65:0x00d4 A:{SYNTHETIC, Splitter:B:65:0x00d4} */
        /* JADX WARNING: Removed duplicated region for block: B:79:0x00ff A:{SKIP} */
        /* JADX WARNING: Removed duplicated region for block: B:77:0x00e8  */
        /* JADX WARNING: Removed duplicated region for block: B:69:0x00db A:{SYNTHETIC, Splitter:B:69:0x00db} */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Can't wrap try/catch for region: R(5:21|22|23|24|(4:26|27|(2:29|30)|31)(4:37|38|39|(2:(2:42|43)|44)(4:46|47|(2:49|50)|51))) */
        /* JADX WARNING: Missing block: B:15:0x0035, code skipped:
            r3 = e;
     */
        /* JADX WARNING: Missing block: B:66:?, code skipped:
            r8.close();
     */
        public android.graphics.Bitmap doInBackground(java.lang.Void... r8) {
            /*
            r7 = this;
            r8 = r7.mIconBitmap;
            r0 = 0;
            r1 = 1;
            r2 = 0;
            if (r8 == 0) goto L_0x000b;
        L_0x0007:
            r8 = r7.mIconBitmap;
            goto L_0x00e0;
        L_0x000b:
            r8 = r7.mIconUri;
            if (r8 == 0) goto L_0x00df;
        L_0x000f:
            r8 = r7.mIconUri;	 Catch:{ IOException -> 0x00b8, all -> 0x00b5 }
            r8 = r7.openInputStreamByScheme(r8);	 Catch:{ IOException -> 0x00b8, all -> 0x00b5 }
            if (r8 != 0) goto L_0x0038;
        L_0x0017:
            r3 = "MediaRouteCtrlDialog";
            r4 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0035 }
            r4.<init>();	 Catch:{ IOException -> 0x0035 }
            r5 = "Unable to open: ";
            r4.append(r5);	 Catch:{ IOException -> 0x0035 }
            r5 = r7.mIconUri;	 Catch:{ IOException -> 0x0035 }
            r4.append(r5);	 Catch:{ IOException -> 0x0035 }
            r4 = r4.toString();	 Catch:{ IOException -> 0x0035 }
            android.util.Log.w(r3, r4);	 Catch:{ IOException -> 0x0035 }
            if (r8 == 0) goto L_0x0034;
        L_0x0031:
            r8.close();	 Catch:{ IOException -> 0x0034 }
        L_0x0034:
            return r2;
        L_0x0035:
            r3 = move-exception;
            goto L_0x00ba;
        L_0x0038:
            r3 = new android.graphics.BitmapFactory$Options;	 Catch:{ IOException -> 0x0035 }
            r3.<init>();	 Catch:{ IOException -> 0x0035 }
            r3.inJustDecodeBounds = r1;	 Catch:{ IOException -> 0x0035 }
            android.graphics.BitmapFactory.decodeStream(r8, r2, r3);	 Catch:{ IOException -> 0x0035 }
            r4 = r3.outWidth;	 Catch:{ IOException -> 0x0035 }
            if (r4 == 0) goto L_0x00af;
        L_0x0046:
            r4 = r3.outHeight;	 Catch:{ IOException -> 0x0035 }
            if (r4 != 0) goto L_0x004b;
        L_0x004a:
            goto L_0x00af;
        L_0x004b:
            r8.reset();	 Catch:{ IOException -> 0x004f }
            goto L_0x007f;
        L_0x004f:
            r8.close();	 Catch:{ IOException -> 0x0035 }
            r4 = r7.mIconUri;	 Catch:{ IOException -> 0x0035 }
            r4 = r7.openInputStreamByScheme(r4);	 Catch:{ IOException -> 0x0035 }
            if (r4 != 0) goto L_0x007e;
        L_0x005a:
            r8 = "MediaRouteCtrlDialog";
            r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x007b, all -> 0x0078 }
            r3.<init>();	 Catch:{ IOException -> 0x007b, all -> 0x0078 }
            r5 = "Unable to open: ";
            r3.append(r5);	 Catch:{ IOException -> 0x007b, all -> 0x0078 }
            r5 = r7.mIconUri;	 Catch:{ IOException -> 0x007b, all -> 0x0078 }
            r3.append(r5);	 Catch:{ IOException -> 0x007b, all -> 0x0078 }
            r3 = r3.toString();	 Catch:{ IOException -> 0x007b, all -> 0x0078 }
            android.util.Log.w(r8, r3);	 Catch:{ IOException -> 0x007b, all -> 0x0078 }
            if (r4 == 0) goto L_0x0077;
        L_0x0074:
            r4.close();	 Catch:{ IOException -> 0x0077 }
        L_0x0077:
            return r2;
        L_0x0078:
            r0 = move-exception;
            r8 = r4;
            goto L_0x00d9;
        L_0x007b:
            r3 = move-exception;
            r8 = r4;
            goto L_0x00ba;
        L_0x007e:
            r8 = r4;
        L_0x007f:
            r3.inJustDecodeBounds = r0;	 Catch:{ IOException -> 0x0035 }
            r4 = android.support.v7.app.MediaRouteControllerDialog.this;	 Catch:{ IOException -> 0x0035 }
            r5 = r3.outWidth;	 Catch:{ IOException -> 0x0035 }
            r6 = r3.outHeight;	 Catch:{ IOException -> 0x0035 }
            r4 = r4.getDesiredArtHeight(r5, r6);	 Catch:{ IOException -> 0x0035 }
            r5 = r3.outHeight;	 Catch:{ IOException -> 0x0035 }
            r5 = r5 / r4;
            r4 = java.lang.Integer.highestOneBit(r5);	 Catch:{ IOException -> 0x0035 }
            r4 = java.lang.Math.max(r1, r4);	 Catch:{ IOException -> 0x0035 }
            r3.inSampleSize = r4;	 Catch:{ IOException -> 0x0035 }
            r4 = r7.isCancelled();	 Catch:{ IOException -> 0x0035 }
            if (r4 == 0) goto L_0x00a4;
        L_0x009e:
            if (r8 == 0) goto L_0x00a3;
        L_0x00a0:
            r8.close();	 Catch:{ IOException -> 0x00a3 }
        L_0x00a3:
            return r2;
        L_0x00a4:
            r3 = android.graphics.BitmapFactory.decodeStream(r8, r2, r3);	 Catch:{ IOException -> 0x0035 }
            if (r8 == 0) goto L_0x00ad;
        L_0x00aa:
            r8.close();	 Catch:{ IOException -> 0x00ad }
        L_0x00ad:
            r8 = r3;
            goto L_0x00e0;
        L_0x00af:
            if (r8 == 0) goto L_0x00b4;
        L_0x00b1:
            r8.close();	 Catch:{ IOException -> 0x00b4 }
        L_0x00b4:
            return r2;
        L_0x00b5:
            r0 = move-exception;
            r8 = r2;
            goto L_0x00d9;
        L_0x00b8:
            r3 = move-exception;
            r8 = r2;
        L_0x00ba:
            r4 = "MediaRouteCtrlDialog";
            r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00d8 }
            r5.<init>();	 Catch:{ all -> 0x00d8 }
            r6 = "Unable to open: ";
            r5.append(r6);	 Catch:{ all -> 0x00d8 }
            r6 = r7.mIconUri;	 Catch:{ all -> 0x00d8 }
            r5.append(r6);	 Catch:{ all -> 0x00d8 }
            r5 = r5.toString();	 Catch:{ all -> 0x00d8 }
            android.util.Log.w(r4, r5, r3);	 Catch:{ all -> 0x00d8 }
            if (r8 == 0) goto L_0x00df;
        L_0x00d4:
            r8.close();	 Catch:{ IOException -> 0x00df }
            goto L_0x00df;
        L_0x00d8:
            r0 = move-exception;
        L_0x00d9:
            if (r8 == 0) goto L_0x00de;
        L_0x00db:
            r8.close();	 Catch:{ IOException -> 0x00de }
        L_0x00de:
            throw r0;
        L_0x00df:
            r8 = r2;
        L_0x00e0:
            r3 = android.support.v7.app.MediaRouteControllerDialog.this;
            r3 = r3.isBitmapRecycled(r8);
            if (r3 == 0) goto L_0x00ff;
        L_0x00e8:
            r0 = "MediaRouteCtrlDialog";
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r3 = "Can't use recycled bitmap: ";
            r1.append(r3);
            r1.append(r8);
            r8 = r1.toString();
            android.util.Log.w(r0, r8);
            return r2;
        L_0x00ff:
            if (r8 == 0) goto L_0x0133;
        L_0x0101:
            r2 = r8.getWidth();
            r3 = r8.getHeight();
            if (r2 >= r3) goto L_0x0133;
        L_0x010b:
            r2 = new android.support.v7.graphics.Palette$Builder;
            r2.<init>(r8);
            r1 = r2.maximumColorCount(r1);
            r1 = r1.generate();
            r2 = r1.getSwatches();
            r2 = r2.isEmpty();
            if (r2 == 0) goto L_0x0123;
        L_0x0122:
            goto L_0x0131;
        L_0x0123:
            r1 = r1.getSwatches();
            r0 = r1.get(r0);
            r0 = (android.support.v7.graphics.Palette.Swatch) r0;
            r0 = r0.getRgb();
        L_0x0131:
            r7.mBackgroundColor = r0;
        L_0x0133:
            return r8;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.MediaRouteControllerDialog$FetchArtTask.doInBackground(java.lang.Void[]):android.graphics.Bitmap");
        }

        /* Access modifiers changed, original: protected */
        public void onPostExecute(Bitmap bitmap) {
            MediaRouteControllerDialog.this.mFetchArtTask = null;
            if (MediaRouteControllerDialog.this.mArtIconBitmap != this.mIconBitmap || MediaRouteControllerDialog.this.mArtIconUri != this.mIconUri) {
                MediaRouteControllerDialog.this.mArtIconBitmap = this.mIconBitmap;
                MediaRouteControllerDialog.this.mArtIconLoadedBitmap = bitmap;
                MediaRouteControllerDialog.this.mArtIconUri = this.mIconUri;
                MediaRouteControllerDialog.this.mArtIconBackgroundColor = this.mBackgroundColor;
                boolean z = true;
                MediaRouteControllerDialog.this.mArtIconIsLoaded = true;
                long uptimeMillis = SystemClock.uptimeMillis() - this.mStartTimeMillis;
                MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                if (uptimeMillis <= SHOW_ANIM_TIME_THRESHOLD_MILLIS) {
                    z = false;
                }
                mediaRouteControllerDialog.update(z);
            }
        }

        private InputStream openInputStreamByScheme(Uri uri) throws IOException {
            InputStream openInputStream;
            String toLowerCase = uri.getScheme().toLowerCase();
            if ("android.resource".equals(toLowerCase) || "content".equals(toLowerCase) || "file".equals(toLowerCase)) {
                openInputStream = MediaRouteControllerDialog.this.mContext.getContentResolver().openInputStream(uri);
            } else {
                URLConnection openConnection = new URL(uri.toString()).openConnection();
                openConnection.setConnectTimeout(MediaRouteControllerDialog.CONNECTION_TIMEOUT_MILLIS);
                openConnection.setReadTimeout(MediaRouteControllerDialog.CONNECTION_TIMEOUT_MILLIS);
                openInputStream = openConnection.getInputStream();
            }
            if (openInputStream == null) {
                return null;
            }
            return new BufferedInputStream(openInputStream);
        }
    }

    private class VolumeChangeListener implements OnSeekBarChangeListener {
        private final Runnable mStopTrackingTouch = new Runnable() {
            public void run() {
                if (MediaRouteControllerDialog.this.mRouteInVolumeSliderTouched != null) {
                    MediaRouteControllerDialog.this.mRouteInVolumeSliderTouched = null;
                    if (MediaRouteControllerDialog.this.mHasPendingUpdate) {
                        MediaRouteControllerDialog.this.update(MediaRouteControllerDialog.this.mPendingUpdateAnimationNeeded);
                    }
                }
            }
        };

        VolumeChangeListener() {
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
            if (MediaRouteControllerDialog.this.mRouteInVolumeSliderTouched != null) {
                MediaRouteControllerDialog.this.mVolumeSlider.removeCallbacks(this.mStopTrackingTouch);
            }
            MediaRouteControllerDialog.this.mRouteInVolumeSliderTouched = (RouteInfo) seekBar.getTag();
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            MediaRouteControllerDialog.this.mVolumeSlider.postDelayed(this.mStopTrackingTouch, 500);
        }

        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                RouteInfo routeInfo = (RouteInfo) seekBar.getTag();
                if (MediaRouteControllerDialog.DEBUG) {
                    String str = MediaRouteControllerDialog.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("onProgressChanged(): calling MediaRouter.RouteInfo.requestSetVolume(");
                    stringBuilder.append(i);
                    stringBuilder.append(")");
                    Log.d(str, stringBuilder.toString());
                }
                routeInfo.requestSetVolume(i);
            }
        }
    }

    private class VolumeGroupAdapter extends ArrayAdapter<RouteInfo> {
        final float mDisabledAlpha;

        public VolumeGroupAdapter(Context context, List<RouteInfo> list) {
            super(context, 0, list);
            this.mDisabledAlpha = MediaRouterThemeHelper.getDisabledAlpha(context);
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            int i2 = 0;
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mr_controller_volume_item, viewGroup, false);
            } else {
                MediaRouteControllerDialog.this.updateVolumeGroupItemHeight(view);
            }
            RouteInfo routeInfo = (RouteInfo) getItem(i);
            if (routeInfo != null) {
                int i3;
                boolean isEnabled = routeInfo.isEnabled();
                TextView textView = (TextView) view.findViewById(R.id.mr_name);
                textView.setEnabled(isEnabled);
                textView.setText(routeInfo.getName());
                MediaRouteVolumeSlider mediaRouteVolumeSlider = (MediaRouteVolumeSlider) view.findViewById(R.id.mr_volume_slider);
                MediaRouterThemeHelper.setVolumeSliderColor(viewGroup.getContext(), mediaRouteVolumeSlider, MediaRouteControllerDialog.this.mVolumeGroupList);
                mediaRouteVolumeSlider.setTag(routeInfo);
                MediaRouteControllerDialog.this.mVolumeSliderMap.put(routeInfo, mediaRouteVolumeSlider);
                mediaRouteVolumeSlider.setHideThumb(isEnabled ^ 1);
                mediaRouteVolumeSlider.setEnabled(isEnabled);
                if (isEnabled) {
                    if (MediaRouteControllerDialog.this.isVolumeControlAvailable(routeInfo)) {
                        mediaRouteVolumeSlider.setMax(routeInfo.getVolumeMax());
                        mediaRouteVolumeSlider.setProgress(routeInfo.getVolume());
                        mediaRouteVolumeSlider.setOnSeekBarChangeListener(MediaRouteControllerDialog.this.mVolumeChangeListener);
                    } else {
                        mediaRouteVolumeSlider.setMax(100);
                        mediaRouteVolumeSlider.setProgress(100);
                        mediaRouteVolumeSlider.setEnabled(false);
                    }
                }
                ImageView imageView = (ImageView) view.findViewById(R.id.mr_volume_item_icon);
                if (isEnabled) {
                    i3 = 255;
                } else {
                    i3 = (int) (this.mDisabledAlpha * 255.0f);
                }
                imageView.setAlpha(i3);
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.volume_item_container);
                if (MediaRouteControllerDialog.this.mGroupMemberRoutesAnimatingWithBitmap.contains(routeInfo)) {
                    i2 = 4;
                }
                linearLayout.setVisibility(i2);
                if (MediaRouteControllerDialog.this.mGroupMemberRoutesAdded != null && MediaRouteControllerDialog.this.mGroupMemberRoutesAdded.contains(routeInfo)) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.0f);
                    alphaAnimation.setDuration(0);
                    alphaAnimation.setFillEnabled(true);
                    alphaAnimation.setFillAfter(true);
                    view.clearAnimation();
                    view.startAnimation(alphaAnimation);
                }
            }
            return view;
        }
    }

    private final class MediaControllerCallback extends Callback {
        MediaControllerCallback() {
        }

        public void onSessionDestroyed() {
            if (MediaRouteControllerDialog.this.mMediaController != null) {
                MediaRouteControllerDialog.this.mMediaController.unregisterCallback(MediaRouteControllerDialog.this.mControllerCallback);
                MediaRouteControllerDialog.this.mMediaController = null;
            }
        }

        public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
            MediaRouteControllerDialog.this.mState = playbackStateCompat;
            MediaRouteControllerDialog.this.update(false);
        }

        public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
            MediaRouteControllerDialog.this.mDescription = mediaMetadataCompat == null ? null : mediaMetadataCompat.getDescription();
            MediaRouteControllerDialog.this.updateArtIconIfNeeded();
            MediaRouteControllerDialog.this.update(false);
        }
    }

    private final class MediaRouterCallback extends MediaRouter.Callback {
        MediaRouterCallback() {
        }

        public void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteControllerDialog.this.update(false);
        }

        public void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteControllerDialog.this.update(true);
        }

        public void onRouteVolumeChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
            SeekBar seekBar = (SeekBar) MediaRouteControllerDialog.this.mVolumeSliderMap.get(routeInfo);
            int volume = routeInfo.getVolume();
            if (MediaRouteControllerDialog.DEBUG) {
                String str = MediaRouteControllerDialog.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onRouteVolumeChanged(), route.getVolume:");
                stringBuilder.append(volume);
                Log.d(str, stringBuilder.toString());
            }
            if (seekBar != null && MediaRouteControllerDialog.this.mRouteInVolumeSliderTouched != routeInfo) {
                seekBar.setProgress(volume);
            }
        }
    }

    public View onCreateMediaControlView(Bundle bundle) {
        return null;
    }

    public MediaRouteControllerDialog(Context context) {
        this(context, 0);
    }

    public MediaRouteControllerDialog(Context context, int i) {
        super(MediaRouterThemeHelper.createThemedContext(context, MediaRouterThemeHelper.getAlertDialogResolvedTheme(context, i)), i);
        this.mVolumeControlEnabled = true;
        this.mGroupListFadeInAnimation = new Runnable() {
            public void run() {
                MediaRouteControllerDialog.this.startGroupListFadeInAnimation();
            }
        };
        this.mContext = getContext();
        this.mControllerCallback = new MediaControllerCallback();
        this.mRouter = MediaRouter.getInstance(this.mContext);
        this.mCallback = new MediaRouterCallback();
        this.mRoute = this.mRouter.getSelectedRoute();
        setMediaSession(this.mRouter.getMediaSessionToken());
        this.mVolumeGroupListPaddingTop = this.mContext.getResources().getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_padding_top);
        this.mAccessibilityManager = (AccessibilityManager) this.mContext.getSystemService("accessibility");
        if (VERSION.SDK_INT >= 21) {
            this.mLinearOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.mr_linear_out_slow_in);
            this.mFastOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.mr_fast_out_slow_in);
        }
        this.mAccelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
    }

    public RouteInfo getRoute() {
        return this.mRoute;
    }

    private RouteGroup getGroup() {
        return this.mRoute instanceof RouteGroup ? (RouteGroup) this.mRoute : null;
    }

    public View getMediaControlView() {
        return this.mCustomControlView;
    }

    public void setVolumeControlEnabled(boolean z) {
        if (this.mVolumeControlEnabled != z) {
            this.mVolumeControlEnabled = z;
            if (this.mCreated) {
                update(false);
            }
        }
    }

    public boolean isVolumeControlEnabled() {
        return this.mVolumeControlEnabled;
    }

    private void setMediaSession(Token token) {
        PlaybackStateCompat playbackStateCompat = null;
        if (this.mMediaController != null) {
            this.mMediaController.unregisterCallback(this.mControllerCallback);
            this.mMediaController = null;
        }
        if (token != null && this.mAttachedToWindow) {
            MediaMetadataCompat mediaMetadataCompat;
            MediaDescriptionCompat mediaDescriptionCompat;
            try {
                this.mMediaController = new MediaControllerCompat(this.mContext, token);
            } catch (RemoteException e) {
                Log.e(TAG, "Error creating media controller in setMediaSession.", e);
            }
            if (this.mMediaController != null) {
                this.mMediaController.registerCallback(this.mControllerCallback);
            }
            if (this.mMediaController == null) {
                mediaMetadataCompat = null;
            } else {
                mediaMetadataCompat = this.mMediaController.getMetadata();
            }
            if (mediaMetadataCompat == null) {
                mediaDescriptionCompat = null;
            } else {
                mediaDescriptionCompat = mediaMetadataCompat.getDescription();
            }
            this.mDescription = mediaDescriptionCompat;
            if (this.mMediaController != null) {
                playbackStateCompat = this.mMediaController.getPlaybackState();
            }
            this.mState = playbackStateCompat;
            updateArtIconIfNeeded();
            update(false);
        }
    }

    public Token getMediaSession() {
        return this.mMediaController == null ? null : this.mMediaController.getSessionToken();
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawableResource(17170445);
        setContentView(R.layout.mr_controller_material_dialog_b);
        findViewById(BUTTON_NEUTRAL_RES_ID).setVisibility(8);
        ClickListener clickListener = new ClickListener();
        this.mExpandableAreaLayout = (FrameLayout) findViewById(R.id.mr_expandable_area);
        this.mExpandableAreaLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MediaRouteControllerDialog.this.dismiss();
            }
        });
        this.mDialogAreaLayout = (LinearLayout) findViewById(R.id.mr_dialog_area);
        this.mDialogAreaLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
            }
        });
        int buttonTextColor = MediaRouterThemeHelper.getButtonTextColor(this.mContext);
        this.mDisconnectButton = (Button) findViewById(BUTTON_DISCONNECT_RES_ID);
        this.mDisconnectButton.setText(R.string.mr_controller_disconnect);
        this.mDisconnectButton.setTextColor(buttonTextColor);
        this.mDisconnectButton.setOnClickListener(clickListener);
        this.mStopCastingButton = (Button) findViewById(BUTTON_STOP_RES_ID);
        this.mStopCastingButton.setText(R.string.mr_controller_stop);
        this.mStopCastingButton.setTextColor(buttonTextColor);
        this.mStopCastingButton.setOnClickListener(clickListener);
        this.mRouteNameTextView = (TextView) findViewById(R.id.mr_name);
        this.mCloseButton = (ImageButton) findViewById(R.id.mr_close);
        this.mCloseButton.setOnClickListener(clickListener);
        this.mCustomControlLayout = (FrameLayout) findViewById(R.id.mr_custom_control);
        this.mDefaultControlLayout = (FrameLayout) findViewById(R.id.mr_default_control);
        AnonymousClass4 anonymousClass4 = new OnClickListener() {
            public void onClick(View view) {
                if (MediaRouteControllerDialog.this.mMediaController != null) {
                    PendingIntent sessionActivity = MediaRouteControllerDialog.this.mMediaController.getSessionActivity();
                    if (sessionActivity != null) {
                        try {
                            sessionActivity.send();
                            MediaRouteControllerDialog.this.dismiss();
                        } catch (CanceledException unused) {
                            String str = MediaRouteControllerDialog.TAG;
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append(sessionActivity);
                            stringBuilder.append(" was not sent, it had been canceled.");
                            Log.e(str, stringBuilder.toString());
                        }
                    }
                }
            }
        };
        this.mArtView = (ImageView) findViewById(R.id.mr_art);
        this.mArtView.setOnClickListener(anonymousClass4);
        findViewById(R.id.mr_control_title_container).setOnClickListener(anonymousClass4);
        this.mMediaMainControlLayout = (LinearLayout) findViewById(R.id.mr_media_main_control);
        this.mDividerView = findViewById(R.id.mr_control_divider);
        this.mPlaybackControlLayout = (RelativeLayout) findViewById(R.id.mr_playback_control);
        this.mTitleView = (TextView) findViewById(R.id.mr_control_title);
        this.mSubtitleView = (TextView) findViewById(R.id.mr_control_subtitle);
        this.mPlayPauseButton = (ImageButton) findViewById(R.id.mr_control_play_pause);
        this.mPlayPauseButton.setOnClickListener(clickListener);
        this.mVolumeControlLayout = (LinearLayout) findViewById(R.id.mr_volume_control);
        this.mVolumeControlLayout.setVisibility(8);
        this.mVolumeSlider = (SeekBar) findViewById(R.id.mr_volume_slider);
        this.mVolumeSlider.setTag(this.mRoute);
        this.mVolumeChangeListener = new VolumeChangeListener();
        this.mVolumeSlider.setOnSeekBarChangeListener(this.mVolumeChangeListener);
        this.mVolumeGroupList = (OverlayListView) findViewById(R.id.mr_volume_group_list);
        this.mGroupMemberRoutes = new ArrayList();
        this.mVolumeGroupAdapter = new VolumeGroupAdapter(this.mVolumeGroupList.getContext(), this.mGroupMemberRoutes);
        this.mVolumeGroupList.setAdapter(this.mVolumeGroupAdapter);
        this.mGroupMemberRoutesAnimatingWithBitmap = new HashSet();
        MediaRouterThemeHelper.setMediaControlsBackgroundColor(this.mContext, this.mMediaMainControlLayout, this.mVolumeGroupList, getGroup() != null);
        MediaRouterThemeHelper.setVolumeSliderColor(this.mContext, (MediaRouteVolumeSlider) this.mVolumeSlider, this.mMediaMainControlLayout);
        this.mVolumeSliderMap = new HashMap();
        this.mVolumeSliderMap.put(this.mRoute, this.mVolumeSlider);
        this.mGroupExpandCollapseButton = (MediaRouteExpandCollapseButton) findViewById(R.id.mr_group_expand_collapse);
        this.mGroupExpandCollapseButton.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MediaRouteControllerDialog.this.mIsGroupExpanded ^= 1;
                if (MediaRouteControllerDialog.this.mIsGroupExpanded) {
                    MediaRouteControllerDialog.this.mVolumeGroupList.setVisibility(0);
                }
                MediaRouteControllerDialog.this.loadInterpolator();
                MediaRouteControllerDialog.this.updateLayoutHeight(true);
            }
        });
        loadInterpolator();
        this.mGroupListAnimationDurationMs = this.mContext.getResources().getInteger(R.integer.mr_controller_volume_group_list_animation_duration_ms);
        this.mGroupListFadeInDurationMs = this.mContext.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_in_duration_ms);
        this.mGroupListFadeOutDurationMs = this.mContext.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_out_duration_ms);
        this.mCustomControlView = onCreateMediaControlView(bundle);
        if (this.mCustomControlView != null) {
            this.mCustomControlLayout.addView(this.mCustomControlView);
            this.mCustomControlLayout.setVisibility(0);
        }
        this.mCreated = true;
        updateLayout();
    }

    /* Access modifiers changed, original: 0000 */
    public void updateLayout() {
        int dialogWidth = MediaRouteDialogHelper.getDialogWidth(this.mContext);
        getWindow().setLayout(dialogWidth, -2);
        View decorView = getWindow().getDecorView();
        this.mDialogContentWidth = (dialogWidth - decorView.getPaddingLeft()) - decorView.getPaddingRight();
        Resources resources = this.mContext.getResources();
        this.mVolumeGroupListItemIconSize = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_icon_size);
        this.mVolumeGroupListItemHeight = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_height);
        this.mVolumeGroupListMaxHeight = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_max_height);
        this.mArtIconBitmap = null;
        this.mArtIconUri = null;
        updateArtIconIfNeeded();
        update(false);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAttachedToWindow = true;
        this.mRouter.addCallback(MediaRouteSelector.EMPTY, this.mCallback, 2);
        setMediaSession(this.mRouter.getMediaSessionToken());
    }

    public void onDetachedFromWindow() {
        this.mRouter.removeCallback(this.mCallback);
        setMediaSession(null);
        this.mAttachedToWindow = false;
        super.onDetachedFromWindow();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 25 && i != 24) {
            return super.onKeyDown(i, keyEvent);
        }
        this.mRoute.requestUpdateVolume(i == 25 ? -1 : 1);
        return true;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return (i == 25 || i == 24) ? true : super.onKeyUp(i, keyEvent);
    }

    /* Access modifiers changed, original: 0000 */
    public void update(boolean z) {
        if (this.mRouteInVolumeSliderTouched != null) {
            this.mHasPendingUpdate = true;
            this.mPendingUpdateAnimationNeeded = z | this.mPendingUpdateAnimationNeeded;
            return;
        }
        int i = 0;
        this.mHasPendingUpdate = false;
        this.mPendingUpdateAnimationNeeded = false;
        if (!this.mRoute.isSelected() || this.mRoute.isDefaultOrBluetooth()) {
            dismiss();
        } else if (this.mCreated) {
            this.mRouteNameTextView.setText(this.mRoute.getName());
            Button button = this.mDisconnectButton;
            if (!this.mRoute.canDisconnect()) {
                i = 8;
            }
            button.setVisibility(i);
            if (this.mCustomControlView == null && this.mArtIconIsLoaded) {
                if (isBitmapRecycled(this.mArtIconLoadedBitmap)) {
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Can't set artwork image with recycled bitmap: ");
                    stringBuilder.append(this.mArtIconLoadedBitmap);
                    Log.w(str, stringBuilder.toString());
                } else {
                    this.mArtView.setImageBitmap(this.mArtIconLoadedBitmap);
                    this.mArtView.setBackgroundColor(this.mArtIconBackgroundColor);
                }
                clearLoadedBitmap();
            }
            updateVolumeControlLayout();
            updatePlaybackControlLayout();
            updateLayoutHeight(z);
        }
    }

    private boolean isBitmapRecycled(Bitmap bitmap) {
        return bitmap != null && bitmap.isRecycled();
    }

    private boolean canShowPlaybackControlLayout() {
        return this.mCustomControlView == null && !(this.mDescription == null && this.mState == null);
    }

    private int getMainControllerHeight(boolean z) {
        if (!z && this.mVolumeControlLayout.getVisibility() != 0) {
            return 0;
        }
        int paddingTop = (this.mMediaMainControlLayout.getPaddingTop() + this.mMediaMainControlLayout.getPaddingBottom()) + 0;
        if (z) {
            paddingTop += this.mPlaybackControlLayout.getMeasuredHeight();
        }
        if (this.mVolumeControlLayout.getVisibility() == 0) {
            paddingTop += this.mVolumeControlLayout.getMeasuredHeight();
        }
        int i = paddingTop;
        return (z && this.mVolumeControlLayout.getVisibility() == 0) ? i + this.mDividerView.getMeasuredHeight() : i;
    }

    private void updateMediaControlVisibility(boolean z) {
        View view = this.mDividerView;
        int i = 0;
        int i2 = (this.mVolumeControlLayout.getVisibility() == 0 && z) ? 0 : 8;
        view.setVisibility(i2);
        LinearLayout linearLayout = this.mMediaMainControlLayout;
        if (this.mVolumeControlLayout.getVisibility() == 8 && !z) {
            i = 8;
        }
        linearLayout.setVisibility(i);
    }

    /* Access modifiers changed, original: 0000 */
    public void updateLayoutHeight(final boolean z) {
        this.mDefaultControlLayout.requestLayout();
        this.mDefaultControlLayout.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                MediaRouteControllerDialog.this.mDefaultControlLayout.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                if (MediaRouteControllerDialog.this.mIsGroupListAnimating) {
                    MediaRouteControllerDialog.this.mIsGroupListAnimationPending = true;
                } else {
                    MediaRouteControllerDialog.this.updateLayoutHeightInternal(z);
                }
            }
        });
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00a8  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00f2  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0118  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0116  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0125  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0131  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0155  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0145  */
    public void updateLayoutHeightInternal(boolean r10) {
        /*
        r9 = this;
        r0 = r9.mMediaMainControlLayout;
        r0 = getLayoutHeight(r0);
        r1 = r9.mMediaMainControlLayout;
        r2 = -1;
        setLayoutHeight(r1, r2);
        r1 = r9.canShowPlaybackControlLayout();
        r9.updateMediaControlVisibility(r1);
        r1 = r9.getWindow();
        r1 = r1.getDecorView();
        r2 = r9.getWindow();
        r2 = r2.getAttributes();
        r2 = r2.width;
        r3 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r2 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r3);
        r3 = 0;
        r1.measure(r2, r3);
        r2 = r9.mMediaMainControlLayout;
        setLayoutHeight(r2, r0);
        r0 = r9.mCustomControlView;
        if (r0 != 0) goto L_0x0071;
    L_0x0038:
        r0 = r9.mArtView;
        r0 = r0.getDrawable();
        r0 = r0 instanceof android.graphics.drawable.BitmapDrawable;
        if (r0 == 0) goto L_0x0071;
    L_0x0042:
        r0 = r9.mArtView;
        r0 = r0.getDrawable();
        r0 = (android.graphics.drawable.BitmapDrawable) r0;
        r0 = r0.getBitmap();
        if (r0 == 0) goto L_0x0071;
    L_0x0050:
        r2 = r0.getWidth();
        r4 = r0.getHeight();
        r2 = r9.getDesiredArtHeight(r2, r4);
        r4 = r9.mArtView;
        r5 = r0.getWidth();
        r0 = r0.getHeight();
        if (r5 < r0) goto L_0x006b;
    L_0x0068:
        r0 = android.widget.ImageView.ScaleType.FIT_XY;
        goto L_0x006d;
    L_0x006b:
        r0 = android.widget.ImageView.ScaleType.FIT_CENTER;
    L_0x006d:
        r4.setScaleType(r0);
        goto L_0x0072;
    L_0x0071:
        r2 = 0;
    L_0x0072:
        r0 = r9.canShowPlaybackControlLayout();
        r0 = r9.getMainControllerHeight(r0);
        r4 = r9.mGroupMemberRoutes;
        r4 = r4.size();
        r5 = r9.getGroup();
        if (r5 != 0) goto L_0x0088;
    L_0x0086:
        r5 = 0;
        goto L_0x0098;
    L_0x0088:
        r5 = r9.mVolumeGroupListItemHeight;
        r6 = r9.getGroup();
        r6 = r6.getRoutes();
        r6 = r6.size();
        r5 = r5 * r6;
    L_0x0098:
        if (r4 <= 0) goto L_0x009d;
    L_0x009a:
        r4 = r9.mVolumeGroupListPaddingTop;
        r5 = r5 + r4;
    L_0x009d:
        r4 = r9.mVolumeGroupListMaxHeight;
        r4 = java.lang.Math.min(r5, r4);
        r5 = r9.mIsGroupExpanded;
        if (r5 == 0) goto L_0x00a8;
    L_0x00a7:
        goto L_0x00a9;
    L_0x00a8:
        r4 = 0;
    L_0x00a9:
        r5 = java.lang.Math.max(r2, r4);
        r5 = r5 + r0;
        r6 = new android.graphics.Rect;
        r6.<init>();
        r1.getWindowVisibleDisplayFrame(r6);
        r1 = r9.mDialogAreaLayout;
        r1 = r1.getMeasuredHeight();
        r7 = r9.mDefaultControlLayout;
        r7 = r7.getMeasuredHeight();
        r1 = r1 - r7;
        r7 = r6.height();
        r7 = r7 - r1;
        r1 = r9.mCustomControlView;
        r8 = 8;
        if (r1 != 0) goto L_0x00dd;
    L_0x00ce:
        if (r2 <= 0) goto L_0x00dd;
    L_0x00d0:
        if (r5 > r7) goto L_0x00dd;
    L_0x00d2:
        r0 = r9.mArtView;
        r0.setVisibility(r3);
        r0 = r9.mArtView;
        setLayoutHeight(r0, r2);
        goto L_0x00fa;
    L_0x00dd:
        r1 = r9.mVolumeGroupList;
        r1 = getLayoutHeight(r1);
        r2 = r9.mMediaMainControlLayout;
        r2 = r2.getMeasuredHeight();
        r1 = r1 + r2;
        r2 = r9.mDefaultControlLayout;
        r2 = r2.getMeasuredHeight();
        if (r1 < r2) goto L_0x00f7;
    L_0x00f2:
        r1 = r9.mArtView;
        r1.setVisibility(r8);
    L_0x00f7:
        r5 = r4 + r0;
        r2 = 0;
    L_0x00fa:
        r0 = r9.canShowPlaybackControlLayout();
        if (r0 == 0) goto L_0x0108;
    L_0x0100:
        if (r5 > r7) goto L_0x0108;
    L_0x0102:
        r0 = r9.mPlaybackControlLayout;
        r0.setVisibility(r3);
        goto L_0x010d;
    L_0x0108:
        r0 = r9.mPlaybackControlLayout;
        r0.setVisibility(r8);
    L_0x010d:
        r0 = r9.mPlaybackControlLayout;
        r0 = r0.getVisibility();
        r1 = 1;
        if (r0 != 0) goto L_0x0118;
    L_0x0116:
        r0 = 1;
        goto L_0x0119;
    L_0x0118:
        r0 = 0;
    L_0x0119:
        r9.updateMediaControlVisibility(r0);
        r0 = r9.mPlaybackControlLayout;
        r0 = r0.getVisibility();
        if (r0 != 0) goto L_0x0125;
    L_0x0124:
        goto L_0x0126;
    L_0x0125:
        r1 = 0;
    L_0x0126:
        r0 = r9.getMainControllerHeight(r1);
        r1 = java.lang.Math.max(r2, r4);
        r1 = r1 + r0;
        if (r1 <= r7) goto L_0x0134;
    L_0x0131:
        r1 = r1 - r7;
        r4 = r4 - r1;
        r1 = r7;
    L_0x0134:
        r2 = r9.mMediaMainControlLayout;
        r2.clearAnimation();
        r2 = r9.mVolumeGroupList;
        r2.clearAnimation();
        r2 = r9.mDefaultControlLayout;
        r2.clearAnimation();
        if (r10 == 0) goto L_0x0155;
    L_0x0145:
        r2 = r9.mMediaMainControlLayout;
        r9.animateLayoutHeight(r2, r0);
        r0 = r9.mVolumeGroupList;
        r9.animateLayoutHeight(r0, r4);
        r0 = r9.mDefaultControlLayout;
        r9.animateLayoutHeight(r0, r1);
        goto L_0x0164;
    L_0x0155:
        r2 = r9.mMediaMainControlLayout;
        setLayoutHeight(r2, r0);
        r0 = r9.mVolumeGroupList;
        setLayoutHeight(r0, r4);
        r0 = r9.mDefaultControlLayout;
        setLayoutHeight(r0, r1);
    L_0x0164:
        r0 = r9.mExpandableAreaLayout;
        r1 = r6.height();
        setLayoutHeight(r0, r1);
        r9.rebuildVolumeGroupList(r10);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.MediaRouteControllerDialog.updateLayoutHeightInternal(boolean):void");
    }

    /* Access modifiers changed, original: 0000 */
    public void updateVolumeGroupItemHeight(View view) {
        setLayoutHeight((LinearLayout) view.findViewById(R.id.volume_item_container), this.mVolumeGroupListItemHeight);
        view = view.findViewById(R.id.mr_volume_item_icon);
        LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = this.mVolumeGroupListItemIconSize;
        layoutParams.height = this.mVolumeGroupListItemIconSize;
        view.setLayoutParams(layoutParams);
    }

    private void animateLayoutHeight(final View view, final int i) {
        final int layoutHeight = getLayoutHeight(view);
        AnonymousClass7 anonymousClass7 = new Animation() {
            /* Access modifiers changed, original: protected */
            public void applyTransformation(float f, Transformation transformation) {
                MediaRouteControllerDialog.setLayoutHeight(view, layoutHeight - ((int) (((float) (layoutHeight - i)) * f)));
            }
        };
        anonymousClass7.setDuration((long) this.mGroupListAnimationDurationMs);
        if (VERSION.SDK_INT >= 21) {
            anonymousClass7.setInterpolator(this.mInterpolator);
        }
        view.startAnimation(anonymousClass7);
    }

    /* Access modifiers changed, original: 0000 */
    public void loadInterpolator() {
        if (VERSION.SDK_INT >= 21) {
            this.mInterpolator = this.mIsGroupExpanded ? this.mLinearOutSlowInInterpolator : this.mFastOutSlowInInterpolator;
        } else {
            this.mInterpolator = this.mAccelerateDecelerateInterpolator;
        }
    }

    private void updateVolumeControlLayout() {
        int i = 8;
        if (!isVolumeControlAvailable(this.mRoute)) {
            this.mVolumeControlLayout.setVisibility(8);
        } else if (this.mVolumeControlLayout.getVisibility() == 8) {
            this.mVolumeControlLayout.setVisibility(0);
            this.mVolumeSlider.setMax(this.mRoute.getVolumeMax());
            this.mVolumeSlider.setProgress(this.mRoute.getVolume());
            MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = this.mGroupExpandCollapseButton;
            if (getGroup() != null) {
                i = 0;
            }
            mediaRouteExpandCollapseButton.setVisibility(i);
        }
    }

    private void rebuildVolumeGroupList(boolean z) {
        List routes = getGroup() == null ? null : getGroup().getRoutes();
        if (routes == null) {
            this.mGroupMemberRoutes.clear();
            this.mVolumeGroupAdapter.notifyDataSetChanged();
        } else if (MediaRouteDialogHelper.listUnorderedEquals(this.mGroupMemberRoutes, routes)) {
            this.mVolumeGroupAdapter.notifyDataSetChanged();
        } else {
            Map itemBoundMap = z ? MediaRouteDialogHelper.getItemBoundMap(this.mVolumeGroupList, this.mVolumeGroupAdapter) : null;
            Map itemBitmapMap = z ? MediaRouteDialogHelper.getItemBitmapMap(this.mContext, this.mVolumeGroupList, this.mVolumeGroupAdapter) : null;
            this.mGroupMemberRoutesAdded = MediaRouteDialogHelper.getItemsAdded(this.mGroupMemberRoutes, routes);
            this.mGroupMemberRoutesRemoved = MediaRouteDialogHelper.getItemsRemoved(this.mGroupMemberRoutes, routes);
            this.mGroupMemberRoutes.addAll(0, this.mGroupMemberRoutesAdded);
            this.mGroupMemberRoutes.removeAll(this.mGroupMemberRoutesRemoved);
            this.mVolumeGroupAdapter.notifyDataSetChanged();
            if (z && this.mIsGroupExpanded && this.mGroupMemberRoutesAdded.size() + this.mGroupMemberRoutesRemoved.size() > 0) {
                animateGroupListItems(itemBoundMap, itemBitmapMap);
                return;
            }
            this.mGroupMemberRoutesAdded = null;
            this.mGroupMemberRoutesRemoved = null;
        }
    }

    private void animateGroupListItems(final Map<RouteInfo, Rect> map, final Map<RouteInfo, BitmapDrawable> map2) {
        this.mVolumeGroupList.setEnabled(false);
        this.mVolumeGroupList.requestLayout();
        this.mIsGroupListAnimating = true;
        this.mVolumeGroupList.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                MediaRouteControllerDialog.this.mVolumeGroupList.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                MediaRouteControllerDialog.this.animateGroupListItemsInternal(map, map2);
            }
        });
    }

    /* Access modifiers changed, original: 0000 */
    public void animateGroupListItemsInternal(Map<RouteInfo, Rect> map, Map<RouteInfo, BitmapDrawable> map2) {
        Map<RouteInfo, Rect> map3 = map;
        if (this.mGroupMemberRoutesAdded != null && this.mGroupMemberRoutesRemoved != null) {
            int size = this.mGroupMemberRoutesAdded.size() - this.mGroupMemberRoutesRemoved.size();
            AnonymousClass9 anonymousClass9 = new AnimationListener() {
                public void onAnimationEnd(Animation animation) {
                }

                public void onAnimationRepeat(Animation animation) {
                }

                public void onAnimationStart(Animation animation) {
                    MediaRouteControllerDialog.this.mVolumeGroupList.startAnimationAll();
                    MediaRouteControllerDialog.this.mVolumeGroupList.postDelayed(MediaRouteControllerDialog.this.mGroupListFadeInAnimation, (long) MediaRouteControllerDialog.this.mGroupListAnimationDurationMs);
                }
            };
            int firstVisiblePosition = this.mVolumeGroupList.getFirstVisiblePosition();
            Object obj = null;
            for (int i = 0; i < this.mVolumeGroupList.getChildCount(); i++) {
                View childAt = this.mVolumeGroupList.getChildAt(i);
                RouteInfo routeInfo = (RouteInfo) this.mVolumeGroupAdapter.getItem(firstVisiblePosition + i);
                Rect rect = (Rect) map3.get(routeInfo);
                int top = childAt.getTop();
                int i2 = rect != null ? rect.top : (this.mVolumeGroupListItemHeight * size) + top;
                AnimationSet animationSet = new AnimationSet(true);
                if (this.mGroupMemberRoutesAdded != null && this.mGroupMemberRoutesAdded.contains(routeInfo)) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.0f);
                    alphaAnimation.setDuration((long) this.mGroupListFadeInDurationMs);
                    animationSet.addAnimation(alphaAnimation);
                    i2 = top;
                }
                TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, (float) (i2 - top), 0.0f);
                translateAnimation.setDuration((long) this.mGroupListAnimationDurationMs);
                animationSet.addAnimation(translateAnimation);
                animationSet.setFillAfter(true);
                animationSet.setFillEnabled(true);
                animationSet.setInterpolator(this.mInterpolator);
                if (obj == null) {
                    animationSet.setAnimationListener(anonymousClass9);
                    obj = 1;
                }
                childAt.clearAnimation();
                childAt.startAnimation(animationSet);
                map3.remove(routeInfo);
                map2.remove(routeInfo);
            }
            Map<RouteInfo, BitmapDrawable> map4 = map2;
            for (Entry entry : map2.entrySet()) {
                OverlayObject interpolator;
                final RouteInfo routeInfo2 = (RouteInfo) entry.getKey();
                BitmapDrawable bitmapDrawable = (BitmapDrawable) entry.getValue();
                Rect rect2 = (Rect) map3.get(routeInfo2);
                if (this.mGroupMemberRoutesRemoved.contains(routeInfo2)) {
                    interpolator = new OverlayObject(bitmapDrawable, rect2).setAlphaAnimation(1.0f, 0.0f).setDuration((long) this.mGroupListFadeOutDurationMs).setInterpolator(this.mInterpolator);
                } else {
                    interpolator = new OverlayObject(bitmapDrawable, rect2).setTranslateYAnimation(this.mVolumeGroupListItemHeight * size).setDuration((long) this.mGroupListAnimationDurationMs).setInterpolator(this.mInterpolator).setAnimationEndListener(new OnAnimationEndListener() {
                        public void onAnimationEnd() {
                            MediaRouteControllerDialog.this.mGroupMemberRoutesAnimatingWithBitmap.remove(routeInfo2);
                            MediaRouteControllerDialog.this.mVolumeGroupAdapter.notifyDataSetChanged();
                        }
                    });
                    this.mGroupMemberRoutesAnimatingWithBitmap.add(routeInfo2);
                }
                this.mVolumeGroupList.addOverlayObject(interpolator);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void startGroupListFadeInAnimation() {
        clearGroupListAnimation(true);
        this.mVolumeGroupList.requestLayout();
        this.mVolumeGroupList.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                MediaRouteControllerDialog.this.mVolumeGroupList.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                MediaRouteControllerDialog.this.startGroupListFadeInAnimationInternal();
            }
        });
    }

    /* Access modifiers changed, original: 0000 */
    public void startGroupListFadeInAnimationInternal() {
        if (this.mGroupMemberRoutesAdded == null || this.mGroupMemberRoutesAdded.size() == 0) {
            finishAnimation(true);
        } else {
            fadeInAddedRoutes();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void finishAnimation(boolean z) {
        this.mGroupMemberRoutesAdded = null;
        this.mGroupMemberRoutesRemoved = null;
        this.mIsGroupListAnimating = false;
        if (this.mIsGroupListAnimationPending) {
            this.mIsGroupListAnimationPending = false;
            updateLayoutHeight(z);
        }
        this.mVolumeGroupList.setEnabled(true);
    }

    private void fadeInAddedRoutes() {
        AnonymousClass12 anonymousClass12 = new AnimationListener() {
            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
            }

            public void onAnimationEnd(Animation animation) {
                MediaRouteControllerDialog.this.finishAnimation(true);
            }
        };
        int firstVisiblePosition = this.mVolumeGroupList.getFirstVisiblePosition();
        Object obj = null;
        for (int i = 0; i < this.mVolumeGroupList.getChildCount(); i++) {
            View childAt = this.mVolumeGroupList.getChildAt(i);
            if (this.mGroupMemberRoutesAdded.contains((RouteInfo) this.mVolumeGroupAdapter.getItem(firstVisiblePosition + i))) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration((long) this.mGroupListFadeInDurationMs);
                alphaAnimation.setFillEnabled(true);
                alphaAnimation.setFillAfter(true);
                if (obj == null) {
                    alphaAnimation.setAnimationListener(anonymousClass12);
                    obj = 1;
                }
                childAt.clearAnimation();
                childAt.startAnimation(alphaAnimation);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void clearGroupListAnimation(boolean z) {
        int firstVisiblePosition = this.mVolumeGroupList.getFirstVisiblePosition();
        for (int i = 0; i < this.mVolumeGroupList.getChildCount(); i++) {
            View childAt = this.mVolumeGroupList.getChildAt(i);
            RouteInfo routeInfo = (RouteInfo) this.mVolumeGroupAdapter.getItem(firstVisiblePosition + i);
            if (!z || this.mGroupMemberRoutesAdded == null || !this.mGroupMemberRoutesAdded.contains(routeInfo)) {
                ((LinearLayout) childAt.findViewById(R.id.volume_item_container)).setVisibility(0);
                AnimationSet animationSet = new AnimationSet(true);
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 1.0f);
                alphaAnimation.setDuration(0);
                animationSet.addAnimation(alphaAnimation);
                new TranslateAnimation(0.0f, 0.0f, 0.0f, 0.0f).setDuration(0);
                animationSet.setFillAfter(true);
                animationSet.setFillEnabled(true);
                childAt.clearAnimation();
                childAt.startAnimation(animationSet);
            }
        }
        this.mVolumeGroupList.stopAnimationAll();
        if (!z) {
            finishAnimation(false);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    private void updatePlaybackControlLayout() {
        /*
        r14 = this;
        r0 = r14.canShowPlaybackControlLayout();
        if (r0 == 0) goto L_0x0119;
    L_0x0006:
        r0 = r14.mDescription;
        r1 = 0;
        if (r0 != 0) goto L_0x000d;
    L_0x000b:
        r0 = r1;
        goto L_0x0013;
    L_0x000d:
        r0 = r14.mDescription;
        r0 = r0.getTitle();
    L_0x0013:
        r2 = android.text.TextUtils.isEmpty(r0);
        r3 = 1;
        r2 = r2 ^ r3;
        r4 = r14.mDescription;
        if (r4 != 0) goto L_0x001e;
    L_0x001d:
        goto L_0x0024;
    L_0x001e:
        r1 = r14.mDescription;
        r1 = r1.getSubtitle();
    L_0x0024:
        r4 = android.text.TextUtils.isEmpty(r1);
        r4 = r4 ^ r3;
        r5 = r14.mRoute;
        r5 = r5.getPresentationDisplayId();
        r6 = -1;
        r7 = 0;
        if (r5 == r6) goto L_0x003d;
    L_0x0033:
        r0 = r14.mTitleView;
        r1 = android.support.v7.mediarouter.R.string.mr_controller_casting_screen;
        r0.setText(r1);
    L_0x003a:
        r0 = 1;
    L_0x003b:
        r1 = 0;
        goto L_0x0071;
    L_0x003d:
        r5 = r14.mState;
        if (r5 == 0) goto L_0x0069;
    L_0x0041:
        r5 = r14.mState;
        r5 = r5.getState();
        if (r5 != 0) goto L_0x004a;
    L_0x0049:
        goto L_0x0069;
    L_0x004a:
        if (r2 != 0) goto L_0x0056;
    L_0x004c:
        if (r4 != 0) goto L_0x0056;
    L_0x004e:
        r0 = r14.mTitleView;
        r1 = android.support.v7.mediarouter.R.string.mr_controller_no_info_available;
        r0.setText(r1);
        goto L_0x003a;
    L_0x0056:
        if (r2 == 0) goto L_0x005f;
    L_0x0058:
        r2 = r14.mTitleView;
        r2.setText(r0);
        r0 = 1;
        goto L_0x0060;
    L_0x005f:
        r0 = 0;
    L_0x0060:
        if (r4 == 0) goto L_0x003b;
    L_0x0062:
        r2 = r14.mSubtitleView;
        r2.setText(r1);
        r1 = 1;
        goto L_0x0071;
    L_0x0069:
        r0 = r14.mTitleView;
        r1 = android.support.v7.mediarouter.R.string.mr_controller_no_media_selected;
        r0.setText(r1);
        goto L_0x003a;
    L_0x0071:
        r2 = r14.mTitleView;
        r4 = 8;
        if (r0 == 0) goto L_0x0079;
    L_0x0077:
        r0 = 0;
        goto L_0x007b;
    L_0x0079:
        r0 = 8;
    L_0x007b:
        r2.setVisibility(r0);
        r0 = r14.mSubtitleView;
        if (r1 == 0) goto L_0x0084;
    L_0x0082:
        r1 = 0;
        goto L_0x0086;
    L_0x0084:
        r1 = 8;
    L_0x0086:
        r0.setVisibility(r1);
        r0 = r14.mState;
        if (r0 == 0) goto L_0x0119;
    L_0x008d:
        r0 = r14.mState;
        r0 = r0.getState();
        r1 = 6;
        if (r0 == r1) goto L_0x00a2;
    L_0x0096:
        r0 = r14.mState;
        r0 = r0.getState();
        r1 = 3;
        if (r0 != r1) goto L_0x00a0;
    L_0x009f:
        goto L_0x00a2;
    L_0x00a0:
        r0 = 0;
        goto L_0x00a3;
    L_0x00a2:
        r0 = 1;
    L_0x00a3:
        r1 = r14.mState;
        r1 = r1.getActions();
        r5 = 516; // 0x204 float:7.23E-43 double:2.55E-321;
        r8 = r1 & r5;
        r1 = 0;
        r5 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1));
        if (r5 == 0) goto L_0x00b5;
    L_0x00b3:
        r5 = 1;
        goto L_0x00b6;
    L_0x00b5:
        r5 = 0;
    L_0x00b6:
        r6 = r14.mState;
        r8 = r6.getActions();
        r10 = 514; // 0x202 float:7.2E-43 double:2.54E-321;
        r12 = r8 & r10;
        r6 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1));
        if (r6 == 0) goto L_0x00c5;
    L_0x00c4:
        goto L_0x00c6;
    L_0x00c5:
        r3 = 0;
    L_0x00c6:
        r1 = r14.mPlayPauseButton;
        r1 = r1.getContext();
        if (r0 == 0) goto L_0x00f0;
    L_0x00ce:
        if (r3 == 0) goto L_0x00f0;
    L_0x00d0:
        r0 = r14.mPlayPauseButton;
        r0.setVisibility(r7);
        r0 = r14.mPlayPauseButton;
        r2 = android.support.v7.mediarouter.R.attr.mediaRoutePauseDrawable;
        r2 = android.support.v7.app.MediaRouterThemeHelper.getThemeResource(r1, r2);
        r0.setImageResource(r2);
        r0 = r14.mPlayPauseButton;
        r1 = r1.getResources();
        r2 = android.support.v7.mediarouter.R.string.mr_controller_pause;
        r1 = r1.getText(r2);
        r0.setContentDescription(r1);
        goto L_0x0119;
    L_0x00f0:
        if (r0 != 0) goto L_0x0114;
    L_0x00f2:
        if (r5 == 0) goto L_0x0114;
    L_0x00f4:
        r0 = r14.mPlayPauseButton;
        r0.setVisibility(r7);
        r0 = r14.mPlayPauseButton;
        r2 = android.support.v7.mediarouter.R.attr.mediaRoutePlayDrawable;
        r2 = android.support.v7.app.MediaRouterThemeHelper.getThemeResource(r1, r2);
        r0.setImageResource(r2);
        r0 = r14.mPlayPauseButton;
        r1 = r1.getResources();
        r2 = android.support.v7.mediarouter.R.string.mr_controller_play;
        r1 = r1.getText(r2);
        r0.setContentDescription(r1);
        goto L_0x0119;
    L_0x0114:
        r0 = r14.mPlayPauseButton;
        r0.setVisibility(r4);
    L_0x0119:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.MediaRouteControllerDialog.updatePlaybackControlLayout():void");
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isVolumeControlAvailable(RouteInfo routeInfo) {
        return this.mVolumeControlEnabled && routeInfo.getVolumeHandling() == 1;
    }

    private static int getLayoutHeight(View view) {
        return view.getLayoutParams().height;
    }

    static void setLayoutHeight(View view, int i) {
        LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    private static boolean uriEquals(Uri uri, Uri uri2) {
        if (uri == null || !uri.equals(uri2)) {
            return uri == null && uri2 == null;
        } else {
            return true;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public int getDesiredArtHeight(int i, int i2) {
        if (i >= i2) {
            return (int) (((((float) this.mDialogContentWidth) * ((float) i2)) / ((float) i)) + 0.5f);
        }
        return (int) (((((float) this.mDialogContentWidth) * 9.0f) / 16.0f) + 0.5f);
    }

    /* Access modifiers changed, original: 0000 */
    public void updateArtIconIfNeeded() {
        if (this.mCustomControlView == null && isIconChanged()) {
            if (this.mFetchArtTask != null) {
                this.mFetchArtTask.cancel(true);
            }
            this.mFetchArtTask = new FetchArtTask();
            this.mFetchArtTask.execute(new Void[0]);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void clearLoadedBitmap() {
        this.mArtIconIsLoaded = false;
        this.mArtIconLoadedBitmap = null;
        this.mArtIconBackgroundColor = 0;
    }

    private boolean isIconChanged() {
        Uri uri = null;
        Bitmap iconBitmap = this.mDescription == null ? null : this.mDescription.getIconBitmap();
        if (this.mDescription != null) {
            uri = this.mDescription.getIconUri();
        }
        Bitmap iconBitmap2 = this.mFetchArtTask == null ? this.mArtIconBitmap : this.mFetchArtTask.getIconBitmap();
        Uri iconUri = this.mFetchArtTask == null ? this.mArtIconUri : this.mFetchArtTask.getIconUri();
        if (iconBitmap2 != iconBitmap) {
            return true;
        }
        if (iconBitmap2 != null || uriEquals(iconUri, uri)) {
            return false;
        }
        return true;
    }
}
