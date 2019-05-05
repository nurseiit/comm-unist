package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.ArrayList;

public final class IsReadyToPayRequest extends zza {
    public static final Creator<IsReadyToPayRequest> CREATOR = new zzl();
    ArrayList<Integer> zzbON;
    private String zzbOO;
    private String zzbOP;

    public final class Builder {
        private Builder() {
        }

        /* synthetic */ Builder(IsReadyToPayRequest isReadyToPayRequest, zzk zzk) {
            this();
        }

        public final Builder addAllowedCardNetwork(int i) {
            if (IsReadyToPayRequest.this.zzbON == null) {
                IsReadyToPayRequest.this.zzbON = new ArrayList();
            }
            IsReadyToPayRequest.this.zzbON.add(Integer.valueOf(i));
            return this;
        }

        public final IsReadyToPayRequest build() {
            return IsReadyToPayRequest.this;
        }
    }

    IsReadyToPayRequest() {
    }

    IsReadyToPayRequest(ArrayList<Integer> arrayList, String str, String str2) {
        this.zzbON = arrayList;
        this.zzbOO = str;
        this.zzbOP = str2;
    }

    public static Builder newBuilder() {
        IsReadyToPayRequest isReadyToPayRequest = new IsReadyToPayRequest();
        isReadyToPayRequest.getClass();
        return new Builder(isReadyToPayRequest, null);
    }

    public final ArrayList<Integer> getAllowedCardNetworks() {
        return this.zzbON;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzbON, false);
        zzd.zza(parcel, 4, this.zzbOO, false);
        zzd.zza(parcel, 5, this.zzbOP, false);
        zzd.zzI(parcel, i);
    }
}
