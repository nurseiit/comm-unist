package com.google.android.gms.location.places.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.AutocompleteFilter.Builder;
import com.google.android.gms.location.places.PlacesOptions;
import com.google.android.gms.location.places.zzd;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;
import java.util.Locale;

public final class zzm extends zzz<zzr> {
    private final zzat zzbko;

    private zzm(Context context, Looper looper, zzq zzq, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, PlacesOptions placesOptions) {
        super(context, looper, 65, zzq, connectionCallbacks, onConnectionFailedListener);
        this.zzbko = new zzat(str, Locale.getDefault(), zzq.getAccount() != null ? zzq.getAccount().name : null, null, 0);
    }

    /* synthetic */ zzm(Context context, Looper looper, zzq zzq, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, PlacesOptions placesOptions, zzn zzn) {
        this(context, looper, zzq, connectionCallbacks, onConnectionFailedListener, str, placesOptions);
    }

    public final void zza(zzd zzd, String str) throws RemoteException {
        zzbo.zzb((Object) str, (Object) "placeId cannot be null");
        ((zzr) zzrf()).zza(str, this.zzbko, (zzt) zzd);
    }

    public final void zza(zzd zzd, String str, int i, int i2, int i3) throws RemoteException {
        zzbo.zzb((Object) str, (Object) "fifeUrl cannot be null");
        boolean z = false;
        zzbo.zzb(i > 0, (Object) "width should be > 0");
        if (i > 0) {
            z = true;
        }
        zzbo.zzb(z, (Object) "height should be > 0");
        ((zzr) zzrf()).zza(str, i, i2, i3, this.zzbko, zzd);
    }

    public final void zza(com.google.android.gms.location.places.zzm zzm, AddPlaceRequest addPlaceRequest) throws RemoteException {
        zzbo.zzb((Object) addPlaceRequest, (Object) "userAddedPlace == null");
        ((zzr) zzrf()).zza(addPlaceRequest, this.zzbko, (zzv) zzm);
    }

    public final void zza(com.google.android.gms.location.places.zzm zzm, String str, @Nullable LatLngBounds latLngBounds, @Nullable AutocompleteFilter autocompleteFilter) throws RemoteException {
        zzbo.zzb((Object) zzm, (Object) "callback == null");
        if (str == null) {
            str = "";
        }
        String str2 = str;
        if (autocompleteFilter == null) {
            autocompleteFilter = new Builder().build();
        }
        LatLngBounds latLngBounds2 = latLngBounds;
        ((zzr) zzrf()).zza(str2, latLngBounds2, autocompleteFilter, this.zzbko, zzm);
    }

    public final void zza(com.google.android.gms.location.places.zzm zzm, List<String> list) throws RemoteException {
        ((zzr) zzrf()).zza((List) list, this.zzbko, (zzv) zzm);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
        return queryLocalInterface instanceof zzr ? (zzr) queryLocalInterface : new zzs(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.location.places.GeoDataApi";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.location.places.internal.IGooglePlacesService";
    }
}
