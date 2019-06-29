package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.query.Filter;

public class FilterHolder extends zza implements ReflectedParcelable {
    public static final Creator<FilterHolder> CREATOR = new zzh();
    private final Filter zzaMD;
    private zzb<?> zzaRh;
    private zzd zzaRi;
    private zzr zzaRj;
    private zzv zzaRk;
    private zzp<?> zzaRl;
    private zzt zzaRm;
    private zzn zzaRn;
    private zzl zzaRo;
    private zzz zzaRp;

    public FilterHolder(Filter filter) {
        zzbo.zzb((Object) filter, (Object) "Null filter.");
        zzz zzz = null;
        this.zzaRh = filter instanceof zzb ? (zzb) filter : null;
        this.zzaRi = filter instanceof zzd ? (zzd) filter : null;
        this.zzaRj = filter instanceof zzr ? (zzr) filter : null;
        this.zzaRk = filter instanceof zzv ? (zzv) filter : null;
        this.zzaRl = filter instanceof zzp ? (zzp) filter : null;
        this.zzaRm = filter instanceof zzt ? (zzt) filter : null;
        this.zzaRn = filter instanceof zzn ? (zzn) filter : null;
        this.zzaRo = filter instanceof zzl ? (zzl) filter : null;
        if (filter instanceof zzz) {
            zzz = (zzz) filter;
        }
        this.zzaRp = zzz;
        if (this.zzaRh == null && this.zzaRi == null && this.zzaRj == null && this.zzaRk == null && this.zzaRl == null && this.zzaRm == null && this.zzaRn == null && this.zzaRo == null && this.zzaRp == null) {
            throw new IllegalArgumentException("Invalid filter type.");
        }
        this.zzaMD = filter;
    }

    FilterHolder(zzb<?> zzb, zzd zzd, zzr zzr, zzv zzv, zzp<?> zzp, zzt zzt, zzn<?> zzn, zzl zzl, zzz zzz) {
        Filter filter;
        this.zzaRh = zzb;
        this.zzaRi = zzd;
        this.zzaRj = zzr;
        this.zzaRk = zzv;
        this.zzaRl = zzp;
        this.zzaRm = zzt;
        this.zzaRn = zzn;
        this.zzaRo = zzl;
        this.zzaRp = zzz;
        if (this.zzaRh != null) {
            filter = this.zzaRh;
        } else if (this.zzaRi != null) {
            filter = this.zzaRi;
        } else if (this.zzaRj != null) {
            filter = this.zzaRj;
        } else if (this.zzaRk != null) {
            filter = this.zzaRk;
        } else if (this.zzaRl != null) {
            filter = this.zzaRl;
        } else if (this.zzaRm != null) {
            filter = this.zzaRm;
        } else if (this.zzaRn != null) {
            filter = this.zzaRn;
        } else if (this.zzaRo != null) {
            filter = this.zzaRo;
        } else if (this.zzaRp != null) {
            filter = this.zzaRp;
        } else {
            throw new IllegalArgumentException("At least one filter must be set.");
        }
        this.zzaMD = filter;
    }

    public final Filter getFilter() {
        return this.zzaMD;
    }

    public String toString() {
        return String.format("FilterHolder[%s]", new Object[]{this.zzaMD});
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaRh, i, false);
        zzd.zza(parcel, 2, this.zzaRi, i, false);
        zzd.zza(parcel, 3, this.zzaRj, i, false);
        zzd.zza(parcel, 4, this.zzaRk, i, false);
        zzd.zza(parcel, 5, this.zzaRl, i, false);
        zzd.zza(parcel, 6, this.zzaRm, i, false);
        zzd.zza(parcel, 7, this.zzaRn, i, false);
        zzd.zza(parcel, 8, this.zzaRo, i, false);
        zzd.zza(parcel, 9, this.zzaRp, i, false);
        zzd.zzI(parcel, zze);
    }
}
