package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzb;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;
import java.util.Collections;
import java.util.List;

public class StartBleScanRequest extends zza {
    public static final Creator<StartBleScanRequest> CREATOR = new zzbf();
    private final List<DataType> zzaTn;
    private final zzbxg zzaWo;
    private final zzad zzaXp;
    private final int zzaXq;
    private final int zzaku;

    public static class Builder {
        private DataType[] zzaWJ = new DataType[0];
        private zzad zzaXp;
        private int zzaXq = 10;

        public StartBleScanRequest build() {
            zzbo.zza(this.zzaXp != null, (Object) "Must set BleScanCallback");
            return new StartBleScanRequest(this, null);
        }

        public Builder setBleScanCallback(BleScanCallback bleScanCallback) {
            this.zzaXp = zzc.zztT().zza(bleScanCallback);
            return this;
        }

        public Builder setDataTypes(DataType... dataTypeArr) {
            this.zzaWJ = dataTypeArr;
            return this;
        }

        public Builder setTimeoutSecs(int i) {
            boolean z = false;
            zzbo.zzb(i > 0, (Object) "Stop time must be greater than zero");
            if (i <= 60) {
                z = true;
            }
            zzbo.zzb(z, (Object) "Stop time must be less than 1 minute");
            this.zzaXq = i;
            return this;
        }
    }

    StartBleScanRequest(int i, List<DataType> list, IBinder iBinder, int i2, IBinder iBinder2) {
        zzad zzad;
        this.zzaku = i;
        this.zzaTn = list;
        if (iBinder == null) {
            zzad = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.request.IBleScanCallback");
            zzad = queryLocalInterface instanceof zzad ? (zzad) queryLocalInterface : new zzaf(iBinder);
        }
        this.zzaXp = zzad;
        this.zzaXq = i2;
        this.zzaWo = zzbxh.zzW(iBinder2);
    }

    private StartBleScanRequest(Builder builder) {
        this(zzb.zza(builder.zzaWJ), builder.zzaXp, builder.zzaXq, null);
    }

    public StartBleScanRequest(StartBleScanRequest startBleScanRequest, zzbxg zzbxg) {
        this(startBleScanRequest.zzaTn, startBleScanRequest.zzaXp, startBleScanRequest.zzaXq, zzbxg);
    }

    private StartBleScanRequest(List<DataType> list, zzad zzad, int i, zzbxg zzbxg) {
        this.zzaku = 4;
        this.zzaTn = list;
        this.zzaXp = zzad;
        this.zzaXq = i;
        this.zzaWo = zzbxg;
    }

    public List<DataType> getDataTypes() {
        return Collections.unmodifiableList(this.zzaTn);
    }

    public int getTimeoutSecs() {
        return this.zzaXq;
    }

    public String toString() {
        return zzbe.zzt(this).zzg("dataTypes", this.zzaTn).zzg("timeoutSecs", Integer.valueOf(this.zzaXq)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, getDataTypes(), false);
        zzd.zza(parcel, 2, this.zzaXp.asBinder(), false);
        zzd.zzc(parcel, 3, getTimeoutSecs());
        zzd.zza(parcel, 4, this.zzaWo == null ? null : this.zzaWo.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
