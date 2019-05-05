package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.connection.idl.zzc;
import com.google.firebase.database.connection.idl.zzf;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

public final class mx implements qt {
    private final FirebaseApp zzbZt;
    private final Set<String> zzbZy = new HashSet();
    private final Context zzqE;

    public mx(FirebaseApp firebaseApp) {
        this.zzbZt = firebaseApp;
        if (this.zzbZt == null) {
            Log.e("FirebaseDatabase", "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
            Log.e("FirebaseDatabase", "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database.");
            Log.e("FirebaseDatabase", "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
            throw new RuntimeException("You need to call FirebaseApp.initializeApp() before using Firebase Database.");
        }
        this.zzqE = this.zzbZt.getApplicationContext();
    }

    public final on zza(qd qdVar, oj ojVar, ol olVar, oo ooVar) {
        zzf zza = zzf.zza(this.zzqE, new zzc(olVar, qdVar.zzGQ(), null, qdVar.zzFW(), FirebaseDatabase.getSdkVersion(), qdVar.zzht()), ojVar, ooVar);
        this.zzbZt.zza(new na(this, zza));
        return zza;
    }

    public final pu zza(ScheduledExecutorService scheduledExecutorService) {
        return new mr(this.zzbZt, scheduledExecutorService);
    }

    public final qk zza(qd qdVar) {
        return new mw();
    }

    public final uh zza(qd qdVar, String str) {
        String zzGU = qdVar.zzGU();
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(zzGU).length());
        stringBuilder.append(str);
        stringBuilder.append("_");
        stringBuilder.append(zzGU);
        str = stringBuilder.toString();
        if (this.zzbZy.contains(str)) {
            StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(zzGU).length() + 47);
            stringBuilder2.append("SessionPersistenceKey '");
            stringBuilder2.append(zzGU);
            stringBuilder2.append("' has already been used.");
            throw new DatabaseException(stringBuilder2.toString());
        }
        this.zzbZy.add(str);
        return new ue(qdVar, new nb(this.zzqE, qdVar, str), new uf(qdVar.zzGS()));
    }

    public final wm zza(qd qdVar, wn wnVar, List<String> list) {
        return new wi(wnVar, null);
    }

    public final sd zzb(qd qdVar) {
        return new my(this, qdVar.zzgP("RunLoop"));
    }

    public final String zzc(qd qdVar) {
        int i = VERSION.SDK_INT;
        StringBuilder stringBuilder = new StringBuilder(19);
        stringBuilder.append(i);
        stringBuilder.append("/Android");
        return stringBuilder.toString();
    }
}
