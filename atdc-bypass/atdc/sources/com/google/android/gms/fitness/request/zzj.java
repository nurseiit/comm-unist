package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;
import java.util.Arrays;

public final class zzj extends zza {
    public static final Creator<zzj> CREATOR = new zzk();
    private final DataSet zzaVi;
    private final zzbxg zzaWo;
    private final boolean zzaWv;
    private final int zzaku;

    zzj(int i, DataSet dataSet, IBinder iBinder, boolean z) {
        this.zzaku = i;
        this.zzaVi = dataSet;
        this.zzaWo = zzbxh.zzW(iBinder);
        this.zzaWv = z;
    }

    public zzj(DataSet dataSet, zzbxg zzbxg, boolean z) {
        this.zzaku = 4;
        this.zzaVi = dataSet;
        this.zzaWo = zzbxg;
        this.zzaWv = z;
    }

    /* JADX WARNING: Missing block: B:4:0x0010, code skipped:
            if (com.google.android.gms.common.internal.zzbe.equal(r1.zzaVi, ((com.google.android.gms.fitness.request.zzj) r2).zzaVi) != false) goto L_0x0015;
     */
    public final boolean equals(java.lang.Object r2) {
        /*
        r1 = this;
        if (r2 == r1) goto L_0x0015;
    L_0x0002:
        r0 = r2 instanceof com.google.android.gms.fitness.request.zzj;
        if (r0 == 0) goto L_0x0013;
    L_0x0006:
        r2 = (com.google.android.gms.fitness.request.zzj) r2;
        r0 = r1.zzaVi;
        r2 = r2.zzaVi;
        r2 = com.google.android.gms.common.internal.zzbe.equal(r0, r2);
        if (r2 == 0) goto L_0x0013;
    L_0x0012:
        goto L_0x0015;
    L_0x0013:
        r2 = 0;
        return r2;
    L_0x0015:
        r2 = 1;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fitness.request.zzj.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaVi});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("dataSet", this.zzaVi).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaVi, i, false);
        zzd.zza(parcel, 2, this.zzaWo == null ? null : this.zzaWo.asBinder(), false);
        zzd.zza(parcel, 4, this.zzaWv);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
