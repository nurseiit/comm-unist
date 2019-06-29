package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.lang.ref.WeakReference;

public final class zzavy extends UIController {
    private final View mView;
    private final WeakReference<Activity> zzavm;
    private final OnClickListener zzavp;
    private final ComponentName zzavy;

    public zzavy(View view, Activity activity) {
        OnClickListener onClickListener;
        this.mView = view;
        this.zzavm = new WeakReference(activity);
        CastMediaOptions castMediaOptions = CastContext.getSharedInstance(activity).getCastOptions().getCastMediaOptions();
        if (castMediaOptions == null || TextUtils.isEmpty(castMediaOptions.getExpandedControllerActivityClassName())) {
            onClickListener = null;
            this.zzavy = null;
        } else {
            this.zzavy = new ComponentName(activity.getApplicationContext(), castMediaOptions.getExpandedControllerActivityClassName());
            onClickListener = new zzavz(this);
        }
        this.zzavp = onClickListener;
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.mView.setOnClickListener(this.zzavp);
    }

    public final void onSessionEnded() {
        this.mView.setOnClickListener(null);
        super.onSessionEnded();
    }
}
