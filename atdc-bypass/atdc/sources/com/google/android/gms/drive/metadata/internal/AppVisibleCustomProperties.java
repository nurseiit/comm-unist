package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class AppVisibleCustomProperties extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable, Iterable<zzc> {
    public static final Creator<AppVisibleCustomProperties> CREATOR = new zza();
    public static final AppVisibleCustomProperties zzaPG = new zza().zztm();
    private List<zzc> zzaPH;

    public static class zza {
        private final Map<CustomPropertyKey, zzc> zzaPI = new HashMap();

        public final zza zza(CustomPropertyKey customPropertyKey, String str) {
            zzbo.zzb((Object) customPropertyKey, (Object) "key");
            this.zzaPI.put(customPropertyKey, new zzc(customPropertyKey, str));
            return this;
        }

        public final zza zza(zzc zzc) {
            zzbo.zzb((Object) zzc, (Object) "property");
            this.zzaPI.put(zzc.zzaPJ, zzc);
            return this;
        }

        public final AppVisibleCustomProperties zztm() {
            return new AppVisibleCustomProperties(this.zzaPI.values());
        }
    }

    AppVisibleCustomProperties(Collection<zzc> collection) {
        zzbo.zzu(collection);
        this.zzaPH = new ArrayList(collection);
    }

    public final boolean equals(Object obj) {
        return this == obj ? true : (obj == null || obj.getClass() != getClass()) ? false : zztl().equals(((AppVisibleCustomProperties) obj).zztl());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaPH});
    }

    public final Iterator<zzc> iterator() {
        return this.zzaPH.iterator();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaPH, false);
        zzd.zzI(parcel, i);
    }

    public final Map<CustomPropertyKey, String> zztl() {
        HashMap hashMap = new HashMap(this.zzaPH.size());
        for (zzc zzc : this.zzaPH) {
            hashMap.put(zzc.zzaPJ, zzc.mValue);
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
