package com.google.android.gms.awareness.snapshot;

import com.google.android.gms.awareness.state.Weather;
import com.google.android.gms.common.api.Result;

public interface WeatherResult extends Result {
    Weather getWeather();
}
