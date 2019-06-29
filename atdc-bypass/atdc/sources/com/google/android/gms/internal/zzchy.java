package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.text.TextUtils;

@TargetApi(14)
@MainThread
final class zzchy implements ActivityLifecycleCallbacks {
    private /* synthetic */ zzchl zzbtt;

    private zzchy(zzchl zzchl) {
        this.zzbtt = zzchl;
    }

    /* synthetic */ zzchy(zzchl zzchl, zzchm zzchm) {
        this(zzchl);
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            this.zzbtt.zzwF().zzyD().log("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent != null) {
                Uri data = intent.getData();
                if (data != null && data.isHierarchical()) {
                    String str;
                    if (bundle == null) {
                        Bundle zzq = this.zzbtt.zzwB().zzq(data);
                        this.zzbtt.zzwB();
                        str = zzcjl.zzl(intent) ? "gs" : "auto";
                        if (zzq != null) {
                            this.zzbtt.zzd(str, "_cmp", zzq);
                        }
                    }
                    str = data.getQueryParameter("referrer");
                    if (!TextUtils.isEmpty(str)) {
                        Object obj = (str.contains("gclid") && (str.contains("utm_campaign") || str.contains("utm_source") || str.contains("utm_medium") || str.contains("utm_term") || str.contains("utm_content"))) ? 1 : null;
                        if (obj == null) {
                            this.zzbtt.zzwF().zzyC().log("Activity created with data 'referrer' param without gclid and at least one utm field");
                            return;
                        }
                        this.zzbtt.zzwF().zzyC().zzj("Activity created with referrer", str);
                        if (!TextUtils.isEmpty(str)) {
                            this.zzbtt.zzb("auto", "_ldl", str);
                        }
                    } else {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            this.zzbtt.zzwF().zzyx().zzj("Throwable caught in onActivityCreated", th);
        }
        zzchz zzwx = this.zzbtt.zzwx();
        if (bundle != null) {
            bundle = bundle.getBundle("com.google.firebase.analytics.screen_service");
            if (bundle != null) {
                zzcic zzq2 = zzwx.zzq(activity);
                zzq2.zzbol = bundle.getLong("id");
                zzq2.zzboj = bundle.getString("name");
                zzq2.zzbok = bundle.getString("referrer_name");
            }
        }
    }

    public final void onActivityDestroyed(Activity activity) {
        this.zzbtt.zzwx().onActivityDestroyed(activity);
    }

    @MainThread
    public final void onActivityPaused(Activity activity) {
        this.zzbtt.zzwx().onActivityPaused(activity);
        zzcja zzwD = this.zzbtt.zzwD();
        zzwD.zzwE().zzj(new zzcje(zzwD, zzwD.zzkq().elapsedRealtime()));
    }

    @MainThread
    public final void onActivityResumed(Activity activity) {
        this.zzbtt.zzwx().onActivityResumed(activity);
        zzcja zzwD = this.zzbtt.zzwD();
        zzwD.zzwE().zzj(new zzcjd(zzwD, zzwD.zzkq().elapsedRealtime()));
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.zzbtt.zzwx().onActivitySaveInstanceState(activity, bundle);
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }
}
