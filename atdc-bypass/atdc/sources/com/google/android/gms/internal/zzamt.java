package com.google.android.gms.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

final class zzamt extends SQLiteOpenHelper {
    private /* synthetic */ zzams zzagu;

    zzamt(zzams zzams, Context context, String str) {
        this.zzagu = zzams;
        super(context, str, null, 1);
    }

    private static void zza(SQLiteDatabase sQLiteDatabase) {
        Set zzb = zzb(sQLiteDatabase, "properties");
        r1 = new String[6];
        int i = 0;
        r1[0] = "app_uid";
        r1[1] = "cid";
        r1[2] = "tid";
        r1[3] = "params";
        r1[4] = "adid";
        r1[5] = "hits_count";
        while (i < 6) {
            Object obj = r1[i];
            if (zzb.remove(obj)) {
                i++;
            } else {
                String str = "Database properties is missing required column: ";
                String valueOf = String.valueOf(obj);
                throw new SQLiteException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        }
        if (!zzb.isEmpty()) {
            throw new SQLiteException("Database properties table has extra columns");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0037  */
    private final boolean zza(android.database.sqlite.SQLiteDatabase r12, java.lang.String r13) {
        /*
        r11 = this;
        r0 = 0;
        r1 = 0;
        r3 = "SQLITE_MASTER";
        r2 = 1;
        r4 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x002d }
        r5 = "name";
        r4[r0] = r5;	 Catch:{ SQLiteException -> 0x002d }
        r5 = "name=?";
        r6 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x002d }
        r6[r0] = r13;	 Catch:{ SQLiteException -> 0x002d }
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r2 = r12;
        r12 = r2.query(r3, r4, r5, r6, r7, r8, r9);	 Catch:{ SQLiteException -> 0x002d }
        r1 = r12.moveToFirst();	 Catch:{ SQLiteException -> 0x0026, all -> 0x0023 }
        if (r12 == 0) goto L_0x0022;
    L_0x001f:
        r12.close();
    L_0x0022:
        return r1;
    L_0x0023:
        r13 = move-exception;
        r1 = r12;
        goto L_0x003b;
    L_0x0026:
        r1 = move-exception;
        r10 = r1;
        r1 = r12;
        r12 = r10;
        goto L_0x002e;
    L_0x002b:
        r13 = move-exception;
        goto L_0x003b;
    L_0x002d:
        r12 = move-exception;
    L_0x002e:
        r2 = r11.zzagu;	 Catch:{ all -> 0x002b }
        r3 = "Error querying for table";
        r2.zzc(r3, r13, r12);	 Catch:{ all -> 0x002b }
        if (r1 == 0) goto L_0x003a;
    L_0x0037:
        r1.close();
    L_0x003a:
        return r0;
    L_0x003b:
        if (r1 == 0) goto L_0x0040;
    L_0x003d:
        r1.close();
    L_0x0040:
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzamt.zza(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }

    private static Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 22);
        stringBuilder.append("SELECT * FROM ");
        stringBuilder.append(str);
        stringBuilder.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(stringBuilder.toString(), null);
        try {
            String[] columnNames = rawQuery.getColumnNames();
            for (Object add : columnNames) {
                hashSet.add(add);
            }
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    public final SQLiteDatabase getWritableDatabase() {
        if (this.zzagu.zzagt.zzu(3600000)) {
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException unused) {
                this.zzagu.zzagt.start();
                this.zzagu.zzbs("Opening the database failed, dropping the table and recreating it");
                this.zzagu.getContext().getDatabasePath(zzams.zzkU()).delete();
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    this.zzagu.zzagt.clear();
                    return writableDatabase;
                } catch (SQLiteException e) {
                    this.zzagu.zze("Failed to open freshly created database", e);
                    throw e;
                }
            }
        }
        throw new SQLiteException("Database open failed");
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        if (zzanr.version() >= 9) {
            File file = new File(path);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x0098  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0092  */
    public final void onOpen(android.database.sqlite.SQLiteDatabase r8) {
        /*
        r7 = this;
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 15;
        if (r0 >= r1) goto L_0x0019;
    L_0x0006:
        r0 = "PRAGMA journal_mode=memory";
        r1 = 0;
        r0 = r8.rawQuery(r0, r1);
        r0.moveToFirst();	 Catch:{ all -> 0x0014 }
        r0.close();
        goto L_0x0019;
    L_0x0014:
        r8 = move-exception;
        r0.close();
        throw r8;
    L_0x0019:
        r0 = "hits2";
        r0 = r7.zza(r8, r0);
        if (r0 != 0) goto L_0x0029;
    L_0x0021:
        r0 = com.google.android.gms.internal.zzams.zzagp;
    L_0x0025:
        r8.execSQL(r0);
        goto L_0x008a;
    L_0x0029:
        r0 = "hits2";
        r0 = zzb(r8, r0);
        r1 = 4;
        r2 = new java.lang.String[r1];
        r3 = "hit_id";
        r4 = 0;
        r2[r4] = r3;
        r3 = "hit_string";
        r5 = 1;
        r2[r5] = r3;
        r3 = 2;
        r6 = "hit_time";
        r2[r3] = r6;
        r3 = 3;
        r6 = "hit_url";
        r2[r3] = r6;
    L_0x0046:
        if (r4 >= r1) goto L_0x0070;
    L_0x0048:
        r3 = r2[r4];
        r6 = r0.remove(r3);
        if (r6 != 0) goto L_0x006d;
    L_0x0050:
        r8 = new android.database.sqlite.SQLiteException;
        r0 = "Database hits2 is missing required column: ";
        r1 = java.lang.String.valueOf(r3);
        r2 = r1.length();
        if (r2 == 0) goto L_0x0063;
    L_0x005e:
        r0 = r0.concat(r1);
        goto L_0x0069;
    L_0x0063:
        r1 = new java.lang.String;
        r1.<init>(r0);
        r0 = r1;
    L_0x0069:
        r8.<init>(r0);
        throw r8;
    L_0x006d:
        r4 = r4 + 1;
        goto L_0x0046;
    L_0x0070:
        r1 = "hit_app_id";
        r1 = r0.remove(r1);
        r1 = r1 ^ r5;
        r0 = r0.isEmpty();
        if (r0 != 0) goto L_0x0085;
    L_0x007d:
        r8 = new android.database.sqlite.SQLiteException;
        r0 = "Database hits2 has extra columns";
        r8.<init>(r0);
        throw r8;
    L_0x0085:
        if (r1 == 0) goto L_0x008a;
    L_0x0087:
        r0 = "ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER";
        goto L_0x0025;
    L_0x008a:
        r0 = "properties";
        r0 = r7.zza(r8, r0);
        if (r0 != 0) goto L_0x0098;
    L_0x0092:
        r0 = "CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;";
        r8.execSQL(r0);
        return;
    L_0x0098:
        zza(r8);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzamt.onOpen(android.database.sqlite.SQLiteDatabase):void");
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
