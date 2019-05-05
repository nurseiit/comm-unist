package com.google.android.gms.internal;

import com.google.android.gms.awareness.state.BeaconState.TypeFilter;
import com.google.android.gms.common.internal.zzbo;

public final class zzbis {
    private final acj zzaKS;

    private zzbis(acj acj) {
        this.zzaKS = (acj) zzbo.zzu(acj);
    }

    private static acj zza(int i, TypeFilter[] typeFilterArr, long j) {
        acj acj = new acj();
        acj.zzcqq = i;
        acj.zzcqz = new ack[typeFilterArr.length];
        acj.zzcqr = 3000;
        for (i = 0; i < typeFilterArr.length; i++) {
            acj.zzcqz[i] = ((zzasv) typeFilterArr[i]).zzmV();
        }
        return acj;
    }

    public static zzbis zza(TypeFilter[] typeFilterArr) {
        return new zzbis(zza(1, typeFilterArr, 3000));
    }

    public static zzbis zzb(TypeFilter[] typeFilterArr) {
        return new zzbis(zza(2, typeFilterArr, 3000));
    }

    public static zzbis zzc(TypeFilter[] typeFilterArr) {
        return new zzbis(zza(3, typeFilterArr, 3000));
    }

    public final acj zzsF() {
        return this.zzaKS;
    }
}
