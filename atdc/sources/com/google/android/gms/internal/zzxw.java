package com.google.android.gms.internal;

public final class zzxw extends Exception {
    private final int mErrorCode;

    public zzxw(String str, int i) {
        super(str);
        this.mErrorCode = i;
    }

    public final int getErrorCode() {
        return this.mErrorCode;
    }
}
