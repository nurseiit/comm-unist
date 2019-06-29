package com.google.android.gms.awareness.fence;

import com.google.android.gms.common.api.Result;

public interface FenceQueryResult extends Result {
    FenceStateMap getFenceStateMap();
}
