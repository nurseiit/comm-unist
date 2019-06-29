package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzaaf;
import com.google.android.gms.internal.zzaaz;
import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzafj;
import com.google.android.gms.internal.zzafp;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzgz;
import com.google.android.gms.internal.zzij;
import com.google.android.gms.internal.zzir;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zznb;
import com.google.android.gms.internal.zzpj;
import com.google.android.gms.internal.zzpt;
import com.google.android.gms.internal.zzuc;
import com.google.android.gms.internal.zzuj;
import com.google.android.gms.internal.zzuq;
import com.google.android.gms.internal.zzzn;
import com.google.android.gms.internal.zzzq;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public abstract class zzd extends zza implements zzw, zzbl, zzuc {
    protected final zzuq zzsX;
    private transient boolean zzsY;

    public zzd(Context context, zziv zziv, String str, zzuq zzuq, zzaje zzaje, zzv zzv) {
        this(new zzbt(context, zziv, str, zzaje), zzuq, null, zzv);
    }

    private zzd(zzbt zzbt, zzuq zzuq, @Nullable zzbi zzbi, zzv zzv) {
        super(zzbt, null, zzv);
        this.zzsX = zzuq;
        this.zzsY = false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0109  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x014b  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0144  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0162  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x015f  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x017c  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x016d  */
    private final com.google.android.gms.internal.zzaaf zza(com.google.android.gms.internal.zzir r60, android.os.Bundle r61, com.google.android.gms.internal.zzafj r62) {
        /*
        r59 = this;
        r0 = r59;
        r1 = r0.zzsP;
        r1 = r1.zzqD;
        r7 = r1.getApplicationInfo();
        r1 = 0;
        r2 = 0;
        r3 = r0.zzsP;	 Catch:{ NameNotFoundException -> 0x001c }
        r3 = r3.zzqD;	 Catch:{ NameNotFoundException -> 0x001c }
        r3 = com.google.android.gms.internal.zzbha.zzaP(r3);	 Catch:{ NameNotFoundException -> 0x001c }
        r4 = r7.packageName;	 Catch:{ NameNotFoundException -> 0x001c }
        r3 = r3.getPackageInfo(r4, r2);	 Catch:{ NameNotFoundException -> 0x001c }
        r8 = r3;
        goto L_0x001d;
    L_0x001c:
        r8 = r1;
    L_0x001d:
        r3 = r0.zzsP;
        r3 = r3.zzqD;
        r3 = r3.getResources();
        r3 = r3.getDisplayMetrics();
        r4 = r0.zzsP;
        r4 = r4.zzvU;
        if (r4 == 0) goto L_0x0094;
    L_0x002f:
        r4 = r0.zzsP;
        r4 = r4.zzvU;
        r4 = r4.getParent();
        if (r4 == 0) goto L_0x0094;
    L_0x0039:
        r4 = 2;
        r4 = new int[r4];
        r5 = r0.zzsP;
        r5 = r5.zzvU;
        r5.getLocationOnScreen(r4);
        r5 = r4[r2];
        r6 = 1;
        r4 = r4[r6];
        r9 = r0.zzsP;
        r9 = r9.zzvU;
        r9 = r9.getWidth();
        r10 = r0.zzsP;
        r10 = r10.zzvU;
        r10 = r10.getHeight();
        r11 = r0.zzsP;
        r11 = r11.zzvU;
        r11 = r11.isShown();
        if (r11 == 0) goto L_0x0073;
    L_0x0062:
        r11 = r5 + r9;
        if (r11 <= 0) goto L_0x0073;
    L_0x0066:
        r11 = r4 + r10;
        if (r11 <= 0) goto L_0x0073;
    L_0x006a:
        r11 = r3.widthPixels;
        if (r5 > r11) goto L_0x0073;
    L_0x006e:
        r11 = r3.heightPixels;
        if (r4 > r11) goto L_0x0073;
    L_0x0072:
        goto L_0x0074;
    L_0x0073:
        r6 = 0;
    L_0x0074:
        r11 = new android.os.Bundle;
        r12 = 5;
        r11.<init>(r12);
        r12 = "x";
        r11.putInt(r12, r5);
        r5 = "y";
        r11.putInt(r5, r4);
        r4 = "width";
        r11.putInt(r4, r9);
        r4 = "height";
        r11.putInt(r4, r10);
        r4 = "visible";
        r11.putInt(r4, r6);
        goto L_0x0095;
    L_0x0094:
        r11 = r1;
    L_0x0095:
        r4 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r9 = r4.zzhp();
        r4 = r0.zzsP;
        r5 = new com.google.android.gms.internal.zzafh;
        r6 = r0.zzsP;
        r6 = r6.zzvR;
        r5.<init>(r9, r6);
        r4.zzwa = r5;
        r4 = r0.zzsP;
        r4 = r4.zzwa;
        r5 = r60;
        r4.zzo(r5);
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r4 = r0.zzsP;
        r4 = r4.zzqD;
        r6 = r0.zzsP;
        r6 = r6.zzvU;
        r10 = r0.zzsP;
        r10 = r10.zzvX;
        r20 = com.google.android.gms.internal.zzagz.zza(r4, r6, r10);
        r12 = 0;
        r4 = r0.zzsP;
        r4 = r4.zzwe;
        if (r4 == 0) goto L_0x00de;
    L_0x00ce:
        r4 = r0.zzsP;	 Catch:{ RemoteException -> 0x00d9 }
        r4 = r4.zzwe;	 Catch:{ RemoteException -> 0x00d9 }
        r14 = r4.getValue();	 Catch:{ RemoteException -> 0x00d9 }
        r21 = r14;
        goto L_0x00e0;
    L_0x00d9:
        r4 = "Cannot get correlation id, default to 0.";
        com.google.android.gms.internal.zzajc.zzaT(r4);
    L_0x00de:
        r21 = r12;
    L_0x00e0:
        r4 = java.util.UUID.randomUUID();
        r23 = r4.toString();
        r4 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r6 = r0.zzsP;
        r6 = r6.zzqD;
        r12 = r4.zza(r6, r0, r9);
        r14 = new java.util.ArrayList;
        r14.<init>();
        r15 = new java.util.ArrayList;
        r15.<init>();
        r4 = 0;
    L_0x00ff:
        r6 = r0.zzsP;
        r6 = r6.zzwi;
        r6 = r6.size();
        if (r4 >= r6) goto L_0x0130;
    L_0x0109:
        r6 = r0.zzsP;
        r6 = r6.zzwi;
        r6 = r6.keyAt(r4);
        r6 = (java.lang.String) r6;
        r14.add(r6);
        r10 = r0.zzsP;
        r10 = r10.zzwh;
        r10 = r10.containsKey(r6);
        if (r10 == 0) goto L_0x012d;
    L_0x0120:
        r10 = r0.zzsP;
        r10 = r10.zzwh;
        r10 = r10.get(r6);
        if (r10 == 0) goto L_0x012d;
    L_0x012a:
        r15.add(r6);
    L_0x012d:
        r4 = r4 + 1;
        goto L_0x00ff;
    L_0x0130:
        r4 = new com.google.android.gms.ads.internal.zze;
        r4.<init>(r0);
        r34 = com.google.android.gms.internal.zzagt.zza(r4);
        r4 = new com.google.android.gms.ads.internal.zzf;
        r4.<init>(r0);
        r44 = com.google.android.gms.internal.zzagt.zza(r4);
        if (r62 == 0) goto L_0x014b;
    L_0x0144:
        r4 = r62.zzhk();
        r35 = r4;
        goto L_0x014d;
    L_0x014b:
        r35 = r1;
    L_0x014d:
        r4 = r0.zzsP;
        r4 = r4.zzwq;
        if (r4 == 0) goto L_0x0194;
    L_0x0153:
        r4 = r0.zzsP;
        r4 = r4.zzwq;
        r4 = r4.size();
        if (r4 <= 0) goto L_0x0194;
    L_0x015d:
        if (r8 == 0) goto L_0x0162;
    L_0x015f:
        r4 = r8.versionCode;
        goto L_0x0163;
    L_0x0162:
        r4 = 0;
    L_0x0163:
        r6 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r6 = r6.zzhA();
        if (r4 <= r6) goto L_0x017c;
    L_0x016d:
        r6 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r6.zzhF();
        r6 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r6.zzx(r4);
        goto L_0x0194;
    L_0x017c:
        r4 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r4 = r4.zzhE();
        if (r4 == 0) goto L_0x0194;
    L_0x0186:
        r6 = r0.zzsP;
        r6 = r6.zzvR;
        r4 = r4.optJSONArray(r6);
        if (r4 == 0) goto L_0x0194;
    L_0x0190:
        r1 = r4.toString();
    L_0x0194:
        r46 = r1;
        r1 = new com.google.android.gms.internal.zzaaf;
        r4 = r0.zzsP;
        r6 = r4.zzvX;
        r4 = r0.zzsP;
        r10 = r4.zzvR;
        r4 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r13 = r4.getSessionId();
        r4 = r0.zzsP;
        r4 = r4.zzvT;
        r2 = r0.zzsP;
        r2 = r2.zzwq;
        r49 = r2;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r16 = r2.zzhs();
        r2 = r3.widthPixels;
        r50 = r15;
        r15 = r3.heightPixels;
        r3 = r3.density;
        r24 = com.google.android.gms.internal.zzmo.zzdJ();
        r51 = r2;
        r2 = r0.zzsP;
        r2 = r2.zzvQ;
        r52 = r2;
        r2 = r0.zzsP;
        r2 = r2.zzwj;
        r53 = r2;
        r2 = r0.zzsP;
        r27 = r2.zzce();
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r28 = com.google.android.gms.internal.zzagz.zzbf();
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r29 = com.google.android.gms.internal.zzagz.zzbh();
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r2 = r0.zzsP;
        r2 = r2.zzqD;
        r30 = com.google.android.gms.internal.zzagz.zzN(r2);
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r2 = r0.zzsP;
        r2 = r2.zzvU;
        r31 = com.google.android.gms.internal.zzagz.zzp(r2);
        r2 = r0.zzsP;
        r2 = r2.zzqD;
        r2 = r2 instanceof android.app.Activity;
        r54 = r2;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r33 = r2.zzhx();
        r2 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r36 = r2.zzhC();
        r2 = com.google.android.gms.ads.internal.zzbs.zzbW();
        r37 = r2.zzeE();
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r38 = com.google.android.gms.internal.zzagz.zzhS();
        r2 = com.google.android.gms.ads.internal.zzbs.zzbH();
        r39 = r2.zzib();
        r2 = r0.zzsP;
        r2 = r2.zzwl;
        r55 = r2;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbH();
        r41 = r2.zzic();
        r2 = com.google.android.gms.internal.zztp.zzeN();
        r42 = r2.asBundle();
        com.google.android.gms.ads.internal.zzbs.zzbD();
        r2 = r0.zzsP;
        r2 = r2.zzqD;
        r56 = r3;
        r3 = r0.zzsP;
        r3 = r3.zzvR;
        r57 = r4;
        r4 = "admob";
        r58 = r15;
        r15 = 0;
        r2 = r2.getSharedPreferences(r4, r15);
        r4 = java.util.Collections.emptySet();
        r15 = "never_pool_slots";
        r2 = r2.getStringSet(r15, r4);
        r43 = r2.contains(r3);
        r2 = r0.zzsP;
        r15 = r2.zzwn;
        r17 = r49;
        r18 = r51;
        r25 = r52;
        r26 = r53;
        r32 = r54;
        r40 = r55;
        r2 = r1;
        r19 = r56;
        r3 = r11;
        r11 = r57;
        r4 = r5;
        r5 = r6;
        r6 = r10;
        r10 = r13;
        r13 = r17;
        r48 = r15;
        r47 = r50;
        r45 = r58;
        r15 = r61;
        r17 = r18;
        r18 = r45;
        r45 = r48;
        r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzd.zza(com.google.android.gms.internal.zzir, android.os.Bundle, com.google.android.gms.internal.zzafj):com.google.android.gms.internal.zzaaf");
    }

    public final String getMediationAdapterClassName() {
        return this.zzsP.zzvY == null ? null : this.zzsP.zzvY.zzMI;
    }

    public void onAdClicked() {
        if (this.zzsP.zzvY == null) {
            zzajc.zzaT("Ad state was null when trying to ping click URLs.");
            return;
        }
        if (!(this.zzsP.zzvY.zzXN == null || this.zzsP.zzvY.zzXN.zzMa == null)) {
            zzbs.zzbS();
            zzuj.zza(this.zzsP.zzqD, this.zzsP.zzvT.zzaP, this.zzsP.zzvY, this.zzsP.zzvR, false, zzb(this.zzsP.zzvY.zzXN.zzMa));
        }
        if (!(this.zzsP.zzvY.zzMG == null || this.zzsP.zzvY.zzMG.zzLM == null)) {
            zzbs.zzbS();
            zzuj.zza(this.zzsP.zzqD, this.zzsP.zzvT.zzaP, this.zzsP.zzvY, this.zzsP.zzvR, false, this.zzsP.zzvY.zzMG.zzLM);
        }
        super.onAdClicked();
    }

    public final void onPause() {
        this.zzsR.zzi(this.zzsP.zzvY);
    }

    public final void onResume() {
        this.zzsR.zzj(this.zzsP.zzvY);
    }

    public void pause() {
        zzbo.zzcz("pause must be called on the main UI thread.");
        if (!(this.zzsP.zzvY == null || this.zzsP.zzvY.zzPg == null || !this.zzsP.zzcc())) {
            zzbs.zzbB();
            zzahe.zzk(this.zzsP.zzvY.zzPg);
        }
        if (!(this.zzsP.zzvY == null || this.zzsP.zzvY.zzMH == null)) {
            try {
                this.zzsP.zzvY.zzMH.pause();
            } catch (RemoteException unused) {
                zzajc.zzaT("Could not pause mediation adapter.");
            }
        }
        this.zzsR.zzi(this.zzsP.zzvY);
        this.zzsO.pause();
    }

    public final void recordImpression() {
        zza(this.zzsP.zzvY, false);
    }

    public void resume() {
        zzbo.zzcz("resume must be called on the main UI thread.");
        zzaka zzaka = (this.zzsP.zzvY == null || this.zzsP.zzvY.zzPg == null) ? null : this.zzsP.zzvY.zzPg;
        if (zzaka != null && this.zzsP.zzcc()) {
            zzbs.zzbB();
            zzahe.zzl(this.zzsP.zzvY.zzPg);
        }
        if (!(this.zzsP.zzvY == null || this.zzsP.zzvY.zzMH == null)) {
            try {
                this.zzsP.zzvY.zzMH.resume();
            } catch (RemoteException unused) {
                zzajc.zzaT("Could not resume mediation adapter.");
            }
        }
        if (zzaka == null || !zzaka.zziD()) {
            this.zzsO.resume();
        }
        this.zzsR.zzj(this.zzsP.zzvY);
    }

    public void showInterstitial() {
        throw new IllegalStateException("showInterstitial is not supported for current ad type");
    }

    /* Access modifiers changed, original: protected */
    public void zza(@Nullable zzaff zzaff, boolean z) {
        if (zzaff == null) {
            zzajc.zzaT("Ad state was null when trying to ping impression URLs.");
            return;
        }
        if (zzaff == null) {
            zzajc.zzaT("Ad state was null when trying to ping impression URLs.");
        } else {
            zzajc.zzaC("Pinging Impression URLs.");
            if (this.zzsP.zzwa != null) {
                this.zzsP.zzwa.zzhc();
            }
            if (!(zzaff.zzMb == null || zzaff.zzXU)) {
                zzbs.zzbz();
                zzagz.zza(this.zzsP.zzqD, this.zzsP.zzvT.zzaP, zzb(zzaff.zzMb));
                zzaff.zzXU = true;
            }
        }
        if (!(zzaff.zzXN == null || zzaff.zzXN.zzMb == null)) {
            zzbs.zzbS();
            zzuj.zza(this.zzsP.zzqD, this.zzsP.zzvT.zzaP, zzaff, this.zzsP.zzvR, z, zzb(zzaff.zzXN.zzMb));
        }
        if (!(zzaff.zzMG == null || zzaff.zzMG.zzLN == null)) {
            zzbs.zzbS();
            zzuj.zza(this.zzsP.zzqD, this.zzsP.zzvT.zzaP, zzaff, this.zzsP.zzvR, z, zzaff.zzMG.zzLN);
        }
    }

    public final void zza(zzpj zzpj, String str) {
        Object customTemplateId;
        zzpt zzpt = null;
        if (zzpj != null) {
            try {
                customTemplateId = zzpj.getCustomTemplateId();
            } catch (RemoteException e) {
                zzajc.zzc("Unable to call onCustomClick.", e);
                return;
            }
        }
        customTemplateId = null;
        if (!(this.zzsP.zzwh == null || customTemplateId == null)) {
            zzpt = (zzpt) this.zzsP.zzwh.get(customTemplateId);
        }
        if (zzpt == null) {
            zzajc.zzaT("Mediation adapter invoked onCustomClick but no listeners were set.");
        } else {
            zzpt.zzb(zzpj, str);
        }
    }

    /* Access modifiers changed, original: final */
    public final boolean zza(zzaff zzaff) {
        zzir zzir;
        boolean z = false;
        if (this.zzsQ != null) {
            zzir = this.zzsQ;
            this.zzsQ = null;
        } else {
            zzir = zzaff.zzSz;
            if (zzir.extras != null) {
                z = zzir.extras.getBoolean("_noRefresh", false);
            }
        }
        return zza(zzir, zzaff, z);
    }

    /* Access modifiers changed, original: protected */
    public boolean zza(@Nullable zzaff zzaff, zzaff zzaff2) {
        int i;
        if (!(zzaff == null || zzaff.zzMJ == null)) {
            zzaff.zzMJ.zza(null);
        }
        if (zzaff2.zzMJ != null) {
            zzaff2.zzMJ.zza((zzuc) this);
        }
        int i2 = 0;
        if (zzaff2.zzXN != null) {
            i2 = zzaff2.zzXN.zzMn;
            i = zzaff2.zzXN.zzMo;
        } else {
            i = 0;
        }
        this.zzsP.zzwr.zzg(i2, i);
        return true;
    }

    /* Access modifiers changed, original: protected */
    public boolean zza(zzir zzir, zzaff zzaff, boolean z) {
        if (!z && this.zzsP.zzcc()) {
            zzbi zzbi;
            long j;
            if (zzaff.zzMg > 0) {
                zzbi = this.zzsO;
                j = zzaff.zzMg;
            } else if (zzaff.zzXN != null && zzaff.zzXN.zzMg > 0) {
                zzbi = this.zzsO;
                j = zzaff.zzXN.zzMg;
            } else if (!zzaff.zzTo && zzaff.errorCode == 2) {
                this.zzsO.zzg(zzir);
            }
            zzbi.zza(zzir, j);
        }
        return this.zzsO.zzbo();
    }

    public boolean zza(zzir zzir, zznb zznb) {
        if (!zzaz()) {
            return false;
        }
        zzafj zzhD;
        zzbs.zzbz();
        zzgz zzA = zzbs.zzbD().zzA(this.zzsP.zzqD);
        String str = null;
        Bundle zza = zzA == null ? null : zzagz.zza(zzA);
        this.zzsO.cancel();
        this.zzsP.zzwt = 0;
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFO)).booleanValue()) {
            zzhD = zzbs.zzbD().zzhD();
            zzac zzbV = zzbs.zzbV();
            Context context = this.zzsP.zzqD;
            zzaje zzaje = this.zzsP.zzvT;
            String str2 = this.zzsP.zzvR;
            if (zzhD != null) {
                str = zzhD.zzhl();
            }
            zzbV.zza(context, zzaje, false, zzhD, str, str2, null);
        } else {
            zzhD = null;
        }
        zzaaf zza2 = zza(zzir, zza, zzhD);
        zznb.zzh("seq_num", zza2.zzSC);
        zznb.zzh("request_id", zza2.zzSM);
        zznb.zzh("session_id", zza2.zzSD);
        if (zza2.zzSA != null) {
            zznb.zzh("app_version", String.valueOf(zza2.zzSA.versionCode));
        }
        zzbt zzbt = this.zzsP;
        zzbs.zzbv();
        Context context2 = this.zzsP.zzqD;
        zzij zzij = this.zzsS.zztp;
        zzafp zzaaz = zza2.zzSz.extras.getBundle("sdk_less_server_data") != null ? new zzaaz(context2, zza2, this, zzij) : new zzzq(context2, zza2, this, zzij);
        zzaaz.zzhL();
        zzbt.zzvV = zzaaz;
        return true;
    }

    public void zzaA() {
        this.zzsY = false;
        zzap();
        this.zzsP.zzwa.zzhe();
    }

    public void zzaB() {
        this.zzsY = true;
        zzar();
    }

    public void zzaC() {
        onAdClicked();
    }

    public final void zzaD() {
        zzaA();
    }

    public final void zzaE() {
        zzaq();
    }

    public final void zzaF() {
        zzaB();
    }

    public final void zzaG() {
        if (this.zzsP.zzvY != null) {
            String str = this.zzsP.zzvY.zzMI;
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 74);
            stringBuilder.append("Mediation adapter ");
            stringBuilder.append(str);
            stringBuilder.append(" refreshed, but mediation adapters should never refresh.");
            zzajc.zzaT(stringBuilder.toString());
        }
        zza(this.zzsP.zzvY, true);
        zzas();
    }

    public void zzaH() {
        recordImpression();
    }

    public final String zzaI() {
        if (this.zzsP.zzvY == null) {
            return null;
        }
        String str = this.zzsP.zzvY.zzMI;
        Object obj = ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) ? 1 : null;
        if (!(obj == null || this.zzsP.zzvY.zzMG == null)) {
            try {
                return new JSONObject(this.zzsP.zzvY.zzMG.zzLP).getString("class_name");
            } catch (NullPointerException | JSONException unused) {
            }
        }
        return str;
    }

    public final void zzaJ() {
        zzbs.zzbz();
        zzagz.runOnUiThread(new zzg(this));
    }

    public final void zzaK() {
        zzbs.zzbz();
        zzagz.runOnUiThread(new zzh(this));
    }

    /* Access modifiers changed, original: protected */
    public boolean zzaz() {
        zzbs.zzbz();
        if (zzagz.zzc(this.zzsP.zzqD, this.zzsP.zzqD.getPackageName(), "android.permission.INTERNET")) {
            zzbs.zzbz();
            if (zzagz.zzD(this.zzsP.zzqD)) {
                return true;
            }
        }
        return false;
    }

    public final void zzb(zzaff zzaff) {
        super.zzb(zzaff);
        if (zzaff.zzMG != null) {
            zzajc.zzaC("Disable the debug gesture detector on the mediation ad frame.");
            if (this.zzsP.zzvU != null) {
                this.zzsP.zzvU.zzci();
            }
            zzajc.zzaC("Pinging network fill URLs.");
            zzbs.zzbS();
            zzuj.zza(this.zzsP.zzqD, this.zzsP.zzvT.zzaP, zzaff, this.zzsP.zzvR, false, zzaff.zzMG.zzLO);
            if (!(zzaff.zzXN == null || zzaff.zzXN.zzMd == null || zzaff.zzXN.zzMd.size() <= 0)) {
                zzajc.zzaC("Pinging urls remotely");
                zzbs.zzbz().zza(this.zzsP.zzqD, zzaff.zzXN.zzMd);
            }
        } else {
            zzajc.zzaC("Enable the debug gesture detector on the admob ad frame.");
            if (this.zzsP.zzvU != null) {
                this.zzsP.zzvU.zzch();
            }
        }
        if (zzaff.errorCode == 3 && zzaff.zzXN != null && zzaff.zzXN.zzMc != null) {
            zzajc.zzaC("Pinging no fill URLs.");
            zzbs.zzbS();
            zzuj.zza(this.zzsP.zzqD, this.zzsP.zzvT.zzaP, zzaff, this.zzsP.zzvR, false, zzaff.zzXN.zzMc);
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zzb(zzir zzir) {
        return super.zzb(zzir) && !this.zzsY;
    }

    public final void zze(String str, String str2) {
        onAppEvent(str, str2);
    }
}
