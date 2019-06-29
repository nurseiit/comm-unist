package com.google.android.gms.awareness.snapshot;

import android.location.Location;
import com.google.android.gms.common.api.Result;

public interface LocationResult extends Result {
    Location getLocation();
}
