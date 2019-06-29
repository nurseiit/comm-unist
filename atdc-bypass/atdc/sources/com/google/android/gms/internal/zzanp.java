package com.google.android.gms.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.v4.app.NotificationCompat;
import com.google.android.gms.common.internal.zzbo;

public final class zzanp extends zzamh {
    private boolean zzahb;
    private boolean zzahc;
    private AlarmManager zzahd = ((AlarmManager) getContext().getSystemService(NotificationCompat.CATEGORY_ALARM));

    protected zzanp(zzamj zzamj) {
        super(zzamj);
    }

    private final PendingIntent zzlD() {
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"));
        return PendingIntent.getBroadcast(getContext(), 0, intent, 0);
    }

    public final void cancel() {
        zzkD();
        this.zzahc = false;
        this.zzahd.cancel(zzlD());
    }

    public final void schedule() {
        zzkD();
        zzbo.zza(this.zzahb, (Object) "Receiver not registered");
        long zzlr = zzank.zzlr();
        if (zzlr > 0) {
            cancel();
            long elapsedRealtime = zzkq().elapsedRealtime() + zzlr;
            this.zzahc = true;
            this.zzahd.setInexactRepeating(2, elapsedRealtime, 0, zzlD());
        }
    }

    public final boolean zzbo() {
        return this.zzahc;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
        try {
            this.zzahd.cancel(zzlD());
            if (zzank.zzlr() > 0) {
                ActivityInfo receiverInfo = getContext().getPackageManager().getReceiverInfo(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"), 2);
                if (receiverInfo != null && receiverInfo.enabled) {
                    zzbo("Receiver registered. Using alarm for local dispatch.");
                    this.zzahb = true;
                }
            }
        } catch (NameNotFoundException unused) {
        }
    }

    public final boolean zzlC() {
        return this.zzahb;
    }
}
