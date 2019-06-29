package com.google.android.gms.internal;

import com.bumptech.glide.load.Key;
import com.google.android.gms.common.api.Api.zzf;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;

public final class zzayn {
    public static final zzf<zzaxx> zzayp = new zzf();
    public static final zzf<zzazf> zzayq = new zzf();
    private static zzf<Object> zzayr = new zzf();
    private static zzf<Object> zzays = new zzf();
    private static Charset zzayt;
    private static String zzayu = zzaye.zzcj("com.google.cast.multizone");

    static {
        Charset forName;
        try {
            forName = Charset.forName(Key.STRING_CHARSET_NAME);
        } catch (IllegalCharsetNameException | UnsupportedCharsetException unused) {
            forName = null;
        }
        zzayt = forName;
    }
}
