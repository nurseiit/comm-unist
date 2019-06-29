package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzae extends zza {
    public static final Creator<zzae> CREATOR = new zzaf();
    private final Session zzaTe;
    private final DataSet zzaVi;
    private int zzaku;

    zzae(int i, Session session, DataSet dataSet) {
        this.zzaku = i;
        this.zzaTe = session;
        this.zzaVi = dataSet;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzae) {
            zzae zzae = (zzae) obj;
            obj = (zzbe.equal(this.zzaTe, zzae.zzaTe) && zzbe.equal(this.zzaVi, zzae.zzaVi)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public final DataSet getDataSet() {
        return this.zzaVi;
    }

    public final Session getSession() {
        return this.zzaTe;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaTe, this.zzaVi});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("session", this.zzaTe).zzg("dataSet", this.zzaVi).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaTe, i, false);
        zzd.zza(parcel, 2, this.zzaVi, i, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
