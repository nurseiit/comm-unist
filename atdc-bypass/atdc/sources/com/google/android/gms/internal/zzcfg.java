package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.util.zze;
import com.google.firebase.iid.FirebaseInstanceId;
import java.math.BigInteger;
import java.util.Locale;

public final class zzcfg extends zzchj {
    private String mAppId;
    private String zzXB;
    private String zzaeH;
    private String zzaeI;
    private String zzboB;
    private long zzboF;
    private int zzbqC;
    private long zzbqD;
    private int zzbqE;

    zzcfg(zzcgl zzcgl) {
        super(zzcgl);
    }

    @WorkerThread
    private final String zzwK() {
        super.zzjC();
        try {
            return FirebaseInstanceId.getInstance().getId();
        } catch (IllegalStateException unused) {
            super.zzwF().zzyz().log("Failed to retrieve Firebase Instance Id");
            return null;
        }
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* Access modifiers changed, original: final */
    public final String getGmpAppId() {
        zzkD();
        return this.zzXB;
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final zzceh zzdV(String str) {
        super.zzjC();
        String zzhl = zzhl();
        String gmpAppId = getGmpAppId();
        zzkD();
        String str2 = this.zzaeI;
        long zzyv = (long) zzyv();
        zzkD();
        String str3 = this.zzboB;
        long zzwP = zzcem.zzwP();
        zzkD();
        super.zzjC();
        if (this.zzbqD == 0) {
            this.zzbqD = this.zzboe.zzwB().zzI(super.getContext(), super.getContext().getPackageName());
        }
        long j = this.zzbqD;
        boolean isEnabled = this.zzboe.isEnabled();
        boolean z = super.zzwG().zzbrC ^ 1;
        String zzwK = zzwK();
        zzkD();
        long zzyY = this.zzboe.zzyY();
        zzkD();
        return new zzceh(zzhl, gmpAppId, str2, zzyv, str3, zzwP, j, str, isEnabled, z, zzwK, 0, zzyY, this.zzbqE);
    }

    /* Access modifiers changed, original: final */
    public final String zzhl() {
        zzkD();
        return this.mAppId;
    }

    public final /* bridge */ /* synthetic */ void zzjC() {
        super.zzjC();
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0147 A:{Catch:{ IllegalStateException -> 0x015f }} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x014d A:{Catch:{ IllegalStateException -> 0x015f }} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0182  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0177  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00dd  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0147 A:{Catch:{ IllegalStateException -> 0x015f }} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x014d A:{Catch:{ IllegalStateException -> 0x015f }} */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0177  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0182  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00a7  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00dd  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0147 A:{Catch:{ IllegalStateException -> 0x015f }} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x014d A:{Catch:{ IllegalStateException -> 0x015f }} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0182  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0177  */
    public final void zzjD() {
        /*
        r10 = this;
        r0 = "unknown";
        r1 = "Unknown";
        r2 = "Unknown";
        r3 = super.getContext();
        r3 = r3.getPackageName();
        r4 = super.getContext();
        r4 = r4.getPackageManager();
        r5 = 0;
        r6 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r4 != 0) goto L_0x002d;
    L_0x001b:
        r4 = super.zzwF();
        r4 = r4.zzyx();
        r7 = "PackageManager is null, app identity information might be inaccurate. appId";
        r8 = com.google.android.gms.internal.zzcfl.zzdZ(r3);
        r4.zzj(r7, r8);
        goto L_0x008b;
    L_0x002d:
        r7 = r4.getInstallerPackageName(r3);	 Catch:{ IllegalArgumentException -> 0x0033 }
        r0 = r7;
        goto L_0x0044;
    L_0x0033:
        r7 = super.zzwF();
        r7 = r7.zzyx();
        r8 = "Error retrieving app installer package name. appId";
        r9 = com.google.android.gms.internal.zzcfl.zzdZ(r3);
        r7.zzj(r8, r9);
    L_0x0044:
        if (r0 != 0) goto L_0x0049;
    L_0x0046:
        r0 = "manual_install";
        goto L_0x0053;
    L_0x0049:
        r7 = "com.android.vending";
        r7 = r7.equals(r0);
        if (r7 == 0) goto L_0x0053;
    L_0x0051:
        r0 = "";
    L_0x0053:
        r7 = super.getContext();	 Catch:{ NameNotFoundException -> 0x007a }
        r7 = r7.getPackageName();	 Catch:{ NameNotFoundException -> 0x007a }
        r7 = r4.getPackageInfo(r7, r5);	 Catch:{ NameNotFoundException -> 0x007a }
        if (r7 == 0) goto L_0x008b;
    L_0x0061:
        r8 = r7.applicationInfo;	 Catch:{ NameNotFoundException -> 0x007a }
        r4 = r4.getApplicationLabel(r8);	 Catch:{ NameNotFoundException -> 0x007a }
        r8 = android.text.TextUtils.isEmpty(r4);	 Catch:{ NameNotFoundException -> 0x007a }
        if (r8 != 0) goto L_0x0072;
    L_0x006d:
        r4 = r4.toString();	 Catch:{ NameNotFoundException -> 0x007a }
        r2 = r4;
    L_0x0072:
        r4 = r7.versionName;	 Catch:{ NameNotFoundException -> 0x007a }
        r1 = r7.versionCode;	 Catch:{ NameNotFoundException -> 0x0079 }
        r6 = r1;
        r1 = r4;
        goto L_0x008b;
    L_0x0079:
        r1 = r4;
    L_0x007a:
        r4 = super.zzwF();
        r4 = r4.zzyx();
        r7 = "Error retrieving package info. appId, appName";
        r8 = com.google.android.gms.internal.zzcfl.zzdZ(r3);
        r4.zze(r7, r8, r2);
    L_0x008b:
        r10.mAppId = r3;
        r10.zzboB = r0;
        r10.zzaeI = r1;
        r10.zzbqC = r6;
        r10.zzaeH = r2;
        r0 = 0;
        r10.zzbqD = r0;
        com.google.android.gms.internal.zzcem.zzxE();
        r2 = super.getContext();
        r2 = com.google.android.gms.internal.zzbdm.zzaz(r2);
        r4 = 1;
        if (r2 == 0) goto L_0x00af;
    L_0x00a7:
        r6 = r2.isSuccess();
        if (r6 == 0) goto L_0x00af;
    L_0x00ad:
        r6 = 1;
        goto L_0x00b0;
    L_0x00af:
        r6 = 0;
    L_0x00b0:
        if (r6 != 0) goto L_0x00db;
    L_0x00b2:
        if (r2 != 0) goto L_0x00c2;
    L_0x00b4:
        r2 = super.zzwF();
        r2 = r2.zzyx();
        r7 = "GoogleService failed to initialize (no status)";
        r2.log(r7);
        goto L_0x00db;
    L_0x00c2:
        r7 = super.zzwF();
        r7 = r7.zzyx();
        r8 = "GoogleService failed to initialize, status";
        r9 = r2.getStatusCode();
        r9 = java.lang.Integer.valueOf(r9);
        r2 = r2.getStatusMessage();
        r7.zze(r8, r9, r2);
    L_0x00db:
        if (r6 == 0) goto L_0x0133;
    L_0x00dd:
        r2 = super.zzwH();
        r6 = "firebase_analytics_collection_enabled";
        r2 = r2.zzdN(r6);
        r6 = super.zzwH();
        r6 = r6.zzxF();
        if (r6 == 0) goto L_0x00ff;
    L_0x00f1:
        r2 = super.zzwF();
        r2 = r2.zzyB();
        r4 = "Collection disabled with firebase_analytics_collection_deactivated=1";
    L_0x00fb:
        r2.log(r4);
        goto L_0x0133;
    L_0x00ff:
        if (r2 == 0) goto L_0x0112;
    L_0x0101:
        r6 = r2.booleanValue();
        if (r6 != 0) goto L_0x0112;
    L_0x0107:
        r2 = super.zzwF();
        r2 = r2.zzyB();
        r4 = "Collection disabled with firebase_analytics_collection_enabled=0";
        goto L_0x00fb;
    L_0x0112:
        if (r2 != 0) goto L_0x0125;
    L_0x0114:
        r2 = com.google.android.gms.internal.zzcem.zzqB();
        if (r2 == 0) goto L_0x0125;
    L_0x011a:
        r2 = super.zzwF();
        r2 = r2.zzyB();
        r4 = "Collection disabled with google_app_measurement_enable=0";
        goto L_0x00fb;
    L_0x0125:
        r2 = super.zzwF();
        r2 = r2.zzyD();
        r6 = "Collection enabled";
        r2.log(r6);
        goto L_0x0134;
    L_0x0133:
        r4 = 0;
    L_0x0134:
        r2 = "";
        r10.zzXB = r2;
        r10.zzboF = r0;
        com.google.android.gms.internal.zzcem.zzxE();
        r0 = com.google.android.gms.internal.zzbdm.zzqA();	 Catch:{ IllegalStateException -> 0x015f }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ IllegalStateException -> 0x015f }
        if (r1 == 0) goto L_0x0149;
    L_0x0147:
        r0 = "";
    L_0x0149:
        r10.zzXB = r0;	 Catch:{ IllegalStateException -> 0x015f }
        if (r4 == 0) goto L_0x0171;
    L_0x014d:
        r0 = super.zzwF();	 Catch:{ IllegalStateException -> 0x015f }
        r0 = r0.zzyD();	 Catch:{ IllegalStateException -> 0x015f }
        r1 = "App package, google app id";
        r2 = r10.mAppId;	 Catch:{ IllegalStateException -> 0x015f }
        r4 = r10.zzXB;	 Catch:{ IllegalStateException -> 0x015f }
        r0.zze(r1, r2, r4);	 Catch:{ IllegalStateException -> 0x015f }
        goto L_0x0171;
    L_0x015f:
        r0 = move-exception;
        r1 = super.zzwF();
        r1 = r1.zzyx();
        r2 = "getGoogleAppId or isMeasurementEnabled failed with exception. appId";
        r3 = com.google.android.gms.internal.zzcfl.zzdZ(r3);
        r1.zze(r2, r3, r0);
    L_0x0171:
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 16;
        if (r0 < r1) goto L_0x0182;
    L_0x0177:
        r0 = super.getContext();
        r0 = com.google.android.gms.internal.zzbgy.zzaN(r0);
        r10.zzbqE = r0;
        return;
    L_0x0182:
        r10.zzbqE = r5;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcfg.zzjD():void");
    }

    public final /* bridge */ /* synthetic */ zze zzkq() {
        return super.zzkq();
    }

    public final /* bridge */ /* synthetic */ zzcfj zzwA() {
        return super.zzwA();
    }

    public final /* bridge */ /* synthetic */ zzcjl zzwB() {
        return super.zzwB();
    }

    public final /* bridge */ /* synthetic */ zzcgf zzwC() {
        return super.zzwC();
    }

    public final /* bridge */ /* synthetic */ zzcja zzwD() {
        return super.zzwD();
    }

    public final /* bridge */ /* synthetic */ zzcgg zzwE() {
        return super.zzwE();
    }

    public final /* bridge */ /* synthetic */ zzcfl zzwF() {
        return super.zzwF();
    }

    public final /* bridge */ /* synthetic */ zzcfw zzwG() {
        return super.zzwG();
    }

    public final /* bridge */ /* synthetic */ zzcem zzwH() {
        return super.zzwH();
    }

    public final /* bridge */ /* synthetic */ void zzwo() {
        super.zzwo();
    }

    public final /* bridge */ /* synthetic */ void zzwp() {
        super.zzwp();
    }

    public final /* bridge */ /* synthetic */ void zzwq() {
        super.zzwq();
    }

    public final /* bridge */ /* synthetic */ zzcec zzwr() {
        return super.zzwr();
    }

    public final /* bridge */ /* synthetic */ zzcej zzws() {
        return super.zzws();
    }

    public final /* bridge */ /* synthetic */ zzchl zzwt() {
        return super.zzwt();
    }

    public final /* bridge */ /* synthetic */ zzcfg zzwu() {
        return super.zzwu();
    }

    public final /* bridge */ /* synthetic */ zzcet zzwv() {
        return super.zzwv();
    }

    public final /* bridge */ /* synthetic */ zzcid zzww() {
        return super.zzww();
    }

    public final /* bridge */ /* synthetic */ zzchz zzwx() {
        return super.zzwx();
    }

    public final /* bridge */ /* synthetic */ zzcfh zzwy() {
        return super.zzwy();
    }

    public final /* bridge */ /* synthetic */ zzcen zzwz() {
        return super.zzwz();
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final String zzyu() {
        super.zzwB().zzzt().nextBytes(new byte[16]);
        return String.format(Locale.US, "%032x", new Object[]{new BigInteger(1, r0)});
    }

    /* Access modifiers changed, original: final */
    public final int zzyv() {
        zzkD();
        return this.zzbqC;
    }
}
