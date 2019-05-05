package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zzwy;
import com.google.android.gms.internal.zzzn;
import java.util.Collections;

@zzzn
public final class zzm extends zzwy implements zzaj {
    private static int zzOF = Color.argb(0, 0, 0, 0);
    private final Activity mActivity;
    private zzaka zzJH;
    AdOverlayInfoParcel zzOG;
    private zzr zzOH;
    private zzae zzOI;
    private boolean zzOJ = false;
    private FrameLayout zzOK;
    private CustomViewCallback zzOL;
    private boolean zzOM = false;
    private boolean zzON = false;
    private zzq zzOO;
    private boolean zzOP = false;
    private int zzOQ = 0;
    private final Object zzOR = new Object();
    private Runnable zzOS;
    private boolean zzOT;
    private boolean zzOU;
    private boolean zzOV = false;
    private boolean zzOW = false;
    private boolean zzOX = true;

    public zzm(Activity activity) {
        this.mActivity = activity;
    }

    private final void zzfM() {
        if (this.mActivity.isFinishing() && !this.zzOV) {
            this.zzOV = true;
            if (this.zzJH != null) {
                this.zzJH.zzA(this.zzOQ);
                synchronized (this.zzOR) {
                    if (this.zzOT || !this.zzJH.zziI()) {
                    } else {
                        this.zzOS = new zzo(this);
                        zzagz.zzZr.postDelayed(this.zzOS, ((Long) zzbs.zzbL().zzd(zzmo.zzDS)).longValue());
                        return;
                    }
                }
            }
            zzfN();
        }
    }

    private final void zzfP() {
        this.zzJH.zzfP();
    }

    private final void zzr(boolean z) {
        int intValue = ((Integer) zzbs.zzbL().zzd(zzmo.zzGB)).intValue();
        zzaf zzaf = new zzaf();
        zzaf.size = 50;
        zzaf.paddingLeft = z ? intValue : 0;
        zzaf.paddingRight = z ? 0 : intValue;
        zzaf.paddingTop = 0;
        zzaf.paddingBottom = intValue;
        this.zzOI = new zzae(this.mActivity, zzaf, this);
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        this.zzOI.zza(z, this.zzOG.zzPj);
        this.zzOO.addView(this.zzOI, layoutParams);
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x00a6  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00a1  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00ab  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0112  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0123  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01d3  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0133 A:{SYNTHETIC, Splitter:B:58:0x0133} */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0200  */
    /* JADX WARNING: Removed duplicated region for block: B:92:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0225  */
    /* JADX WARNING: Missing block: B:41:0x00c5, code skipped:
            if (r0.mActivity.getResources().getConfiguration().orientation == 1) goto L_0x00c7;
     */
    /* JADX WARNING: Missing block: B:47:0x00e6, code skipped:
            if (r0.mActivity.getResources().getConfiguration().orientation == 2) goto L_0x00c7;
     */
    private final void zzs(boolean r19) throws com.google.android.gms.ads.internal.overlay.zzp {
        /*
        r18 = this;
        r0 = r18;
        r2 = r0.zzOU;
        r3 = 1;
        if (r2 != 0) goto L_0x000c;
    L_0x0007:
        r2 = r0.mActivity;
        r2.requestWindowFeature(r3);
    L_0x000c:
        r2 = r0.mActivity;
        r2 = r2.getWindow();
        if (r2 != 0) goto L_0x001c;
    L_0x0014:
        r1 = new com.google.android.gms.ads.internal.overlay.zzp;
        r2 = "Invalid activity, no window available.";
        r1.<init>(r2);
        throw r1;
    L_0x001c:
        r4 = com.google.android.gms.common.util.zzq.isAtLeastN();
        if (r4 == 0) goto L_0x0048;
    L_0x0022:
        r4 = com.google.android.gms.internal.zzmo.zzGz;
        r5 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r4 = r5.zzd(r4);
        r4 = (java.lang.Boolean) r4;
        r4 = r4.booleanValue();
        if (r4 == 0) goto L_0x0048;
    L_0x0034:
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r4 = r0.mActivity;
        r5 = r0.mActivity;
        r5 = r5.getResources();
        r5 = r5.getConfiguration();
        r4 = com.google.android.gms.internal.zzagz.zza(r4, r5);
        goto L_0x0049;
    L_0x0048:
        r4 = 1;
    L_0x0049:
        r5 = r0.zzOG;
        r5 = r5.zzPo;
        r6 = 0;
        if (r5 == 0) goto L_0x005a;
    L_0x0050:
        r5 = r0.zzOG;
        r5 = r5.zzPo;
        r5 = r5.zzus;
        if (r5 == 0) goto L_0x005a;
    L_0x0058:
        r5 = 1;
        goto L_0x005b;
    L_0x005a:
        r5 = 0;
    L_0x005b:
        r7 = r0.zzON;
        if (r7 == 0) goto L_0x0061;
    L_0x005f:
        if (r5 == 0) goto L_0x0097;
    L_0x0061:
        if (r4 == 0) goto L_0x0097;
    L_0x0063:
        r4 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r2.setFlags(r4, r4);
        r4 = com.google.android.gms.internal.zzmo.zzDT;
        r5 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r4 = r5.zzd(r4);
        r4 = (java.lang.Boolean) r4;
        r4 = r4.booleanValue();
        if (r4 == 0) goto L_0x0097;
    L_0x007a:
        r4 = com.google.android.gms.common.util.zzq.zzsc();
        if (r4 == 0) goto L_0x0097;
    L_0x0080:
        r4 = r0.zzOG;
        r4 = r4.zzPo;
        if (r4 == 0) goto L_0x0097;
    L_0x0086:
        r4 = r0.zzOG;
        r4 = r4.zzPo;
        r4 = r4.zzux;
        if (r4 == 0) goto L_0x0097;
    L_0x008e:
        r4 = r2.getDecorView();
        r5 = 4098; // 0x1002 float:5.743E-42 double:2.0247E-320;
        r4.setSystemUiVisibility(r5);
    L_0x0097:
        r4 = r0.zzOG;
        r4 = r4.zzPg;
        r4 = r4.zziw();
        if (r4 == 0) goto L_0x00a6;
    L_0x00a1:
        r4 = r4.zzcn();
        goto L_0x00a7;
    L_0x00a6:
        r4 = 0;
    L_0x00a7:
        r0.zzOP = r6;
        if (r4 == 0) goto L_0x00e9;
    L_0x00ab:
        r5 = r0.zzOG;
        r5 = r5.orientation;
        r7 = com.google.android.gms.ads.internal.zzbs.zzbB();
        r7 = r7.zzhT();
        if (r5 != r7) goto L_0x00cb;
    L_0x00b9:
        r5 = r0.mActivity;
        r5 = r5.getResources();
        r5 = r5.getConfiguration();
        r5 = r5.orientation;
        if (r5 != r3) goto L_0x00c8;
    L_0x00c7:
        r6 = 1;
    L_0x00c8:
        r0.zzOP = r6;
        goto L_0x00e9;
    L_0x00cb:
        r5 = r0.zzOG;
        r5 = r5.orientation;
        r7 = com.google.android.gms.ads.internal.zzbs.zzbB();
        r7 = r7.zzhU();
        if (r5 != r7) goto L_0x00e9;
    L_0x00d9:
        r5 = r0.mActivity;
        r5 = r5.getResources();
        r5 = r5.getConfiguration();
        r5 = r5.orientation;
        r7 = 2;
        if (r5 != r7) goto L_0x00c8;
    L_0x00e8:
        goto L_0x00c7;
    L_0x00e9:
        r5 = r0.zzOP;
        r6 = 46;
        r7 = new java.lang.StringBuilder;
        r7.<init>(r6);
        r6 = "Delay onShow to next orientation change: ";
        r7.append(r6);
        r7.append(r5);
        r5 = r7.toString();
        com.google.android.gms.internal.zzajc.zzaC(r5);
        r5 = r0.zzOG;
        r5 = r5.orientation;
        r0.setRequestedOrientation(r5);
        r5 = com.google.android.gms.ads.internal.zzbs.zzbB();
        r2 = r5.zza(r2);
        if (r2 == 0) goto L_0x0117;
    L_0x0112:
        r2 = "Hardware acceleration on the AdActivity window enabled.";
        com.google.android.gms.internal.zzajc.zzaC(r2);
    L_0x0117:
        r2 = r0.zzON;
        if (r2 != 0) goto L_0x0123;
    L_0x011b:
        r2 = r0.zzOO;
        r5 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
    L_0x011f:
        r2.setBackgroundColor(r5);
        goto L_0x0128;
    L_0x0123:
        r2 = r0.zzOO;
        r5 = zzOF;
        goto L_0x011f;
    L_0x0128:
        r2 = r0.mActivity;
        r5 = r0.zzOO;
        r2.setContentView(r5);
        r0.zzOU = r3;
        if (r19 == 0) goto L_0x01d3;
    L_0x0133:
        r7 = com.google.android.gms.ads.internal.zzbs.zzbA();	 Catch:{ Exception -> 0x01cb }
        r8 = r0.mActivity;	 Catch:{ Exception -> 0x01cb }
        r2 = r0.zzOG;	 Catch:{ Exception -> 0x01cb }
        r2 = r2.zzPg;	 Catch:{ Exception -> 0x01cb }
        r9 = r2.zzam();	 Catch:{ Exception -> 0x01cb }
        r10 = 1;
        r12 = 0;
        r2 = r0.zzOG;	 Catch:{ Exception -> 0x01cb }
        r13 = r2.zzvT;	 Catch:{ Exception -> 0x01cb }
        r14 = 0;
        r15 = 0;
        r2 = r0.zzOG;	 Catch:{ Exception -> 0x01cb }
        r2 = r2.zzPg;	 Catch:{ Exception -> 0x01cb }
        r16 = r2.zzak();	 Catch:{ Exception -> 0x01cb }
        r17 = com.google.android.gms.internal.zzig.zzde();	 Catch:{ Exception -> 0x01cb }
        r11 = r4;
        r2 = r7.zza(r8, r9, r10, r11, r12, r13, r14, r15, r16, r17);	 Catch:{ Exception -> 0x01cb }
        r0.zzJH = r2;	 Catch:{ Exception -> 0x01cb }
        r2 = r0.zzJH;
        r5 = r2.zziw();
        r6 = 0;
        r7 = 0;
        r2 = r0.zzOG;
        r8 = r2.zzPh;
        r2 = r0.zzOG;
        r9 = r2.zzPl;
        r10 = 1;
        r11 = 0;
        r2 = r0.zzOG;
        r2 = r2.zzPg;
        r2 = r2.zziw();
        r12 = r2.zziO();
        r13 = 0;
        r14 = 0;
        r5.zza(r6, r7, r8, r9, r10, r11, r12, r13, r14);
        r2 = r0.zzJH;
        r2 = r2.zziw();
        r5 = new com.google.android.gms.ads.internal.overlay.zzn;
        r5.<init>(r0);
        r2.zza(r5);
        r2 = r0.zzOG;
        r2 = r2.url;
        if (r2 == 0) goto L_0x019d;
    L_0x0193:
        r2 = r0.zzJH;
        r5 = r0.zzOG;
        r5 = r5.url;
        r2.loadUrl(r5);
        goto L_0x01b5;
    L_0x019d:
        r2 = r0.zzOG;
        r2 = r2.zzPk;
        if (r2 == 0) goto L_0x01c3;
    L_0x01a3:
        r5 = r0.zzJH;
        r2 = r0.zzOG;
        r6 = r2.zzPi;
        r2 = r0.zzOG;
        r7 = r2.zzPk;
        r8 = "text/html";
        r9 = "UTF-8";
        r10 = 0;
        r5.loadDataWithBaseURL(r6, r7, r8, r9, r10);
    L_0x01b5:
        r2 = r0.zzOG;
        r2 = r2.zzPg;
        if (r2 == 0) goto L_0x01e0;
    L_0x01bb:
        r2 = r0.zzOG;
        r2 = r2.zzPg;
        r2.zzc(r0);
        goto L_0x01e0;
    L_0x01c3:
        r1 = new com.google.android.gms.ads.internal.overlay.zzp;
        r2 = "No URL or HTML to display in ad overlay.";
        r1.<init>(r2);
        throw r1;
    L_0x01cb:
        r1 = new com.google.android.gms.ads.internal.overlay.zzp;
        r2 = "Could not obtain webview for the overlay.";
        r1.<init>(r2);
        throw r1;
    L_0x01d3:
        r2 = r0.zzOG;
        r2 = r2.zzPg;
        r0.zzJH = r2;
        r2 = r0.zzJH;
        r5 = r0.mActivity;
        r2.setContext(r5);
    L_0x01e0:
        r2 = r0.zzJH;
        r2.zzb(r0);
        r2 = r0.zzJH;
        r2 = r2.getParent();
        if (r2 == 0) goto L_0x01fc;
    L_0x01ed:
        r5 = r2 instanceof android.view.ViewGroup;
        if (r5 == 0) goto L_0x01fc;
    L_0x01f1:
        r2 = (android.view.ViewGroup) r2;
        r5 = r0.zzJH;
        r5 = r5.getView();
        r2.removeView(r5);
    L_0x01fc:
        r2 = r0.zzON;
        if (r2 == 0) goto L_0x0205;
    L_0x0200:
        r2 = r0.zzJH;
        r2.zziN();
    L_0x0205:
        r2 = r0.zzOO;
        r5 = r0.zzJH;
        r5 = r5.getView();
        r6 = -1;
        r2.addView(r5, r6, r6);
        if (r19 != 0) goto L_0x021a;
    L_0x0213:
        r1 = r0.zzOP;
        if (r1 != 0) goto L_0x021a;
    L_0x0217:
        r18.zzfP();
    L_0x021a:
        r0.zzr(r4);
        r1 = r0.zzJH;
        r1 = r1.zzix();
        if (r1 == 0) goto L_0x0228;
    L_0x0225:
        r0.zza(r4, r3);
    L_0x0228:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzs(boolean):void");
    }

    public final void close() {
        this.zzOQ = 2;
        this.mActivity.finish();
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
    }

    public final void onBackPressed() {
        this.zzOQ = 0;
    }

    public final void onCreate(Bundle bundle) {
        this.mActivity.requestWindowFeature(1);
        this.zzOM = bundle != null ? bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false) : false;
        try {
            this.zzOG = AdOverlayInfoParcel.zzb(this.mActivity.getIntent());
            if (this.zzOG == null) {
                throw new zzp("Could not get info for ad overlay.");
            }
            if (this.zzOG.zzvT.zzaaP > 7500000) {
                this.zzOQ = 3;
            }
            if (this.mActivity.getIntent() != null) {
                this.zzOX = this.mActivity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.zzOG.zzPo != null) {
                this.zzON = this.zzOG.zzPo.zzur;
            } else {
                this.zzON = false;
            }
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFh)).booleanValue() && this.zzON && this.zzOG.zzPo.zzuw != -1) {
                new zzs(this, null).zzhL();
            }
            if (bundle == null) {
                if (this.zzOG.zzPf != null && this.zzOX) {
                    this.zzOG.zzPf.zzaB();
                }
                if (!(this.zzOG.zzPm == 1 || this.zzOG.zzPe == null)) {
                    this.zzOG.zzPe.onAdClicked();
                }
            }
            this.zzOO = new zzq(this.mActivity, this.zzOG.zzPn, this.zzOG.zzvT.zzaP);
            this.zzOO.setId(1000);
            switch (this.zzOG.zzPm) {
                case 1:
                    zzs(false);
                    return;
                case 2:
                    this.zzOH = new zzr(this.zzOG.zzPg);
                    zzs(false);
                    return;
                case 3:
                    zzs(true);
                    return;
                case 4:
                    if (this.zzOM) {
                        this.zzOQ = 3;
                        this.mActivity.finish();
                        return;
                    }
                    zzbs.zzbw();
                    if (!zza.zza(this.mActivity, this.zzOG.zzPd, this.zzOG.zzPl)) {
                        this.zzOQ = 3;
                        this.mActivity.finish();
                    }
                    return;
                default:
                    throw new zzp("Could not determine ad overlay type.");
            }
        } catch (zzp e) {
            zzajc.zzaT(e.getMessage());
            this.zzOQ = 3;
            this.mActivity.finish();
        }
    }

    public final void onDestroy() {
        if (this.zzJH != null) {
            this.zzOO.removeView(this.zzJH.getView());
        }
        zzfM();
    }

    public final void onPause() {
        zzfI();
        if (this.zzOG.zzPf != null) {
            this.zzOG.zzPf.onPause();
        }
        if (!(((Boolean) zzbs.zzbL().zzd(zzmo.zzGA)).booleanValue() || this.zzJH == null || (this.mActivity.isFinishing() && this.zzOH != null))) {
            zzbs.zzbB();
            zzahe.zzk(this.zzJH);
        }
        zzfM();
    }

    public final void onRestart() {
    }

    public final void onResume() {
        if (this.zzOG != null && this.zzOG.zzPm == 4) {
            if (this.zzOM) {
                this.zzOQ = 3;
                this.mActivity.finish();
            } else {
                this.zzOM = true;
            }
        }
        if (this.zzOG.zzPf != null) {
            this.zzOG.zzPf.onResume();
        }
        if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzGA)).booleanValue()) {
            if (this.zzJH == null || this.zzJH.isDestroyed()) {
                zzajc.zzaT("The webview does not exist. Ignoring action.");
            } else {
                zzbs.zzbB();
                zzahe.zzl(this.zzJH);
            }
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzOM);
    }

    public final void onStart() {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzGA)).booleanValue()) {
            if (this.zzJH == null || this.zzJH.isDestroyed()) {
                zzajc.zzaT("The webview does not exist. Ignoring action.");
            } else {
                zzbs.zzbB();
                zzahe.zzl(this.zzJH);
            }
        }
    }

    public final void onStop() {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzGA)).booleanValue() && this.zzJH != null && (!this.mActivity.isFinishing() || this.zzOH == null)) {
            zzbs.zzbB();
            zzahe.zzk(this.zzJH);
        }
        zzfM();
    }

    public final void setRequestedOrientation(int i) {
        this.mActivity.setRequestedOrientation(i);
    }

    public final void zza(View view, CustomViewCallback customViewCallback) {
        this.zzOK = new FrameLayout(this.mActivity);
        this.zzOK.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.zzOK.addView(view, -1, -1);
        this.mActivity.setContentView(this.zzOK);
        this.zzOU = true;
        this.zzOL = customViewCallback;
        this.zzOJ = true;
    }

    public final void zza(boolean z, boolean z2) {
        if (this.zzOI != null) {
            this.zzOI.zza(z, z2);
        }
    }

    public final void zzaa() {
        this.zzOU = true;
    }

    public final void zzfI() {
        if (this.zzOG != null && this.zzOJ) {
            setRequestedOrientation(this.zzOG.orientation);
        }
        if (this.zzOK != null) {
            this.mActivity.setContentView(this.zzOO);
            this.zzOU = true;
            this.zzOK.removeAllViews();
            this.zzOK = null;
        }
        if (this.zzOL != null) {
            this.zzOL.onCustomViewHidden();
            this.zzOL = null;
        }
        this.zzOJ = false;
    }

    public final void zzfJ() {
        this.zzOQ = 1;
        this.mActivity.finish();
    }

    public final boolean zzfK() {
        this.zzOQ = 0;
        if (this.zzJH == null) {
            return true;
        }
        boolean zziC = this.zzJH.zziC();
        if (!zziC) {
            this.zzJH.zza("onbackblocked", Collections.emptyMap());
        }
        return zziC;
    }

    public final void zzfL() {
        this.zzOO.removeView(this.zzOI);
        zzr(true);
    }

    /* Access modifiers changed, original: final */
    public final void zzfN() {
        if (!this.zzOW) {
            this.zzOW = true;
            if (this.zzJH != null) {
                this.zzOO.removeView(this.zzJH.getView());
                if (this.zzOH != null) {
                    this.zzJH.setContext(this.zzOH.zzqD);
                    this.zzJH.zzA(false);
                    this.zzOH.parent.addView(this.zzJH.getView(), this.zzOH.index, this.zzOH.zzPa);
                    this.zzOH = null;
                } else if (this.mActivity.getApplicationContext() != null) {
                    this.zzJH.setContext(this.mActivity.getApplicationContext());
                }
                this.zzJH = null;
            }
            if (!(this.zzOG == null || this.zzOG.zzPf == null)) {
                this.zzOG.zzPf.zzaA();
            }
        }
    }

    public final void zzfO() {
        if (this.zzOP) {
            this.zzOP = false;
            zzfP();
        }
    }

    public final void zzfQ() {
        this.zzOO.zzOZ = true;
    }

    public final void zzfR() {
        synchronized (this.zzOR) {
            this.zzOT = true;
            if (this.zzOS != null) {
                zzagz.zzZr.removeCallbacks(this.zzOS);
                zzagz.zzZr.post(this.zzOS);
            }
        }
    }

    public final void zzo(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzGz)).booleanValue() && zzq.isAtLeastN()) {
            Configuration configuration = (Configuration) zzn.zzE(iObjectWrapper);
            zzbs.zzbz();
            if (zzagz.zza(this.mActivity, configuration)) {
                this.mActivity.getWindow().addFlags(1024);
                this.mActivity.getWindow().clearFlags(2048);
                return;
            }
            this.mActivity.getWindow().addFlags(2048);
            this.mActivity.getWindow().clearFlags(1024);
        }
    }
}
