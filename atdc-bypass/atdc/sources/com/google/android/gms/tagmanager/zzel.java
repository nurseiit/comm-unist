package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

final class zzel extends zzbr {
    private static final String ID = zzbf.REGEX_GROUP.toString();
    private static final String zzbFP = zzbg.ARG0.toString();
    private static final String zzbFQ = zzbg.ARG1.toString();
    private static final String zzbFR = zzbg.IGNORE_CASE.toString();
    private static final String zzbFS = zzbg.GROUP.toString();

    public zzel() {
        super(ID, zzbFP, zzbFQ);
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        zzbr zzbr = (zzbr) map.get(zzbFP);
        zzbr zzbr2 = (zzbr) map.get(zzbFQ);
        if (zzbr == null || zzbr == zzgk.zzCh() || zzbr2 == null || zzbr2 == zzgk.zzCh()) {
            return zzgk.zzCh();
        }
        int i = 64;
        if (zzgk.zzf((zzbr) map.get(zzbFR)).booleanValue()) {
            i = 66;
        }
        int i2 = 1;
        zzbr zzbr3 = (zzbr) map.get(zzbFS);
        if (zzbr3 != null) {
            Long zzd = zzgk.zzd(zzbr3);
            if (zzd == zzgk.zzCc()) {
                return zzgk.zzCh();
            }
            i2 = zzd.intValue();
            if (i2 < 0) {
                return zzgk.zzCh();
            }
        }
        try {
            String zzb = zzgk.zzb(zzbr);
            String zzb2 = zzgk.zzb(zzbr2);
            Object obj = null;
            Matcher matcher = Pattern.compile(zzb2, i).matcher(zzb);
            if (matcher.find() && matcher.groupCount() >= i2) {
                obj = matcher.group(i2);
            }
            return obj == null ? zzgk.zzCh() : zzgk.zzI(obj);
        } catch (PatternSyntaxException unused) {
            return zzgk.zzCh();
        }
    }
}
