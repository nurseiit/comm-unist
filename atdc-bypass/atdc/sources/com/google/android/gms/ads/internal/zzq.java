package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzaak;
import com.google.android.gms.internal.zzaee;
import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzafg;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzir;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzks;
import com.google.android.gms.internal.zznh;
import com.google.android.gms.internal.zznq;
import com.google.android.gms.internal.zzns;
import com.google.android.gms.internal.zznw;
import com.google.android.gms.internal.zznx;
import com.google.android.gms.internal.zzny;
import com.google.android.gms.internal.zznz;
import com.google.android.gms.internal.zzoa;
import com.google.android.gms.internal.zzpj;
import com.google.android.gms.internal.zzpt;
import com.google.android.gms.internal.zzub;
import com.google.android.gms.internal.zzuq;
import com.google.android.gms.internal.zzvc;
import com.google.android.gms.internal.zzvf;
import com.google.android.gms.internal.zzzn;
import java.util.List;
import org.json.JSONObject;

@zzzn
public final class zzq extends zzd implements zznz {
    private boolean zzsu;
    private zzaff zztg;
    private boolean zzth = false;

    public zzq(Context context, zzv zzv, zziv zziv, String str, zzuq zzuq, zzaje zzaje) {
        super(context, zziv, str, zzuq, zzaje, zzv);
    }

    private static zzaff zza(zzafg zzafg, int i) {
        zzafg zzafg2 = zzafg;
        zzir zzir = zzafg2.zzUj.zzSz;
        List list = zzafg2.zzXY.zzMa;
        List list2 = zzafg2.zzXY.zzMb;
        List list3 = zzafg2.zzXY.zzTq;
        int i2 = zzafg2.zzXY.orientation;
        long j = zzafg2.zzXY.zzMg;
        String str = zzafg2.zzUj.zzSC;
        boolean z = zzafg2.zzXY.zzTo;
        zzub zzub = zzafg2.zzXN;
        long j2 = zzafg2.zzXY.zzTp;
        zziv zziv = zzafg2.zzvX;
        long j3 = j2;
        zzub zzub2 = zzub;
        long j4 = zzafg2.zzXY.zzTn;
        long j5 = zzafg2.zzXR;
        long j6 = zzafg2.zzXS;
        String str2 = zzafg2.zzXY.zzTt;
        JSONObject jSONObject = zzafg2.zzXL;
        zzaee zzaee = zzafg2.zzXY.zzTD;
        List list4 = zzafg2.zzXY.zzTE;
        List list5 = zzafg2.zzXY.zzTE;
        boolean z2 = zzafg2.zzXY.zzTG;
        zzaak zzaak = zzafg2.zzXY.zzTH;
        List list6 = zzafg2.zzXY.zzMd;
        JSONObject jSONObject2 = jSONObject;
        zziv zziv2 = zziv;
        String str3 = str2;
        long j7 = j4;
        j4 = j6;
        return new zzaff(zzir, null, list, i, list2, list3, i2, j, str, z, null, null, null, zzub2, null, j3, zziv2, j7, j5, j4, str3, jSONObject2, null, zzaee, list4, list5, z2, zzaak, null, list6, zzafg2.zzXY.zzTK, zzafg2.zzXX);
    }

    private final boolean zzb(zzaff zzaff, zzaff zzaff2) {
        zzaff zzaff3 = zzaff2;
        List list = null;
        zzc(null);
        if (this.zzsP.zzcc()) {
            try {
                Handler handler;
                Runnable zzs;
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
                    zzoa zzoa = zznq;
                    zzoa.zzb(new zznx(this.zzsP.zzqD, (zznz) this, this.zzsP.zzvS, zzfq, zznq));
                    handler = zzagz.zzZr;
                    zzs = new zzs(this, zzoa);
                } else if (zzfr != null && this.zzsP.zzwg != null) {
                    headline = zzfr.getHeadline();
                    images = zzfr.getImages();
                    body = zzfr.getBody();
                    if (zzfr.zzem() != null) {
                        list = zzfr.zzem();
                    }
                    zzns zzns = new zzns(headline, images, body, list, zzfr.getCallToAction(), zzfr.getAdvertiser(), null, zzfr.getExtras(), zzfr.getVideoController(), null);
                    zzns.zzb(new zznx(this.zzsP.zzqD, (zznz) this, this.zzsP.zzvS, zzfr, (zzoa) zzns));
                    handler = zzagz.zzZr;
                    zzs = new zzt(this, zzns);
                } else if (zzfv == null || this.zzsP.zzwi == null || this.zzsP.zzwi.get(zzfv.getCustomTemplateId()) == null) {
                    zzajc.zzaT("No matching mapper/listener for retrieved native ad template.");
                    zze(0);
                    return false;
                } else {
                    zzagz.zzZr.post(new zzu(this, zzfv));
                    return super.zza(zzaff, zzaff2);
                }
                handler.post(zzs);
                return super.zza(zzaff, zzaff2);
            } catch (RemoteException e) {
                zzajc.zzc("Failed to get native ad mapper", e);
            }
        } else {
            zzajc.zzaT("Native ad does not have custom rendering mode.");
        }
        zze(0);
        return false;
    }

    private final boolean zzc(zzaff zzaff, zzaff zzaff2) {
        View zzd = zzar.zzd(zzaff2);
        if (zzd == null) {
            return false;
        }
        View nextView = this.zzsP.zzvU.getNextView();
        if (nextView != null) {
            if (nextView instanceof zzaka) {
                ((zzaka) nextView).destroy();
            }
            this.zzsP.zzvU.removeView(nextView);
        }
        if (!zzar.zze(zzaff2)) {
            try {
                zzb(zzd);
            } catch (Throwable th) {
                zzbs.zzbD().zza(th, "AdLoaderManager.swapBannerViews");
                zzajc.zzc("Could not add mediation view to view hierarchy.", th);
                return false;
            }
        }
        if (this.zzsP.zzvU.getChildCount() > 1) {
            this.zzsP.zzvU.showNext();
        }
        if (zzaff != null) {
            View nextView2 = this.zzsP.zzvU.getNextView();
            if (nextView2 != null) {
                this.zzsP.zzvU.removeView(nextView2);
            }
            this.zzsP.zzcb();
        }
        this.zzsP.zzvU.setMinimumWidth(zzam().widthPixels);
        this.zzsP.zzvU.setMinimumHeight(zzam().heightPixels);
        this.zzsP.zzvU.requestLayout();
        this.zzsP.zzvU.setVisibility(0);
        return true;
    }

    @Nullable
    public final zzks getVideoController() {
        return null;
    }

    public final void pause() {
        if (this.zzth) {
            super.pause();
            return;
        }
        throw new IllegalStateException("Native Ad does not support pause().");
    }

    public final void resume() {
        if (this.zzth) {
            super.resume();
            return;
        }
        throw new IllegalStateException("Native Ad does not support resume().");
    }

    public final void setManualImpressionsEnabled(boolean z) {
        zzbo.zzcz("setManualImpressionsEnabled must be called from the main thread.");
        this.zzsu = z;
    }

    public final void showInterstitial() {
        throw new IllegalStateException("Interstitial is not supported by AdLoaderManager.");
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0026  */
    public final void zza(com.google.android.gms.internal.zzafg r11, com.google.android.gms.internal.zznb r12) {
        /*
        r10 = this;
        r0 = 0;
        r10.zztg = r0;
        r0 = r11.errorCode;
        r1 = 0;
        r2 = -2;
        if (r0 == r2) goto L_0x0012;
    L_0x0009:
        r0 = r11.errorCode;
        r0 = zza(r11, r0);
    L_0x000f:
        r10.zztg = r0;
        goto L_0x0022;
    L_0x0012:
        r0 = r11.zzXY;
        r0 = r0.zzTo;
        if (r0 != 0) goto L_0x0022;
    L_0x0018:
        r0 = "partialAdState is not mediation";
        com.google.android.gms.internal.zzajc.zzaT(r0);
        r0 = zza(r11, r1);
        goto L_0x000f;
    L_0x0022:
        r0 = r10.zztg;
        if (r0 == 0) goto L_0x0031;
    L_0x0026:
        r11 = com.google.android.gms.internal.zzagz.zzZr;
        r12 = new com.google.android.gms.ads.internal.zzr;
        r12.<init>(r10);
        r11.post(r12);
        return;
    L_0x0031:
        r0 = r11.zzvX;
        if (r0 == 0) goto L_0x003b;
    L_0x0035:
        r0 = r10.zzsP;
        r2 = r11.zzvX;
        r0.zzvX = r2;
    L_0x003b:
        r0 = r10.zzsP;
        r0.zzwt = r1;
        r0 = r10.zzsP;
        com.google.android.gms.ads.internal.zzbs.zzby();
        r1 = r10.zzsP;
        r2 = r1.zzqD;
        r1 = r10.zzsP;
        r5 = r1.zzvS;
        r6 = 0;
        r7 = r10.zzsX;
        r3 = r10;
        r4 = r11;
        r8 = r10;
        r9 = r12;
        r11 = com.google.android.gms.internal.zzxx.zza(r2, r3, r4, r5, r6, r7, r8, r9);
        r0.zzvW = r11;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzq.zza(com.google.android.gms.internal.zzafg, com.google.android.gms.internal.zznb):void");
    }

    public final void zza(zznh zznh) {
        throw new IllegalStateException("CustomRendering is not supported by AdLoaderManager.");
    }

    public final void zza(zznw zznw) {
        zzajc.zzaT("Unexpected call to AdLoaderManager method");
    }

    public final void zza(zzny zzny) {
        zzajc.zzaT("Unexpected call to AdLoaderManager method");
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x006f  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x006e A:{RETURN} */
    public final boolean zza(@android.support.annotation.Nullable com.google.android.gms.internal.zzaff r5, com.google.android.gms.internal.zzaff r6) {
        /*
        r4 = this;
        r0 = r4.zzsP;
        r0 = r0.zzcc();
        if (r0 != 0) goto L_0x0010;
    L_0x0008:
        r5 = new java.lang.IllegalStateException;
        r6 = "AdLoader API does not support custom rendering.";
        r5.<init>(r6);
        throw r5;
    L_0x0010:
        r0 = r6.zzTo;
        r1 = 0;
        if (r0 != 0) goto L_0x001e;
    L_0x0015:
        r4.zze(r1);
        r5 = "newState is not mediation.";
    L_0x001a:
        com.google.android.gms.internal.zzajc.zzaT(r5);
        return r1;
    L_0x001e:
        r0 = r6.zzMG;
        r2 = 1;
        if (r0 == 0) goto L_0x0072;
    L_0x0023:
        r0 = r6.zzMG;
        r0 = r0.zzfh();
        if (r0 == 0) goto L_0x0072;
    L_0x002b:
        r0 = r4.zzsP;
        r0 = r0.zzcc();
        if (r0 == 0) goto L_0x0046;
    L_0x0033:
        r0 = r4.zzsP;
        r0 = r0.zzvU;
        if (r0 == 0) goto L_0x0046;
    L_0x0039:
        r0 = r4.zzsP;
        r0 = r0.zzvU;
        r0 = r0.zzcf();
        r3 = r6.zzTt;
        r0.zzaP(r3);
    L_0x0046:
        r0 = super.zza(r5, r6);
        if (r0 != 0) goto L_0x004e;
    L_0x004c:
        r5 = 0;
        goto L_0x006c;
    L_0x004e:
        r0 = r4.zzsP;
        r0 = r0.zzcc();
        if (r0 == 0) goto L_0x0060;
    L_0x0056:
        r5 = r4.zzc(r5, r6);
        if (r5 != 0) goto L_0x0060;
    L_0x005c:
        r4.zze(r1);
        goto L_0x004c;
    L_0x0060:
        r5 = r4.zzsP;
        r5 = r5.zzcd();
        if (r5 != 0) goto L_0x006b;
    L_0x0068:
        super.zza(r6, r1);
    L_0x006b:
        r5 = 1;
    L_0x006c:
        if (r5 != 0) goto L_0x006f;
    L_0x006e:
        return r1;
    L_0x006f:
        r4.zzth = r2;
        goto L_0x0085;
    L_0x0072:
        r0 = r6.zzMG;
        if (r0 == 0) goto L_0x009b;
    L_0x0076:
        r0 = r6.zzMG;
        r0 = r0.zzfi();
        if (r0 == 0) goto L_0x009b;
    L_0x007e:
        r5 = r4.zzb(r5, r6);
        if (r5 != 0) goto L_0x0085;
    L_0x0084:
        return r1;
    L_0x0085:
        r5 = new java.util.ArrayList;
        r6 = new java.lang.Integer[r2];
        r0 = 2;
        r0 = java.lang.Integer.valueOf(r0);
        r6[r1] = r0;
        r6 = java.util.Arrays.asList(r6);
        r5.<init>(r6);
        r4.zzd(r5);
        return r2;
    L_0x009b:
        r4.zze(r1);
        r5 = "Response is neither banner nor native.";
        goto L_0x001a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzq.zza(com.google.android.gms.internal.zzaff, com.google.android.gms.internal.zzaff):boolean");
    }

    public final boolean zza(zzir zzir) {
        zzd zzd = this;
        zzir zzir2 = zzir;
        Object obj = (zzd.zzsP.zzwn != null && zzd.zzsP.zzwn.size() == 1 && ((Integer) zzd.zzsP.zzwn.get(0)).intValue() == 2) ? 1 : null;
        if (obj != null) {
            zzajc.e("Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported");
            zzd.zze(0);
            return false;
        } else if (zzd.zzsP.zzwm == null) {
            return super.zza(zzir);
        } else {
            if (zzir2.zzzS != zzd.zzsu) {
                int i = zzir2.versionCode;
                long j = zzir2.zzzN;
                Bundle bundle = zzir2.extras;
                int i2 = zzir2.zzzO;
                List list = zzir2.zzzP;
                boolean z = zzir2.zzzQ;
                int i3 = zzir2.zzzR;
                boolean z2 = zzir2.zzzS || zzd.zzsu;
                zzir2 = new zzir(i, j, bundle, i2, list, z, i3, z2, zzir2.zzzT, zzir2.zzzU, zzir2.zzzV, zzir2.zzzW, zzir2.zzzX, zzir2.zzzY, zzir2.zzzZ, zzir2.zzAa, zzir2.zzAb, zzir2.zzAc);
                zzd = this;
            }
            return super.zza(zzir2);
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zza(zzir zzir, zzaff zzaff, boolean z) {
        return false;
    }

    public final void zzaC() {
        if (this.zzsP.zzvY == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzsP.zzvY.zzMI) || this.zzsP.zzvY.zzMG == null || !this.zzsP.zzvY.zzMG.zzfi()) {
            super.zzaC();
        } else {
            zzau();
        }
    }

    public final void zzaH() {
        if (this.zzsP.zzvY == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzsP.zzvY.zzMI) || this.zzsP.zzvY.zzMG == null || !this.zzsP.zzvY.zzMG.zzfi()) {
            super.zzaH();
        } else {
            zzat();
        }
    }

    public final void zzaO() {
        zzajc.zzaT("Unexpected call to AdLoaderManager method");
    }

    public final boolean zzaP() {
        return this.zzsP.zzvY != null && this.zzsP.zzvY.zzTo && this.zzsP.zzvY.zzXN != null && this.zzsP.zzvY.zzXN.zzMm;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzas() {
        super.zzas();
        zzaff zzaff = this.zzsP.zzvY;
        if (!(zzaff == null || zzaff.zzMG == null || !zzaff.zzMG.zzfh() || this.zzsP.zzwm == null)) {
            try {
                this.zzsP.zzwm.zza(this, zzn.zzw(this.zzsP.zzqD));
            } catch (RemoteException e) {
                zzajc.zzc("Could not call PublisherAdViewLoadedListener.onPublisherAdViewLoaded().", e);
            }
        }
    }

    public final void zzc(@Nullable List<String> list) {
        zzbo.zzcz("setNativeTemplates must be called on the main UI thread.");
        this.zzsP.zzwq = list;
    }

    public final void zzd(List<Integer> list) {
        zzbo.zzcz("setAllowedAdTypes must be called on the main UI thread.");
        this.zzsP.zzwn = list;
    }

    @Nullable
    public final zzpt zzs(String str) {
        zzbo.zzcz("getOnCustomClickListener must be called on the main UI thread.");
        return (zzpt) this.zzsP.zzwh.get(str);
    }
}
