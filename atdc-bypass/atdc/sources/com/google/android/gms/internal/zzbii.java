package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public final class zzbii extends zza {
    public static final Creator<zzbii> CREATOR = new zzbik();
    private static zzer zzaKK = new zzbij();
    private static int[] zzaKL = new int[]{0, 1};
    private acl zzaKM = null;
    private byte[] zzaKN;

    public zzbii(byte[] bArr) {
        this.zzaKN = (byte[]) zzbo.zzu(bArr);
        zzsA();
    }

    private final String getId() {
        zzsz();
        return this.zzaKM.zzcqD;
    }

    private final void zzsA() {
        if (this.zzaKM == null && this.zzaKN != null) {
            return;
        }
        if (this.zzaKM != null && this.zzaKN == null) {
            return;
        }
        if (this.zzaKM != null && this.zzaKN != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        } else if (this.zzaKM == null && this.zzaKN == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        } else {
            throw new IllegalStateException("Impossible");
        }
    }

    private final void zzsz() {
        if ((this.zzaKM != null ? 1 : null) == null) {
            try {
                this.zzaKM = (acl) adp.zza(new acl(), this.zzaKN);
                this.zzaKN = null;
            } catch (ado e) {
                Log.e("ContextData", "Could not deserialize context bytes.", e);
                throw new IllegalStateException(e);
            }
        }
        zzsA();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbii)) {
            return false;
        }
        zzbii zzbii = (zzbii) obj;
        zzsz();
        zzbii.zzsz();
        return getId().equals(zzbii.getId()) && this.zzaKM.zzcqE.version == zzbii.zzaKM.zzcqE.version;
    }

    public final int hashCode() {
        zzsz();
        return Arrays.hashCode(new Object[]{getId(), Integer.valueOf(this.zzaKM.zzcqE.version)});
    }

    public final String toString() {
        zzsz();
        String valueOf = String.valueOf(this.zzaKM.toString());
        String valueOf2 = String.valueOf(zzaKK.zza(this));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaKN != null ? this.zzaKN : adp.zzc(this.zzaKM), false);
        zzd.zzI(parcel, i);
    }
}
