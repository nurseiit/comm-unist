package com.google.firebase.database;

import android.text.TextUtils;
import com.google.android.gms.internal.qg;
import com.google.android.gms.internal.qr;
import com.google.android.gms.internal.qu;
import com.google.android.gms.internal.rx;
import com.google.android.gms.internal.ry;
import com.google.android.gms.internal.zb;
import com.google.android.gms.internal.zd;
import com.google.android.gms.internal.zf;
import com.google.firebase.FirebaseApp;
import com.google.firebase.database.Logger.Level;
import java.util.HashMap;
import java.util.Map;

public class FirebaseDatabase {
    private static final Map<String, Map<rx, FirebaseDatabase>> zzbYU = new HashMap();
    private final FirebaseApp zzbYV;
    private final rx zzbYW;
    private final qg zzbYX;
    private qu zzbYY;

    private FirebaseDatabase(FirebaseApp firebaseApp, rx rxVar, qg qgVar) {
        this.zzbYV = firebaseApp;
        this.zzbYW = rxVar;
        this.zzbYX = qgVar;
    }

    public static FirebaseDatabase getInstance() {
        FirebaseApp instance = FirebaseApp.getInstance();
        if (instance != null) {
            return getInstance(instance, instance.getOptions().getDatabaseUrl());
        }
        throw new DatabaseException("You must call FirebaseApp.initialize() first.");
    }

    public static FirebaseDatabase getInstance(FirebaseApp firebaseApp) {
        return getInstance(firebaseApp, firebaseApp.getOptions().getDatabaseUrl());
    }

    public static synchronized FirebaseDatabase getInstance(FirebaseApp firebaseApp, String str) {
        FirebaseDatabase firebaseDatabase;
        synchronized (FirebaseDatabase.class) {
            if (TextUtils.isEmpty(str)) {
                throw new DatabaseException("Failed to get FirebaseDatabase instance: Specify DatabaseURL within FirebaseApp or from your getInstance() call.");
            }
            Map map = (Map) zzbYU.get(firebaseApp.getName());
            if (map == null) {
                map = new HashMap();
                zzbYU.put(firebaseApp.getName(), map);
            }
            zb zzgX = zd.zzgX(str);
            if (zzgX.zzbZf.isEmpty()) {
                firebaseDatabase = (FirebaseDatabase) map.get(zzgX.zzbYW);
                if (firebaseDatabase == null) {
                    qg qgVar = new qg();
                    if (!firebaseApp.zzEq()) {
                        qgVar.zzgR(firebaseApp.getName());
                    }
                    qgVar.zzd(firebaseApp);
                    FirebaseDatabase firebaseDatabase2 = new FirebaseDatabase(firebaseApp, zzgX.zzbYW, qgVar);
                    map.put(zzgX.zzbYW, firebaseDatabase2);
                    firebaseDatabase = firebaseDatabase2;
                }
            } else {
                String valueOf = String.valueOf(zzgX.zzbZf.toString());
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 113) + String.valueOf(valueOf).length());
                stringBuilder.append("Specified Database URL '");
                stringBuilder.append(str);
                stringBuilder.append("' is invalid. It should point to the root of a Firebase Database but it includes a path: ");
                stringBuilder.append(valueOf);
                throw new DatabaseException(stringBuilder.toString());
            }
        }
        return firebaseDatabase;
    }

    public static FirebaseDatabase getInstance(String str) {
        FirebaseApp instance = FirebaseApp.getInstance();
        if (instance != null) {
            return getInstance(instance, str);
        }
        throw new DatabaseException("You must call FirebaseApp.initialize() first.");
    }

    public static String getSdkVersion() {
        return "3.0.0";
    }

    private final synchronized void zzFm() {
        if (this.zzbYY == null) {
            this.zzbYY = ry.zza(this.zzbYX, this.zzbYW, this);
        }
    }

    private final void zzgB(String str) {
        if (this.zzbYY != null) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 77);
            stringBuilder.append("Calls to ");
            stringBuilder.append(str);
            stringBuilder.append("() must be made before any other usage of FirebaseDatabase instance.");
            throw new DatabaseException(stringBuilder.toString());
        }
    }

    public FirebaseApp getApp() {
        return this.zzbYV;
    }

    public DatabaseReference getReference() {
        zzFm();
        return new DatabaseReference(this.zzbYY, qr.zzGZ());
    }

    public DatabaseReference getReference(String str) {
        zzFm();
        if (str == null) {
            throw new NullPointerException("Can't pass null for argument 'pathString' in FirebaseDatabase.getReference()");
        }
        zf.zzhc(str);
        return new DatabaseReference(this.zzbYY, new qr(str));
    }

    public DatabaseReference getReferenceFromUrl(String str) {
        zzFm();
        if (str == null) {
            throw new NullPointerException("Can't pass null for argument 'url' in FirebaseDatabase.getReferenceFromUrl()");
        }
        zb zzgX = zd.zzgX(str);
        if (zzgX.zzbYW.host.equals(this.zzbYY.zzHh().host)) {
            return new DatabaseReference(this.zzbYY, zzgX.zzbZf);
        }
        String valueOf = String.valueOf(getReference().toString());
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 93) + String.valueOf(valueOf).length());
        stringBuilder.append("Invalid URL (");
        stringBuilder.append(str);
        stringBuilder.append(") passed to getReference().  URL was expected to match configured Database URL: ");
        stringBuilder.append(valueOf);
        throw new DatabaseException(stringBuilder.toString());
    }

    public void goOffline() {
        zzFm();
        ry.zzk(this.zzbYY);
    }

    public void goOnline() {
        zzFm();
        ry.zzl(this.zzbYY);
    }

    public void purgeOutstandingWrites() {
        zzFm();
        this.zzbYY.zzq(new zzg(this));
    }

    public synchronized void setLogLevel(Level level) {
        zzgB("setLogLevel");
        this.zzbYX.setLogLevel(level);
    }

    public synchronized void setPersistenceCacheSizeBytes(long j) {
        zzgB("setPersistenceCacheSizeBytes");
        this.zzbYX.setPersistenceCacheSizeBytes(j);
    }

    public synchronized void setPersistenceEnabled(boolean z) {
        zzgB("setPersistenceEnabled");
        this.zzbYX.setPersistenceEnabled(z);
    }
}
