package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class LineItem extends zza {
    public static final Creator<LineItem> CREATOR = new zzn();
    String description;
    String zzbOR;
    String zzbOS;
    int zzbOT;
    String zzbOm;
    String zzbOn;

    public final class Builder {
        private Builder() {
        }

        /* synthetic */ Builder(LineItem lineItem, zzm zzm) {
            this();
        }

        public final LineItem build() {
            return LineItem.this;
        }

        public final Builder setCurrencyCode(String str) {
            LineItem.this.zzbOn = str;
            return this;
        }

        public final Builder setDescription(String str) {
            LineItem.this.description = str;
            return this;
        }

        public final Builder setQuantity(String str) {
            LineItem.this.zzbOR = str;
            return this;
        }

        public final Builder setRole(int i) {
            LineItem.this.zzbOT = i;
            return this;
        }

        public final Builder setTotalPrice(String str) {
            LineItem.this.zzbOm = str;
            return this;
        }

        public final Builder setUnitPrice(String str) {
            LineItem.this.zzbOS = str;
            return this;
        }
    }

    public interface Role {
        public static final int REGULAR = 0;
        public static final int SHIPPING = 2;
        public static final int TAX = 1;
    }

    LineItem() {
        this.zzbOT = 0;
    }

    LineItem(String str, String str2, String str3, String str4, int i, String str5) {
        this.description = str;
        this.zzbOR = str2;
        this.zzbOS = str3;
        this.zzbOm = str4;
        this.zzbOT = i;
        this.zzbOn = str5;
    }

    public static Builder newBuilder() {
        LineItem lineItem = new LineItem();
        lineItem.getClass();
        return new Builder(lineItem, null);
    }

    public final String getCurrencyCode() {
        return this.zzbOn;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getQuantity() {
        return this.zzbOR;
    }

    public final int getRole() {
        return this.zzbOT;
    }

    public final String getTotalPrice() {
        return this.zzbOm;
    }

    public final String getUnitPrice() {
        return this.zzbOS;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.description, false);
        zzd.zza(parcel, 3, this.zzbOR, false);
        zzd.zza(parcel, 4, this.zzbOS, false);
        zzd.zza(parcel, 5, this.zzbOm, false);
        zzd.zzc(parcel, 6, this.zzbOT);
        zzd.zza(parcel, 7, this.zzbOn, false);
        zzd.zzI(parcel, i);
    }
}
