package com.google.android.gms.location.places;

import android.support.annotation.Nullable;
import android.text.style.CharacterStyle;
import com.google.android.gms.common.data.Freezable;
import java.util.List;

public interface AutocompletePrediction extends Freezable<AutocompletePrediction> {
    CharSequence getFullText(@Nullable CharacterStyle characterStyle);

    @Nullable
    String getPlaceId();

    @Nullable
    List<Integer> getPlaceTypes();

    CharSequence getPrimaryText(@Nullable CharacterStyle characterStyle);

    CharSequence getSecondaryText(@Nullable CharacterStyle characterStyle);
}
