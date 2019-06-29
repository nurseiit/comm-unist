package com.google.android.gms.cast.framework.media.uicontroller;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzavs;
import com.google.android.gms.internal.zzavu;
import com.google.android.gms.internal.zzavw;
import com.google.android.gms.internal.zzavy;
import com.google.android.gms.internal.zzawc;
import com.google.android.gms.internal.zzawd;
import com.google.android.gms.internal.zzawe;
import com.google.android.gms.internal.zzawf;
import com.google.android.gms.internal.zzawi;
import com.google.android.gms.internal.zzawk;
import com.google.android.gms.internal.zzawl;
import com.google.android.gms.internal.zzawn;
import com.google.android.gms.internal.zzawp;
import com.google.android.gms.internal.zzawr;
import com.google.android.gms.internal.zzawt;
import com.google.android.gms.internal.zzawu;
import com.google.android.gms.internal.zzawv;
import com.google.android.gms.internal.zzaww;
import com.google.android.gms.internal.zzawx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UIMediaController implements SessionManagerListener<CastSession>, Listener {
    private final Activity mActivity;
    private final SessionManager zzarO;
    private RemoteMediaClient zzase;
    private final Map<View, List<UIController>> zzavi = new HashMap();
    private final Set<zzawv> zzavj = new HashSet();
    private Listener zzavk;

    public UIMediaController(Activity activity) {
        this.mActivity = activity;
        this.zzarO = CastContext.getSharedInstance(activity).getSessionManager();
        this.zzarO.addSessionManagerListener(this, CastSession.class);
        zza(this.zzarO.getCurrentCastSession());
    }

    private final void zza(View view, UIController uIController) {
        List list = (List) this.zzavi.get(view);
        if (list == null) {
            list = new ArrayList();
            this.zzavi.put(view, list);
        }
        list.add(uIController);
        if (isActive()) {
            uIController.onSessionConnected(this.zzarO.getCurrentCastSession());
            zzoj();
        }
    }

    private final void zza(Session session) {
        if (!isActive() && (session instanceof CastSession) && session.isConnected()) {
            CastSession castSession = (CastSession) session;
            this.zzase = castSession.getRemoteMediaClient();
            if (this.zzase != null) {
                this.zzase.addListener(this);
                for (List<UIController> it : this.zzavi.values()) {
                    for (UIController onSessionConnected : it) {
                        onSessionConnected.onSessionConnected(castSession);
                    }
                }
                zzoj();
            }
        }
    }

    private final void zzoi() {
        if (isActive()) {
            for (List<UIController> it : this.zzavi.values()) {
                for (UIController onSessionEnded : it) {
                    onSessionEnded.onSessionEnded();
                }
            }
            this.zzase.removeListener(this);
            this.zzase = null;
        }
    }

    private final void zzoj() {
        for (List<UIController> it : this.zzavi.values()) {
            for (UIController onMediaStatusUpdated : it) {
                onMediaStatusUpdated.onMediaStatusUpdated();
            }
        }
    }

    @Deprecated
    public void bindImageViewToImageOfCurrentItem(ImageView imageView, int i, @DrawableRes int i2) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(imageView, new zzavw(imageView, this.mActivity, new ImageHints(i, 0, 0), i2, null));
    }

    @Deprecated
    public void bindImageViewToImageOfCurrentItem(ImageView imageView, int i, View view) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(imageView, new zzavw(imageView, this.mActivity, new ImageHints(i, 0, 0), 0, view));
    }

    public void bindImageViewToImageOfCurrentItem(ImageView imageView, @NonNull ImageHints imageHints, @DrawableRes int i) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(imageView, new zzavw(imageView, this.mActivity, imageHints, i, null));
    }

    public void bindImageViewToImageOfCurrentItem(ImageView imageView, @NonNull ImageHints imageHints, View view) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(imageView, new zzavw(imageView, this.mActivity, imageHints, 0, view));
    }

    @Deprecated
    public void bindImageViewToImageOfPreloadedItem(ImageView imageView, int i, @DrawableRes int i2) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(imageView, new zzavu(imageView, this.mActivity, new ImageHints(i, 0, 0), i2));
    }

    public void bindImageViewToImageOfPreloadedItem(ImageView imageView, @NonNull ImageHints imageHints, @DrawableRes int i) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(imageView, new zzavu(imageView, this.mActivity, imageHints, i));
    }

    public void bindImageViewToMuteToggle(ImageView imageView) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(imageView, new zzawf(imageView, this.mActivity));
    }

    public void bindImageViewToPlayPauseToggle(@NonNull ImageView imageView, @NonNull Drawable drawable, @NonNull Drawable drawable2, Drawable drawable3, View view, boolean z) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(imageView, new zzawi(imageView, this.mActivity, drawable, drawable2, drawable3, view, z));
    }

    public void bindProgressBar(ProgressBar progressBar) {
        bindProgressBar(progressBar, 1000);
    }

    public void bindProgressBar(ProgressBar progressBar, long j) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(progressBar, new zzawk(progressBar, j));
    }

    public void bindSeekBar(SeekBar seekBar) {
        bindSeekBar(seekBar, 1000);
    }

    public void bindSeekBar(SeekBar seekBar, long j) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(seekBar, new zzawl(seekBar, j, new zza(this)));
    }

    public void bindTextViewToMetadataOfCurrentItem(TextView textView, String str) {
        zzbo.zzcz("Must be called from the main thread.");
        bindTextViewToMetadataOfCurrentItem(textView, Collections.singletonList(str));
    }

    public void bindTextViewToMetadataOfCurrentItem(TextView textView, List<String> list) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(textView, new zzawe(textView, list));
    }

    public void bindTextViewToMetadataOfPreloadedItem(TextView textView, String str) {
        zzbo.zzcz("Must be called from the main thread.");
        bindTextViewToMetadataOfPreloadedItem(textView, Collections.singletonList(str));
    }

    public void bindTextViewToMetadataOfPreloadedItem(TextView textView, List<String> list) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(textView, new zzawd(textView, list));
    }

    public void bindTextViewToSmartSubtitle(TextView textView) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(textView, new zzawt(textView));
    }

    public void bindTextViewToStreamDuration(TextView textView) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(textView, new zzawu(textView, this.mActivity.getString(R.string.cast_invalid_stream_duration_text), null));
    }

    public void bindTextViewToStreamDuration(TextView textView, View view) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(textView, new zzawu(textView, this.mActivity.getString(R.string.cast_invalid_stream_duration_text), view));
    }

    public void bindTextViewToStreamPosition(TextView textView, boolean z) {
        bindTextViewToStreamPosition(textView, z, 1000);
    }

    public void bindTextViewToStreamPosition(TextView textView, boolean z, long j) {
        zzbo.zzcz("Must be called from the main thread.");
        zzawv zzawv = new zzawv(textView, j, this.mActivity.getString(R.string.cast_invalid_stream_position_text));
        if (z) {
            this.zzavj.add(zzawv);
        }
        zza(textView, zzawv);
    }

    public void bindViewToClosedCaption(View view) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(view, new zzavs(view, this.mActivity));
    }

    public void bindViewToForward(View view, long j) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(view, new zzawn(view, j));
    }

    public void bindViewToLaunchExpandedController(View view) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(view, new zzavy(view, this.mActivity));
    }

    public void bindViewToLoadingIndicator(View view) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(view, new zzawc(view));
    }

    public void bindViewToRewind(View view, long j) {
        zzbo.zzcz("Must be called from the main thread.");
        bindViewToForward(view, -j);
    }

    public void bindViewToSkipNext(View view, int i) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(view, new zzawp(view, i));
    }

    public void bindViewToSkipPrev(View view, int i) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(view, new zzawr(view, i));
    }

    public void bindViewToUIController(View view, UIController uIController) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(view, uIController);
    }

    public void bindViewVisibilityToMediaSession(View view, int i) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(view, new zzawx(view, i));
    }

    public void bindViewVisibilityToPreloadingEvent(View view, int i) {
        zzbo.zzcz("Must be called from the main thread.");
        zza(view, new zzaww(view, i));
    }

    public void dispose() {
        zzbo.zzcz("Must be called from the main thread.");
        zzoi();
        this.zzavi.clear();
        this.zzarO.removeSessionManagerListener(this, CastSession.class);
        this.zzavk = null;
    }

    public RemoteMediaClient getRemoteMediaClient() {
        zzbo.zzcz("Must be called from the main thread.");
        return this.zzase;
    }

    public boolean isActive() {
        zzbo.zzcz("Must be called from the main thread.");
        return this.zzase != null;
    }

    public void onAdBreakStatusUpdated() {
        zzoj();
        if (this.zzavk != null) {
            this.zzavk.onAdBreakStatusUpdated();
        }
    }

    public void onMetadataUpdated() {
        zzoj();
        if (this.zzavk != null) {
            this.zzavk.onMetadataUpdated();
        }
    }

    public void onPreloadStatusUpdated() {
        zzoj();
        if (this.zzavk != null) {
            this.zzavk.onPreloadStatusUpdated();
        }
    }

    public void onQueueStatusUpdated() {
        zzoj();
        if (this.zzavk != null) {
            this.zzavk.onQueueStatusUpdated();
        }
    }

    public void onSendingRemoteMediaRequest() {
        for (List<UIController> it : this.zzavi.values()) {
            for (UIController onSendingRemoteMediaRequest : it) {
                onSendingRemoteMediaRequest.onSendingRemoteMediaRequest();
            }
        }
        if (this.zzavk != null) {
            this.zzavk.onSendingRemoteMediaRequest();
        }
    }

    public void onSessionEnded(CastSession castSession, int i) {
        zzoi();
    }

    public void onSessionEnding(CastSession castSession) {
    }

    public void onSessionResumeFailed(CastSession castSession, int i) {
        zzoi();
    }

    public void onSessionResumed(CastSession castSession, boolean z) {
        zza((Session) castSession);
    }

    public void onSessionResuming(CastSession castSession, String str) {
    }

    public void onSessionStartFailed(CastSession castSession, int i) {
        zzoi();
    }

    public void onSessionStarted(CastSession castSession, String str) {
        zza((Session) castSession);
    }

    public void onSessionStarting(CastSession castSession) {
    }

    public void onSessionSuspended(CastSession castSession, int i) {
    }

    public void onStatusUpdated() {
        zzoj();
        if (this.zzavk != null) {
            this.zzavk.onStatusUpdated();
        }
    }

    public void setPostRemoteMediaClientListener(Listener listener) {
        zzbo.zzcz("Must be called from the main thread.");
        this.zzavk = listener;
    }
}
