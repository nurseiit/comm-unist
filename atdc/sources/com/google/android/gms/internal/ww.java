package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;

public final class ww {
    private final List<qr> zzcao;
    private final List<String> zzcap;

    private ww(List<qr> list, List<String> list2) {
        if (list.size() != list2.size() - 1) {
            throw new IllegalArgumentException("Number of posts need to be n-1 for n hashes in CompoundHash");
        }
        this.zzcao = list;
        this.zzcap = list2;
    }

    private static void zza(xm xmVar, wy wyVar) {
        if (xmVar.zzIQ()) {
            wyVar.zzb((xh) xmVar);
        } else if (xmVar.isEmpty()) {
            throw new IllegalArgumentException("Can't calculate hash on empty node!");
        } else if (xmVar instanceof wr) {
            ((wr) xmVar).zza(new wx(wyVar), true);
        } else {
            String valueOf = String.valueOf(xmVar);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 33);
            stringBuilder.append("Expected children node, but got: ");
            stringBuilder.append(valueOf);
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public static ww zzh(xm xmVar) {
        wz wzVar = new wz(xmVar);
        if (xmVar.isEmpty()) {
            return new ww(Collections.emptyList(), Collections.singletonList(""));
        }
        wy wyVar = new wy(wzVar);
        zza(xmVar, wyVar);
        wyVar.zzIZ();
        return new ww(wyVar.zzcid, wyVar.zzcie);
    }

    public final List<qr> zzFR() {
        return Collections.unmodifiableList(this.zzcao);
    }

    public final List<String> zzFS() {
        return Collections.unmodifiableList(this.zzcap);
    }
}
