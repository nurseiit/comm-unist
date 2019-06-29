package com.google.android.gms.awareness.state;

public interface HeadphoneState {
    public static final int PLUGGED_IN = 1;
    public static final int UNPLUGGED = 2;

    int getState();
}
