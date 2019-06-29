package com.google.android.gms.awareness.fence;

import java.util.Set;

public interface FenceStateMap {
    Set<String> getFenceKeys();

    FenceState getFenceState(String str);
}
