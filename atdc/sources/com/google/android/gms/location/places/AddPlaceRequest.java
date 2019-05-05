package com.google.android.gms.location.places;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class AddPlaceRequest extends zza {
    public static final Creator<AddPlaceRequest> CREATOR = new zzb();
    private final String mName;
    private final String zzaTl;
    private final LatLng zzbji;
    private final List<Integer> zzbjj;
    private final String zzbjk;
    private final Uri zzbjl;

    public AddPlaceRequest(String str, LatLng latLng, String str2, List<Integer> list, Uri uri) {
        this(str, latLng, str2, list, null, (Uri) zzbo.zzu(uri));
    }

    public AddPlaceRequest(String str, LatLng latLng, String str2, List<Integer> list, String str3) {
        this(str, latLng, str2, list, zzbo.zzcF(str3), null);
    }

    public AddPlaceRequest(String str, LatLng latLng, String str2, List<Integer> list, String str3, Uri uri) {
        this.mName = zzbo.zzcF(str);
        this.zzbji = (LatLng) zzbo.zzu(latLng);
        this.zzaTl = zzbo.zzcF(str2);
        this.zzbjj = new ArrayList((Collection) zzbo.zzu(list));
        boolean z = true;
        zzbo.zzb(this.zzbjj.isEmpty() ^ 1, (Object) "At least one place type should be provided.");
        if (TextUtils.isEmpty(str3) && uri == null) {
            z = false;
        }
        zzbo.zzb(z, (Object) "One of phone number or URI should be provided.");
        this.zzbjk = str3;
        this.zzbjl = uri;
    }

    public String getAddress() {
        return this.zzaTl;
    }

    public LatLng getLatLng() {
        return this.zzbji;
    }

    public String getName() {
        return this.mName;
    }

    @Nullable
    public String getPhoneNumber() {
        return this.zzbjk;
    }

    public List<Integer> getPlaceTypes() {
        return this.zzbjj;
    }

    @Nullable
    public Uri getWebsiteUri() {
        return this.zzbjl;
    }

    public String toString() {
        return zzbe.zzt(this).zzg("name", this.mName).zzg("latLng", this.zzbji).zzg("address", this.zzaTl).zzg("placeTypes", this.zzbjj).zzg("phoneNumer", this.zzbjk).zzg("websiteUri", this.zzbjl).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getName(), false);
        zzd.zza(parcel, 2, getLatLng(), i, false);
        zzd.zza(parcel, 3, getAddress(), false);
        zzd.zza(parcel, 4, getPlaceTypes(), false);
        zzd.zza(parcel, 5, getPhoneNumber(), false);
        zzd.zza(parcel, 6, getWebsiteUri(), i, false);
        zzd.zzI(parcel, zze);
    }
}
