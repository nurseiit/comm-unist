package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.adp;
import com.google.android.gms.internal.zzbqz;

public final class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Creator<zza> CREATOR = new zzb();
    private long zzaLP;
    private long zzaLQ;
    private long zzaLR;
    private volatile String zzaLS = null;

    public zza(long j, long j2, long j3) {
        boolean z = false;
        zzbo.zzaf(j != -1);
        zzbo.zzaf(j2 != -1);
        if (j3 != -1) {
            z = true;
        }
        zzbo.zzaf(z);
        this.zzaLP = j;
        this.zzaLQ = j2;
        this.zzaLR = j3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zza)) {
            return false;
        }
        zza zza = (zza) obj;
        return zza.zzaLQ == this.zzaLQ && zza.zzaLR == this.zzaLR && zza.zzaLP == this.zzaLP;
    }

    public final int hashCode() {
        String valueOf = String.valueOf(String.valueOf(this.zzaLP));
        String valueOf2 = String.valueOf(String.valueOf(this.zzaLQ));
        String valueOf3 = String.valueOf(String.valueOf(this.zzaLR));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length());
        stringBuilder.append(valueOf);
        stringBuilder.append(valueOf2);
        stringBuilder.append(valueOf3);
        return stringBuilder.toString().hashCode();
    }

    public final String toString() {
        if (this.zzaLS == null) {
            zzbqz zzbqz = new zzbqz();
            zzbqz.versionCode = 1;
            zzbqz.sequenceNumber = this.zzaLP;
            zzbqz.zzaPw = this.zzaLQ;
            zzbqz.zzaPx = this.zzaLR;
            String encodeToString = Base64.encodeToString(adp.zzc(zzbqz), 10);
            String valueOf = String.valueOf("ChangeSequenceNumber:");
            encodeToString = String.valueOf(encodeToString);
            this.zzaLS = encodeToString.length() != 0 ? valueOf.concat(encodeToString) : new String(valueOf);
        }
        return this.zzaLS;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaLP);
        zzd.zza(parcel, 3, this.zzaLQ);
        zzd.zza(parcel, 4, this.zzaLR);
        zzd.zzI(parcel, i);
    }
}
