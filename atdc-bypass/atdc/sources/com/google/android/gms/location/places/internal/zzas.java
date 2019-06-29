package com.google.android.gms.location.places.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.internal.PlaceEntity.zza;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public final class zzas extends zzav implements Place {
    private final String zzbjI = zzD("place_id", "");
    private final zzae zzbkD;

    public zzas(DataHolder dataHolder, int i) {
        zzae zzae;
        super(dataHolder, i);
        Object obj = (getPlaceTypes().size() > 0 || ((getPhoneNumber() != null && getPhoneNumber().length() > 0) || (!(getWebsiteUri() == null || getWebsiteUri().equals(Uri.EMPTY)) || getRating() >= 0.0f || getPriceLevel() >= 0))) ? 1 : null;
        String str = null;
        if (obj != null) {
            List placeTypes = getPlaceTypes();
            if (getPhoneNumber() != null) {
                str = getPhoneNumber().toString();
            }
            zzae zzae2 = new zzae(placeTypes, str, getWebsiteUri(), getRating(), getPriceLevel());
        } else {
            zzae = null;
        }
        this.zzbkD = zzae;
    }

    private final List<String> zzwa() {
        return zzb("place_attributions", Collections.emptyList());
    }

    public final /* synthetic */ Object freeze() {
        zza zzdx = new zza().zzdz(getAddress().toString()).zzE(zzwa()).zzdx(getId());
        String str = "place_is_permanently_closed";
        boolean z = (!zzcv(str) || zzcx(str)) ? false : getBoolean(str);
        PlaceEntity zzvZ = zzdx.zzaj(z).zza(getLatLng()).zzc(zza("place_level_number", 0.0f)).zzdy(getName().toString()).zzdA(getPhoneNumber().toString()).zzbm(getPriceLevel()).zzd(getRating()).zzD(getPlaceTypes()).zza(getViewport()).zzp(getWebsiteUri()).zza((zzal) zza("place_opening_hours", zzal.CREATOR)).zza(this.zzbkD).zzvZ();
        zzvZ.setLocale(getLocale());
        return zzvZ;
    }

    public final CharSequence getAddress() {
        return zzD("place_address", "");
    }

    public final CharSequence getAttributions() {
        return zzg.zzi(zzwa());
    }

    public final String getId() {
        return this.zzbjI;
    }

    public final LatLng getLatLng() {
        return (LatLng) zza("place_lat_lng", LatLng.CREATOR);
    }

    public final Locale getLocale() {
        String zzD = zzD("place_locale_language", "");
        if (!TextUtils.isEmpty(zzD)) {
            return new Locale(zzD, zzD("place_locale_country", ""));
        }
        zzD = zzD("place_locale", "");
        return !TextUtils.isEmpty(zzD) ? new Locale(zzD) : Locale.getDefault();
    }

    public final CharSequence getName() {
        return zzD("place_name", "");
    }

    public final CharSequence getPhoneNumber() {
        return zzD("place_phone_number", "");
    }

    public final List<Integer> getPlaceTypes() {
        return zza("place_types", Collections.emptyList());
    }

    public final int getPriceLevel() {
        return zzu("place_price_level", -1);
    }

    public final float getRating() {
        return zza("place_rating", -1.0f);
    }

    public final LatLngBounds getViewport() {
        return (LatLngBounds) zza("place_viewport", LatLngBounds.CREATOR);
    }

    public final Uri getWebsiteUri() {
        String zzD = zzD("place_website_uri", null);
        return zzD == null ? null : Uri.parse(zzD);
    }
}
