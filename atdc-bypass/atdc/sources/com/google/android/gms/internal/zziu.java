package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

@zzzn
public final class zziu {
    public static final zziu zzAr = new zziu();

    protected zziu() {
    }

    public static zzir zza(Context context, zzla zzla) {
        Context context2;
        List list;
        String zza;
        zzla zzla2 = zzla;
        Date birthday = zzla.getBirthday();
        long time = birthday != null ? birthday.getTime() : -1;
        String contentUrl = zzla.getContentUrl();
        int gender = zzla.getGender();
        Set keywords = zzla.getKeywords();
        if (keywords.isEmpty()) {
            context2 = context;
            list = null;
        } else {
            list = Collections.unmodifiableList(new ArrayList(keywords));
            context2 = context;
        }
        boolean isTestDevice = zzla2.isTestDevice(context2);
        int zzdB = zzla.zzdB();
        Location location = zzla.getLocation();
        Bundle networkExtrasBundle = zzla2.getNetworkExtrasBundle(AdMobAdapter.class);
        boolean manualImpressionsEnabled = zzla.getManualImpressionsEnabled();
        String publisherProvidedId = zzla.getPublisherProvidedId();
        SearchAdRequest zzdy = zzla.zzdy();
        zzlt zzlt = zzdy != null ? new zzlt(zzdy) : null;
        context2 = context.getApplicationContext();
        if (context2 != null) {
            String packageName = context2.getPackageName();
            zzji.zzds();
            zza = zzaiy.zza(Thread.currentThread().getStackTrace(), packageName);
        } else {
            zza = null;
        }
        return new zzir(7, time, networkExtrasBundle, gender, list, isTestDevice, zzdB, manualImpressionsEnabled, publisherProvidedId, zzlt, location, contentUrl, zzla.zzdA(), zzla.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(zzla.zzdC())), zzla.zzdx(), zza, zzla.isDesignedForFamilies());
    }
}
