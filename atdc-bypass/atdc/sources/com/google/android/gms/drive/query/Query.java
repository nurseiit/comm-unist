package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveSpace;
import com.google.android.gms.drive.query.internal.zzr;
import com.google.android.gms.drive.query.internal.zzt;
import com.google.android.gms.drive.query.internal.zzx;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class Query extends zza {
    public static final Creator<Query> CREATOR = new zzb();
    private List<DriveSpace> zzaMU;
    private final Set<DriveSpace> zzaMV;
    private zzr zzaQR;
    private String zzaQS;
    private SortOrder zzaQT;
    final List<String> zzaQU;
    final boolean zzaQV;
    final boolean zzaQW;

    public static class Builder {
        private Set<DriveSpace> zzaMV;
        private String zzaQS;
        private SortOrder zzaQT;
        private List<String> zzaQU;
        private boolean zzaQV;
        private boolean zzaQW;
        private final List<Filter> zzaQX = new ArrayList();

        public Builder(Query query) {
            this.zzaQX.add(query.getFilter());
            this.zzaQS = query.getPageToken();
            this.zzaQT = query.getSortOrder();
            this.zzaQU = query.zzaQU;
            this.zzaQV = query.zzaQV;
            this.zzaMV = query.zztt();
            this.zzaQW = query.zzaQW;
        }

        public Builder addFilter(Filter filter) {
            if (!(filter instanceof zzt)) {
                this.zzaQX.add(filter);
            }
            return this;
        }

        public Query build() {
            return new Query(new zzr(zzx.zzaRz, this.zzaQX), this.zzaQS, this.zzaQT, this.zzaQU, this.zzaQV, this.zzaMV, this.zzaQW, null);
        }

        @Deprecated
        public Builder setPageToken(String str) {
            this.zzaQS = str;
            return this;
        }

        public Builder setSortOrder(SortOrder sortOrder) {
            this.zzaQT = sortOrder;
            return this;
        }
    }

    private Query(zzr zzr, String str, SortOrder sortOrder, List<String> list, boolean z, List<DriveSpace> list2, Set<DriveSpace> set, boolean z2) {
        this.zzaQR = zzr;
        this.zzaQS = str;
        this.zzaQT = sortOrder;
        this.zzaQU = list;
        this.zzaQV = z;
        this.zzaMU = list2;
        this.zzaMV = set;
        this.zzaQW = z2;
    }

    Query(zzr zzr, String str, SortOrder sortOrder, List<String> list, boolean z, List<DriveSpace> list2, boolean z2) {
        List list3 = list2;
        Set hashSet = list3 == null ? null : new HashSet(list3);
        this(zzr, str, sortOrder, (List) list, z, list3, hashSet, z2);
    }

    private Query(zzr zzr, String str, SortOrder sortOrder, List<String> list, boolean z, Set<DriveSpace> set, boolean z2) {
        Set set2 = set;
        List arrayList = set2 == null ? null : new ArrayList(set2);
        this(zzr, str, sortOrder, (List) list, z, arrayList, set2, z2);
    }

    public Filter getFilter() {
        return this.zzaQR;
    }

    @Deprecated
    public String getPageToken() {
        return this.zzaQS;
    }

    public SortOrder getSortOrder() {
        return this.zzaQT;
    }

    public String toString() {
        return String.format(Locale.US, "Query[%s,%s,PageToken=%s,Spaces=%s]", new Object[]{this.zzaQR, this.zzaQT, this.zzaQS, this.zzaMU});
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaQR, i, false);
        zzd.zza(parcel, 3, this.zzaQS, false);
        zzd.zza(parcel, 4, this.zzaQT, i, false);
        zzd.zzb(parcel, 5, this.zzaQU, false);
        zzd.zza(parcel, 6, this.zzaQV);
        zzd.zzc(parcel, 7, this.zzaMU, false);
        zzd.zza(parcel, 8, this.zzaQW);
        zzd.zzI(parcel, zze);
    }

    public final Set<DriveSpace> zztt() {
        return this.zzaMV;
    }
}
