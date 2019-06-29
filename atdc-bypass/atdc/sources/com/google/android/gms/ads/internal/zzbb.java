package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import com.google.ads.AdRequest;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzafg;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzfk;
import com.google.android.gms.internal.zzir;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zznb;
import com.google.android.gms.internal.zznh;
import com.google.android.gms.internal.zznq;
import com.google.android.gms.internal.zzns;
import com.google.android.gms.internal.zznu;
import com.google.android.gms.internal.zznw;
import com.google.android.gms.internal.zznx;
import com.google.android.gms.internal.zzny;
import com.google.android.gms.internal.zznz;
import com.google.android.gms.internal.zzoa;
import com.google.android.gms.internal.zzpj;
import com.google.android.gms.internal.zzpt;
import com.google.android.gms.internal.zzpw;
import com.google.android.gms.internal.zzuq;
import com.google.android.gms.internal.zzvc;
import com.google.android.gms.internal.zzvf;
import com.google.android.gms.internal.zzxg;
import com.google.android.gms.internal.zzxx;
import com.google.android.gms.internal.zzyh;
import com.google.android.gms.internal.zzzn;
import java.util.List;

@zzzn
public final class zzbb extends zzd implements zznz {
    private final Object mLock = new Object();
    private boolean zzta;
    private zzaka zzuO;
    private zzyh zzuP;

    public zzbb(Context context, zzv zzv, zziv zziv, String str, zzuq zzuq, zzaje zzaje) {
        super(context, zziv, str, zzuq, zzaje, zzv);
    }

    private final void zza(zznq zznq) {
        zzagz.zzZr.post(new zzbd(this, zznq));
    }

    private final void zza(zzns zzns) {
        zzagz.zzZr.post(new zzbe(this, zzns));
    }

    private final void zzbn() {
        zzagz.zzb(new zzbh(this));
    }

    public final String getAdUnitId() {
        return this.zzsP.zzvR;
    }

    public final void pause() {
        throw new IllegalStateException("Native Ad DOES NOT support pause().");
    }

    public final void resume() {
        throw new IllegalStateException("Native Ad DOES NOT support resume().");
    }

    public final void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
    }

    public final void zza(zzafg zzafg, zznb zznb) {
        if (zzafg.zzvX != null) {
            this.zzsP.zzvX = zzafg.zzvX;
        }
        if (zzafg.errorCode != -2) {
            zzagz.zzZr.post(new zzbc(this, zzafg));
            return;
        }
        this.zzsP.zzwt = 0;
        zzbt zzbt = this.zzsP;
        zzbs.zzby();
        zzbt.zzvW = zzxx.zza(this.zzsP.zzqD, this, zzafg, this.zzsP.zzvS, null, this.zzsX, this, zznb);
        String str = "AdRenderer: ";
        String valueOf = String.valueOf(this.zzsP.zzvW.getClass().getName());
        zzajc.zzaC(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
    }

    public final void zza(zznh zznh) {
        throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
    }

    public final void zza(zznw zznw) {
        if (this.zzuO != null) {
            this.zzuO.zzb(zznw);
        }
    }

    public final void zza(zzny zzny) {
        if (this.zzsP.zzvY.zzXL != null) {
            zzbs.zzbD().zzhG().zza(this.zzsP.zzvX, this.zzsP.zzvY, new zzfk(zzny), null);
        }
    }

    public final void zza(zzxg zzxg) {
        throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zza(zzaff zzaff, zzaff zzaff2) {
        zzaff zzaff3 = zzaff2;
        List list = null;
        zzc(null);
        if (this.zzsP.zzcc()) {
            if (zzaff3.zzTo) {
                if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFu)).booleanValue()) {
                    zzbn();
                }
                try {
                    zzvc zzfq = zzaff3.zzMH != null ? zzaff3.zzMH.zzfq() : null;
                    zzvf zzfr = zzaff3.zzMH != null ? zzaff3.zzMH.zzfr() : null;
                    zzpj zzfv = zzaff3.zzMH != null ? zzaff3.zzMH.zzfv() : null;
                    String headline;
                    List images;
                    String body;
                    if (zzfq != null && this.zzsP.zzwf != null) {
                        headline = zzfq.getHeadline();
                        images = zzfq.getImages();
                        body = zzfq.getBody();
                        if (zzfq.zzeh() != null) {
                            list = zzfq.zzeh();
                        }
                        zzoa zznq = new zznq(headline, images, body, list, zzfq.getCallToAction(), zzfq.getStarRating(), zzfq.getStore(), zzfq.getPrice(), null, zzfq.getExtras(), zzfq.getVideoController(), null);
                        zznq zznq2 = zznq;
                        zznq2.zzb(new zznx(this.zzsP.zzqD, (zznz) this, this.zzsP.zzvS, zzfq, zznq));
                        zza(zznq2);
                    } else if (zzfr != null && this.zzsP.zzwg != null) {
                        headline = zzfr.getHeadline();
                        images = zzfr.getImages();
                        body = zzfr.getBody();
                        if (zzfr.zzem() != null) {
                            list = zzfr.zzem();
                        }
                        zzns zzns = new zzns(headline, images, body, list, zzfr.getCallToAction(), zzfr.getAdvertiser(), null, zzfr.getExtras(), zzfr.getVideoController(), null);
                        zzns.zzb(new zznx(this.zzsP.zzqD, (zznz) this, this.zzsP.zzvS, zzfr, (zzoa) zzns));
                        zza(zzns);
                    } else if (zzfv == null || this.zzsP.zzwi == null || this.zzsP.zzwi.get(zzfv.getCustomTemplateId()) == null) {
                        zzajc.zzaT("No matching mapper/listener for retrieved native ad template.");
                        zze(0);
                        return false;
                    } else {
                        zzagz.zzZr.post(new zzbg(this, zzfv));
                    }
                } catch (RemoteException e) {
                    zzajc.zzc("Failed to get native ad mapper", e);
                }
            } else {
                zzoa zzoa = zzaff3.zzXT;
                if ((zzoa instanceof zzns) && this.zzsP.zzwg != null) {
                    zza((zzns) zzaff3.zzXT);
                } else if (!(zzoa instanceof zznq) || this.zzsP.zzwf == null) {
                    if ((zzoa instanceof zznu) && this.zzsP.zzwi != null) {
                        zznu zznu = (zznu) zzoa;
                        if (this.zzsP.zzwi.get(zznu.getCustomTemplateId()) != null) {
                            zzagz.zzZr.post(new zzbf(this, zznu.getCustomTemplateId(), zzaff3));
                        }
                    }
                    zzajc.zzaT("No matching listener for retrieved native ad template.");
                    zze(0);
                    return false;
                } else {
                    zza((zznq) zzaff3.zzXT);
                }
            }
            return super.zza(zzaff, zzaff2);
        }
        throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zza(zzir zzir, zzaff zzaff, boolean z) {
        return this.zzsO.zzbo();
    }

    public final boolean zza(zzir zzir, zznb zznb) {
        try {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFu)).booleanValue()) {
                synchronized (this.mLock) {
                    this.zzuP = new zzyh(this.zzsP.zzqD, this, this.zzsP.zzvS, this.zzsP.zzvT);
                    this.zzuP.zzgs();
                    this.zzuP.zzgt();
                }
            }
            return super.zza(zzir, zznb);
        } catch (Exception e) {
            String str = "Error initializing webview.";
            if (zzajc.zzz(4)) {
                Log.i(AdRequest.LOGTAG, str, e);
            }
            return false;
        }
    }

    public final void zzaC() {
        if (this.zzsP.zzvY == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzsP.zzvY.zzMI)) {
            super.zzaC();
        } else {
            zzau();
        }
    }

    public final void zzaH() {
        if (this.zzsP.zzvY == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzsP.zzvY.zzMI)) {
            super.zzaH();
        } else {
            zzat();
        }
    }

    public final void zzaO() {
        if (this.zzuO != null) {
            this.zzuO.destroy();
            this.zzuO = null;
        }
    }

    public final boolean zzaP() {
        return this.zzsP.zzvY != null && this.zzsP.zzvY.zzTo && this.zzsP.zzvY.zzXN != null && this.zzsP.zzvY.zzXN.zzMm;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzas() {
        super.zzas();
        if (this.zzta) {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFC)).booleanValue()) {
                zzbj();
            }
        }
    }

    @Nullable
    public final zzyh zzbi() {
        zzyh zzyh;
        synchronized (this.mLock) {
            zzyh = this.zzuP;
        }
        return zzyh;
    }

    public final void zzbj() {
        if (this.zzsP.zzvY == null || this.zzuO == null) {
            this.zzta = true;
            zzajc.zzaT("Request to enable ActiveView before adState is available.");
            return;
        }
        zzbs.zzbD().zzhG().zza(this.zzsP.zzvX, this.zzsP.zzvY, this.zzuO.getView(), this.zzuO);
        this.zzta = false;
    }

    public final void zzbk() {
        this.zzta = false;
        if (this.zzsP.zzvY == null || this.zzuO == null) {
            zzajc.zzaT("Request to enable ActiveView before adState is available.");
        } else {
            zzbs.zzbD().zzhG().zzg(this.zzsP.zzvY);
        }
    }

    public final SimpleArrayMap<String, zzpw> zzbl() {
        zzbo.zzcz("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        return this.zzsP.zzwi;
    }

    public final void zzbm() {
        if (this.zzuO != null && this.zzuO.zziH() != null && this.zzsP.zzwj != null && this.zzsP.zzwj.zzIr != null) {
            this.zzuO.zziH().zzb(this.zzsP.zzwj.zzIr);
        }
    }

    public final void zzc(@Nullable List<String> list) {
        zzbo.zzcz("setNativeTemplates must be called on the main UI thread.");
        this.zzsP.zzwq = list;
    }

    public final void zzd(zzaka zzaka) {
        this.zzuO = zzaka;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zze(int i) {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFu)).booleanValue()) {
            zzbn();
        }
        super.zze(i);
    }

    @Nullable
    public final zzpt zzs(String str) {
        zzbo.zzcz("getOnCustomClickListener must be called on the main UI thread.");
        return (zzpt) this.zzsP.zzwh.get(str);
    }
}
