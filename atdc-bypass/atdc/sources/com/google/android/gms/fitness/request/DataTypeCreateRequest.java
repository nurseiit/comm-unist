package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.Field;
import com.google.android.gms.internal.zzbwb;
import com.google.android.gms.internal.zzbwc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class DataTypeCreateRequest extends zza {
    public static final Creator<DataTypeCreateRequest> CREATOR = new zzq();
    private final String mName;
    private final List<Field> zzaWL;
    private final zzbwb zzaWM;
    private final int zzaku;

    public static class Builder {
        private String mName;
        private List<Field> zzaWL = new ArrayList();

        public Builder addField(Field field) {
            if (!this.zzaWL.contains(field)) {
                this.zzaWL.add(field);
            }
            return this;
        }

        public Builder addField(String str, int i) {
            boolean z = (str == null || str.isEmpty()) ? false : true;
            zzbo.zzb(z, (Object) "Invalid name specified");
            return addField(Field.zzm(str, i));
        }

        public DataTypeCreateRequest build() {
            zzbo.zza(this.mName != null, (Object) "Must set the name");
            zzbo.zza(this.zzaWL.isEmpty() ^ 1, (Object) "Must specify the data fields");
            return new DataTypeCreateRequest(this, null);
        }

        public Builder setName(String str) {
            this.mName = str;
            return this;
        }
    }

    DataTypeCreateRequest(int i, String str, List<Field> list, IBinder iBinder) {
        this.zzaku = i;
        this.mName = str;
        this.zzaWL = Collections.unmodifiableList(list);
        this.zzaWM = zzbwc.zzR(iBinder);
    }

    private DataTypeCreateRequest(Builder builder) {
        this(builder.mName, builder.zzaWL, null);
    }

    public DataTypeCreateRequest(DataTypeCreateRequest dataTypeCreateRequest, zzbwb zzbwb) {
        this(dataTypeCreateRequest.mName, dataTypeCreateRequest.zzaWL, zzbwb);
    }

    private DataTypeCreateRequest(String str, List<Field> list, zzbwb zzbwb) {
        this.zzaku = 3;
        this.mName = str;
        this.zzaWL = Collections.unmodifiableList(list);
        this.zzaWM = zzbwb;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DataTypeCreateRequest) {
            DataTypeCreateRequest dataTypeCreateRequest = (DataTypeCreateRequest) obj;
            obj = (zzbe.equal(this.mName, dataTypeCreateRequest.mName) && zzbe.equal(this.zzaWL, dataTypeCreateRequest.zzaWL)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public List<Field> getFields() {
        return this.zzaWL;
    }

    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.mName, this.zzaWL});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("name", this.mName).zzg("fields", this.zzaWL).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getName(), false);
        zzd.zzc(parcel, 2, getFields(), false);
        zzd.zza(parcel, 3, this.zzaWM == null ? null : this.zzaWM.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
