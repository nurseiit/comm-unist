package com.google.android.gms.internal;

@zzzn
final class zzrj {
    private final zzrk zzJx;
    private final boolean zzJy;
    private final String zzJz;

    public zzrj(zzre zzre, boolean z, zzrk zzrk, String str) {
        this.zzJy = z;
        this.zzJx = zzrk;
        this.zzJz = str;
    }

    public final String getReason() {
        return this.zzJz;
    }

    public final boolean isSuccess() {
        return this.zzJy;
    }

    public final zzrk zzeC() {
        return this.zzJx;
    }
}
