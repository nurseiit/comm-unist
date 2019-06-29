package com.google.android.gms.internal;

public final class yy {
    private static long zzc(xh<?> xhVar) {
        long j = 8;
        if (!((xhVar instanceof xc) || (xhVar instanceof xk))) {
            if (xhVar instanceof wo) {
                j = 4;
            } else if (xhVar instanceof xu) {
                j = (long) (((String) xhVar.getValue()).length() + 2);
            } else {
                String valueOf = String.valueOf(xhVar.getClass());
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 24);
                stringBuilder.append("Unknown leaf node type: ");
                stringBuilder.append(valueOf);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }
        return xhVar.zzIR().isEmpty() ? j : (j + 24) + zzc((xh) xhVar.zzIR());
    }

    public static long zzn(xm xmVar) {
        if (xmVar.isEmpty()) {
            return 4;
        }
        if (xmVar.zzIQ()) {
            return zzc((xh) xmVar);
        }
        long j = 1;
        for (xl xlVar : xmVar) {
            j = ((j + ((long) xlVar.zzJk().asString().length())) + 4) + zzn(xlVar.zzFn());
        }
        if (!xmVar.zzIR().isEmpty()) {
            j = (j + 12) + zzc((xh) xmVar.zzIR());
        }
        return j;
    }

    public static int zzo(xm xmVar) {
        int i = 0;
        if (xmVar.isEmpty()) {
            return 0;
        }
        if (xmVar.zzIQ()) {
            return 1;
        }
        for (xl zzFn : xmVar) {
            i += zzo(zzFn.zzFn());
        }
        return i;
    }
}
