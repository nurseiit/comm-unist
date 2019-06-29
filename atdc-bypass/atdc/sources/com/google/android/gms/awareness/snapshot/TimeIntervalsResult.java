package com.google.android.gms.awareness.snapshot;

import com.google.android.gms.awareness.state.TimeIntervals;
import com.google.android.gms.common.api.Result;

public interface TimeIntervalsResult extends Result {
    TimeIntervals getTimeIntervals();
}
