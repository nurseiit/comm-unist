package com.google.android.gms.drive;

public interface FileUploadPreferences {
    public static final int BATTERY_USAGE_CHARGING_ONLY = 257;
    public static final int BATTERY_USAGE_UNRESTRICTED = 256;
    public static final int NETWORK_TYPE_ANY = 1;
    public static final int NETWORK_TYPE_WIFI_ONLY = 2;
    public static final int PREFERENCE_VALUE_UNKNOWN = 0;

    int getBatteryUsagePreference();

    int getNetworkTypePreference();

    boolean isRoamingAllowed();

    void setBatteryUsagePreference(int i);

    void setNetworkTypePreference(int i);

    void setRoamingAllowed(boolean z);
}
