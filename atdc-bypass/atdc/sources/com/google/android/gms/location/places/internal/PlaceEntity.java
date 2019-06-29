package com.google.android.gms.location.places.internal;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class PlaceEntity extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable, Place {
    public static final Creator<PlaceEntity> CREATOR = new zzad();
    private final String mName;
    private final String zzIi;
    private final String zzaTl;
    private Locale zzbjV;
    private final LatLng zzbji;
    private final List<Integer> zzbjj;
    private final String zzbjk;
    private final Uri zzbjl;
    private final String zzbkA;
    private final List<String> zzbkB;
    private final zzal zzbkC;
    private final zzae zzbkD;
    private final Map<Integer, String> zzbkE;
    private final TimeZone zzbkF;
    private final Bundle zzbkr;
    @Deprecated
    private final zzaj zzbks;
    private final float zzbkt;
    private final LatLngBounds zzbku;
    private final String zzbkv;
    private final boolean zzbkw;
    private final float zzbkx;
    private final int zzbky;
    private final List<Integer> zzbkz;

    public static class zza {
        private String mName;
        private String zzIi;
        private String zzaTl;
        private LatLng zzbji;
        private String zzbjk;
        private Uri zzbjl;
        private List<String> zzbkB;
        private zzal zzbkC;
        private List<Integer> zzbkG;
        private zzae zzbkH;
        private float zzbkt;
        private LatLngBounds zzbku;
        private boolean zzbkw;
        private float zzbkx = -1.0f;
        private int zzbky = -1;

        public final zza zzD(List<Integer> list) {
            this.zzbkG = list;
            return this;
        }

        public final zza zzE(List<String> list) {
            this.zzbkB = list;
            return this;
        }

        public final zza zza(zzae zzae) {
            this.zzbkH = zzae;
            return this;
        }

        public final zza zza(zzal zzal) {
            this.zzbkC = zzal;
            return this;
        }

        public final zza zza(LatLng latLng) {
            this.zzbji = latLng;
            return this;
        }

        public final zza zza(LatLngBounds latLngBounds) {
            this.zzbku = latLngBounds;
            return this;
        }

        public final zza zzaj(boolean z) {
            this.zzbkw = z;
            return this;
        }

        public final zza zzbm(int i) {
            this.zzbky = i;
            return this;
        }

        public final zza zzc(float f) {
            this.zzbkt = f;
            return this;
        }

        public final zza zzd(float f) {
            this.zzbkx = f;
            return this;
        }

        public final zza zzdA(String str) {
            this.zzbjk = str;
            return this;
        }

        public final zza zzdx(String str) {
            this.zzIi = str;
            return this;
        }

        public final zza zzdy(String str) {
            this.mName = str;
            return this;
        }

        public final zza zzdz(String str) {
            this.zzaTl = str;
            return this;
        }

        public final zza zzp(Uri uri) {
            this.zzbjl = uri;
            return this;
        }

        public final PlaceEntity zzvZ() {
            String str = this.zzIi;
            List list = this.zzbkG;
            List emptyList = Collections.emptyList();
            String str2 = this.mName;
            String str3 = this.zzaTl;
            String str4 = this.zzbjk;
            List list2 = this.zzbkB;
            LatLng latLng = this.zzbji;
            float f = this.zzbkt;
            LatLngBounds latLngBounds = this.zzbku;
            Uri uri = this.zzbjl;
            boolean z = this.zzbkw;
            float f2 = this.zzbkx;
            int i = this.zzbky;
            int i2 = i;
            float f3 = f2;
            boolean z2 = z;
            zzaj zzaj = new zzaj(this.mName, this.zzaTl, this.zzbjk, null, this.zzbkB);
            zzal zzal = this.zzbkC;
            zzal zzal2 = zzal;
            return new PlaceEntity(str, list, emptyList, null, str2, str3, str4, null, list2, latLng, f, latLngBounds, null, uri, z2, f3, i2, zzaj, zzal2, this.zzbkH);
        }
    }

    PlaceEntity(String str, List<Integer> list, List<Integer> list2, Bundle bundle, String str2, String str3, String str4, String str5, List<String> list3, LatLng latLng, float f, LatLngBounds latLngBounds, String str6, Uri uri, boolean z, float f2, int i, zzaj zzaj, zzal zzal, zzae zzae) {
        this.zzIi = str;
        this.zzbjj = Collections.unmodifiableList(list);
        this.zzbkz = list2;
        this.zzbkr = bundle != null ? bundle : new Bundle();
        this.mName = str2;
        this.zzaTl = str3;
        this.zzbjk = str4;
        this.zzbkA = str5;
        this.zzbkB = list3 != null ? list3 : Collections.emptyList();
        this.zzbji = latLng;
        this.zzbkt = f;
        this.zzbku = latLngBounds;
        this.zzbkv = str6 != null ? str6 : "UTC";
        this.zzbjl = uri;
        this.zzbkw = z;
        this.zzbkx = f2;
        this.zzbky = i;
        this.zzbkE = Collections.unmodifiableMap(new HashMap());
        this.zzbkF = null;
        this.zzbjV = null;
        this.zzbks = zzaj;
        this.zzbkC = zzal;
        this.zzbkD = zzae;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceEntity)) {
            return false;
        }
        PlaceEntity placeEntity = (PlaceEntity) obj;
        return this.zzIi.equals(placeEntity.zzIi) && zzbe.equal(this.zzbjV, placeEntity.zzbjV);
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final /* synthetic */ CharSequence getAddress() {
        return this.zzaTl;
    }

    public final CharSequence getAttributions() {
        return zzg.zzi(this.zzbkB);
    }

    public final String getId() {
        return this.zzIi;
    }

    public final LatLng getLatLng() {
        return this.zzbji;
    }

    public final Locale getLocale() {
        return this.zzbjV;
    }

    public final /* synthetic */ CharSequence getName() {
        return this.mName;
    }

    public final /* synthetic */ CharSequence getPhoneNumber() {
        return this.zzbjk;
    }

    public final List<Integer> getPlaceTypes() {
        return this.zzbjj;
    }

    public final int getPriceLevel() {
        return this.zzbky;
    }

    public final float getRating() {
        return this.zzbkx;
    }

    public final LatLngBounds getViewport() {
        return this.zzbku;
    }

    public final Uri getWebsiteUri() {
        return this.zzbjl;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzIi, this.zzbjV});
    }

    public final boolean isDataValid() {
        return true;
    }

    public final void setLocale(Locale locale) {
        this.zzbjV = locale;
    }

    @SuppressLint({"DefaultLocale"})
    public final String toString() {
        return zzbe.zzt(this).zzg("id", this.zzIi).zzg("placeTypes", this.zzbjj).zzg("locale", this.zzbjV).zzg("name", this.mName).zzg("address", this.zzaTl).zzg("phoneNumber", this.zzbjk).zzg("latlng", this.zzbji).zzg("viewport", this.zzbku).zzg("websiteUri", this.zzbjl).zzg("isPermanentlyClosed", Boolean.valueOf(this.zzbkw)).zzg("priceLevel", Integer.valueOf(this.zzbky)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getId(), false);
        zzd.zza(parcel, 2, this.zzbkr, false);
        zzd.zza(parcel, 3, this.zzbks, i, false);
        zzd.zza(parcel, 4, getLatLng(), i, false);
        zzd.zza(parcel, 5, this.zzbkt);
        zzd.zza(parcel, 6, getViewport(), i, false);
        zzd.zza(parcel, 7, this.zzbkv, false);
        zzd.zza(parcel, 8, getWebsiteUri(), i, false);
        zzd.zza(parcel, 9, this.zzbkw);
        zzd.zza(parcel, 10, getRating());
        zzd.zzc(parcel, 11, getPriceLevel());
        zzd.zza(parcel, 13, this.zzbkz, false);
        zzd.zza(parcel, 14, (String) getAddress(), false);
        zzd.zza(parcel, 15, (String) getPhoneNumber(), false);
        zzd.zza(parcel, 16, this.zzbkA, false);
        zzd.zzb(parcel, 17, this.zzbkB, false);
        zzd.zza(parcel, 19, (String) getName(), false);
        zzd.zza(parcel, 20, getPlaceTypes(), false);
        zzd.zza(parcel, 21, this.zzbkC, i, false);
        zzd.zza(parcel, 22, this.zzbkD, i, false);
        zzd.zzI(parcel, zze);
    }
}
