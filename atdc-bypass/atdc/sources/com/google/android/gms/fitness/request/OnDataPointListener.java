package com.google.android.gms.fitness.request;

import com.google.android.gms.fitness.data.DataPoint;

public interface OnDataPointListener {
    void onDataPoint(DataPoint dataPoint);
}
