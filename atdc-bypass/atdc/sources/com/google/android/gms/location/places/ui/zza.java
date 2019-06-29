package com.google.android.gms.location.places.ui;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zze;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.internal.PlaceEntity;

class zza {
    public static final int RESULT_ERROR = 2;

    zza() {
    }

    public static Place getPlace(Context context, Intent intent) {
        zzbo.zzb((Object) intent, (Object) "intent must not be null");
        zzbo.zzb((Object) context, (Object) "context must not be null");
        return (Place) zze.zza(intent, "selected_place", PlaceEntity.CREATOR);
    }

    public static Status getStatus(Context context, Intent intent) {
        zzbo.zzb((Object) intent, (Object) "intent must not be null");
        zzbo.zzb((Object) context, (Object) "context must not be null");
        return (Status) zze.zza(intent, "status", Status.CREATOR);
    }
}
