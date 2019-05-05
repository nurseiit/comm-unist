package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.metadata.SortableMetadataField;
import com.google.android.gms.drive.query.internal.zzf;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class SortOrder extends zza {
    public static final Creator<SortOrder> CREATOR = new zzc();
    private List<zzf> zzaRa;
    private boolean zzaRb;

    public static class Builder {
        private final List<zzf> zzaRa = new ArrayList();
        private boolean zzaRb = false;

        public Builder addSortAscending(SortableMetadataField sortableMetadataField) {
            this.zzaRa.add(new zzf(sortableMetadataField.getName(), true));
            return this;
        }

        public Builder addSortDescending(SortableMetadataField sortableMetadataField) {
            this.zzaRa.add(new zzf(sortableMetadataField.getName(), false));
            return this;
        }

        public SortOrder build() {
            return new SortOrder(this.zzaRa, false);
        }
    }

    SortOrder(List<zzf> list, boolean z) {
        this.zzaRa = list;
        this.zzaRb = z;
    }

    public String toString() {
        return String.format(Locale.US, "SortOrder[%s, %s]", new Object[]{TextUtils.join(",", this.zzaRa), Boolean.valueOf(this.zzaRb)});
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaRa, false);
        zzd.zza(parcel, 2, this.zzaRb);
        zzd.zzI(parcel, i);
    }
}
