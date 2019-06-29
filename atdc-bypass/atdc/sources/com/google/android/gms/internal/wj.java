package com.google.android.gms.internal;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class wj implements wm {
    private final Set<String> zzchE;
    private final wn zzchF;

    public wj(wn wnVar, List<String> list) {
        if (list != null) {
            this.zzchE = new HashSet(list);
        } else {
            this.zzchE = null;
        }
        this.zzchF = wnVar;
    }

    public final wn zzGQ() {
        return this.zzchF;
    }

    /* Access modifiers changed, original: protected */
    public String zza(wn wnVar, String str, String str2, long j) {
        String valueOf = String.valueOf(new Date(j).toString());
        String valueOf2 = String.valueOf(wnVar);
        StringBuilder stringBuilder = new StringBuilder((((String.valueOf(valueOf).length() + 6) + String.valueOf(valueOf2).length()) + String.valueOf(str).length()) + String.valueOf(str2).length());
        stringBuilder.append(valueOf);
        stringBuilder.append(" [");
        stringBuilder.append(valueOf2);
        stringBuilder.append("] ");
        stringBuilder.append(str);
        stringBuilder.append(": ");
        stringBuilder.append(str2);
        return stringBuilder.toString();
    }

    /* Access modifiers changed, original: protected */
    public void zzad(String str, String str2) {
        System.err.println(str2);
    }

    /* Access modifiers changed, original: protected */
    public void zzae(String str, String str2) {
        System.out.println(str2);
    }

    /* Access modifiers changed, original: protected */
    public void zzaf(String str, String str2) {
        System.out.println(str2);
    }

    /* Access modifiers changed, original: protected */
    public void zzag(String str, String str2) {
        System.out.println(str2);
    }

    public final void zzb(wn wnVar, String str, String str2, long j) {
        Object obj = (wnVar.ordinal() < this.zzchF.ordinal() || !(this.zzchE == null || wnVar.ordinal() > wn.DEBUG.ordinal() || this.zzchE.contains(str))) ? null : 1;
        if (obj != null) {
            str2 = zza(wnVar, str, str2, j);
            switch (wnVar) {
                case ERROR:
                    zzad(str, str2);
                    break;
                case WARN:
                    zzae(str, str2);
                    return;
                case INFO:
                    zzaf(str, str2);
                    return;
                case DEBUG:
                    zzag(str, str2);
                    return;
                default:
                    throw new RuntimeException("Should not reach here!");
            }
        }
    }
}
