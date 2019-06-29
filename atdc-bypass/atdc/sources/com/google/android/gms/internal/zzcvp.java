package com.google.android.gms.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

final class zzcvp extends SQLiteOpenHelper {
    private boolean zzbFB;
    private long zzbFC = 0;
    private /* synthetic */ zzcvn zzbIB;

    zzcvp(zzcvn zzcvn, Context context, String str) {
        this.zzbIB = zzcvn;
        super(context, str, null, 1);
    }

    private static void zza(SQLiteDatabase sQLiteDatabase, String str, List<String> list) {
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 22);
        stringBuilder.append("SELECT * FROM ");
        stringBuilder.append(str);
        stringBuilder.append(" WHERE 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(stringBuilder.toString(), null);
        HashSet hashSet = new HashSet();
        try {
            String[] columnNames = rawQuery.getColumnNames();
            for (Object add : columnNames) {
                hashSet.add(add);
            }
            for (String remove : list) {
                if (!hashSet.remove(remove)) {
                    throw new SQLiteException(String.format("Database column %s missing in table %s.", new Object[]{(String) r5.next(), str}));
                }
            }
            if (!hashSet.isEmpty()) {
                throw new SQLiteException(String.format("Database has extra columns in table %s.", new Object[]{str}));
            }
        } finally {
            rawQuery.close();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0029  */
    private static boolean zza(java.lang.String r10, android.database.sqlite.SQLiteDatabase r11) {
        /*
        r0 = 0;
        r1 = 0;
        r3 = "SQLITE_MASTER";
        r2 = 1;
        r4 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x002d, all -> 0x0026 }
        r5 = "name";
        r4[r0] = r5;	 Catch:{ SQLiteException -> 0x002d, all -> 0x0026 }
        r5 = "name=?";
        r6 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x002d, all -> 0x0026 }
        r6[r0] = r10;	 Catch:{ SQLiteException -> 0x002d, all -> 0x0026 }
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r2 = r11;
        r10 = r2.query(r3, r4, r5, r6, r7, r8, r9);	 Catch:{ SQLiteException -> 0x002d, all -> 0x0026 }
        r11 = r10.moveToFirst();	 Catch:{ SQLiteException -> 0x002e, all -> 0x0023 }
        if (r10 == 0) goto L_0x0022;
    L_0x001f:
        r10.close();
    L_0x0022:
        return r11;
    L_0x0023:
        r11 = move-exception;
        r1 = r10;
        goto L_0x0027;
    L_0x0026:
        r11 = move-exception;
    L_0x0027:
        if (r1 == 0) goto L_0x002c;
    L_0x0029:
        r1.close();
    L_0x002c:
        throw r11;
    L_0x002d:
        r10 = r1;
    L_0x002e:
        if (r10 == 0) goto L_0x0033;
    L_0x0030:
        r10.close();
    L_0x0033:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcvp.zza(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    public final SQLiteDatabase getWritableDatabase() {
        if (!this.zzbFB || this.zzbFC + 3600000 <= this.zzbIB.zzvw.currentTimeMillis()) {
            SQLiteDatabase sQLiteDatabase = null;
            this.zzbFB = true;
            this.zzbFC = this.zzbIB.zzvw.currentTimeMillis();
            try {
                sQLiteDatabase = super.getWritableDatabase();
            } catch (SQLiteException unused) {
                this.zzbIB.mContext.getDatabasePath(this.zzbIB.zzbFx).delete();
            }
            if (sQLiteDatabase == null) {
                sQLiteDatabase = super.getWritableDatabase();
            }
            this.zzbFB = false;
            return sQLiteDatabase;
        }
        throw new SQLiteException("Database creation failed");
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        if (zzcuv.version() >= 9) {
            File file = new File(path);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        }
    }

    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (VERSION.SDK_INT < 15) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
            try {
                rawQuery.moveToFirst();
            } finally {
                rawQuery.close();
            }
        }
        if (zza("gtm_hit_unique_ids", sQLiteDatabase)) {
            String str = "gtm_hit_unique_ids";
            zza(sQLiteDatabase, str, Arrays.asList(new String[]{"hit_unique_id"}));
        } else {
            sQLiteDatabase.execSQL(zzcvn.zzbIv);
        }
        if (zza("gtm_hits", sQLiteDatabase)) {
            String str2 = "gtm_hits";
            zza(sQLiteDatabase, str2, Arrays.asList(new String[]{"hit_id", "hit_url", "hit_time", "hit_first_send_time", "hit_method", "hit_unique_id", "hit_headers", "hit_body"}));
        } else {
            sQLiteDatabase.execSQL(zzcvn.zzagp);
        }
        sQLiteDatabase.execSQL(zzcvn.zzbIw);
        sQLiteDatabase.execSQL(zzcvn.zzbIx);
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
