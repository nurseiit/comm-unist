package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class FullWalletRequest extends zza implements ReflectedParcelable {
    public static final Creator<FullWalletRequest> CREATOR = new zzh();
    Cart zzbOB;
    String zzbOq;
    String zzbOr;

    public final class Builder {
        private Builder() {
        }

        /* synthetic */ Builder(FullWalletRequest fullWalletRequest, zzg zzg) {
            this();
        }

        public final FullWalletRequest build() {
            return FullWalletRequest.this;
        }

        public final Builder setCart(Cart cart) {
            FullWalletRequest.this.zzbOB = cart;
            return this;
        }

        public final Builder setGoogleTransactionId(String str) {
            FullWalletRequest.this.zzbOq = str;
            return this;
        }

        public final Builder setMerchantTransactionId(String str) {
            FullWalletRequest.this.zzbOr = str;
            return this;
        }
    }

    FullWalletRequest() {
    }

    FullWalletRequest(String str, String str2, Cart cart) {
        this.zzbOq = str;
        this.zzbOr = str2;
        this.zzbOB = cart;
    }

    public static Builder newBuilder() {
        FullWalletRequest fullWalletRequest = new FullWalletRequest();
        fullWalletRequest.getClass();
        return new Builder(fullWalletRequest, null);
    }

    public final Cart getCart() {
        return this.zzbOB;
    }

    public final String getGoogleTransactionId() {
        return this.zzbOq;
    }

    public final String getMerchantTransactionId() {
        return this.zzbOr;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzbOq, false);
        zzd.zza(parcel, 3, this.zzbOr, false);
        zzd.zza(parcel, 4, this.zzbOB, i, false);
        zzd.zzI(parcel, zze);
    }
}
