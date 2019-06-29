package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;

public final class ug implements uh {
    private boolean zzbZF = false;

    private final void zzFw() {
        zd.zzb(this.zzbZF, "Transaction expected to already be in progress.");
    }

    public final List<tm> zzFs() {
        return Collections.emptyList();
    }

    public final void zzFv() {
        zzFw();
    }

    public final void zza(qr qrVar, pz pzVar, long j) {
        zzFw();
    }

    public final void zza(qr qrVar, xm xmVar, long j) {
        zzFw();
    }

    public final void zza(vt vtVar, xm xmVar) {
        zzFw();
    }

    public final void zza(vt vtVar, Set<wp> set) {
        zzFw();
    }

    public final void zza(vt vtVar, Set<wp> set, Set<wp> set2) {
        zzFw();
    }

    public final void zzal(long j) {
        zzFw();
    }

    public final void zzc(qr qrVar, pz pzVar) {
        zzFw();
    }

    public final void zzd(qr qrVar, pz pzVar) {
        zzFw();
    }

    public final vg zzf(vt vtVar) {
        return new vg(xf.zza(xd.zzJb(), vtVar.zzIm()), false, false);
    }

    public final <T> T zzg(Callable<T> callable) {
        zd.zzb(this.zzbZF ^ 1, "runInTransaction called when an existing transaction is already in progress.");
        this.zzbZF = true;
        try {
            Object call = callable.call();
            this.zzbZF = false;
            return call;
        } catch (Throwable th) {
            this.zzbZF = false;
        }
    }

    public final void zzg(vt vtVar) {
        zzFw();
    }

    public final void zzh(vt vtVar) {
        zzFw();
    }

    public final void zzi(vt vtVar) {
        zzFw();
    }

    public final void zzk(qr qrVar, xm xmVar) {
        zzFw();
    }
}
