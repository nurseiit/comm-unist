package com.google.android.gms.drive;

public final class zzm extends ExecutionOptions {
    private String zzaMu;
    private String zzaMv;

    private zzm(String str, boolean z, String str2, String str3, int i) {
        super(str, z, i);
        this.zzaMu = str2;
        this.zzaMv = str3;
    }

    /* synthetic */ zzm(String str, boolean z, String str2, String str3, int i, zzn zzn) {
        this(str, z, null, null, i);
    }

    public final String zzsT() {
        return this.zzaMu;
    }

    public final String zzsU() {
        return this.zzaMv;
    }
}
