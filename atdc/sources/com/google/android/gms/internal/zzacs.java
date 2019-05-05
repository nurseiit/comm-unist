package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.ads.internal.zzbt;
import com.google.android.gms.ads.internal.zzd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.dynamic.zzn;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzacs extends zzd implements zzadt {
    private static zzacs zzWr;
    private static final zzup zzWs = new zzup();
    private final Map<String, zzadz> zzWt = new HashMap();
    private boolean zzWu;
    private boolean zzuj;

    public zzacs(Context context, zzv zzv, zziv zziv, zzuq zzuq, zzaje zzaje) {
        super(context, zziv, null, zzuq, zzaje, zzv);
        zzWr = this;
    }

    private static zzafg zzc(zzafg zzafg) {
        zzafg zzafg2 = zzafg;
        zzafr.v("Creating mediation ad response for non-mediated rewarded ad.");
        try {
            String jSONObject = zzabt.zzb(zzafg2.zzXY).toString();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, zzafg2.zzUj.zzvR);
            zzua zzua = new zzua(jSONObject, null, Arrays.asList(new String[]{"com.google.ads.mediation.admob.AdMobAdapter"}), null, null, Collections.emptyList(), Collections.emptyList(), jSONObject2.toString(), null, Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList(), null);
            zzub zzub = new zzub(Arrays.asList(new zzua[]{zzua}), ((Long) zzbs.zzbL().zzd(zzmo.zzEL)).longValue(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), false, "", -1, 0, 1, null, 0, -1, -1, false);
            return new zzafg(zzafg2.zzUj, zzafg2.zzXY, zzub, zzafg2.zzvX, zzafg2.errorCode, zzafg2.zzXR, zzafg2.zzXS, zzafg2.zzXL, zzafg2.zzXX);
        } catch (JSONException e) {
            zzajc.zzb("Unable to generate ad state for non-mediated rewarded video.", e);
            return new zzafg(zzafg2.zzUj, zzafg2.zzXY, null, zzafg2.zzvX, 0, zzafg2.zzXR, zzafg2.zzXS, zzafg2.zzXL, zzafg2.zzXX);
        }
    }

    public static zzacs zzgO() {
        return zzWr;
    }

    public final void destroy() {
        zzbo.zzcz("destroy must be called on the main UI thread.");
        for (String str : this.zzWt.keySet()) {
            String str2;
            try {
                zzadz zzadz = (zzadz) this.zzWt.get(str2);
                if (!(zzadz == null || zzadz.zzgW() == null)) {
                    zzadz.zzgW().destroy();
                }
            } catch (RemoteException unused) {
                String str3 = "Fail to destroy adapter: ";
                str2 = String.valueOf(str2);
                zzajc.zzaT(str2.length() != 0 ? str3.concat(str2) : new String(str3));
            }
        }
    }

    public final boolean isLoaded() {
        zzbo.zzcz("isLoaded must be called on the main UI thread.");
        return this.zzsP.zzvV == null && this.zzsP.zzvW == null && this.zzsP.zzvY != null && !this.zzWu;
    }

    public final void onContextChanged(@NonNull Context context) {
        for (zzadz zzgW : this.zzWt.values()) {
            try {
                zzgW.zzgW().zzk(zzn.zzw(context));
            } catch (RemoteException e) {
                zzajc.zzb("Unable to call Adapter.onContextChanged.", e);
            }
        }
    }

    public final void onRewardedVideoAdClosed() {
        zzap();
    }

    public final void onRewardedVideoAdLeftApplication() {
        zzaq();
    }

    public final void onRewardedVideoAdOpened() {
        zza(this.zzsP.zzvY, false);
        zzar();
    }

    public final void onRewardedVideoStarted() {
        if (!(this.zzsP.zzvY == null || this.zzsP.zzvY.zzMG == null)) {
            zzbs.zzbS();
            zzuj.zza(this.zzsP.zzqD, this.zzsP.zzvT.zzaP, this.zzsP.zzvY, this.zzsP.zzvR, false, this.zzsP.zzvY.zzMG.zzLQ);
        }
        zzav();
    }

    public final void pause() {
        zzbo.zzcz("pause must be called on the main UI thread.");
        for (String str : this.zzWt.keySet()) {
            String str2;
            try {
                zzadz zzadz = (zzadz) this.zzWt.get(str2);
                if (!(zzadz == null || zzadz.zzgW() == null)) {
                    zzadz.zzgW().pause();
                }
            } catch (RemoteException unused) {
                String str3 = "Fail to pause adapter: ";
                str2 = String.valueOf(str2);
                zzajc.zzaT(str2.length() != 0 ? str3.concat(str2) : new String(str3));
            }
        }
    }

    public final void resume() {
        zzbo.zzcz("resume must be called on the main UI thread.");
        for (String str : this.zzWt.keySet()) {
            String str2;
            try {
                zzadz zzadz = (zzadz) this.zzWt.get(str2);
                if (!(zzadz == null || zzadz.zzgW() == null)) {
                    zzadz.zzgW().resume();
                }
            } catch (RemoteException unused) {
                String str3 = "Fail to resume adapter: ";
                str2 = String.valueOf(str2);
                zzajc.zzaT(str2.length() != 0 ? str3.concat(str2) : new String(str3));
            }
        }
    }

    public final void setImmersiveMode(boolean z) {
        zzbo.zzcz("setImmersiveMode must be called on the main UI thread.");
        this.zzuj = z;
    }

    public final void zza(zzadj zzadj) {
        zzbo.zzcz("loadAd must be called on the main UI thread.");
        if (TextUtils.isEmpty(zzadj.zzvR)) {
            zzajc.zzaT("Invalid ad unit id. Aborting.");
            zzagz.zzZr.post(new zzact(this));
            return;
        }
        this.zzWu = false;
        this.zzsP.zzvR = zzadj.zzvR;
        super.zza(zzadj.zzSz);
    }

    public final void zza(zzafg zzafg, zznb zznb) {
        if (zzafg.errorCode != -2) {
            zzagz.zzZr.post(new zzacu(this, zzafg));
            return;
        }
        this.zzsP.zzvZ = zzafg;
        if (zzafg.zzXN == null) {
            this.zzsP.zzvZ = zzc(zzafg);
        }
        this.zzsP.zzwt = 0;
        zzbt zzbt = this.zzsP;
        zzbs.zzby();
        zzadw zzadw = new zzadw(this.zzsP.zzqD, this.zzsP.zzvZ, this);
        String str = "AdRenderer: ";
        String valueOf = String.valueOf(zzadw.getClass().getName());
        zzajc.zzaC(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        zzadw.zzgp();
        zzbt.zzvW = zzadw;
    }

    public final boolean zza(zzaff zzaff, zzaff zzaff2) {
        return true;
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zza(zzir zzir, zzaff zzaff, boolean z) {
        return false;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzap() {
        this.zzsP.zzvY = null;
        super.zzap();
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003b  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0036  */
    @android.support.annotation.Nullable
    public final com.google.android.gms.internal.zzadz zzav(java.lang.String r5) {
        /*
        r4 = this;
        r0 = r4.zzWt;
        r0 = r0.get(r5);
        r0 = (com.google.android.gms.internal.zzadz) r0;
        if (r0 != 0) goto L_0x0043;
    L_0x000a:
        r1 = r4.zzsX;	 Catch:{ Exception -> 0x0029 }
        r2 = "com.google.ads.mediation.admob.AdMobAdapter";
        r2 = r2.equals(r5);	 Catch:{ Exception -> 0x0029 }
        if (r2 == 0) goto L_0x0016;
    L_0x0014:
        r1 = zzWs;	 Catch:{ Exception -> 0x0029 }
    L_0x0016:
        r2 = new com.google.android.gms.internal.zzadz;	 Catch:{ Exception -> 0x0029 }
        r1 = r1.zzah(r5);	 Catch:{ Exception -> 0x0029 }
        r2.<init>(r1, r4);	 Catch:{ Exception -> 0x0029 }
        r0 = r4.zzWt;	 Catch:{ Exception -> 0x0026 }
        r0.put(r5, r2);	 Catch:{ Exception -> 0x0026 }
        r0 = r2;
        return r0;
    L_0x0026:
        r1 = move-exception;
        r0 = r2;
        goto L_0x002a;
    L_0x0029:
        r1 = move-exception;
    L_0x002a:
        r2 = "Fail to instantiate adapter ";
        r5 = java.lang.String.valueOf(r5);
        r3 = r5.length();
        if (r3 == 0) goto L_0x003b;
    L_0x0036:
        r5 = r2.concat(r5);
        goto L_0x0040;
    L_0x003b:
        r5 = new java.lang.String;
        r5.<init>(r2);
    L_0x0040:
        com.google.android.gms.internal.zzajc.zzc(r5, r1);
    L_0x0043:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzacs.zzav(java.lang.String):com.google.android.gms.internal.zzadz");
    }

    public final void zzc(@Nullable zzaee zzaee) {
        if (!(this.zzsP.zzvY == null || this.zzsP.zzvY.zzMG == null)) {
            zzbs.zzbS();
            zzuj.zza(this.zzsP.zzqD, this.zzsP.zzvT.zzaP, this.zzsP.zzvY, this.zzsP.zzvR, false, this.zzsP.zzvY.zzMG.zzLR);
        }
        if (!(this.zzsP.zzvY == null || this.zzsP.zzvY.zzXN == null || TextUtils.isEmpty(this.zzsP.zzvY.zzXN.zzMh))) {
            zzaee = new zzaee(this.zzsP.zzvY.zzXN.zzMh, this.zzsP.zzvY.zzXN.zzMi);
        }
        zza(zzaee);
    }

    public final void zzgP() {
        zzbo.zzcz("showAd must be called on the main UI thread.");
        if (isLoaded()) {
            this.zzWu = true;
            zzadz zzav = zzav(this.zzsP.zzvY.zzMI);
            if (!(zzav == null || zzav.zzgW() == null)) {
                try {
                    zzav.zzgW().setImmersiveMode(this.zzuj);
                    zzav.zzgW().showVideo();
                    return;
                } catch (RemoteException e) {
                    zzajc.zzc("Could not call showVideo.", e);
                }
            }
            return;
        }
        zzajc.zzaT("The reward video has not loaded.");
    }

    public final void zzgQ() {
        onAdClicked();
    }
}
