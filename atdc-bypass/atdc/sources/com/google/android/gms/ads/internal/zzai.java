package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzir;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzjo;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zzon;
import com.google.android.gms.internal.zzpn;
import com.google.android.gms.internal.zzpq;
import com.google.android.gms.internal.zzpt;
import com.google.android.gms.internal.zzpw;
import com.google.android.gms.internal.zzpz;
import com.google.android.gms.internal.zzuq;
import com.google.android.gms.internal.zzzn;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@zzzn
public final class zzai extends zzjs {
    private final Context mContext;
    private final Object mLock = new Object();
    private final zzv zzsS;
    private final zzuq zzsX;
    private final zzjo zztK;
    @Nullable
    private final zzpn zztL;
    @Nullable
    private final zzpq zztM;
    @Nullable
    private final zzpz zztN;
    @Nullable
    private final zziv zztO;
    @Nullable
    private final PublisherAdViewOptions zztP;
    private final SimpleArrayMap<String, zzpw> zztQ;
    private final SimpleArrayMap<String, zzpt> zztR;
    private final zzon zztS;
    private final List<String> zztT;
    private final zzkk zztU;
    private final String zztV;
    private final zzaje zztW;
    @Nullable
    private WeakReference<zzd> zztX;

    zzai(Context context, String str, zzuq zzuq, zzaje zzaje, zzjo zzjo, zzpn zzpn, zzpq zzpq, SimpleArrayMap<String, zzpw> simpleArrayMap, SimpleArrayMap<String, zzpt> simpleArrayMap2, zzon zzon, zzkk zzkk, zzv zzv, zzpz zzpz, zziv zziv, PublisherAdViewOptions publisherAdViewOptions) {
        this.mContext = context;
        this.zztV = str;
        this.zzsX = zzuq;
        this.zztW = zzaje;
        this.zztK = zzjo;
        this.zztM = zzpq;
        this.zztL = zzpn;
        this.zztQ = simpleArrayMap;
        this.zztR = simpleArrayMap2;
        this.zztS = zzon;
        this.zztT = zzaY();
        this.zztU = zzkk;
        this.zzsS = zzv;
        this.zztN = zzpz;
        this.zztO = zziv;
        this.zztP = publisherAdViewOptions;
        zzmo.initialize(this.mContext);
    }

    private final boolean zzaW() {
        return ((Boolean) zzbs.zzbL().zzd(zzmo.zzDP)).booleanValue() && this.zztN != null;
    }

    private final boolean zzaX() {
        return (this.zztL == null && this.zztM == null && (this.zztQ == null || this.zztQ.size() <= 0)) ? false : true;
    }

    private final List<String> zzaY() {
        ArrayList arrayList = new ArrayList();
        if (this.zztM != null) {
            arrayList.add("1");
        }
        if (this.zztL != null) {
            arrayList.add("2");
        }
        if (this.zztQ.size() > 0) {
            arrayList.add("3");
        }
        return arrayList;
    }

    private final void zzd(zzir zzir) {
        zzq zzq = new zzq(this.mContext, this.zzsS, this.zztO, this.zztV, this.zzsX, this.zztW);
        this.zztX = new WeakReference(zzq);
        zzpz zzpz = this.zztN;
        zzbo.zzcz("setOnPublisherAdViewLoadedListener must be called on the main UI thread.");
        zzq.zzsP.zzwm = zzpz;
        if (this.zztP != null) {
            if (this.zztP.zzai() != null) {
                zzq.zza(this.zztP.zzai());
            }
            zzq.setManualImpressionsEnabled(this.zztP.getManualImpressionsEnabled());
        }
        zzpn zzpn = this.zztL;
        zzbo.zzcz("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        zzq.zzsP.zzwf = zzpn;
        zzpq zzpq = this.zztM;
        zzbo.zzcz("setOnContentAdLoadedListener must be called on the main UI thread.");
        zzq.zzsP.zzwg = zzpq;
        SimpleArrayMap simpleArrayMap = this.zztQ;
        zzbo.zzcz("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        zzq.zzsP.zzwi = simpleArrayMap;
        simpleArrayMap = this.zztR;
        zzbo.zzcz("setOnCustomClickListener must be called on the main UI thread.");
        zzq.zzsP.zzwh = simpleArrayMap;
        zzon zzon = this.zztS;
        zzbo.zzcz("setNativeAdOptions must be called on the main UI thread.");
        zzq.zzsP.zzwj = zzon;
        zzq.zzc(zzaY());
        zzq.zza(this.zztK);
        zzq.zza(this.zztU);
        ArrayList arrayList = new ArrayList();
        if (zzaX()) {
            arrayList.add(Integer.valueOf(1));
        }
        if (this.zztN != null) {
            arrayList.add(Integer.valueOf(2));
        }
        zzq.zzd(arrayList);
        if (zzaX()) {
            zzir.extras.putBoolean("ina", true);
        }
        if (this.zztN != null) {
            zzir.extras.putBoolean("iba", true);
        }
        zzq.zza(zzir);
    }

    private final void zze(zzir zzir) {
        zzbb zzbb = new zzbb(this.mContext, this.zzsS, zziv.zzg(this.mContext), this.zztV, this.zzsX, this.zztW);
        this.zztX = new WeakReference(zzbb);
        zzpn zzpn = this.zztL;
        zzbo.zzcz("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        zzbb.zzsP.zzwf = zzpn;
        zzpq zzpq = this.zztM;
        zzbo.zzcz("setOnContentAdLoadedListener must be called on the main UI thread.");
        zzbb.zzsP.zzwg = zzpq;
        SimpleArrayMap simpleArrayMap = this.zztQ;
        zzbo.zzcz("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        zzbb.zzsP.zzwi = simpleArrayMap;
        zzbb.zza(this.zztK);
        simpleArrayMap = this.zztR;
        zzbo.zzcz("setOnCustomClickListener must be called on the main UI thread.");
        zzbb.zzsP.zzwh = simpleArrayMap;
        zzbb.zzc(zzaY());
        zzon zzon = this.zztS;
        zzbo.zzcz("setNativeAdOptions must be called on the main UI thread.");
        zzbb.zzsP.zzwj = zzon;
        zzbb.zza(this.zztU);
        zzbb.zza(zzir);
    }

    /* JADX WARNING: Missing block: B:9:0x0017, code skipped:
            return r2;
     */
    @android.support.annotation.Nullable
    public final java.lang.String getMediationAdapterClassName() {
        /*
        r3 = this;
        r0 = r3.mLock;
        monitor-enter(r0);
        r1 = r3.zztX;	 Catch:{ all -> 0x001a }
        r2 = 0;
        if (r1 == 0) goto L_0x0018;
    L_0x0008:
        r1 = r3.zztX;	 Catch:{ all -> 0x001a }
        r1 = r1.get();	 Catch:{ all -> 0x001a }
        r1 = (com.google.android.gms.ads.internal.zzd) r1;	 Catch:{ all -> 0x001a }
        if (r1 == 0) goto L_0x0016;
    L_0x0012:
        r2 = r1.getMediationAdapterClassName();	 Catch:{ all -> 0x001a }
    L_0x0016:
        monitor-exit(r0);	 Catch:{ all -> 0x001a }
        return r2;
    L_0x0018:
        monitor-exit(r0);	 Catch:{ all -> 0x001a }
        return r2;
    L_0x001a:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x001a }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzai.getMediationAdapterClassName():java.lang.String");
    }

    /* JADX WARNING: Missing block: B:9:0x0017, code skipped:
            return r2;
     */
    public final boolean isLoading() {
        /*
        r3 = this;
        r0 = r3.mLock;
        monitor-enter(r0);
        r1 = r3.zztX;	 Catch:{ all -> 0x001a }
        r2 = 0;
        if (r1 == 0) goto L_0x0018;
    L_0x0008:
        r1 = r3.zztX;	 Catch:{ all -> 0x001a }
        r1 = r1.get();	 Catch:{ all -> 0x001a }
        r1 = (com.google.android.gms.ads.internal.zzd) r1;	 Catch:{ all -> 0x001a }
        if (r1 == 0) goto L_0x0016;
    L_0x0012:
        r2 = r1.isLoading();	 Catch:{ all -> 0x001a }
    L_0x0016:
        monitor-exit(r0);	 Catch:{ all -> 0x001a }
        return r2;
    L_0x0018:
        monitor-exit(r0);	 Catch:{ all -> 0x001a }
        return r2;
    L_0x001a:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x001a }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzai.isLoading():boolean");
    }

    /* JADX WARNING: Missing block: B:9:0x0017, code skipped:
            return r2;
     */
    @android.support.annotation.Nullable
    public final java.lang.String zzaI() {
        /*
        r3 = this;
        r0 = r3.mLock;
        monitor-enter(r0);
        r1 = r3.zztX;	 Catch:{ all -> 0x001a }
        r2 = 0;
        if (r1 == 0) goto L_0x0018;
    L_0x0008:
        r1 = r3.zztX;	 Catch:{ all -> 0x001a }
        r1 = r1.get();	 Catch:{ all -> 0x001a }
        r1 = (com.google.android.gms.ads.internal.zzd) r1;	 Catch:{ all -> 0x001a }
        if (r1 == 0) goto L_0x0016;
    L_0x0012:
        r2 = r1.zzaI();	 Catch:{ all -> 0x001a }
    L_0x0016:
        monitor-exit(r0);	 Catch:{ all -> 0x001a }
        return r2;
    L_0x0018:
        monitor-exit(r0);	 Catch:{ all -> 0x001a }
        return r2;
    L_0x001a:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x001a }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzai.zzaI():java.lang.String");
    }

    public final void zzc(zzir zzir) {
        zzagz.zzZr.post(new zzaj(this, zzir));
    }
}
