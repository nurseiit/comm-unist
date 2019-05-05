package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;

public final class vh implements vk {
    private final qr zzbZf;
    private final qi zzcgG;
    private final DatabaseError zzcgH;

    public vh(qi qiVar, DatabaseError databaseError, qr qrVar) {
        this.zzcgG = qiVar;
        this.zzbZf = qrVar;
        this.zzcgH = databaseError;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzbZf);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 7);
        stringBuilder.append(valueOf);
        stringBuilder.append(":CANCEL");
        return stringBuilder.toString();
    }

    public final void zzHX() {
        this.zzcgG.zza(this.zzcgH);
    }
}
