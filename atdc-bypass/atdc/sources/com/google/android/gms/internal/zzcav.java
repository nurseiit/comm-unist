package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzcav extends zza {
    public static final Creator<zzcav> CREATOR = new zzcaw();
    private int versionCode;
    private zzax zzbft = null;
    private byte[] zzbfu;

    zzcav(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzbfu = bArr;
        zzsA();
    }

    private final void zzsA() {
        if (this.zzbft == null && this.zzbfu != null) {
            return;
        }
        if (this.zzbft != null && this.zzbfu == null) {
            return;
        }
        if (this.zzbft != null && this.zzbfu != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        } else if (this.zzbft == null && this.zzbfu == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        } else {
            throw new IllegalStateException("Impossible");
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.versionCode);
        zzd.zza(parcel, 2, this.zzbfu != null ? this.zzbfu : adp.zzc(this.zzbft), false);
        zzd.zzI(parcel, i);
    }

    public final zzax zzvA() {
        if ((this.zzbft != null ? 1 : null) == null) {
            try {
                this.zzbft = (zzax) adp.zza(new zzax(), this.zzbfu);
                this.zzbfu = null;
            } catch (ado e) {
                throw new IllegalStateException(e);
            }
        }
        zzsA();
        return this.zzbft;
    }
}
