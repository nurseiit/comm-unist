package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.internal.zzbud;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class BleDevice extends zza implements ReflectedParcelable {
    public static final Creator<BleDevice> CREATOR = new zzd();
    private final String mName;
    private final String zzaTl;
    private final List<String> zzaTm;
    private final List<DataType> zzaTn;
    private final int zzaku;

    BleDevice(int i, String str, String str2, List<String> list, List<DataType> list2) {
        this.zzaku = i;
        this.zzaTl = str;
        this.mName = str2;
        this.zzaTm = Collections.unmodifiableList(list);
        this.zzaTn = Collections.unmodifiableList(list2);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BleDevice) {
            BleDevice bleDevice = (BleDevice) obj;
            obj = (this.mName.equals(bleDevice.mName) && this.zzaTl.equals(bleDevice.zzaTl) && zzbud.zza(bleDevice.zzaTm, this.zzaTm) && zzbud.zza(this.zzaTn, bleDevice.zzaTn)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public String getAddress() {
        return this.zzaTl;
    }

    public List<DataType> getDataTypes() {
        return this.zzaTn;
    }

    public String getName() {
        return this.mName;
    }

    public List<String> getSupportedProfiles() {
        return this.zzaTm;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.mName, this.zzaTl, this.zzaTm, this.zzaTn});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("name", this.mName).zzg("address", this.zzaTl).zzg("dataTypes", this.zzaTn).zzg("supportedProfiles", this.zzaTm).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getAddress(), false);
        zzd.zza(parcel, 2, getName(), false);
        zzd.zzb(parcel, 3, getSupportedProfiles(), false);
        zzd.zzc(parcel, 4, getDataTypes(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
