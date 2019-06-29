package com.google.android.gms.internal;

import com.bumptech.glide.load.Key;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.plus.PlusShare;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class az extends zzcxq {
    private static void zza(Set<Character> set, String str) {
        for (int i = 0; i < str.length(); i++) {
            set.add(Character.valueOf(str.charAt(i)));
        }
    }

    private static String zzb(String str, int i, Set<Character> set) {
        switch (i) {
            case 1:
                try {
                    return URLEncoder.encode(str, Key.STRING_CHARSET_NAME).replaceAll("\\+", "%20");
                } catch (UnsupportedEncodingException unused) {
                    return str;
                }
            case 2:
                str = str.replace("\\", "\\\\");
                for (Character ch : set) {
                    String ch2 = ch.toString();
                    String str2 = "\\";
                    String valueOf = String.valueOf(ch2);
                    str = str.replace(ch2, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                }
                return str;
            default:
                return str;
        }
    }

    private static void zzb(StringBuilder stringBuilder, String str, int i, Set<Character> set) {
        stringBuilder.append(zzb(str, i, set));
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length > 0);
        dp dpVar = dpVarArr[0];
        dp dpVar2 = dpVarArr.length > 1 ? dpVarArr[1] : dv.zzbLu;
        String str = "";
        int i = 2;
        if (dpVarArr.length > 2) {
            str = dpVarArr[2] == dv.zzbLu ? "" : zzcxp.zzd(dpVarArr[2]);
        }
        String str2 = "=";
        if (dpVarArr.length > 3) {
            str2 = dpVarArr[3] == dv.zzbLu ? "=" : zzcxp.zzd(dpVarArr[3]);
        }
        Set set = null;
        if (dpVar2 != dv.zzbLu) {
            zzbo.zzaf(dpVar2 instanceof eb);
            if (PlusShare.KEY_CALL_TO_ACTION_URL.equals(dpVar2.zzDl())) {
                i = 1;
            } else if (!"backslash".equals(dpVar2.zzDl())) {
                return new eb("");
            } else {
                set = new HashSet();
                zza(set, str);
                zza(set, str2);
                set.remove(Character.valueOf('\\'));
            }
        } else {
            i = 0;
        }
        StringBuilder stringBuilder = new StringBuilder();
        if (dpVar instanceof dw) {
            for (dp dpVar3 : ((dw) dpVar).zzDs()) {
                if (!z) {
                    stringBuilder.append(str);
                }
                zzb(stringBuilder, zzcxp.zzd(dpVar3), i, set);
                z = false;
            }
        } else if (dpVar instanceof dz) {
            Map zzDt = ((dz) dpVar).zzDt();
            for (String str3 : zzDt.keySet()) {
                if (!z) {
                    stringBuilder.append(str);
                }
                String zzd = zzcxp.zzd((dp) zzDt.get(str3));
                zzb(stringBuilder, str3, i, set);
                stringBuilder.append(str2);
                zzb(stringBuilder, zzd, i, set);
                z = false;
            }
        } else {
            zzb(stringBuilder, zzcxp.zzd(dpVar), i, set);
        }
        return new eb(stringBuilder.toString());
    }
}
