package com.google.android.gms.awareness.state;

public interface Weather {
    public static final int CELSIUS = 2;
    public static final int CONDITION_CLEAR = 1;
    public static final int CONDITION_CLOUDY = 2;
    public static final int CONDITION_FOGGY = 3;
    public static final int CONDITION_HAZY = 4;
    public static final int CONDITION_ICY = 5;
    public static final int CONDITION_RAINY = 6;
    public static final int CONDITION_SNOWY = 7;
    public static final int CONDITION_STORMY = 8;
    public static final int CONDITION_UNKNOWN = 0;
    public static final int CONDITION_WINDY = 9;
    public static final int FAHRENHEIT = 1;

    int[] getConditions();

    float getDewPoint(int i);

    float getFeelsLikeTemperature(int i);

    int getHumidity();

    float getTemperature(int i);
}
