package com.google.android.gms.awareness.snapshot;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.location.places.PlaceLikelihood;
import java.util.List;

public interface PlacesResult extends Result {
    List<PlaceLikelihood> getPlaceLikelihoods();
}
