package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Keep;
import android.support.annotation.Nullable;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzacr;
import com.google.android.gms.internal.zzacy;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzjz;
import com.google.android.gms.internal.zzki;
import com.google.android.gms.internal.zzkn;
import com.google.android.gms.internal.zzop;
import com.google.android.gms.internal.zzow;
import com.google.android.gms.internal.zzuq;
import com.google.android.gms.internal.zzwx;
import com.google.android.gms.internal.zzxj;
import com.google.android.gms.internal.zzzn;

@Keep
@KeepForSdkWithMembers
@DynamiteApi
@zzzn
public class ClientApi extends zzki {
    public zzju createAdLoaderBuilder(IObjectWrapper iObjectWrapper, String str, zzuq zzuq, int i) {
        Context context = (Context) zzn.zzE(iObjectWrapper);
        zzbs.zzbz();
        return new zzak(context, str, zzuq, new zzaje(zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE, i, true, zzagz.zzO(context)), zzv.zzaQ());
    }

    public zzwx createAdOverlay(IObjectWrapper iObjectWrapper) {
        return new zzm((Activity) zzn.zzE(iObjectWrapper));
    }

    public zzjz createBannerAdManager(IObjectWrapper iObjectWrapper, zziv zziv, String str, zzuq zzuq, int i) throws RemoteException {
        Context context = (Context) zzn.zzE(iObjectWrapper);
        zzbs.zzbz();
        return new zzx(context, zziv, str, zzuq, new zzaje(zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE, i, true, zzagz.zzO(context)), zzv.zzaQ());
    }

    public zzxj createInAppPurchaseManager(IObjectWrapper iObjectWrapper) {
        return null;
    }

    /* JADX WARNING: Missing block: B:3:0x0034, code skipped:
            if (((java.lang.Boolean) com.google.android.gms.ads.internal.zzbs.zzbL().zzd(com.google.android.gms.internal.zzmo.zzDY)).booleanValue() == false) goto L_0x0036;
     */
    /* JADX WARNING: Missing block: B:6:0x0048, code skipped:
            if (((java.lang.Boolean) com.google.android.gms.ads.internal.zzbs.zzbL().zzd(com.google.android.gms.internal.zzmo.zzDZ)).booleanValue() != false) goto L_0x004c;
     */
    public com.google.android.gms.internal.zzjz createInterstitialAdManager(com.google.android.gms.dynamic.IObjectWrapper r8, com.google.android.gms.internal.zziv r9, java.lang.String r10, com.google.android.gms.internal.zzuq r11, int r12) throws android.os.RemoteException {
        /*
        r7 = this;
        r8 = com.google.android.gms.dynamic.zzn.zzE(r8);
        r1 = r8;
        r1 = (android.content.Context) r1;
        com.google.android.gms.internal.zzmo.initialize(r1);
        r5 = new com.google.android.gms.internal.zzaje;
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r8 = com.google.android.gms.internal.zzagz.zzO(r1);
        r0 = 1;
        r2 = 11020000; // 0xa826e0 float:1.5442309E-38 double:5.4446034E-317;
        r5.<init>(r2, r12, r0, r8);
        r8 = "reward_mb";
        r12 = r9.zzAs;
        r8 = r8.equals(r12);
        if (r8 != 0) goto L_0x0036;
    L_0x0024:
        r12 = com.google.android.gms.internal.zzmo.zzDY;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r12 = r2.zzd(r12);
        r12 = (java.lang.Boolean) r12;
        r12 = r12.booleanValue();
        if (r12 != 0) goto L_0x004c;
    L_0x0036:
        if (r8 == 0) goto L_0x004b;
    L_0x0038:
        r8 = com.google.android.gms.internal.zzmo.zzDZ;
        r12 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r8 = r12.zzd(r8);
        r8 = (java.lang.Boolean) r8;
        r8 = r8.booleanValue();
        if (r8 == 0) goto L_0x004b;
    L_0x004a:
        goto L_0x004c;
    L_0x004b:
        r0 = 0;
    L_0x004c:
        if (r0 == 0) goto L_0x005d;
    L_0x004e:
        r8 = new com.google.android.gms.internal.zztq;
        r9 = com.google.android.gms.ads.internal.zzv.zzaQ();
        r0 = r8;
        r2 = r10;
        r3 = r11;
        r4 = r5;
        r5 = r9;
        r0.<init>(r1, r2, r3, r4, r5);
        return r8;
    L_0x005d:
        r8 = new com.google.android.gms.ads.internal.zzal;
        r6 = com.google.android.gms.ads.internal.zzv.zzaQ();
        r0 = r8;
        r2 = r9;
        r3 = r10;
        r4 = r11;
        r0.<init>(r1, r2, r3, r4, r5, r6);
        return r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.ClientApi.createInterstitialAdManager(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.internal.zziv, java.lang.String, com.google.android.gms.internal.zzuq, int):com.google.android.gms.internal.zzjz");
    }

    public zzow createNativeAdViewDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzop((FrameLayout) zzn.zzE(iObjectWrapper), (FrameLayout) zzn.zzE(iObjectWrapper2));
    }

    public zzacy createRewardedVideoAd(IObjectWrapper iObjectWrapper, zzuq zzuq, int i) {
        Context context = (Context) zzn.zzE(iObjectWrapper);
        zzbs.zzbz();
        return new zzacr(context, zzv.zzaQ(), zzuq, new zzaje(zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE, i, true, zzagz.zzO(context)));
    }

    public zzjz createSearchAdManager(IObjectWrapper iObjectWrapper, zziv zziv, String str, int i) throws RemoteException {
        Context context = (Context) zzn.zzE(iObjectWrapper);
        zzbs.zzbz();
        return new zzbm(context, zziv, str, new zzaje(zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE, i, true, zzagz.zzO(context)));
    }

    @Nullable
    public zzkn getMobileAdsSettingsManager(IObjectWrapper iObjectWrapper) {
        return null;
    }

    public zzkn getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper iObjectWrapper, int i) {
        Context context = (Context) zzn.zzE(iObjectWrapper);
        zzbs.zzbz();
        return zzax.zza(context, new zzaje(zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE, i, true, zzagz.zzO(context)));
    }
}
