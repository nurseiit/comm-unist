package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

final class zzbw extends zzbr {
    private static final String ID = zzbf.HASH.toString();
    private static final String zzbEH = zzbg.ARG0.toString();
    private static final String zzbEJ = zzbg.INPUT_FORMAT.toString();
    private static final String zzbEN = zzbg.ALGORITHM.toString();

    public zzbw() {
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
        byte[] bytes;
        String valueOf;
        String zzb = zzgk.zzb(zzbr);
        zzbr zzbr2 = (zzbr) map.get(zzbEN);
        String zzb2 = zzbr2 == null ? "MD5" : zzgk.zzb(zzbr2);
        zzbr zzbr3 = (zzbr) map.get(zzbEJ);
        Object zzb3 = zzbr3 == null ? "text" : zzgk.zzb(zzbr3);
        if ("text".equals(zzb3)) {
            bytes = zzb.getBytes();
        } else if ("base16".equals(zzb3)) {
            bytes = zzo.decode(zzb);
        } else {
            zzb = "Hash: unknown input format: ";
            valueOf = String.valueOf(zzb3);
            valueOf = valueOf.length() != 0 ? zzb.concat(valueOf) : new String(zzb);
            zzdj.e(valueOf);
            return zzgk.zzCh();
        }
        try {
            MessageDigest instance = MessageDigest.getInstance(zzb2);
            instance.update(bytes);
            return zzgk.zzI(zzo.encode(instance.digest()));
        } catch (NoSuchAlgorithmException unused) {
            valueOf = "Hash: unknown algorithm: ";
            zzb = String.valueOf(zzb2);
            valueOf = zzb.length() != 0 ? valueOf.concat(zzb) : new String(valueOf);
        }
    }
}
