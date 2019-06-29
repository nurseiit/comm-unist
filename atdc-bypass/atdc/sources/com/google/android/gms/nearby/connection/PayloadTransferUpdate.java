package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

public final class PayloadTransferUpdate extends zza {
    public static final Creator<PayloadTransferUpdate> CREATOR = new zze();
    private final int status;
    private final long zzbwA;
    private final long zzbwB;
    private final long zzbwz;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Status {
        public static final int FAILURE = 2;
        public static final int IN_PROGRESS = 3;
        public static final int SUCCESS = 1;
    }

    public PayloadTransferUpdate(long j, int i, long j2, long j3) {
        this.zzbwz = j;
        this.status = i;
        this.zzbwA = j2;
        this.zzbwB = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PayloadTransferUpdate) {
            PayloadTransferUpdate payloadTransferUpdate = (PayloadTransferUpdate) obj;
            return zzbe.equal(Long.valueOf(this.zzbwz), Long.valueOf(payloadTransferUpdate.zzbwz)) && zzbe.equal(Integer.valueOf(this.status), Integer.valueOf(payloadTransferUpdate.status)) && zzbe.equal(Long.valueOf(this.zzbwA), Long.valueOf(payloadTransferUpdate.zzbwA)) && zzbe.equal(Long.valueOf(this.zzbwB), Long.valueOf(payloadTransferUpdate.zzbwB));
        }
    }

    public final long getBytesTransferred() {
        return this.zzbwB;
    }

    public final long getPayloadId() {
        return this.zzbwz;
    }

    public final int getStatus() {
        return this.status;
    }

    public final long getTotalBytes() {
        return this.zzbwA;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzbwz), Integer.valueOf(this.status), Long.valueOf(this.zzbwA), Long.valueOf(this.zzbwB)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getPayloadId());
        zzd.zzc(parcel, 2, getStatus());
        zzd.zza(parcel, 3, getTotalBytes());
        zzd.zza(parcel, 4, getBytesTransferred());
        zzd.zzI(parcel, i);
    }
}
