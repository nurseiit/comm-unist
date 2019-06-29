package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import com.google.android.gms.maps.model.internal.IPolylineDelegate.zza;
import com.google.android.gms.maps.model.internal.zzd;
import com.google.android.gms.maps.model.internal.zze;
import com.google.android.gms.maps.model.internal.zzh;
import com.google.android.gms.maps.model.internal.zzj;
import com.google.android.gms.maps.model.internal.zzk;
import com.google.android.gms.maps.model.internal.zzp;
import com.google.android.gms.maps.model.internal.zzq;
import com.google.android.gms.maps.model.internal.zzs;
import com.google.android.gms.maps.model.internal.zzt;
import com.google.android.gms.maps.model.internal.zzw;
import com.google.android.gms.maps.model.internal.zzx;

public final class zzg extends zzed implements IGoogleMapDelegate {
    zzg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IGoogleMapDelegate");
    }

    public final zzd addCircle(CircleOptions circleOptions) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) circleOptions);
        Parcel zza = zza(35, zzZ);
        zzd zzab = zze.zzab(zza.readStrongBinder());
        zza.recycle();
        return zzab;
    }

    public final com.google.android.gms.maps.model.internal.zzg addGroundOverlay(GroundOverlayOptions groundOverlayOptions) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) groundOverlayOptions);
        Parcel zza = zza(12, zzZ);
        com.google.android.gms.maps.model.internal.zzg zzac = zzh.zzac(zza.readStrongBinder());
        zza.recycle();
        return zzac;
    }

    public final zzp addMarker(MarkerOptions markerOptions) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) markerOptions);
        Parcel zza = zza(11, zzZ);
        zzp zzaf = zzq.zzaf(zza.readStrongBinder());
        zza.recycle();
        return zzaf;
    }

    public final zzs addPolygon(PolygonOptions polygonOptions) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) polygonOptions);
        Parcel zza = zza(10, zzZ);
        zzs zzag = zzt.zzag(zza.readStrongBinder());
        zza.recycle();
        return zzag;
    }

    public final IPolylineDelegate addPolyline(PolylineOptions polylineOptions) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) polylineOptions);
        Parcel zza = zza(9, zzZ);
        IPolylineDelegate zzah = zza.zzah(zza.readStrongBinder());
        zza.recycle();
        return zzah;
    }

    public final zzw addTileOverlay(TileOverlayOptions tileOverlayOptions) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) tileOverlayOptions);
        Parcel zza = zza(13, zzZ);
        zzw zzai = zzx.zzai(zza.readStrongBinder());
        zza.recycle();
        return zzai;
    }

    public final void animateCamera(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(5, zzZ);
    }

    public final void animateCameraWithCallback(IObjectWrapper iObjectWrapper, zzc zzc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzc);
        zzb(6, zzZ);
    }

    public final void animateCameraWithDurationAndCallback(IObjectWrapper iObjectWrapper, int i, zzc zzc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeInt(i);
        zzef.zza(zzZ, (IInterface) zzc);
        zzb(7, zzZ);
    }

    public final void clear() throws RemoteException {
        zzb(14, zzZ());
    }

    public final CameraPosition getCameraPosition() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        CameraPosition cameraPosition = (CameraPosition) zzef.zza(zza, CameraPosition.CREATOR);
        zza.recycle();
        return cameraPosition;
    }

    public final zzj getFocusedBuilding() throws RemoteException {
        Parcel zza = zza(44, zzZ());
        zzj zzad = zzk.zzad(zza.readStrongBinder());
        zza.recycle();
        return zzad;
    }

    public final void getMapAsync(zzap zzap) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzap);
        zzb(53, zzZ);
    }

    public final int getMapType() throws RemoteException {
        Parcel zza = zza(15, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final float getMaxZoomLevel() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    public final float getMinZoomLevel() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    public final Location getMyLocation() throws RemoteException {
        Parcel zza = zza(23, zzZ());
        Location location = (Location) zzef.zza(zza, Location.CREATOR);
        zza.recycle();
        return location;
    }

    public final IProjectionDelegate getProjection() throws RemoteException {
        IProjectionDelegate iProjectionDelegate;
        Parcel zza = zza(26, zzZ());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            iProjectionDelegate = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
            iProjectionDelegate = queryLocalInterface instanceof IProjectionDelegate ? (IProjectionDelegate) queryLocalInterface : new zzbp(readStrongBinder);
        }
        zza.recycle();
        return iProjectionDelegate;
    }

    public final IUiSettingsDelegate getUiSettings() throws RemoteException {
        IUiSettingsDelegate iUiSettingsDelegate;
        Parcel zza = zza(25, zzZ());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            iUiSettingsDelegate = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
            iUiSettingsDelegate = queryLocalInterface instanceof IUiSettingsDelegate ? (IUiSettingsDelegate) queryLocalInterface : new zzbv(readStrongBinder);
        }
        zza.recycle();
        return iUiSettingsDelegate;
    }

    public final boolean isBuildingsEnabled() throws RemoteException {
        Parcel zza = zza(40, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean isIndoorEnabled() throws RemoteException {
        Parcel zza = zza(19, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean isMyLocationEnabled() throws RemoteException {
        Parcel zza = zza(21, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean isTrafficEnabled() throws RemoteException {
        Parcel zza = zza(17, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void moveCamera(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(4, zzZ);
    }

    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(54, zzZ);
    }

    public final void onDestroy() throws RemoteException {
        zzb(57, zzZ());
    }

    public final void onEnterAmbient(Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(81, zzZ);
    }

    public final void onExitAmbient() throws RemoteException {
        zzb(82, zzZ());
    }

    public final void onLowMemory() throws RemoteException {
        zzb(58, zzZ());
    }

    public final void onPause() throws RemoteException {
        zzb(56, zzZ());
    }

    public final void onResume() throws RemoteException {
        zzb(55, zzZ());
    }

    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bundle);
        zzZ = zza(60, zzZ);
        if (zzZ.readInt() != 0) {
            bundle.readFromParcel(zzZ);
        }
        zzZ.recycle();
    }

    public final void onStart() throws RemoteException {
        zzb(101, zzZ());
    }

    public final void onStop() throws RemoteException {
        zzb(102, zzZ());
    }

    public final void resetMinMaxZoomPreference() throws RemoteException {
        zzb(94, zzZ());
    }

    public final void setBuildingsEnabled(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(41, zzZ);
    }

    public final void setContentDescription(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(61, zzZ);
    }

    public final boolean setIndoorEnabled(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        Parcel zza = zza(20, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void setInfoWindowAdapter(zzh zzh) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzh);
        zzb(33, zzZ);
    }

    public final void setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) latLngBounds);
        zzb(95, zzZ);
    }

    public final void setLocationSource(ILocationSourceDelegate iLocationSourceDelegate) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iLocationSourceDelegate);
        zzb(24, zzZ);
    }

    public final boolean setMapStyle(MapStyleOptions mapStyleOptions) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) mapStyleOptions);
        Parcel zza = zza(91, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void setMapType(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(16, zzZ);
    }

    public final void setMaxZoomPreference(float f) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeFloat(f);
        zzb(93, zzZ);
    }

    public final void setMinZoomPreference(float f) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeFloat(f);
        zzb(92, zzZ);
    }

    public final void setMyLocationEnabled(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(22, zzZ);
    }

    public final void setOnCameraChangeListener(zzl zzl) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzl);
        zzb(27, zzZ);
    }

    public final void setOnCameraIdleListener(zzn zzn) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzn);
        zzb(99, zzZ);
    }

    public final void setOnCameraMoveCanceledListener(zzp zzp) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzp);
        zzb(98, zzZ);
    }

    public final void setOnCameraMoveListener(zzr zzr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzr);
        zzb(97, zzZ);
    }

    public final void setOnCameraMoveStartedListener(zzt zzt) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzt);
        zzb(96, zzZ);
    }

    public final void setOnCircleClickListener(zzv zzv) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzv);
        zzb(89, zzZ);
    }

    public final void setOnGroundOverlayClickListener(zzx zzx) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzx);
        zzb(83, zzZ);
    }

    public final void setOnIndoorStateChangeListener(zzz zzz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzz);
        zzb(45, zzZ);
    }

    public final void setOnInfoWindowClickListener(zzab zzab) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzab);
        zzb(32, zzZ);
    }

    public final void setOnInfoWindowCloseListener(zzad zzad) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzad);
        zzb(86, zzZ);
    }

    public final void setOnInfoWindowLongClickListener(zzaf zzaf) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzaf);
        zzb(84, zzZ);
    }

    public final void setOnMapClickListener(zzaj zzaj) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzaj);
        zzb(28, zzZ);
    }

    public final void setOnMapLoadedCallback(zzal zzal) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzal);
        zzb(42, zzZ);
    }

    public final void setOnMapLongClickListener(zzan zzan) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzan);
        zzb(29, zzZ);
    }

    public final void setOnMarkerClickListener(zzar zzar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzar);
        zzb(30, zzZ);
    }

    public final void setOnMarkerDragListener(zzat zzat) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzat);
        zzb(31, zzZ);
    }

    public final void setOnMyLocationButtonClickListener(zzav zzav) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzav);
        zzb(37, zzZ);
    }

    public final void setOnMyLocationChangeListener(zzax zzax) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzax);
        zzb(36, zzZ);
    }

    public final void setOnPoiClickListener(zzaz zzaz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzaz);
        zzb(80, zzZ);
    }

    public final void setOnPolygonClickListener(zzbb zzbb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbb);
        zzb(85, zzZ);
    }

    public final void setOnPolylineClickListener(zzbd zzbd) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbd);
        zzb(87, zzZ);
    }

    public final void setPadding(int i, int i2, int i3, int i4) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzZ.writeInt(i3);
        zzZ.writeInt(i4);
        zzb(39, zzZ);
    }

    public final void setTrafficEnabled(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(18, zzZ);
    }

    public final void setWatermarkEnabled(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(51, zzZ);
    }

    public final void snapshot(zzbq zzbq, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbq);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(38, zzZ);
    }

    public final void snapshotForTest(zzbq zzbq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbq);
        zzb(71, zzZ);
    }

    public final void stopAnimation() throws RemoteException {
        zzb(8, zzZ());
    }

    public final boolean useViewLifecycleWhenInFragment() throws RemoteException {
        Parcel zza = zza(59, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }
}
