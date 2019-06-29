package com.androidnetworking.interfaces;

import com.androidnetworking.common.ConnectionQuality;

public interface ConnectionQualityChangeListener {
    void onChange(ConnectionQuality connectionQuality, int i);
}
