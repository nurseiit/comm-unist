package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;

public final class xs {
    public static xm zzc(qr qrVar, Object obj) {
        xm zza = xp.zza(obj, xd.zzJb());
        if (zza instanceof xk) {
            zza = new xc(Double.valueOf((double) ((Long) zza.getValue()).longValue()), xd.zzJb());
        }
        if (zzl(zza)) {
            return zza;
        }
        Object stringBuilder;
        if (qrVar != null) {
            String valueOf = String.valueOf(qrVar);
            StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 7);
            stringBuilder2.append("Path '");
            stringBuilder2.append(valueOf);
            stringBuilder2.append("'");
            stringBuilder = stringBuilder2.toString();
        } else {
            stringBuilder = "Node";
        }
        throw new DatabaseException(String.valueOf(stringBuilder).concat(" contains invalid priority: Must be a string, double, ServerValue, or null"));
    }

    public static boolean zzl(xm xmVar) {
        return xmVar.zzIR().isEmpty() && (xmVar.isEmpty() || (xmVar instanceof xc) || (xmVar instanceof xu) || (xmVar instanceof xb));
    }
}
