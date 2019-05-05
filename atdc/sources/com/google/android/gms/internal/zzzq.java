package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzbs;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzzq extends zzafp implements zzzw {
    private final Context mContext;
    private zzaae zzMM;
    private zzub zzMu;
    private zzaai zzQR;
    private Runnable zzQS;
    private final Object zzQT = new Object();
    private final zzzp zzSm;
    private final zzaaf zzSn;
    private final zzij zzSo;
    zzahp zzSp;

    public zzzq(Context context, zzaaf zzaaf, zzzp zzzp, zzij zzij) {
        this.zzSm = zzzp;
        this.mContext = context;
        this.zzSn = zzaaf;
        this.zzSo = zzij;
    }

    private final zziv zzb(zzaae zzaae) throws zzzt {
        Object obj = (this.zzMM == null || this.zzMM.zzwn == null || this.zzMM.zzwn.size() <= 1) ? null : 1;
        if (obj != null && this.zzMu != null && !this.zzMu.zzMp) {
            return null;
        }
        int parseInt;
        if (this.zzQR.zzAw) {
            for (zziv zziv : zzaae.zzvX.zzAu) {
                if (zziv.zzAw) {
                    return new zziv(zziv, zzaae.zzvX.zzAu);
                }
            }
        }
        if (this.zzQR.zzTr == null) {
            throw new zzzt("The ad response must specify one of the supported ad sizes.", 0);
        }
        String[] split = this.zzQR.zzTr.split("x");
        String str;
        String valueOf;
        if (split.length != 2) {
            str = "Invalid ad size format from the ad response: ";
            valueOf = String.valueOf(this.zzQR.zzTr);
            throw new zzzt(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
        }
        try {
            parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            for (zziv zziv2 : zzaae.zzvX.zzAu) {
                float f = this.mContext.getResources().getDisplayMetrics().density;
                int i = zziv2.width == -1 ? (int) (((float) zziv2.widthPixels) / f) : zziv2.width;
                int i2 = zziv2.height == -2 ? (int) (((float) zziv2.heightPixels) / f) : zziv2.height;
                if (parseInt == i && parseInt2 == i2 && !zziv2.zzAw) {
                    return new zziv(zziv2, zzaae.zzvX.zzAu);
                }
            }
            str = "The ad size from the ad response was not one of the requested sizes: ";
            valueOf = String.valueOf(this.zzQR.zzTr);
            throw new zzzt(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
        } catch (NumberFormatException unused) {
            str = "Invalid ad size number from the ad response: ";
            valueOf = String.valueOf(this.zzQR.zzTr);
            throw new zzzt(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
        }
    }

    private final void zzd(int i, String str) {
        zzaae zzaae;
        int i2 = i;
        if (i2 == 3 || i2 == -1) {
            zzajc.zzaS(str);
        } else {
            zzajc.zzaT(str);
        }
        this.zzQR = this.zzQR == null ? new zzaai(i2) : new zzaai(i2, this.zzQR.zzMg);
        if (this.zzMM != null) {
            zzaae = this.zzMM;
        } else {
            zzaae zzaae2 = new zzaae(this.zzSn, -1, null, null, null);
        }
        this.zzSm.zza(new zzafg(zzaae, this.zzQR, this.zzMu, null, i2, -1, this.zzQR.zzTs, null, this.zzSo));
    }

    public final void onStop() {
        synchronized (this.zzQT) {
            if (this.zzSp != null) {
                this.zzSp.cancel();
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final zzahp zza(zzaje zzaje, zzajp<zzaae> zzajp) {
        Context context = this.mContext;
        if (new zzzv(context).zza(zzaje)) {
            zzajc.zzaC("Fetching ad response from local ad request service.");
            zzaab zzaab = new zzaab(context, zzajp, this);
            zzaab.zzgp();
            return zzaab;
        }
        zzajc.zzaC("Fetching ad response from remote ad request service.");
        zzji.zzds();
        if (zzaiy.zzX(context)) {
            return new zzaac(context, zzaje, zzajp, this);
        }
        zzajc.zzaT("Failed to connect to remote ad request service.");
        return null;
    }

    public final void zza(@NonNull zzaai zzaai) {
        String str;
        zzajc.zzaC("Received ad response.");
        this.zzQR = zzaai;
        long elapsedRealtime = zzbs.zzbF().elapsedRealtime();
        synchronized (this.zzQT) {
            this.zzSp = null;
        }
        zzbs.zzbD().zzf(this.mContext, this.zzQR.zzSV);
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzDY)).booleanValue()) {
            SharedPreferences sharedPreferences;
            Set hashSet;
            Context context;
            Set stringSet;
            if (this.zzQR.zzTh) {
                zzbs.zzbD();
                context = this.mContext;
                str = this.zzMM.zzvR;
                sharedPreferences = context.getSharedPreferences("admob", 0);
                stringSet = sharedPreferences.getStringSet("never_pool_slots", Collections.emptySet());
                if (!stringSet.contains(str)) {
                    hashSet = new HashSet(stringSet);
                    hashSet.add(str);
                }
            } else {
                zzbs.zzbD();
                context = this.mContext;
                str = this.zzMM.zzvR;
                sharedPreferences = context.getSharedPreferences("admob", 0);
                stringSet = sharedPreferences.getStringSet("never_pool_slots", Collections.emptySet());
                if (stringSet.contains(str)) {
                    hashSet = new HashSet(stringSet);
                    hashSet.remove(str);
                }
            }
            Editor edit = sharedPreferences.edit();
            edit.putStringSet("never_pool_slots", hashSet);
            edit.apply();
        }
        try {
            if (this.zzQR.errorCode == -2 || this.zzQR.errorCode == -3) {
                JSONObject jSONObject;
                if (this.zzQR.errorCode != -3) {
                    if (TextUtils.isEmpty(this.zzQR.body)) {
                        throw new zzzt("No fill from ad server.", 3);
                    }
                    zzbs.zzbD().zze(this.mContext, this.zzQR.zzSH);
                    if (this.zzQR.zzTo) {
                        this.zzMu = new zzub(this.zzQR.body);
                        zzbs.zzbD().zzz(this.zzMu.zzMe);
                    } else {
                        zzbs.zzbD().zzz(this.zzQR.zzMe);
                    }
                    if (!TextUtils.isEmpty(this.zzQR.zzSW)) {
                        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzGf)).booleanValue()) {
                            zzajc.zzaC("Received cookie from server. Setting webview cookie in CookieManager.");
                            CookieManager zzS = zzbs.zzbB().zzS(this.mContext);
                            if (zzS != null) {
                                zzS.setCookie("googleads.g.doubleclick.net", this.zzQR.zzSW);
                            }
                        }
                    }
                }
                zziv zzb = this.zzMM.zzvX.zzAu != null ? zzb(this.zzMM) : null;
                zzbs.zzbD().zzx(this.zzQR.zzTy);
                zzbs.zzbD().zzy(this.zzQR.zzTL);
                if (!TextUtils.isEmpty(this.zzQR.zzTw)) {
                    try {
                        jSONObject = new JSONObject(this.zzQR.zzTw);
                    } catch (Exception e) {
                        zzajc.zzb("Error parsing the JSON for Active View.", e);
                    }
                    this.zzSm.zza(new zzafg(this.zzMM, this.zzQR, this.zzMu, zzb, -2, elapsedRealtime, this.zzQR.zzTs, jSONObject, this.zzSo));
                    zzagz.zzZr.removeCallbacks(this.zzQS);
                    return;
                }
                jSONObject = null;
                this.zzSm.zza(new zzafg(this.zzMM, this.zzQR, this.zzMu, zzb, -2, elapsedRealtime, this.zzQR.zzTs, jSONObject, this.zzSo));
                zzagz.zzZr.removeCallbacks(this.zzQS);
                return;
            }
            int i = this.zzQR.errorCode;
            StringBuilder stringBuilder = new StringBuilder(66);
            stringBuilder.append("There was a problem getting an ad response. ErrorCode: ");
            stringBuilder.append(i);
            throw new zzzt(stringBuilder.toString(), this.zzQR.errorCode);
        } catch (JSONException e2) {
            zzajc.zzb("Could not parse mediation config.", e2);
            String str2 = "Could not parse mediation config: ";
            str = String.valueOf(this.zzQR.body);
            throw new zzzt(str.length() != 0 ? str2.concat(str) : new String(str2), 0);
        } catch (zzzt e3) {
            zzd(e3.getErrorCode(), e3.getMessage());
        }
    }

    public final void zzbd() {
        zzajc.zzaC("AdLoaderBackgroundTask started.");
        this.zzQS = new zzzr(this);
        zzagz.zzZr.postDelayed(this.zzQS, ((Long) zzbs.zzbL().zzd(zzmo.zzEK)).longValue());
        long elapsedRealtime = zzbs.zzbF().elapsedRealtime();
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEI)).booleanValue() && this.zzSn.zzSz.extras != null) {
            String string = this.zzSn.zzSz.extras.getString("_ad");
            if (string != null) {
                this.zzMM = new zzaae(this.zzSn, elapsedRealtime, null, null, null);
                zza(zzabt.zza(this.mContext, this.zzMM, string));
                return;
            }
        }
        zzajt zzajt = new zzajt();
        zzagt.zza(new zzzs(this, zzajt));
        String zzu = zzbs.zzbY().zzu(this.mContext);
        String zzv = zzbs.zzbY().zzv(this.mContext);
        String zzw = zzbs.zzbY().zzw(this.mContext);
        zzbs.zzbY().zzh(this.mContext, zzw);
        this.zzMM = new zzaae(this.zzSn, elapsedRealtime, zzu, zzv, zzw);
        zzajt.zzf(this.zzMM);
    }
}
