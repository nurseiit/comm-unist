package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;

@zzzn
public final class zzafl {
    private final Object mLock = new Object();
    private String mSessionId;
    int zzYI = -1;
    private long zzYM = -1;
    private long zzYN = -1;
    private int zzYO = -1;
    private long zzYP = 0;
    private int zzYQ = 0;
    private int zzYR = 0;

    public zzafl(String str) {
        this.mSessionId = str;
    }

    private static boolean zzB(Context context) {
        int identifier = context.getResources().getIdentifier("Theme.Translucent", "style", SystemMediaRouteProvider.PACKAGE_NAME);
        if (identifier != 0) {
            try {
                if (identifier == context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                    return true;
                }
                zzajc.zzaS("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                return false;
            } catch (NameNotFoundException unused) {
                zzajc.zzaT("Fail to fetch AdActivity theme");
            }
        }
        zzajc.zzaS("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
        return false;
    }

    /* JADX WARNING: Missing block: B:21:0x007f, code skipped:
            return;
     */
    public final void zzb(com.google.android.gms.internal.zzir r11, long r12) {
        /*
        r10 = this;
        r0 = r10.mLock;
        monitor-enter(r0);
        r1 = com.google.android.gms.ads.internal.zzbs.zzbD();	 Catch:{ all -> 0x0080 }
        r1 = r1.zzhy();	 Catch:{ all -> 0x0080 }
        r3 = com.google.android.gms.ads.internal.zzbs.zzbF();	 Catch:{ all -> 0x0080 }
        r3 = r3.currentTimeMillis();	 Catch:{ all -> 0x0080 }
        r5 = r10.zzYN;	 Catch:{ all -> 0x0080 }
        r7 = -1;
        r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r9 != 0) goto L_0x0043;
    L_0x001b:
        r5 = r3 - r1;
        r1 = com.google.android.gms.internal.zzmo.zzDL;	 Catch:{ all -> 0x0080 }
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x0080 }
        r1 = r2.zzd(r1);	 Catch:{ all -> 0x0080 }
        r1 = (java.lang.Long) r1;	 Catch:{ all -> 0x0080 }
        r1 = r1.longValue();	 Catch:{ all -> 0x0080 }
        r7 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1));
        if (r7 <= 0) goto L_0x0035;
    L_0x0031:
        r1 = -1;
        r10.zzYI = r1;	 Catch:{ all -> 0x0080 }
        goto L_0x003f;
    L_0x0035:
        r1 = com.google.android.gms.ads.internal.zzbs.zzbD();	 Catch:{ all -> 0x0080 }
        r1 = r1.zzhB();	 Catch:{ all -> 0x0080 }
        r10.zzYI = r1;	 Catch:{ all -> 0x0080 }
    L_0x003f:
        r10.zzYN = r12;	 Catch:{ all -> 0x0080 }
        r12 = r10.zzYN;	 Catch:{ all -> 0x0080 }
    L_0x0043:
        r10.zzYM = r12;	 Catch:{ all -> 0x0080 }
        r12 = r11.extras;	 Catch:{ all -> 0x0080 }
        r13 = 1;
        if (r12 == 0) goto L_0x0057;
    L_0x004a:
        r11 = r11.extras;	 Catch:{ all -> 0x0080 }
        r12 = "gw";
        r1 = 2;
        r11 = r11.getInt(r12, r1);	 Catch:{ all -> 0x0080 }
        if (r11 != r13) goto L_0x0057;
    L_0x0055:
        monitor-exit(r0);	 Catch:{ all -> 0x0080 }
        return;
    L_0x0057:
        r11 = r10.zzYO;	 Catch:{ all -> 0x0080 }
        r11 = r11 + r13;
        r10.zzYO = r11;	 Catch:{ all -> 0x0080 }
        r11 = r10.zzYI;	 Catch:{ all -> 0x0080 }
        r11 = r11 + r13;
        r10.zzYI = r11;	 Catch:{ all -> 0x0080 }
        r11 = r10.zzYI;	 Catch:{ all -> 0x0080 }
        if (r11 != 0) goto L_0x0071;
    L_0x0065:
        r11 = 0;
        r10.zzYP = r11;	 Catch:{ all -> 0x0080 }
        r11 = com.google.android.gms.ads.internal.zzbs.zzbD();	 Catch:{ all -> 0x0080 }
        r11.zzk(r3);	 Catch:{ all -> 0x0080 }
        goto L_0x007e;
    L_0x0071:
        r11 = com.google.android.gms.ads.internal.zzbs.zzbD();	 Catch:{ all -> 0x0080 }
        r11 = r11.zzhz();	 Catch:{ all -> 0x0080 }
        r13 = 0;
        r1 = r3 - r11;
        r10.zzYP = r1;	 Catch:{ all -> 0x0080 }
    L_0x007e:
        monitor-exit(r0);	 Catch:{ all -> 0x0080 }
        return;
    L_0x0080:
        r11 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0080 }
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzafl.zzb(com.google.android.gms.internal.zzir, long):void");
    }

    public final void zzhc() {
        synchronized (this.mLock) {
            this.zzYR++;
        }
    }

    public final void zzhd() {
        synchronized (this.mLock) {
            this.zzYQ++;
        }
    }

    public final Bundle zzo(Context context, String str) {
        Bundle bundle;
        synchronized (this.mLock) {
            bundle = new Bundle();
            bundle.putString("session_id", this.mSessionId);
            bundle.putLong("basets", this.zzYN);
            bundle.putLong("currts", this.zzYM);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.zzYO);
            bundle.putInt("preqs_in_session", this.zzYI);
            bundle.putLong("time_in_session", this.zzYP);
            bundle.putInt("pclick", this.zzYQ);
            bundle.putInt("pimp", this.zzYR);
            bundle.putBoolean("support_transparent_background", zzB(context));
        }
        return bundle;
    }
}
