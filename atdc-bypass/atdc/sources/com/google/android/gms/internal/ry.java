package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.FirebaseDatabase;
import java.util.HashMap;
import java.util.Map;

public final class ry {
    private static final ry zzcer = new ry();
    private final Map<qd, Map<String, qu>> zzces = new HashMap();

    public static qu zza(qd qdVar, rx rxVar, FirebaseDatabase firebaseDatabase) throws DatabaseException {
        return zzcer.zzb(qdVar, rxVar, firebaseDatabase);
    }

    private final qu zzb(qd qdVar, rx rxVar, FirebaseDatabase firebaseDatabase) throws DatabaseException {
        qu quVar;
        qdVar.zzGD();
        String str = rxVar.host;
        String str2 = rxVar.zzbxU;
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 9) + String.valueOf(str2).length());
        stringBuilder.append("https://");
        stringBuilder.append(str);
        stringBuilder.append("/");
        stringBuilder.append(str2);
        str = stringBuilder.toString();
        synchronized (this.zzces) {
            if (!this.zzces.containsKey(qdVar)) {
                this.zzces.put(qdVar, new HashMap());
            }
            Map map = (Map) this.zzces.get(qdVar);
            if (map.containsKey(str)) {
                throw new IllegalStateException("createLocalRepo() called for existing repo.");
            }
            quVar = new qu(rxVar, qdVar, firebaseDatabase);
            map.put(str, quVar);
        }
        return quVar;
    }

    public static void zzd(qd qdVar) {
        ry ryVar = zzcer;
        sd sdVar = qdVar.zzccQ;
        if (sdVar != null) {
            sdVar.zzq(new sb(ryVar, qdVar));
        }
    }

    public static void zze(qd qdVar) {
        ry ryVar = zzcer;
        sd sdVar = qdVar.zzccQ;
        if (sdVar != null) {
            sdVar.zzq(new sc(ryVar, qdVar));
        }
    }

    public static void zzk(qu quVar) {
        quVar.zzq(new rz(quVar));
    }

    public static void zzl(qu quVar) {
        quVar.zzq(new sa(quVar));
    }
}
