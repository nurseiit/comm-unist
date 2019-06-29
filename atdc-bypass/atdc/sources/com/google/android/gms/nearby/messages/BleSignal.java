package com.google.android.gms.nearby.messages;

public interface BleSignal {
    public static final int UNKNOWN_TX_POWER = Integer.MIN_VALUE;

    int getRssi();

    int getTxPower();
}
