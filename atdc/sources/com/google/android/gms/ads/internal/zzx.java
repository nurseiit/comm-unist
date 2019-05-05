package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzaet;
import com.google.android.gms.internal.zzaev;
import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzafg;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzakm;
import com.google.android.gms.internal.zzge;
import com.google.android.gms.internal.zzir;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzks;
import com.google.android.gms.internal.zzuq;
import com.google.android.gms.internal.zzvc;
import com.google.android.gms.internal.zzvf;
import com.google.android.gms.internal.zzzn;
import java.lang.ref.WeakReference;
import java.util.List;

@zzzn
public final class zzx extends zzi implements OnGlobalLayoutListener, OnScrollChangedListener {
    private boolean zzsu;
    private WeakReference<Object> zzts = new WeakReference(null);

    public zzx(Context context, zziv zziv, String str, zzuq zzuq, zzaje zzaje, zzv zzv) {
        super(context, zziv, str, zzuq, zzaje, zzv);
    }

    private final boolean zzd(@Nullable zzaff zzaff, zzaff zzaff2) {
        if (zzaff2.zzTo) {
            View zzd = zzar.zzd(zzaff2);
            if (zzd == null) {
                zzajc.zzaT("Could not get mediation view");
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
                    if (zzbs.zzbY().zzq(this.zzsP.zzqD)) {
                        new zzge(this.zzsP.zzqD, zzd).zza(new zzaev(this.zzsP.zzqD, this.zzsP.zzvR));
                    }
                    zzb(zzd);
                } catch (Throwable th) {
                    zzbs.zzbD().zza(th, "BannerAdManager.swapViews");
                    zzajc.zzc("Could not add mediation view to view hierarchy.", th);
                    return false;
                }
            }
        } else if (!(zzaff2.zzXP == null || zzaff2.zzPg == null)) {
            zzaff2.zzPg.zza(zzaff2.zzXP);
            this.zzsP.zzvU.removeAllViews();
            this.zzsP.zzvU.setMinimumWidth(zzaff2.zzXP.widthPixels);
            this.zzsP.zzvU.setMinimumHeight(zzaff2.zzXP.heightPixels);
            zzb(zzaff2.zzPg.getView());
        }
        if (this.zzsP.zzvU.getChildCount() > 1) {
            this.zzsP.zzvU.showNext();
        }
        if (zzaff != null) {
            View nextView2 = this.zzsP.zzvU.getNextView();
            if (nextView2 instanceof zzaka) {
                ((zzaka) nextView2).zza(this.zzsP.zzqD, this.zzsP.zzvX, this.zzsK);
            } else if (nextView2 != null) {
                this.zzsP.zzvU.removeView(nextView2);
            }
            this.zzsP.zzcb();
        }
        this.zzsP.zzvU.setVisibility(0);
        return true;
    }

    @Nullable
    public final zzks getVideoController() {
        zzbo.zzcz("getVideoController must be called from the main thread.");
        return (this.zzsP.zzvY == null || this.zzsP.zzvY.zzPg == null) ? null : this.zzsP.zzvY.zzPg.zziH();
    }

    public final void onGlobalLayout() {
        zzc(this.zzsP.zzvY);
    }

    public final void onScrollChanged() {
        zzc(this.zzsP.zzvY);
    }

    public final void setManualImpressionsEnabled(boolean z) {
        zzbo.zzcz("setManualImpressionsEnabled must be called from the main thread.");
        this.zzsu = z;
    }

    public final void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
    }

    /* Access modifiers changed, original: protected|final */
    public final zzaka zza(zzafg zzafg, @Nullable zzw zzw, @Nullable zzaet zzaet) throws zzakm {
        if (this.zzsP.zzvX.zzAu == null && this.zzsP.zzvX.zzAw) {
            zziv zziv;
            zzbt zzbt = this.zzsP;
            if (zzafg.zzXY.zzAw) {
                zziv = this.zzsP.zzvX;
            } else {
                AdSize adSize;
                String str = zzafg.zzXY.zzTr;
                if (str != null) {
                    String[] split = str.split("[xX]");
                    split[0] = split[0].trim();
                    split[1] = split[1].trim();
                    adSize = new AdSize(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
                } else {
                    adSize = this.zzsP.zzvX.zzdl();
                }
                zziv = new zziv(this.zzsP.zzqD, adSize);
            }
            zzbt.zzvX = zziv;
        }
        return super.zza(zzafg, zzw, zzaet);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(@Nullable zzaff zzaff, boolean z) {
        super.zza(zzaff, z);
        if (zzar.zze(zzaff)) {
            zzab zzab = new zzab(this);
            if (zzaff != null && zzar.zze(zzaff)) {
                zzaka zzaka = zzaff.zzPg;
                Object view = zzaka != null ? zzaka.getView() : null;
                if (view == null) {
                    zzajc.zzaT("AdWebView is null");
                    return;
                }
                try {
                    List list = zzaff.zzMG != null ? zzaff.zzMG.zzLV : null;
                    if (list != null) {
                        if (!list.isEmpty()) {
                            zzvc zzfq = zzaff.zzMH != null ? zzaff.zzMH.zzfq() : null;
                            zzvf zzfr = zzaff.zzMH != null ? zzaff.zzMH.zzfr() : null;
                            if (list.contains("2") && zzfq != null) {
                                zzfq.zzm(zzn.zzw(view));
                                if (!zzfq.getOverrideImpressionRecording()) {
                                    zzfq.recordImpression();
                                }
                                zzaka.zziw().zza("/nativeExpressViewClicked", zzar.zza(zzfq, null, zzab));
                                return;
                            } else if (!list.contains("1") || zzfr == null) {
                                zzajc.zzaT("No matching template id and mapper");
                                return;
                            } else {
                                zzfr.zzm(zzn.zzw(view));
                                if (!zzfr.getOverrideImpressionRecording()) {
                                    zzfr.recordImpression();
                                }
                                zzaka.zziw().zza("/nativeExpressViewClicked", zzar.zza(null, zzfr, zzab));
                                return;
                            }
                        }
                    }
                    zzajc.zzaT("No template ids present in mediation response");
                } catch (RemoteException e) {
                    zzajc.zzc("Error occurred while recording impression and registering for clicks", e);
                }
            }
        }
    }

    /* JADX WARNING: Missing block: B:22:0x006d, code skipped:
            if (((java.lang.Boolean) com.google.android.gms.ads.internal.zzbs.zzbL().zzd(com.google.android.gms.internal.zzmo.zzFo)).booleanValue() != false) goto L_0x006f;
     */
    public final boolean zza(@android.support.annotation.Nullable com.google.android.gms.internal.zzaff r4, com.google.android.gms.internal.zzaff r5) {
        /*
        r3 = this;
        r0 = super.zza(r4, r5);
        r1 = 0;
        if (r0 != 0) goto L_0x0008;
    L_0x0007:
        return r1;
    L_0x0008:
        r0 = r3.zzsP;
        r0 = r0.zzcc();
        if (r0 == 0) goto L_0x001a;
    L_0x0010:
        r4 = r3.zzd(r4, r5);
        if (r4 != 0) goto L_0x001a;
    L_0x0016:
        r3.zze(r1);
        return r1;
    L_0x001a:
        r4 = r5.zzTG;
        if (r4 == 0) goto L_0x0055;
    L_0x001e:
        r3.zzc(r5);
        com.google.android.gms.ads.internal.zzbs.zzbX();
        r4 = r3.zzsP;
        r4 = r4.zzvU;
        com.google.android.gms.internal.zzajv.zza(r4, r3);
        com.google.android.gms.ads.internal.zzbs.zzbX();
        r4 = r3.zzsP;
        r4 = r4.zzvU;
        com.google.android.gms.internal.zzajv.zza(r4, r3);
        r4 = r5.zzXM;
        if (r4 != 0) goto L_0x0072;
    L_0x0039:
        r4 = new com.google.android.gms.ads.internal.zzy;
        r4.<init>(r3);
        r0 = r5.zzPg;
        if (r0 == 0) goto L_0x0049;
    L_0x0042:
        r0 = r5.zzPg;
        r0 = r0.zziw();
        goto L_0x004a;
    L_0x0049:
        r0 = 0;
    L_0x004a:
        if (r0 == 0) goto L_0x0072;
    L_0x004c:
        r1 = new com.google.android.gms.ads.internal.zzz;
        r1.<init>(r3, r5, r4);
        r0.zza(r1);
        goto L_0x0072;
    L_0x0055:
        r4 = r3.zzsP;
        r4 = r4.zzcd();
        if (r4 == 0) goto L_0x006f;
    L_0x005d:
        r4 = com.google.android.gms.internal.zzmo.zzFo;
        r0 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r4 = r0.zzd(r4);
        r4 = (java.lang.Boolean) r4;
        r4 = r4.booleanValue();
        if (r4 == 0) goto L_0x0072;
    L_0x006f:
        r3.zza(r5, r1);
    L_0x0072:
        r4 = r5.zzPg;
        if (r4 == 0) goto L_0x0096;
    L_0x0076:
        r4 = r5.zzPg;
        r4 = r4.zziH();
        r0 = r5.zzPg;
        r0 = r0.zziw();
        if (r0 == 0) goto L_0x0087;
    L_0x0084:
        r0.zziV();
    L_0x0087:
        r0 = r3.zzsP;
        r0 = r0.zzwk;
        if (r0 == 0) goto L_0x0096;
    L_0x008d:
        if (r4 == 0) goto L_0x0096;
    L_0x008f:
        r0 = r3.zzsP;
        r0 = r0.zzwk;
        r4.zzb(r0);
    L_0x0096:
        r4 = r3.zzsP;
        r4 = r4.zzcc();
        if (r4 == 0) goto L_0x00f7;
    L_0x009e:
        r4 = r5.zzPg;
        if (r4 == 0) goto L_0x010e;
    L_0x00a2:
        r4 = r5.zzXL;
        if (r4 == 0) goto L_0x00af;
    L_0x00a6:
        r4 = r3.zzsR;
        r0 = r3.zzsP;
        r0 = r0.zzvX;
        r4.zza(r0, r5);
    L_0x00af:
        r4 = new com.google.android.gms.internal.zzge;
        r0 = r3.zzsP;
        r0 = r0.zzqD;
        r1 = r5.zzPg;
        r1 = r1.getView();
        r4.<init>(r0, r1);
        r0 = com.google.android.gms.ads.internal.zzbs.zzbY();
        r1 = r3.zzsP;
        r1 = r1.zzqD;
        r0 = r0.zzq(r1);
        if (r0 == 0) goto L_0x00dc;
    L_0x00cc:
        r0 = new com.google.android.gms.internal.zzaev;
        r1 = r3.zzsP;
        r1 = r1.zzqD;
        r2 = r3.zzsP;
        r2 = r2.zzvR;
        r0.<init>(r1, r2);
        r4.zza(r0);
    L_0x00dc:
        r0 = r5.zzcn();
        if (r0 == 0) goto L_0x00e8;
    L_0x00e2:
        r5 = r5.zzPg;
        r4.zza(r5);
        goto L_0x010e;
    L_0x00e8:
        r0 = r5.zzPg;
        r0 = r0.zziw();
        r1 = new com.google.android.gms.ads.internal.zzaa;
        r1.<init>(r3, r4, r5);
        r0.zza(r1);
        goto L_0x010e;
    L_0x00f7:
        r4 = r3.zzsP;
        r4 = r4.zzws;
        if (r4 == 0) goto L_0x010e;
    L_0x00fd:
        r4 = r5.zzXL;
        if (r4 == 0) goto L_0x010e;
    L_0x0101:
        r4 = r3.zzsR;
        r0 = r3.zzsP;
        r0 = r0.zzvX;
        r1 = r3.zzsP;
        r1 = r1.zzws;
        r4.zza(r0, r5, r1);
    L_0x010e:
        r4 = 1;
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzx.zza(com.google.android.gms.internal.zzaff, com.google.android.gms.internal.zzaff):boolean");
    }

    public final boolean zza(zzir zzir) {
        zzi zzi = this;
        zzir zzir2 = zzir;
        if (zzir2.zzzS != zzi.zzsu) {
            int i = zzir2.versionCode;
            long j = zzir2.zzzN;
            Bundle bundle = zzir2.extras;
            int i2 = zzir2.zzzO;
            List list = zzir2.zzzP;
            boolean z = zzir2.zzzQ;
            int i3 = zzir2.zzzR;
            boolean z2 = zzir2.zzzS || zzi.zzsu;
            zzir2 = new zzir(i, j, bundle, i2, list, z, i3, z2, zzir2.zzzT, zzir2.zzzU, zzir2.zzzV, zzir2.zzzW, zzir2.zzzX, zzir2.zzzY, zzir2.zzzZ, zzir2.zzAa, zzir2.zzAb, zzir2.zzAc);
            zzi = this;
        }
        return super.zza(zzir2);
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zzaz() {
        boolean z;
        zzbs.zzbz();
        if (zzagz.zzc(this.zzsP.zzqD, this.zzsP.zzqD.getPackageName(), "android.permission.INTERNET")) {
            z = true;
        } else {
            zzji.zzds().zza(this.zzsP.zzvU, this.zzsP.zzvX, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            z = false;
        }
        zzbs.zzbz();
        if (!zzagz.zzD(this.zzsP.zzqD)) {
            zzji.zzds().zza(this.zzsP.zzvU, this.zzsP.zzvX, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            z = false;
        }
        if (!(z || this.zzsP.zzvU == null)) {
            this.zzsP.zzvU.setVisibility(0);
        }
        return z;
    }

    /* Access modifiers changed, original: final */
    public final void zzc(@Nullable zzaff zzaff) {
        if (zzaff != null && !zzaff.zzXM && this.zzsP.zzvU != null && zzbs.zzbz().zza(this.zzsP.zzvU, this.zzsP.zzqD) && this.zzsP.zzvU.getGlobalVisibleRect(new Rect(), null)) {
            if (!(zzaff == null || zzaff.zzPg == null || zzaff.zzPg.zziw() == null)) {
                zzaff.zzPg.zziw().zza(null);
            }
            zza(zzaff, false);
            zzaff.zzXM = true;
        }
    }
}
