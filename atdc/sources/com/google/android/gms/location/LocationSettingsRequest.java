package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class LocationSettingsRequest extends zza {
    public static final Creator<LocationSettingsRequest> CREATOR = new zzv();
    private final List<LocationRequest> zzaWY;
    private final boolean zzbii;
    private final boolean zzbij;
    private zzt zzbik;

    public static final class Builder {
        private boolean zzbii = false;
        private boolean zzbij = false;
        private zzt zzbik = null;
        private final ArrayList<LocationRequest> zzbil = new ArrayList();

        public final Builder addAllLocationRequests(Collection<LocationRequest> collection) {
            for (LocationRequest locationRequest : collection) {
                if (locationRequest != null) {
                    this.zzbil.add(locationRequest);
                }
            }
            return this;
        }

        public final Builder addLocationRequest(@NonNull LocationRequest locationRequest) {
            if (locationRequest != null) {
                this.zzbil.add(locationRequest);
            }
            return this;
        }

        public final LocationSettingsRequest build() {
            return new LocationSettingsRequest(this.zzbil, this.zzbii, this.zzbij, null);
        }

        public final Builder setAlwaysShow(boolean z) {
            this.zzbii = z;
            return this;
        }

        public final Builder setNeedBle(boolean z) {
            this.zzbij = z;
            return this;
        }
    }

    LocationSettingsRequest(List<LocationRequest> list, boolean z, boolean z2, zzt zzt) {
        this.zzaWY = list;
        this.zzbii = z;
        this.zzbij = z2;
        this.zzbik = zzt;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, Collections.unmodifiableList(this.zzaWY), false);
        zzd.zza(parcel, 2, this.zzbii);
        zzd.zza(parcel, 3, this.zzbij);
        zzd.zza(parcel, 5, this.zzbik, i, false);
        zzd.zzI(parcel, zze);
    }
}
