package com.google.android.gms.location.places.internal;

import android.support.annotation.Nullable;
import android.text.style.CharacterStyle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.location.places.AutocompletePrediction;
import java.util.Collections;
import java.util.List;

public final class zzd extends zzav implements AutocompletePrediction {
    public zzd(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    private final String zzvT() {
        return zzD("ap_description", "");
    }

    private final String zzvU() {
        return zzD("ap_primary_text", "");
    }

    private final String zzvV() {
        return zzD("ap_secondary_text", "");
    }

    private final List<zzb> zzvW() {
        return zza("ap_matched_subscriptions", zzb.CREATOR, Collections.emptyList());
    }

    private final List<zzb> zzvX() {
        return zza("ap_primary_text_matched", zzb.CREATOR, Collections.emptyList());
    }

    private final List<zzb> zzvY() {
        return zza("ap_secondary_text_matched", zzb.CREATOR, Collections.emptyList());
    }

    public final /* synthetic */ Object freeze() {
        String placeId = getPlaceId();
        List placeTypes = getPlaceTypes();
        int zzu = zzu("ap_personalization_type", 6);
        String zzvT = zzvT();
        return new zza(placeId, placeTypes, zzu, (String) zzbo.zzu(zzvT), zzvW(), zzvU(), zzvX(), zzvV(), zzvY());
    }

    public final CharSequence getFullText(@Nullable CharacterStyle characterStyle) {
        return zzg.zza(zzvT(), zzvW(), characterStyle);
    }

    public final String getPlaceId() {
        return zzD("ap_place_id", null);
    }

    public final List<Integer> getPlaceTypes() {
        return zza("ap_place_types", Collections.emptyList());
    }

    public final CharSequence getPrimaryText(@Nullable CharacterStyle characterStyle) {
        return zzg.zza(zzvU(), zzvX(), characterStyle);
    }

    public final CharSequence getSecondaryText(@Nullable CharacterStyle characterStyle) {
        return zzg.zza(zzvV(), zzvY(), characterStyle);
    }
}
