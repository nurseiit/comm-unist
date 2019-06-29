package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@zzzn
public final class zzun implements zztz {
    private final Context mContext;
    private final Object mLock = new Object();
    private final long mStartTime;
    private final zzaae zzMM;
    private final long zzMN;
    private boolean zzMP = false;
    private final String zzMR;
    private List<zzuh> zzMS = new ArrayList();
    private zzue zzMW;
    private final zzub zzMu;
    private final boolean zzMy;
    private final zznb zzsK;
    private final zzuq zzsX;
    private final boolean zzwJ;

    public zzun(Context context, zzaae zzaae, zzuq zzuq, zzub zzub, boolean z, boolean z2, String str, long j, long j2, zznb zznb) {
        this.mContext = context;
        this.zzMM = zzaae;
        this.zzsX = zzuq;
        this.zzMu = zzub;
        this.zzwJ = z;
        this.zzMy = z2;
        this.zzMR = str;
        this.mStartTime = j;
        this.zzMN = j2;
        this.zzsK = zznb;
    }

    public final void cancel() {
        synchronized (this.mLock) {
            this.zzMP = true;
            if (this.zzMW != null) {
                this.zzMW.cancel();
            }
        }
    }

    public final zzuh zzf(List<zzua> list) {
        Throwable th;
        Throwable th2;
        Object obj;
        zzajc.zzaC("Starting mediation.");
        ArrayList arrayList = new ArrayList();
        zzmz zzdS = this.zzsK.zzdS();
        zziv zziv = this.zzMM.zzvX;
        int[] iArr = new int[2];
        if (zziv.zzAu != null) {
            zzbs.zzbS();
            if (zzuj.zza(this.zzMR, iArr)) {
                int i = iArr[0];
                int i2 = iArr[1];
                for (zziv zziv2 : zziv.zzAu) {
                    if (i == zziv2.width && i2 == zziv2.height) {
                        zziv = zziv2;
                        break;
                    }
                }
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzua zzua = (zzua) it.next();
            String str = "Trying mediation network: ";
            String valueOf = String.valueOf(zzua.zzLI);
            zzajc.zzaS(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            Iterator it2 = zzua.zzLJ.iterator();
            while (it2.hasNext()) {
                valueOf = (String) it2.next();
                zzmz zzdS2 = this.zzsK.zzdS();
                Object obj2 = this.mLock;
                synchronized (obj2) {
                    try {
                        if (this.zzMP) {
                            try {
                            } catch (Throwable th22) {
                                th = th22;
                                obj = obj2;
                                throw th;
                            }
                        }
                        Iterator it3 = it;
                        Iterator it4 = it2;
                        zzmz zzmz = zzdS;
                        zzue zzue = zzue;
                        zzmz zzmz2 = zzdS2;
                        zzue zzue2 = zzue;
                        obj = obj2;
                        try {
                            zzue = new zzue(this.mContext, valueOf, this.zzsX, this.zzMu, zzua, this.zzMM.zzSz, zziv, this.zzMM.zzvT, this.zzwJ, this.zzMy, this.zzMM.zzwj, this.zzMM.zzwq, this.zzMM.zzSO, this.zzMM.zzTj);
                            this.zzMW = zzue2;
                            zzuh zza = this.zzMW.zza(this.mStartTime, this.zzMN);
                            this.zzMS.add(zza);
                            if (zza.zzMF == 0) {
                                zzajc.zzaC("Adapter succeeded.");
                                this.zzsK.zzh("mediation_network_succeed", valueOf);
                                if (!arrayList.isEmpty()) {
                                    this.zzsK.zzh("mediation_networks_fail", TextUtils.join(",", arrayList));
                                }
                                this.zzsK.zza(zzmz2, "mls");
                                this.zzsK.zza(zzmz, "ttm");
                                return zza;
                            }
                            zzmz zzmz3 = zzmz;
                            zzmz zzmz4 = zzmz2;
                            arrayList.add(valueOf);
                            this.zzsK.zza(zzmz4, "mlf");
                            if (zza.zzMH != null) {
                                zzagz.zzZr.post(new zzuo(this, zza));
                            }
                            zzdS = zzmz3;
                            it = it3;
                            it2 = it4;
                        } catch (Throwable th3) {
                            th22 = th3;
                            th = th22;
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th22 = th4;
                        obj = obj2;
                        th = th22;
                        throw th;
                    }
                }
                return new zzuh(-1);
            }
        }
        if (!arrayList.isEmpty()) {
            this.zzsK.zzh("mediation_networks_fail", TextUtils.join(",", arrayList));
        }
        return new zzuh(1);
    }

    public final List<zzuh> zzfg() {
        return this.zzMS;
    }
}
