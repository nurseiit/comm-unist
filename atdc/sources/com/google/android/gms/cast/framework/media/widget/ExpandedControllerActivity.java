package com.google.android.gms.cast.framework.media.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.internal.zzavc;
import com.google.android.gms.internal.zzavr;
import com.google.android.gms.internal.zzawa;

public class ExpandedControllerActivity extends AppCompatActivity implements ControlButtonsContainer {
    private SessionManager zzarO;
    private SeekBar zzavB;
    private final Listener zzavk = new zza(this, null);
    private ImageView zzawA;
    private TextView zzawB;
    private TextView zzawC;
    private zzavc zzawD;
    private UIMediaController zzawE;
    private final SessionManagerListener<CastSession> zzawe = new zzb(this, null);
    @DrawableRes
    private int zzawf;
    @ColorRes
    private int zzawg;
    @DrawableRes
    private int zzawh;
    @DrawableRes
    private int zzawi;
    @DrawableRes
    private int zzawj;
    @DrawableRes
    private int zzawk;
    @DrawableRes
    private int zzawl;
    @DrawableRes
    private int zzawm;
    @DrawableRes
    private int zzawn;
    @DrawableRes
    private int zzawo;
    @DrawableRes
    private int zzawp;
    @DrawableRes
    private int zzawq;
    @DrawableRes
    private int zzawr;
    private int zzaws;
    private TextView zzawt;
    private ImageView zzawu;
    private ImageView zzawv;
    private zzavr zzaww;
    private int[] zzawx;
    private ImageView[] zzawy = new ImageView[4];
    private View zzawz;

    class zza implements Listener {
        private zza() {
        }

        /* synthetic */ zza(ExpandedControllerActivity expandedControllerActivity, zza zza) {
            this();
        }

        public final void onAdBreakStatusUpdated() {
            ExpandedControllerActivity.this.zzos();
        }

        public final void onMetadataUpdated() {
            ExpandedControllerActivity.this.zzoq();
        }

        public final void onPreloadStatusUpdated() {
        }

        public final void onQueueStatusUpdated() {
        }

        public final void onSendingRemoteMediaRequest() {
            ExpandedControllerActivity.this.zzawt.setText(ExpandedControllerActivity.this.getResources().getString(R.string.cast_expanded_controller_loading));
        }

        public final void onStatusUpdated() {
            RemoteMediaClient zzc = ExpandedControllerActivity.this.getRemoteMediaClient();
            if (zzc == null || !zzc.hasMediaSession()) {
                ExpandedControllerActivity.this.finish();
                return;
            }
            ExpandedControllerActivity.this.zzor();
            ExpandedControllerActivity.this.zzos();
        }
    }

    class zzb implements SessionManagerListener<CastSession> {
        private zzb() {
        }

        /* synthetic */ zzb(ExpandedControllerActivity expandedControllerActivity, zza zza) {
            this();
        }

        public final /* synthetic */ void onSessionEnded(Session session, int i) {
            ExpandedControllerActivity.this.finish();
        }

        public final /* bridge */ /* synthetic */ void onSessionEnding(Session session) {
        }

        public final /* bridge */ /* synthetic */ void onSessionResumeFailed(Session session, int i) {
        }

        public final /* bridge */ /* synthetic */ void onSessionResumed(Session session, boolean z) {
        }

        public final /* bridge */ /* synthetic */ void onSessionResuming(Session session, String str) {
        }

        public final /* bridge */ /* synthetic */ void onSessionStartFailed(Session session, int i) {
        }

        public final /* bridge */ /* synthetic */ void onSessionStarted(Session session, String str) {
        }

        public final /* bridge */ /* synthetic */ void onSessionStarting(Session session) {
        }

        public final /* bridge */ /* synthetic */ void onSessionSuspended(Session session, int i) {
        }
    }

    private final RemoteMediaClient getRemoteMediaClient() {
        CastSession currentCastSession = this.zzarO.getCurrentCastSession();
        return (currentCastSession == null || !currentCastSession.isConnected()) ? null : currentCastSession.getRemoteMediaClient();
    }

    private final void zza(View view, int i, int i2, UIMediaController uIMediaController) {
        ImageView imageView = (ImageView) view.findViewById(i);
        if (i2 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i2 != R.id.cast_button_type_custom) {
            if (i2 == R.id.cast_button_type_play_pause_toggle) {
                imageView.setBackgroundResource(this.zzawf);
                Drawable zzb = zzb.zzb(this, this.zzaws, this.zzawk);
                Drawable zzb2 = zzb.zzb(this, this.zzaws, this.zzawj);
                Drawable zzb3 = zzb.zzb(this, this.zzaws, this.zzawl);
                imageView.setImageDrawable(zzb2);
                uIMediaController.bindImageViewToPlayPauseToggle(imageView, zzb2, zzb, zzb3, null, false);
            } else if (i2 == R.id.cast_button_type_skip_previous) {
                imageView.setBackgroundResource(this.zzawf);
                imageView.setImageDrawable(zzb.zzb(this, this.zzaws, this.zzawm));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
                uIMediaController.bindViewToSkipPrev(imageView, 0);
            } else if (i2 == R.id.cast_button_type_skip_next) {
                imageView.setBackgroundResource(this.zzawf);
                imageView.setImageDrawable(zzb.zzb(this, this.zzaws, this.zzawn));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
                uIMediaController.bindViewToSkipNext(imageView, 0);
            } else if (i2 == R.id.cast_button_type_rewind_30_seconds) {
                imageView.setBackgroundResource(this.zzawf);
                imageView.setImageDrawable(zzb.zzb(this, this.zzaws, this.zzawo));
                imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
                uIMediaController.bindViewToRewind(imageView, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            } else if (i2 == R.id.cast_button_type_forward_30_seconds) {
                imageView.setBackgroundResource(this.zzawf);
                imageView.setImageDrawable(zzb.zzb(this, this.zzaws, this.zzawp));
                imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
                uIMediaController.bindViewToForward(imageView, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            } else if (i2 == R.id.cast_button_type_mute_toggle) {
                imageView.setBackgroundResource(this.zzawf);
                imageView.setImageDrawable(zzb.zzb(this, this.zzaws, this.zzawq));
                uIMediaController.bindImageViewToMuteToggle(imageView);
            } else if (i2 == R.id.cast_button_type_closed_caption) {
                imageView.setBackgroundResource(this.zzawf);
                imageView.setImageDrawable(zzb.zzb(this, this.zzaws, this.zzawr));
                uIMediaController.bindViewToClosedCaption(imageView);
            }
        }
    }

    private final ColorStateList zzop() {
        int color = getResources().getColor(this.zzawg);
        TypedValue typedValue = new TypedValue();
        getResources().getValue(R.dimen.cast_expanded_controller_seekbar_disabled_alpha, typedValue, true);
        int argb = Color.argb((int) (typedValue.getFloat() * ((float) Color.alpha(color))), Color.red(color), Color.green(color), Color.blue(color));
        int[] iArr = new int[]{color, argb};
        r0 = new int[2][];
        r0[0] = new int[]{16842910};
        r0[1] = new int[]{-16842910};
        return new ColorStateList(r0, iArr);
    }

    private final void zzoq() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            MediaInfo mediaInfo = remoteMediaClient.getMediaInfo();
            if (mediaInfo != null) {
                MediaMetadata metadata = mediaInfo.getMetadata();
                if (metadata != null) {
                    ActionBar supportActionBar = getSupportActionBar();
                    if (supportActionBar != null) {
                        supportActionBar.setTitle(metadata.getString(MediaMetadata.KEY_TITLE));
                    }
                }
            }
        }
    }

    private final void zzor() {
        CastSession currentCastSession = this.zzarO.getCurrentCastSession();
        if (currentCastSession != null) {
            CastDevice castDevice = currentCastSession.getCastDevice();
            if (castDevice != null) {
                if (!TextUtils.isEmpty(castDevice.getFriendlyName())) {
                    this.zzawt.setText(getResources().getString(R.string.cast_casting_to_device, new Object[]{r0}));
                    return;
                }
            }
        }
        this.zzawt.setText("");
    }

    private final void zzos() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        CharSequence charSequence = null;
        MediaInfo mediaInfo = remoteMediaClient == null ? null : remoteMediaClient.getMediaInfo();
        MediaStatus mediaStatus = remoteMediaClient == null ? null : remoteMediaClient.getMediaStatus();
        Object obj = (mediaStatus == null || !mediaStatus.isPlayingAd()) ? null : 1;
        if (obj != null) {
            CharSequence contentUrl;
            if (zzq.zzsa() && this.zzawv.getVisibility() == 8) {
                Drawable drawable = this.zzawu.getDrawable();
                if (drawable != null && (drawable instanceof BitmapDrawable)) {
                    Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                    if (bitmap != null) {
                        bitmap = zzb.zza(this, bitmap, 0.25f, 7.5f);
                        if (bitmap != null) {
                            this.zzawv.setImageBitmap(bitmap);
                            this.zzawv.setVisibility(0);
                        }
                    }
                }
            }
            AdBreakClipInfo currentAdBreakClip = mediaStatus.getCurrentAdBreakClip();
            if (currentAdBreakClip != null) {
                charSequence = currentAdBreakClip.getTitle();
                contentUrl = currentAdBreakClip.getContentUrl();
            } else {
                contentUrl = null;
            }
            this.zzawB.setVisibility(0);
            if (TextUtils.isEmpty(contentUrl)) {
                this.zzawA.setVisibility(8);
            } else {
                this.zzawD.zzm(Uri.parse(contentUrl));
            }
            TextView textView = this.zzawC;
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = getResources().getString(R.string.cast_ad_label);
            }
            textView.setText(charSequence);
            this.zzavB.setEnabled(false);
            this.zzawz.setVisibility(0);
        } else {
            this.zzavB.setEnabled(true);
            this.zzawz.setVisibility(8);
            if (zzq.zzsa()) {
                this.zzawv.setVisibility(8);
                this.zzawv.setImageBitmap(null);
            }
        }
        if (mediaInfo != null) {
            this.zzaww.zzac(this.zzavB.getMax());
            this.zzaww.zzb(mediaInfo.getAdBreaks(), -1);
        }
    }

    public final ImageView getButtonImageViewAt(int i) throws IndexOutOfBoundsException {
        return this.zzawy[i];
    }

    public final int getButtonSlotCount() {
        return 4;
    }

    public final int getButtonTypeAt(int i) throws IndexOutOfBoundsException {
        return this.zzawx[i];
    }

    public SeekBar getSeekBar() {
        return this.zzavB;
    }

    public TextView getStatusTextView() {
        return this.zzawt;
    }

    public UIMediaController getUIMediaController() {
        return this.zzawE;
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CastContext.getSharedInstance(this).registerLifecycleCallbacksBeforeIceCreamSandwich(this, bundle);
        this.zzarO = CastContext.getSharedInstance(this).getSessionManager();
        if (this.zzarO.getCurrentCastSession() == null) {
            finish();
        }
        this.zzawE = new UIMediaController(this);
        this.zzawE.setPostRemoteMediaClientListener(this.zzavk);
        setContentView(R.layout.cast_expanded_controller_activity);
        TypedArray obtainStyledAttributes = obtainStyledAttributes(new int[]{android.support.v7.appcompat.R.attr.selectableItemBackgroundBorderless, android.support.v7.appcompat.R.attr.colorControlActivated});
        this.zzawf = obtainStyledAttributes.getResourceId(0, 0);
        this.zzawg = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        ColorStateList colorStateList = null;
        obtainStyledAttributes = obtainStyledAttributes(null, R.styleable.CastExpandedController, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        this.zzaws = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castButtonColor, 0);
        this.zzawh = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarProgressDrawable, 0);
        this.zzawi = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarThumbDrawable, 0);
        this.zzawj = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castPlayButtonDrawable, 0);
        this.zzawk = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castPauseButtonDrawable, 0);
        this.zzawl = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castStopButtonDrawable, 0);
        this.zzawm = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSkipPreviousButtonDrawable, 0);
        this.zzawn = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSkipNextButtonDrawable, 0);
        this.zzawo = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castRewind30ButtonDrawable, 0);
        this.zzawp = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castForward30ButtonDrawable, 0);
        this.zzawq = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castMuteToggleButtonDrawable, 0);
        this.zzawr = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castClosedCaptionsButtonDrawable, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castControlButtons, 0);
        if (resourceId != 0) {
            TypedArray obtainTypedArray = getResources().obtainTypedArray(resourceId);
            zzbo.zzaf(obtainTypedArray.length() == 4);
            this.zzawx = new int[obtainTypedArray.length()];
            for (int i = 0; i < obtainTypedArray.length(); i++) {
                this.zzawx[i] = obtainTypedArray.getResourceId(i, 0);
            }
            obtainTypedArray.recycle();
        } else {
            this.zzawx = new int[]{R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty};
        }
        obtainStyledAttributes.recycle();
        View findViewById = findViewById(R.id.expanded_controller_layout);
        UIMediaController uIMediaController = this.zzawE;
        this.zzawu = (ImageView) findViewById.findViewById(R.id.background_image_view);
        this.zzawv = (ImageView) findViewById.findViewById(R.id.blurred_background_image_view);
        View findViewById2 = findViewById.findViewById(R.id.background_place_holder_image_view);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        uIMediaController.bindImageViewToImageOfCurrentItem(this.zzawu, new ImageHints(4, displayMetrics.widthPixels, displayMetrics.heightPixels), findViewById2);
        this.zzawt = (TextView) findViewById.findViewById(R.id.status_text);
        uIMediaController.bindViewToLoadingIndicator((ProgressBar) findViewById.findViewById(R.id.loading_indicator));
        TextView textView = (TextView) findViewById.findViewById(R.id.start_text);
        TextView textView2 = (TextView) findViewById.findViewById(R.id.end_text);
        ImageView imageView = (ImageView) findViewById.findViewById(R.id.live_stream_indicator);
        this.zzavB = (SeekBar) findViewById.findViewById(R.id.seek_bar);
        Drawable drawable = getResources().getDrawable(this.zzawh);
        if (drawable != null) {
            if (this.zzawh == R.drawable.cast_expanded_controller_seekbar_track) {
                colorStateList = zzop();
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable wrap = DrawableCompat.wrap(layerDrawable.findDrawableByLayerId(16908301));
                DrawableCompat.setTintList(wrap, colorStateList);
                layerDrawable.setDrawableByLayerId(16908301, wrap);
                layerDrawable.findDrawableByLayerId(16908288).setColorFilter(getResources().getColor(R.color.cast_expanded_controller_seek_bar_progress_background_tint_color), Mode.SRC_IN);
            }
            this.zzavB.setProgressDrawable(drawable);
        }
        drawable = getResources().getDrawable(this.zzawi);
        if (drawable != null) {
            if (this.zzawi == R.drawable.cast_expanded_controller_seekbar_thumb) {
                if (colorStateList == null) {
                    colorStateList = zzop();
                }
                drawable = DrawableCompat.wrap(drawable);
                DrawableCompat.setTintList(drawable, colorStateList);
            }
            this.zzavB.setThumb(drawable);
        }
        if (zzq.zzse()) {
            this.zzavB.setSplitTrack(false);
        }
        SeekBar seekBar = (SeekBar) findViewById.findViewById(R.id.live_stream_seek_bar);
        uIMediaController.bindTextViewToStreamPosition(textView, true);
        uIMediaController.bindTextViewToStreamDuration(textView2, imageView);
        uIMediaController.bindSeekBar(this.zzavB);
        uIMediaController.bindViewToUIController(seekBar, new zzawa(seekBar, this.zzavB));
        this.zzawy[0] = (ImageView) findViewById.findViewById(R.id.button_0);
        this.zzawy[1] = (ImageView) findViewById.findViewById(R.id.button_1);
        this.zzawy[2] = (ImageView) findViewById.findViewById(R.id.button_2);
        this.zzawy[3] = (ImageView) findViewById.findViewById(R.id.button_3);
        zza(findViewById, R.id.button_0, this.zzawx[0], uIMediaController);
        zza(findViewById, R.id.button_1, this.zzawx[1], uIMediaController);
        zza(findViewById, R.id.button_play_pause_toggle, R.id.cast_button_type_play_pause_toggle, uIMediaController);
        zza(findViewById, R.id.button_2, this.zzawx[2], uIMediaController);
        zza(findViewById, R.id.button_3, this.zzawx[3], uIMediaController);
        this.zzawz = findViewById(R.id.ad_container);
        this.zzawA = (ImageView) this.zzawz.findViewById(R.id.ad_image_view);
        this.zzawC = (TextView) this.zzawz.findViewById(R.id.ad_label);
        this.zzawB = (TextView) this.zzawz.findViewById(R.id.ad_in_progress_label);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById.findViewById(R.id.seek_bar_controls);
        zzavr zzavr = new zzavr(this);
        LayoutParams layoutParams = new LayoutParams(-1, -2);
        layoutParams.addRule(0, R.id.end_text);
        layoutParams.addRule(1, R.id.start_text);
        layoutParams.addRule(6, R.id.seek_bar);
        layoutParams.addRule(7, R.id.seek_bar);
        layoutParams.addRule(5, R.id.seek_bar);
        layoutParams.addRule(8, R.id.seek_bar);
        zzavr.setLayoutParams(layoutParams);
        if (zzq.zzsa()) {
            zzavr.setPaddingRelative(this.zzavB.getPaddingStart(), this.zzavB.getPaddingTop(), this.zzavB.getPaddingEnd(), this.zzavB.getPaddingBottom());
        } else {
            zzavr.setPadding(this.zzavB.getPaddingLeft(), this.zzavB.getPaddingTop(), this.zzavB.getPaddingRight(), this.zzavB.getPaddingBottom());
        }
        zzavr.setContentDescription(getResources().getString(R.string.cast_seek_bar));
        zzavr.setBackgroundColor(0);
        relativeLayout.addView(zzavr);
        this.zzaww = zzavr;
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setHomeAsUpIndicator(R.drawable.quantum_ic_keyboard_arrow_down_white_36);
        }
        zzor();
        zzoq();
        this.zzawD = new zzavc(getApplicationContext(), new ImageHints(-1, this.zzawA.getWidth(), this.zzawA.getHeight()));
        this.zzawD.zza(new zza(this));
    }

    /* Access modifiers changed, original: protected */
    public void onDestroy() {
        this.zzawD.clear();
        if (this.zzawE != null) {
            this.zzawE.setPostRemoteMediaClientListener(null);
            this.zzawE.dispose();
        }
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return true;
    }

    /* Access modifiers changed, original: protected */
    public void onPause() {
        CastContext.getSharedInstance(this).getSessionManager().removeSessionManagerListener(this.zzawe, CastSession.class);
        super.onPause();
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        CastContext.getSharedInstance(this).getSessionManager().addSessionManagerListener(this.zzawe, CastSession.class);
        CastSession currentCastSession = CastContext.getSharedInstance(this).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || !(currentCastSession.isConnected() || currentCastSession.isConnecting())) {
            finish();
        }
        zzor();
        zzos();
        super.onResume();
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility() ^ 2;
            if (zzq.zzrZ()) {
                systemUiVisibility ^= 4;
            }
            if (zzq.zzsc()) {
                systemUiVisibility ^= 4096;
            }
            getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility);
            if (zzq.zzsb()) {
                setImmersive(true);
            }
        }
    }
}
