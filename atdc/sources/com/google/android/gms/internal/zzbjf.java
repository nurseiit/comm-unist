package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.awareness.fence.FenceState;
import com.google.android.gms.awareness.fence.FenceStateMap;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.safeparcel.zze;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class zzbjf extends zza implements FenceStateMap {
    public static final Creator<zzbjf> CREATOR = new zzbjg();
    private Map<String, zzbjd> zzaLh = new HashMap();

    zzbjf(Bundle bundle) {
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                this.zzaLh.put(str, (zzbjd) zze.zza(bundle.getByteArray(str), zzbjd.CREATOR));
            }
        }
    }

    public final Set<String> getFenceKeys() {
        return this.zzaLh.keySet();
    }

    public final /* synthetic */ FenceState getFenceState(String str) {
        return this.zzaLh.containsKey(str) ? (zzbjd) this.zzaLh.get(str) : null;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Bundle bundle;
        i = zzd.zze(parcel);
        if (this.zzaLh == null) {
            bundle = null;
        } else {
            bundle = new Bundle();
            for (Entry entry : this.zzaLh.entrySet()) {
                bundle.putByteArray((String) entry.getKey(), zze.zza((zzbjd) entry.getValue()));
            }
        }
        zzd.zza(parcel, 2, bundle, false);
        zzd.zzI(parcel, i);
    }
}
