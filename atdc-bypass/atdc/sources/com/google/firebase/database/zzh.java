package com.google.firebase.database;

import com.google.android.gms.internal.qr;
import com.google.android.gms.internal.qu;
import com.google.android.gms.internal.xf;
import com.google.android.gms.internal.xm;

public final class zzh {
    public static DataSnapshot zza(DatabaseReference databaseReference, xf xfVar) {
        return new DataSnapshot(databaseReference, xfVar);
    }

    public static DatabaseReference zza(qu quVar, qr qrVar) {
        return new DatabaseReference(quVar, qrVar);
    }

    public static MutableData zza(xm xmVar) {
        return new MutableData(xmVar);
    }
}
