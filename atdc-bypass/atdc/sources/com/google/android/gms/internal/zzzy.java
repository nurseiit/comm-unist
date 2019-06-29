package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;

@zzzn
public abstract class zzzy implements zzahp<Void>, zzzw {
    private final Object mLock = new Object();
    private final zzajp<zzaae> zzSs;
    private final zzzw zzSt;

    public zzzy(zzajp<zzaae> zzajp, zzzw zzzw) {
        this.zzSs = zzajp;
        this.zzSt = zzzw;
    }

    public final void cancel() {
        zzgA();
    }

    public final void zza(zzaai zzaai) {
        synchronized (this.mLock) {
            this.zzSt.zza(zzaai);
            zzgA();
        }
    }

    /* Access modifiers changed, original: final */
    public final boolean zza(zzaam zzaam, zzaae zzaae) {
        try {
            zzaam.zza(zzaae, new zzaah(this));
            return true;
        } catch (Throwable th) {
            zzajc.zzc("Could not fetch ad response from ad request service due to an Exception.", th);
            zzbs.zzbD().zza(th, "AdRequestClientTask.getAdResponseFromService");
            this.zzSt.zza(new zzaai(0));
            return false;
        }
    }

    public abstract void zzgA();

    public abstract zzaam zzgB();

    public final /* synthetic */ Object zzgp() {
        zzaam zzgB = zzgB();
        if (zzgB == null) {
            this.zzSt.zza(new zzaai(0));
            zzgA();
            return null;
        }
        this.zzSs.zza(new zzzz(this, zzgB), new zzaaa(this));
        return null;
    }
}
