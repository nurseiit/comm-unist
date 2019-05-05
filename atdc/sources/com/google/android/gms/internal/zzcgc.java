package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.MainThread;
import com.google.android.gms.common.internal.zzbo;

public final class zzcgc {
    private final zzcge zzbrL;

    public zzcgc(zzcge zzcge) {
        zzbo.zzu(zzcge);
        this.zzbrL = zzcge;
    }

    public static boolean zzj(Context context, boolean z) {
        zzbo.zzu(context);
        return zzcjl.zza(context, "com.google.android.gms.measurement.AppMeasurementReceiver", false);
    }

    @MainThread
    public final void onReceive(Context context, Intent intent) {
        zzcgl zzbj = zzcgl.zzbj(context);
        zzcfl zzwF = zzbj.zzwF();
        if (intent == null) {
            zzwF.zzyz().log("Receiver called with null intent");
            return;
        }
        zzcem.zzxE();
        String action = intent.getAction();
        zzwF.zzyD().zzj("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            zzciw.zzk(context, false);
            intent = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            intent.setAction("com.google.android.gms.measurement.UPLOAD");
            this.zzbrL.doStartService(context, intent);
            return;
        }
        if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            action = intent.getStringExtra("referrer");
            if (action == null) {
                zzwF.zzyD().log("Install referrer extras are null");
                return;
            }
            zzwF.zzyB().zzj("Install referrer extras are", action);
            if (!action.contains("?")) {
                String str = "?";
                action = String.valueOf(action);
                action = action.length() != 0 ? str.concat(action) : new String(str);
            }
            Bundle zzq = zzbj.zzwB().zzq(Uri.parse(action));
            if (zzq == null) {
                zzwF.zzyD().log("No campaign defined in install referrer broadcast");
                return;
            }
            long longExtra = 1000 * intent.getLongExtra("referrer_timestamp_seconds", 0);
            if (longExtra == 0) {
                zzwF.zzyz().log("Install referrer is missing timestamp");
            }
            zzbj.zzwE().zzj(new zzcgd(this, zzbj, longExtra, zzq, context, zzwF));
        }
    }
}
