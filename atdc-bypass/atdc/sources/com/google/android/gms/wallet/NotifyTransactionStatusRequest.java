package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

@Deprecated
public final class NotifyTransactionStatusRequest extends zza {
    public static final Creator<NotifyTransactionStatusRequest> CREATOR = new zzu();
    int status;
    String zzbOq;
    String zzbPF;

    public final class Builder {
        private Builder() {
        }

        /* synthetic */ Builder(NotifyTransactionStatusRequest notifyTransactionStatusRequest, zzt zzt) {
            this();
        }

        public final NotifyTransactionStatusRequest build() {
            boolean z = true;
            zzbo.zzb(TextUtils.isEmpty(NotifyTransactionStatusRequest.this.zzbOq) ^ 1, (Object) "googleTransactionId is required");
            if (NotifyTransactionStatusRequest.this.status <= 0 || NotifyTransactionStatusRequest.this.status > 8) {
                z = false;
            }
            zzbo.zzb(z, (Object) "status is an unrecognized value");
            return NotifyTransactionStatusRequest.this;
        }

        public final Builder setDetailedReason(String str) {
            NotifyTransactionStatusRequest.this.zzbPF = str;
            return this;
        }

        public final Builder setGoogleTransactionId(String str) {
            NotifyTransactionStatusRequest.this.zzbOq = str;
            return this;
        }

        public final Builder setStatus(int i) {
            NotifyTransactionStatusRequest.this.status = i;
            return this;
        }
    }

    public interface Status {
        public static final int SUCCESS = 1;

        public interface Error {
            public static final int AVS_DECLINE = 7;
            public static final int BAD_CARD = 4;
            public static final int BAD_CVC = 3;
            public static final int DECLINED = 5;
            public static final int FRAUD_DECLINE = 8;
            public static final int OTHER = 6;
            public static final int UNKNOWN = 2;
        }
    }

    NotifyTransactionStatusRequest() {
    }

    NotifyTransactionStatusRequest(String str, int i, String str2) {
        this.zzbOq = str;
        this.status = i;
        this.zzbPF = str2;
    }

    public static Builder newBuilder() {
        NotifyTransactionStatusRequest notifyTransactionStatusRequest = new NotifyTransactionStatusRequest();
        notifyTransactionStatusRequest.getClass();
        return new Builder(notifyTransactionStatusRequest, null);
    }

    public final String getDetailedReason() {
        return this.zzbPF;
    }

    public final String getGoogleTransactionId() {
        return this.zzbOq;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzbOq, false);
        zzd.zzc(parcel, 3, this.status);
        zzd.zza(parcel, 4, this.zzbPF, false);
        zzd.zzI(parcel, i);
    }
}
