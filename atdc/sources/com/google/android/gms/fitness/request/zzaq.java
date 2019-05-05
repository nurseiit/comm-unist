package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.fitness.data.zzt;
import com.google.android.gms.fitness.data.zzu;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;

public final class zzaq extends zza {
    public static final Creator<zzaq> CREATOR = new zzar();
    private final PendingIntent mPendingIntent;
    private final zzt zzaWV;
    private final zzbxg zzaWo;
    private final int zzaku;

    zzaq(int i, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2) {
        this.zzaku = i;
        this.zzaWV = iBinder == null ? null : zzu.zzN(iBinder);
        this.mPendingIntent = pendingIntent;
        this.zzaWo = zzbxh.zzW(iBinder2);
    }

    public zzaq(zzt zzt, PendingIntent pendingIntent, zzbxg zzbxg) {
        this.zzaku = 4;
        this.zzaWV = zzt;
        this.mPendingIntent = pendingIntent;
        this.zzaWo = zzbxg;
    }

    public final String toString() {
        return String.format("SensorUnregistrationRequest{%s}", new Object[]{this.zzaWV});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        IBinder iBinder = null;
        zzd.zza(parcel, 1, this.zzaWV == null ? null : this.zzaWV.asBinder(), false);
        zzd.zza(parcel, 2, this.mPendingIntent, i, false);
        if (this.zzaWo != null) {
            iBinder = this.zzaWo.asBinder();
        }
        zzd.zza(parcel, 3, iBinder, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
