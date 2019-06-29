package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzaos;
import com.google.android.gms.internal.zzctz;

public class CampaignTrackingReceiver extends BroadcastReceiver {
    static zzctz zzads;
    private static Boolean zzadt;
    static Object zzuF = new Object();

    public static boolean zzac(Context context) {
        zzbo.zzu(context);
        if (zzadt != null) {
            return zzadt.booleanValue();
        }
        boolean zza = zzaos.zza(context, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
        zzadt = Boolean.valueOf(zza);
        return zza;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:24:0x0071 */
    /* JADX WARNING: Can't wrap try/catch for region: R(2:24|25) */
    /* JADX WARNING: Missing block: B:25:?, code skipped:
            r0.zzbr("CampaignTrackingService service at risk of not starting. For more reliable installation campaign reports, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
     */
    @android.support.annotation.RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onReceive(android.content.Context r5, android.content.Intent r6) {
        /*
        r4 = this;
        r0 = com.google.android.gms.internal.zzamj.zzaf(r5);
        r0 = r0.zzkr();
        if (r6 != 0) goto L_0x0010;
    L_0x000a:
        r5 = "CampaignTrackingReceiver received null intent";
    L_0x000c:
        r0.zzbr(r5);
        return;
    L_0x0010:
        r1 = "referrer";
        r1 = r6.getStringExtra(r1);
        r6 = r6.getAction();
        r2 = "CampaignTrackingReceiver received";
        r0.zza(r2, r6);
        r2 = "com.android.vending.INSTALL_REFERRER";
        r6 = r2.equals(r6);
        if (r6 == 0) goto L_0x007b;
    L_0x0027:
        r6 = android.text.TextUtils.isEmpty(r1);
        if (r6 == 0) goto L_0x002e;
    L_0x002d:
        goto L_0x007b;
    L_0x002e:
        r6 = com.google.android.gms.analytics.CampaignTrackingService.zzad(r5);
        if (r6 != 0) goto L_0x0039;
    L_0x0034:
        r2 = "CampaignTrackingService not registered or disabled. Installation tracking not possible. See http://goo.gl/8Rd3yj for instructions.";
        r0.zzbr(r2);
    L_0x0039:
        r4.zzu(r5, r1);
        r2 = r4.zzjm();
        com.google.android.gms.common.internal.zzbo.zzu(r2);
        r3 = new android.content.Intent;
        r3.<init>(r5, r2);
        r2 = "referrer";
        r3.putExtra(r2, r1);
        r1 = zzuF;
        monitor-enter(r1);
        r5.startService(r3);	 Catch:{ all -> 0x0078 }
        if (r6 != 0) goto L_0x0057;
    L_0x0055:
        monitor-exit(r1);	 Catch:{ all -> 0x0078 }
        return;
    L_0x0057:
        r6 = zzads;	 Catch:{ SecurityException -> 0x0071 }
        if (r6 != 0) goto L_0x0069;
    L_0x005b:
        r6 = new com.google.android.gms.internal.zzctz;	 Catch:{ SecurityException -> 0x0071 }
        r2 = 1;
        r3 = "Analytics campaign WakeLock";
        r6.<init>(r5, r2, r3);	 Catch:{ SecurityException -> 0x0071 }
        zzads = r6;	 Catch:{ SecurityException -> 0x0071 }
        r5 = 0;
        r6.setReferenceCounted(r5);	 Catch:{ SecurityException -> 0x0071 }
    L_0x0069:
        r5 = zzads;	 Catch:{ SecurityException -> 0x0071 }
        r2 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r5.acquire(r2);	 Catch:{ SecurityException -> 0x0071 }
        goto L_0x0076;
    L_0x0071:
        r5 = "CampaignTrackingService service at risk of not starting. For more reliable installation campaign reports, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.";
        r0.zzbr(r5);	 Catch:{ all -> 0x0078 }
    L_0x0076:
        monitor-exit(r1);	 Catch:{ all -> 0x0078 }
        return;
    L_0x0078:
        r5 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0078 }
        throw r5;
    L_0x007b:
        r5 = "CampaignTrackingReceiver received unexpected intent without referrer extra";
        goto L_0x000c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.CampaignTrackingReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }

    /* Access modifiers changed, original: protected */
    public Class<? extends CampaignTrackingService> zzjm() {
        return CampaignTrackingService.class;
    }

    /* Access modifiers changed, original: protected */
    public void zzu(Context context, String str) {
    }
}
