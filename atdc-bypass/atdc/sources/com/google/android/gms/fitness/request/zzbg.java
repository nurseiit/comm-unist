package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;

public final class zzbg extends zza {
    public static final Creator<zzbg> CREATOR = new zzbh();
    private final zzbxg zzaWo;
    private final zzad zzaXp;
    private final int zzaku;

    zzbg(int i, IBinder iBinder, IBinder iBinder2) {
        zzad zzad;
        this.zzaku = i;
        if (iBinder == null) {
            zzad = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.request.IBleScanCallback");
            zzad = queryLocalInterface instanceof zzad ? (zzad) queryLocalInterface : new zzaf(iBinder);
        }
        this.zzaXp = zzad;
        this.zzaWo = zzbxh.zzW(iBinder2);
    }

    public zzbg(BleScanCallback bleScanCallback, zzbxg zzbxg) {
        this(zzc.zztT().zzb(bleScanCallback), zzbxg);
    }

    private zzbg(zzad zzad, zzbxg zzbxg) {
        this.zzaku = 3;
        this.zzaXp = zzad;
        this.zzaWo = zzbxg;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaXp.asBinder(), false);
        zzd.zza(parcel, 2, this.zzaWo == null ? null : this.zzaWo.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
