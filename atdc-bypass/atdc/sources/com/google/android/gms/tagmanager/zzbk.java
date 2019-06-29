package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzbk extends zzbr {
    private static final String ID = zzbf.ENCODE.toString();
    private static final String zzbEH = zzbg.ARG0.toString();
    private static final String zzbEI = zzbg.NO_PADDING.toString();
    private static final String zzbEJ = zzbg.INPUT_FORMAT.toString();
    private static final String zzbEK = zzbg.OUTPUT_FORMAT.toString();

    public zzbk() {
        super(ID, zzbEH);
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        zzbr zzbr = (zzbr) map.get(zzbEH);
        if (zzbr == null || zzbr == zzgk.zzCh()) {
            return zzgk.zzCh();
        }
        String zzb = zzgk.zzb(zzbr);
        zzbr zzbr2 = (zzbr) map.get(zzbEJ);
        Object zzb2 = zzbr2 == null ? "text" : zzgk.zzb(zzbr2);
        zzbr zzbr3 = (zzbr) map.get(zzbEK);
        Object zzb3 = zzbr3 == null ? "base16" : zzgk.zzb(zzbr3);
        int i = 2;
        zzbr zzbr4 = (zzbr) map.get(zzbEI);
        if (zzbr4 != null && zzgk.zzf(zzbr4).booleanValue()) {
            i = 3;
        }
        String str;
        try {
            byte[] bytes;
            Object encode;
            if ("text".equals(zzb2)) {
                bytes = zzb.getBytes();
            } else if ("base16".equals(zzb2)) {
                bytes = zzo.decode(zzb);
            } else if ("base64".equals(zzb2)) {
                bytes = Base64.decode(zzb, i);
            } else if ("base64url".equals(zzb2)) {
                bytes = Base64.decode(zzb, i | 8);
            } else {
                str = "Encode: unknown input format: ";
                zzb = String.valueOf(zzb2);
                zzdj.e(zzb.length() != 0 ? str.concat(zzb) : new String(str));
                return zzgk.zzCh();
            }
            if ("base16".equals(zzb3)) {
                encode = zzo.encode(bytes);
            } else if ("base64".equals(zzb3)) {
                encode = Base64.encodeToString(bytes, i);
            } else if ("base64url".equals(zzb3)) {
                encode = Base64.encodeToString(bytes, i | 8);
            } else {
                str = "Encode: unknown output format: ";
                zzb = String.valueOf(zzb3);
                str = zzb.length() != 0 ? str.concat(zzb) : new String(str);
                zzdj.e(str);
                return zzgk.zzCh();
            }
            return zzgk.zzI(encode);
        } catch (IllegalArgumentException unused) {
            str = "Encode: invalid input:";
        }
    }
}
