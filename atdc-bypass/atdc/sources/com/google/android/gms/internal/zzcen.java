package com.google.android.gms.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class zzcen extends zzchj {
    private static final Map<String, String> zzbpn;
    private static final Map<String, String> zzbpo;
    private static final Map<String, String> zzbpp;
    private static final Map<String, String> zzbpq;
    private static final Map<String, String> zzbpr;
    private final zzceq zzbps = new zzceq(this, getContext(), zzcem.zzxC());
    private final zzcjf zzbpt = new zzcjf(zzkq());

    static {
        ArrayMap arrayMap = new ArrayMap(1);
        zzbpn = arrayMap;
        arrayMap.put(Param.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;");
        arrayMap = new ArrayMap(18);
        zzbpo = arrayMap;
        arrayMap.put("app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;");
        zzbpo.put("app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;");
        zzbpo.put("gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;");
        zzbpo.put("dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;");
        zzbpo.put("measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;");
        zzbpo.put("last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;");
        zzbpo.put("day", "ALTER TABLE apps ADD COLUMN day INTEGER;");
        zzbpo.put("daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;");
        zzbpo.put("daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;");
        zzbpo.put("daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;");
        zzbpo.put("remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;");
        zzbpo.put("config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;");
        zzbpo.put("failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;");
        zzbpo.put("app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;");
        zzbpo.put("firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;");
        zzbpo.put("daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;");
        zzbpo.put("daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;");
        zzbpo.put("health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;");
        zzbpo.put("android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;");
        arrayMap = new ArrayMap(1);
        zzbpp = arrayMap;
        arrayMap.put("realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;");
        arrayMap = new ArrayMap(1);
        zzbpq = arrayMap;
        arrayMap.put("has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;");
        arrayMap = new ArrayMap(1);
        zzbpr = arrayMap;
        arrayMap.put("previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;");
    }

    zzcen(zzcgl zzcgl) {
        super(zzcgl);
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0039  */
    @android.support.annotation.WorkerThread
    private final long zza(java.lang.String r3, java.lang.String[] r4, long r5) {
        /*
        r2 = this;
        r0 = r2.getWritableDatabase();
        r1 = 0;
        r4 = r0.rawQuery(r3, r4);	 Catch:{ SQLiteException -> 0x0028 }
        r0 = r4.moveToFirst();	 Catch:{ SQLiteException -> 0x0023, all -> 0x0020 }
        if (r0 == 0) goto L_0x001a;
    L_0x000f:
        r5 = 0;
        r5 = r4.getLong(r5);	 Catch:{ SQLiteException -> 0x0023, all -> 0x0020 }
        if (r4 == 0) goto L_0x0019;
    L_0x0016:
        r4.close();
    L_0x0019:
        return r5;
    L_0x001a:
        if (r4 == 0) goto L_0x001f;
    L_0x001c:
        r4.close();
    L_0x001f:
        return r5;
    L_0x0020:
        r3 = move-exception;
        r1 = r4;
        goto L_0x0037;
    L_0x0023:
        r5 = move-exception;
        r1 = r4;
        goto L_0x0029;
    L_0x0026:
        r3 = move-exception;
        goto L_0x0037;
    L_0x0028:
        r5 = move-exception;
    L_0x0029:
        r4 = r2.zzwF();	 Catch:{ all -> 0x0026 }
        r4 = r4.zzyx();	 Catch:{ all -> 0x0026 }
        r6 = "Database error";
        r4.zze(r6, r3, r5);	 Catch:{ all -> 0x0026 }
        throw r5;	 Catch:{ all -> 0x0026 }
    L_0x0037:
        if (r1 == 0) goto L_0x003c;
    L_0x0039:
        r1.close();
    L_0x003c:
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zza(java.lang.String, java.lang.String[], long):long");
    }

    @WorkerThread
    private final Object zza(Cursor cursor, int i) {
        int type = cursor.getType(i);
        switch (type) {
            case 0:
                zzwF().zzyx().log("Loaded invalid null value from database");
                return null;
            case 1:
                return Long.valueOf(cursor.getLong(i));
            case 2:
                return Double.valueOf(cursor.getDouble(i));
            case 3:
                return cursor.getString(i);
            case 4:
                zzwF().zzyx().log("Loaded invalid blob type value, ignoring it");
                return null;
            default:
                zzwF().zzyx().zzj("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
        }
    }

    @WorkerThread
    private static void zza(ContentValues contentValues, String str, Object obj) {
        zzbo.zzcF(str);
        zzbo.zzu(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put(str, (Double) obj);
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    static void zza(zzcfl zzcfl, SQLiteDatabase sQLiteDatabase) {
        if (zzcfl == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        File file = new File(sQLiteDatabase.getPath());
        if (!file.setReadable(false, false)) {
            zzcfl.zzyz().log("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            zzcfl.zzyz().log("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            zzcfl.zzyz().log("Failed to turn on database read permission for owner");
        }
        if (!file.setWritable(true, true)) {
            zzcfl.zzyz().log("Failed to turn on database write permission for owner");
        }
    }

    @WorkerThread
    static void zza(zzcfl zzcfl, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, Map<String, String> map) throws SQLiteException {
        if (zzcfl == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        if (!zza(zzcfl, sQLiteDatabase, str)) {
            sQLiteDatabase.execSQL(str2);
        }
        try {
            zza(zzcfl, sQLiteDatabase, str, str3, map);
        } catch (SQLiteException e) {
            zzcfl.zzyx().zzj("Failed to verify columns on table that was just created", str);
            throw e;
        }
    }

    @WorkerThread
    private static void zza(zzcfl zzcfl, SQLiteDatabase sQLiteDatabase, String str, String str2, Map<String, String> map) throws SQLiteException {
        if (zzcfl == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        Set zzb = zzb(sQLiteDatabase, str);
        String[] split = str2.split(",");
        int length = split.length;
        int i = 0;
        while (i < length) {
            Object obj = split[i];
            if (zzb.remove(obj)) {
                i++;
            } else {
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 35) + String.valueOf(obj).length());
                stringBuilder.append("Table ");
                stringBuilder.append(str);
                stringBuilder.append(" is missing required column: ");
                stringBuilder.append(obj);
                throw new SQLiteException(stringBuilder.toString());
            }
        }
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                if (!zzb.remove(entry.getKey())) {
                    sQLiteDatabase.execSQL((String) entry.getValue());
                }
            }
        }
        if (!zzb.isEmpty()) {
            zzcfl.zzyz().zze("Table has extra columns. table, columns", str, TextUtils.join(", ", zzb));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0049  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0043  */
    @android.support.annotation.WorkerThread
    private static boolean zza(com.google.android.gms.internal.zzcfl r11, android.database.sqlite.SQLiteDatabase r12, java.lang.String r13) {
        /*
        if (r11 != 0) goto L_0x000a;
    L_0x0002:
        r11 = new java.lang.IllegalArgumentException;
        r12 = "Monitor must not be null";
        r11.<init>(r12);
        throw r11;
    L_0x000a:
        r0 = 0;
        r1 = 0;
        r3 = "SQLITE_MASTER";
        r2 = 1;
        r4 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x0037 }
        r5 = "name";
        r4[r1] = r5;	 Catch:{ SQLiteException -> 0x0037 }
        r5 = "name=?";
        r6 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x0037 }
        r6[r1] = r13;	 Catch:{ SQLiteException -> 0x0037 }
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r2 = r12;
        r12 = r2.query(r3, r4, r5, r6, r7, r8, r9);	 Catch:{ SQLiteException -> 0x0037 }
        r0 = r12.moveToFirst();	 Catch:{ SQLiteException -> 0x0030, all -> 0x002d }
        if (r12 == 0) goto L_0x002c;
    L_0x0029:
        r12.close();
    L_0x002c:
        return r0;
    L_0x002d:
        r11 = move-exception;
        r0 = r12;
        goto L_0x0047;
    L_0x0030:
        r0 = move-exception;
        r10 = r0;
        r0 = r12;
        r12 = r10;
        goto L_0x0038;
    L_0x0035:
        r11 = move-exception;
        goto L_0x0047;
    L_0x0037:
        r12 = move-exception;
    L_0x0038:
        r11 = r11.zzyz();	 Catch:{ all -> 0x0035 }
        r2 = "Error querying for table";
        r11.zze(r2, r13, r12);	 Catch:{ all -> 0x0035 }
        if (r0 == 0) goto L_0x0046;
    L_0x0043:
        r0.close();
    L_0x0046:
        return r1;
    L_0x0047:
        if (r0 == 0) goto L_0x004c;
    L_0x0049:
        r0.close();
    L_0x004c:
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zza(com.google.android.gms.internal.zzcfl, android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }

    @WorkerThread
    private final boolean zza(String str, int i, zzcjn zzcjn) {
        zzkD();
        zzjC();
        zzbo.zzcF(str);
        zzbo.zzu(zzcjn);
        if (TextUtils.isEmpty(zzcjn.zzbuN)) {
            zzwF().zzyz().zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzcfl.zzdZ(str), Integer.valueOf(i), String.valueOf(zzcjn.zzbuM));
            return false;
        }
        try {
            byte[] bArr = new byte[zzcjn.zzLV()];
            adh zzc = adh.zzc(bArr, 0, bArr.length);
            zzcjn.zza(zzc);
            zzc.zzLM();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzcjn.zzbuM);
            contentValues.put("event_name", zzcjn.zzbuN);
            contentValues.put("data", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("event_filters", null, contentValues, 5) == -1) {
                    zzwF().zzyx().zzj("Failed to insert event filter (got -1). appId", zzcfl.zzdZ(str));
                }
                return true;
            } catch (SQLiteException e) {
                zzwF().zzyx().zze("Error storing event filter. appId", zzcfl.zzdZ(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzwF().zzyx().zze("Configuration loss. Failed to serialize event filter. appId", zzcfl.zzdZ(str), e2);
            return false;
        }
    }

    @WorkerThread
    private final boolean zza(String str, int i, zzcjq zzcjq) {
        zzkD();
        zzjC();
        zzbo.zzcF(str);
        zzbo.zzu(zzcjq);
        if (TextUtils.isEmpty(zzcjq.zzbvc)) {
            zzwF().zzyz().zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzcfl.zzdZ(str), Integer.valueOf(i), String.valueOf(zzcjq.zzbuM));
            return false;
        }
        try {
            byte[] bArr = new byte[zzcjq.zzLV()];
            adh zzc = adh.zzc(bArr, 0, bArr.length);
            zzcjq.zza(zzc);
            zzc.zzLM();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzcjq.zzbuM);
            contentValues.put("property_name", zzcjq.zzbvc);
            contentValues.put("data", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                zzwF().zzyx().zzj("Failed to insert property filter (got -1). appId", zzcfl.zzdZ(str));
                return false;
            } catch (SQLiteException e) {
                zzwF().zzyx().zze("Error storing property filter. appId", zzcfl.zzdZ(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzwF().zzyx().zze("Configuration loss. Failed to serialize property filter. appId", zzcfl.zzdZ(str), e2);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x003b  */
    @android.support.annotation.WorkerThread
    private final long zzb(java.lang.String r4, java.lang.String[] r5) {
        /*
        r3 = this;
        r0 = r3.getWritableDatabase();
        r1 = 0;
        r5 = r0.rawQuery(r4, r5);	 Catch:{ SQLiteException -> 0x002a }
        r0 = r5.moveToFirst();	 Catch:{ SQLiteException -> 0x0024, all -> 0x0022 }
        if (r0 == 0) goto L_0x001a;
    L_0x000f:
        r0 = 0;
        r0 = r5.getLong(r0);	 Catch:{ SQLiteException -> 0x0024, all -> 0x0022 }
        if (r5 == 0) goto L_0x0019;
    L_0x0016:
        r5.close();
    L_0x0019:
        return r0;
    L_0x001a:
        r0 = new android.database.sqlite.SQLiteException;	 Catch:{ SQLiteException -> 0x0024, all -> 0x0022 }
        r1 = "Database returned empty set";
        r0.<init>(r1);	 Catch:{ SQLiteException -> 0x0024, all -> 0x0022 }
        throw r0;	 Catch:{ SQLiteException -> 0x0024, all -> 0x0022 }
    L_0x0022:
        r4 = move-exception;
        goto L_0x0039;
    L_0x0024:
        r0 = move-exception;
        r1 = r5;
        goto L_0x002b;
    L_0x0027:
        r4 = move-exception;
        r5 = r1;
        goto L_0x0039;
    L_0x002a:
        r0 = move-exception;
    L_0x002b:
        r5 = r3.zzwF();	 Catch:{ all -> 0x0027 }
        r5 = r5.zzyx();	 Catch:{ all -> 0x0027 }
        r2 = "Database error";
        r5.zze(r2, r4, r0);	 Catch:{ all -> 0x0027 }
        throw r0;	 Catch:{ all -> 0x0027 }
    L_0x0039:
        if (r5 == 0) goto L_0x003e;
    L_0x003b:
        r5.close();
    L_0x003e:
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzb(java.lang.String, java.lang.String[]):long");
    }

    @WorkerThread
    private static Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 22);
        stringBuilder.append("SELECT * FROM ");
        stringBuilder.append(str);
        stringBuilder.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(stringBuilder.toString(), null);
        try {
            Collections.addAll(hashSet, rawQuery.getColumnNames());
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    private final boolean zzc(String str, List<Integer> list) {
        zzbo.zzcF(str);
        zzkD();
        zzjC();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            if (zzb("select count(1) from audience_filter_values where app_id=?", new String[]{str}) <= ((long) Math.max(0, Math.min(2000, zzwH().zzb(str, zzcfb.zzbqA))))) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                Integer num = (Integer) list.get(i);
                if (num == null || !(num instanceof Integer)) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String valueOf = String.valueOf(TextUtils.join(",", arrayList));
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 2);
            stringBuilder.append("(");
            stringBuilder.append(valueOf);
            stringBuilder.append(")");
            valueOf = stringBuilder.toString();
            StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 140);
            stringBuilder2.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            stringBuilder2.append(valueOf);
            stringBuilder2.append(" order by rowid desc limit -1 offset ?)");
            return writableDatabase.delete("audience_filter_values", stringBuilder2.toString(), new String[]{str, Integer.toString(r2)}) > 0;
        } catch (SQLiteException e) {
            zzwF().zzyx().zze("Database error querying filters. appId", zzcfl.zzdZ(str), e);
            return false;
        }
    }

    private final boolean zzyk() {
        return getContext().getDatabasePath(zzcem.zzxC()).exists();
    }

    @WorkerThread
    public final void beginTransaction() {
        zzkD();
        getWritableDatabase().beginTransaction();
    }

    @WorkerThread
    public final void endTransaction() {
        zzkD();
        getWritableDatabase().endTransaction();
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final SQLiteDatabase getWritableDatabase() {
        zzjC();
        try {
            return this.zzbps.getWritableDatabase();
        } catch (SQLiteException e) {
            zzwF().zzyz().zzj("Error opening database", e);
            throw e;
        }
    }

    @WorkerThread
    public final void setTransactionSuccessful() {
        zzkD();
        getWritableDatabase().setTransactionSuccessful();
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a1  */
    @android.support.annotation.WorkerThread
    public final com.google.android.gms.internal.zzcev zzE(java.lang.String r16, java.lang.String r17) {
        /*
        r15 = this;
        r10 = r17;
        com.google.android.gms.common.internal.zzbo.zzcF(r16);
        com.google.android.gms.common.internal.zzbo.zzcF(r17);
        r15.zzjC();
        r15.zzkD();
        r11 = 0;
        r1 = r15.getWritableDatabase();	 Catch:{ SQLiteException -> 0x007b, all -> 0x0077 }
        r2 = "events";
        r3 = 3;
        r3 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x007b, all -> 0x0077 }
        r4 = "lifetime_count";
        r9 = 0;
        r3[r9] = r4;	 Catch:{ SQLiteException -> 0x007b, all -> 0x0077 }
        r4 = "current_bundle_count";
        r12 = 1;
        r3[r12] = r4;	 Catch:{ SQLiteException -> 0x007b, all -> 0x0077 }
        r4 = "last_fire_timestamp";
        r13 = 2;
        r3[r13] = r4;	 Catch:{ SQLiteException -> 0x007b, all -> 0x0077 }
        r4 = "app_id=? and name=?";
        r5 = new java.lang.String[r13];	 Catch:{ SQLiteException -> 0x007b, all -> 0x0077 }
        r5[r9] = r16;	 Catch:{ SQLiteException -> 0x007b, all -> 0x0077 }
        r5[r12] = r10;	 Catch:{ SQLiteException -> 0x007b, all -> 0x0077 }
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r14 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ SQLiteException -> 0x007b, all -> 0x0077 }
        r1 = r14.moveToFirst();	 Catch:{ SQLiteException -> 0x0074 }
        if (r1 != 0) goto L_0x0042;
    L_0x003c:
        if (r14 == 0) goto L_0x0041;
    L_0x003e:
        r14.close();
    L_0x0041:
        return r11;
    L_0x0042:
        r4 = r14.getLong(r9);	 Catch:{ SQLiteException -> 0x0074 }
        r6 = r14.getLong(r12);	 Catch:{ SQLiteException -> 0x0074 }
        r8 = r14.getLong(r13);	 Catch:{ SQLiteException -> 0x0074 }
        r12 = new com.google.android.gms.internal.zzcev;	 Catch:{ SQLiteException -> 0x0074 }
        r1 = r12;
        r2 = r16;
        r3 = r10;
        r1.<init>(r2, r3, r4, r6, r8);	 Catch:{ SQLiteException -> 0x0074 }
        r1 = r14.moveToNext();	 Catch:{ SQLiteException -> 0x0074 }
        if (r1 == 0) goto L_0x006e;
    L_0x005d:
        r1 = r15.zzwF();	 Catch:{ SQLiteException -> 0x0074 }
        r1 = r1.zzyx();	 Catch:{ SQLiteException -> 0x0074 }
        r2 = "Got multiple records for event aggregates, expected one. appId";
        r3 = com.google.android.gms.internal.zzcfl.zzdZ(r16);	 Catch:{ SQLiteException -> 0x0074 }
        r1.zzj(r2, r3);	 Catch:{ SQLiteException -> 0x0074 }
    L_0x006e:
        if (r14 == 0) goto L_0x0073;
    L_0x0070:
        r14.close();
    L_0x0073:
        return r12;
    L_0x0074:
        r0 = move-exception;
        r1 = r0;
        goto L_0x007e;
    L_0x0077:
        r0 = move-exception;
        r1 = r0;
        r14 = r11;
        goto L_0x009f;
    L_0x007b:
        r0 = move-exception;
        r1 = r0;
        r14 = r11;
    L_0x007e:
        r2 = r15.zzwF();	 Catch:{ all -> 0x009d }
        r2 = r2.zzyx();	 Catch:{ all -> 0x009d }
        r3 = "Error querying events. appId";
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r16);	 Catch:{ all -> 0x009d }
        r5 = r15.zzwA();	 Catch:{ all -> 0x009d }
        r5 = r5.zzdW(r10);	 Catch:{ all -> 0x009d }
        r2.zzd(r3, r4, r5, r1);	 Catch:{ all -> 0x009d }
        if (r14 == 0) goto L_0x009c;
    L_0x0099:
        r14.close();
    L_0x009c:
        return r11;
    L_0x009d:
        r0 = move-exception;
        r1 = r0;
    L_0x009f:
        if (r14 == 0) goto L_0x00a4;
    L_0x00a1:
        r14.close();
    L_0x00a4:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzE(java.lang.String, java.lang.String):com.google.android.gms.internal.zzcev");
    }

    @WorkerThread
    public final void zzF(String str, String str2) {
        zzbo.zzcF(str);
        zzbo.zzcF(str2);
        zzjC();
        zzkD();
        try {
            zzwF().zzyD().zzj("Deleted user attribute rows", Integer.valueOf(getWritableDatabase().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            zzwF().zzyx().zzd("Error deleting user attribute. appId", zzcfl.zzdZ(str), zzwA().zzdY(str2), e);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00b1  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00b1  */
    @android.support.annotation.WorkerThread
    public final com.google.android.gms.internal.zzcjk zzG(java.lang.String r20, java.lang.String r21) {
        /*
        r19 = this;
        r8 = r21;
        com.google.android.gms.common.internal.zzbo.zzcF(r20);
        com.google.android.gms.common.internal.zzbo.zzcF(r21);
        r19.zzjC();
        r19.zzkD();
        r9 = 0;
        r10 = r19.getWritableDatabase();	 Catch:{ SQLiteException -> 0x0089, all -> 0x0083 }
        r11 = "user_attributes";
        r1 = 3;
        r12 = new java.lang.String[r1];	 Catch:{ SQLiteException -> 0x0089, all -> 0x0083 }
        r1 = "set_timestamp";
        r2 = 0;
        r12[r2] = r1;	 Catch:{ SQLiteException -> 0x0089, all -> 0x0083 }
        r1 = "value";
        r3 = 1;
        r12[r3] = r1;	 Catch:{ SQLiteException -> 0x0089, all -> 0x0083 }
        r1 = "origin";
        r4 = 2;
        r12[r4] = r1;	 Catch:{ SQLiteException -> 0x0089, all -> 0x0083 }
        r13 = "app_id=? and name=?";
        r14 = new java.lang.String[r4];	 Catch:{ SQLiteException -> 0x0089, all -> 0x0083 }
        r14[r2] = r20;	 Catch:{ SQLiteException -> 0x0089, all -> 0x0083 }
        r14[r3] = r8;	 Catch:{ SQLiteException -> 0x0089, all -> 0x0083 }
        r15 = 0;
        r16 = 0;
        r17 = 0;
        r10 = r10.query(r11, r12, r13, r14, r15, r16, r17);	 Catch:{ SQLiteException -> 0x0089, all -> 0x0083 }
        r1 = r10.moveToFirst();	 Catch:{ SQLiteException -> 0x007e, all -> 0x007a }
        if (r1 != 0) goto L_0x0044;
    L_0x003e:
        if (r10 == 0) goto L_0x0043;
    L_0x0040:
        r10.close();
    L_0x0043:
        return r9;
    L_0x0044:
        r5 = r10.getLong(r2);	 Catch:{ SQLiteException -> 0x007e, all -> 0x007a }
        r11 = r19;
        r7 = r11.zza(r10, r3);	 Catch:{ SQLiteException -> 0x0078 }
        r3 = r10.getString(r4);	 Catch:{ SQLiteException -> 0x0078 }
        r12 = new com.google.android.gms.internal.zzcjk;	 Catch:{ SQLiteException -> 0x0078 }
        r1 = r12;
        r2 = r20;
        r4 = r8;
        r1.<init>(r2, r3, r4, r5, r7);	 Catch:{ SQLiteException -> 0x0078 }
        r1 = r10.moveToNext();	 Catch:{ SQLiteException -> 0x0078 }
        if (r1 == 0) goto L_0x0072;
    L_0x0061:
        r1 = r19.zzwF();	 Catch:{ SQLiteException -> 0x0078 }
        r1 = r1.zzyx();	 Catch:{ SQLiteException -> 0x0078 }
        r2 = "Got multiple records for user property, expected one. appId";
        r3 = com.google.android.gms.internal.zzcfl.zzdZ(r20);	 Catch:{ SQLiteException -> 0x0078 }
        r1.zzj(r2, r3);	 Catch:{ SQLiteException -> 0x0078 }
    L_0x0072:
        if (r10 == 0) goto L_0x0077;
    L_0x0074:
        r10.close();
    L_0x0077:
        return r12;
    L_0x0078:
        r0 = move-exception;
        goto L_0x0081;
    L_0x007a:
        r0 = move-exception;
        r11 = r19;
        goto L_0x00ae;
    L_0x007e:
        r0 = move-exception;
        r11 = r19;
    L_0x0081:
        r1 = r0;
        goto L_0x008e;
    L_0x0083:
        r0 = move-exception;
        r11 = r19;
        r1 = r0;
        r10 = r9;
        goto L_0x00af;
    L_0x0089:
        r0 = move-exception;
        r11 = r19;
        r1 = r0;
        r10 = r9;
    L_0x008e:
        r2 = r19.zzwF();	 Catch:{ all -> 0x00ad }
        r2 = r2.zzyx();	 Catch:{ all -> 0x00ad }
        r3 = "Error querying user property. appId";
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r20);	 Catch:{ all -> 0x00ad }
        r5 = r19.zzwA();	 Catch:{ all -> 0x00ad }
        r5 = r5.zzdY(r8);	 Catch:{ all -> 0x00ad }
        r2.zzd(r3, r4, r5, r1);	 Catch:{ all -> 0x00ad }
        if (r10 == 0) goto L_0x00ac;
    L_0x00a9:
        r10.close();
    L_0x00ac:
        return r9;
    L_0x00ad:
        r0 = move-exception;
    L_0x00ae:
        r1 = r0;
    L_0x00af:
        if (r10 == 0) goto L_0x00b4;
    L_0x00b1:
        r10.close();
    L_0x00b4:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzG(java.lang.String, java.lang.String):com.google.android.gms.internal.zzcjk");
    }

    public final void zzG(List<Long> list) {
        zzbo.zzu(list);
        zzjC();
        zzkD();
        StringBuilder stringBuilder = new StringBuilder("rowid in (");
        for (int i = 0; i < list.size(); i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(((Long) list.get(i)).longValue());
        }
        stringBuilder.append(")");
        int delete = getWritableDatabase().delete("raw_events", stringBuilder.toString(), null);
        if (delete != list.size()) {
            zzwF().zzyx().zze("Deleted fewer rows from raw events table than expected", Integer.valueOf(delete), Integer.valueOf(list.size()));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x0156  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x014e  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0156  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x014e  */
    @android.support.annotation.WorkerThread
    public final com.google.android.gms.internal.zzcek zzH(java.lang.String r34, java.lang.String r35) {
        /*
        r33 = this;
        r7 = r35;
        com.google.android.gms.common.internal.zzbo.zzcF(r34);
        com.google.android.gms.common.internal.zzbo.zzcF(r35);
        r33.zzjC();
        r33.zzkD();
        r8 = 0;
        r9 = r33.getWritableDatabase();	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r10 = "conditional_properties";
        r1 = 11;
        r11 = new java.lang.String[r1];	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "origin";
        r2 = 0;
        r11[r2] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "value";
        r3 = 1;
        r11[r3] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "active";
        r4 = 2;
        r11[r4] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "trigger_event_name";
        r5 = 3;
        r11[r5] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "trigger_timeout";
        r6 = 4;
        r11[r6] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "timed_out_event";
        r15 = 5;
        r11[r15] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "creation_timestamp";
        r14 = 6;
        r11[r14] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "triggered_event";
        r13 = 7;
        r11[r13] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "triggered_timestamp";
        r12 = 8;
        r11[r12] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "time_to_live";
        r6 = 9;
        r11[r6] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "expired_event";
        r6 = 10;
        r11[r6] = r1;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r1 = "app_id=? and name=?";
        r13 = new java.lang.String[r4];	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r13[r2] = r34;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r13[r3] = r7;	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r16 = 0;
        r17 = 0;
        r18 = 0;
        r6 = 8;
        r12 = r1;
        r1 = 7;
        r6 = 6;
        r14 = r16;
        r1 = 5;
        r15 = r17;
        r16 = r18;
        r9 = r9.query(r10, r11, r12, r13, r14, r15, r16);	 Catch:{ SQLiteException -> 0x012e, all -> 0x0128 }
        r10 = r9.moveToFirst();	 Catch:{ SQLiteException -> 0x0123, all -> 0x011f }
        if (r10 != 0) goto L_0x007d;
    L_0x0077:
        if (r9 == 0) goto L_0x007c;
    L_0x0079:
        r9.close();
    L_0x007c:
        return r8;
    L_0x007d:
        r19 = r9.getString(r2);	 Catch:{ SQLiteException -> 0x0123, all -> 0x011f }
        r10 = r33;
        r11 = r10.zza(r9, r3);	 Catch:{ SQLiteException -> 0x011d }
        r4 = r9.getInt(r4);	 Catch:{ SQLiteException -> 0x011d }
        if (r4 == 0) goto L_0x0090;
    L_0x008d:
        r23 = 1;
        goto L_0x0092;
    L_0x0090:
        r23 = 0;
    L_0x0092:
        r24 = r9.getString(r5);	 Catch:{ SQLiteException -> 0x011d }
        r2 = 4;
        r26 = r9.getLong(r2);	 Catch:{ SQLiteException -> 0x011d }
        r2 = r33.zzwB();	 Catch:{ SQLiteException -> 0x011d }
        r1 = r9.getBlob(r1);	 Catch:{ SQLiteException -> 0x011d }
        r3 = com.google.android.gms.internal.zzcez.CREATOR;	 Catch:{ SQLiteException -> 0x011d }
        r1 = r2.zzb(r1, r3);	 Catch:{ SQLiteException -> 0x011d }
        r25 = r1;
        r25 = (com.google.android.gms.internal.zzcez) r25;	 Catch:{ SQLiteException -> 0x011d }
        r21 = r9.getLong(r6);	 Catch:{ SQLiteException -> 0x011d }
        r1 = r33.zzwB();	 Catch:{ SQLiteException -> 0x011d }
        r2 = 7;
        r2 = r9.getBlob(r2);	 Catch:{ SQLiteException -> 0x011d }
        r3 = com.google.android.gms.internal.zzcez.CREATOR;	 Catch:{ SQLiteException -> 0x011d }
        r1 = r1.zzb(r2, r3);	 Catch:{ SQLiteException -> 0x011d }
        r28 = r1;
        r28 = (com.google.android.gms.internal.zzcez) r28;	 Catch:{ SQLiteException -> 0x011d }
        r1 = 8;
        r3 = r9.getLong(r1);	 Catch:{ SQLiteException -> 0x011d }
        r1 = 9;
        r29 = r9.getLong(r1);	 Catch:{ SQLiteException -> 0x011d }
        r1 = r33.zzwB();	 Catch:{ SQLiteException -> 0x011d }
        r2 = 10;
        r2 = r9.getBlob(r2);	 Catch:{ SQLiteException -> 0x011d }
        r5 = com.google.android.gms.internal.zzcez.CREATOR;	 Catch:{ SQLiteException -> 0x011d }
        r1 = r1.zzb(r2, r5);	 Catch:{ SQLiteException -> 0x011d }
        r31 = r1;
        r31 = (com.google.android.gms.internal.zzcez) r31;	 Catch:{ SQLiteException -> 0x011d }
        r20 = new com.google.android.gms.internal.zzcji;	 Catch:{ SQLiteException -> 0x011d }
        r1 = r20;
        r2 = r7;
        r5 = r11;
        r6 = r19;
        r1.<init>(r2, r3, r5, r6);	 Catch:{ SQLiteException -> 0x011d }
        r1 = new com.google.android.gms.internal.zzcek;	 Catch:{ SQLiteException -> 0x011d }
        r17 = r1;
        r18 = r34;
        r17.<init>(r18, r19, r20, r21, r23, r24, r25, r26, r28, r29, r31);	 Catch:{ SQLiteException -> 0x011d }
        r2 = r9.moveToNext();	 Catch:{ SQLiteException -> 0x011d }
        if (r2 == 0) goto L_0x0117;
    L_0x00fe:
        r2 = r33.zzwF();	 Catch:{ SQLiteException -> 0x011d }
        r2 = r2.zzyx();	 Catch:{ SQLiteException -> 0x011d }
        r3 = "Got multiple records for conditional property, expected one";
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r34);	 Catch:{ SQLiteException -> 0x011d }
        r5 = r33.zzwA();	 Catch:{ SQLiteException -> 0x011d }
        r5 = r5.zzdY(r7);	 Catch:{ SQLiteException -> 0x011d }
        r2.zze(r3, r4, r5);	 Catch:{ SQLiteException -> 0x011d }
    L_0x0117:
        if (r9 == 0) goto L_0x011c;
    L_0x0119:
        r9.close();
    L_0x011c:
        return r1;
    L_0x011d:
        r0 = move-exception;
        goto L_0x0126;
    L_0x011f:
        r0 = move-exception;
        r10 = r33;
        goto L_0x0153;
    L_0x0123:
        r0 = move-exception;
        r10 = r33;
    L_0x0126:
        r1 = r0;
        goto L_0x0133;
    L_0x0128:
        r0 = move-exception;
        r10 = r33;
        r1 = r0;
        r9 = r8;
        goto L_0x0154;
    L_0x012e:
        r0 = move-exception;
        r10 = r33;
        r1 = r0;
        r9 = r8;
    L_0x0133:
        r2 = r33.zzwF();	 Catch:{ all -> 0x0152 }
        r2 = r2.zzyx();	 Catch:{ all -> 0x0152 }
        r3 = "Error querying conditional property";
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r34);	 Catch:{ all -> 0x0152 }
        r5 = r33.zzwA();	 Catch:{ all -> 0x0152 }
        r5 = r5.zzdY(r7);	 Catch:{ all -> 0x0152 }
        r2.zzd(r3, r4, r5, r1);	 Catch:{ all -> 0x0152 }
        if (r9 == 0) goto L_0x0151;
    L_0x014e:
        r9.close();
    L_0x0151:
        return r8;
    L_0x0152:
        r0 = move-exception;
    L_0x0153:
        r1 = r0;
    L_0x0154:
        if (r9 == 0) goto L_0x0159;
    L_0x0156:
        r9.close();
    L_0x0159:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzH(java.lang.String, java.lang.String):com.google.android.gms.internal.zzcek");
    }

    @WorkerThread
    public final int zzI(String str, String str2) {
        zzbo.zzcF(str);
        zzbo.zzcF(str2);
        zzjC();
        zzkD();
        try {
            return getWritableDatabase().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzwF().zzyx().zzd("Error deleting conditional property", zzcfl.zzdZ(str), zzwA().zzdY(str2), e);
            return 0;
        }
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00b8  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b1  */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.zzcjn>> zzJ(java.lang.String r13, java.lang.String r14) {
        /*
        r12 = this;
        r12.zzkD();
        r12.zzjC();
        com.google.android.gms.common.internal.zzbo.zzcF(r13);
        com.google.android.gms.common.internal.zzbo.zzcF(r14);
        r0 = new android.support.v4.util.ArrayMap;
        r0.<init>();
        r1 = r12.getWritableDatabase();
        r9 = 0;
        r2 = "event_filters";
        r3 = 2;
        r4 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r5 = "audience_id";
        r10 = 0;
        r4[r10] = r5;	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r5 = "data";
        r11 = 1;
        r4[r11] = r5;	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r5 = "app_id=? AND event_name=?";
        r6 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r6[r10] = r13;	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r6[r11] = r14;	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r14 = 0;
        r7 = 0;
        r8 = 0;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r14;
        r14 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r1 = r14.moveToFirst();	 Catch:{ SQLiteException -> 0x0097 }
        if (r1 != 0) goto L_0x0048;
    L_0x003e:
        r0 = java.util.Collections.emptyMap();	 Catch:{ SQLiteException -> 0x0097 }
        if (r14 == 0) goto L_0x0047;
    L_0x0044:
        r14.close();
    L_0x0047:
        return r0;
    L_0x0048:
        r1 = r14.getBlob(r11);	 Catch:{ SQLiteException -> 0x0097 }
        r2 = r1.length;	 Catch:{ SQLiteException -> 0x0097 }
        r1 = com.google.android.gms.internal.adg.zzb(r1, r10, r2);	 Catch:{ SQLiteException -> 0x0097 }
        r2 = new com.google.android.gms.internal.zzcjn;	 Catch:{ SQLiteException -> 0x0097 }
        r2.<init>();	 Catch:{ SQLiteException -> 0x0097 }
        r2.zza(r1);	 Catch:{ IOException -> 0x0079 }
        r1 = r14.getInt(r10);	 Catch:{ SQLiteException -> 0x0097 }
        r3 = java.lang.Integer.valueOf(r1);	 Catch:{ SQLiteException -> 0x0097 }
        r3 = r0.get(r3);	 Catch:{ SQLiteException -> 0x0097 }
        r3 = (java.util.List) r3;	 Catch:{ SQLiteException -> 0x0097 }
        if (r3 != 0) goto L_0x0075;
    L_0x0069:
        r3 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x0097 }
        r3.<init>();	 Catch:{ SQLiteException -> 0x0097 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ SQLiteException -> 0x0097 }
        r0.put(r1, r3);	 Catch:{ SQLiteException -> 0x0097 }
    L_0x0075:
        r3.add(r2);	 Catch:{ SQLiteException -> 0x0097 }
        goto L_0x008b;
    L_0x0079:
        r1 = move-exception;
        r2 = r12.zzwF();	 Catch:{ SQLiteException -> 0x0097 }
        r2 = r2.zzyx();	 Catch:{ SQLiteException -> 0x0097 }
        r3 = "Failed to merge filter. appId";
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r13);	 Catch:{ SQLiteException -> 0x0097 }
        r2.zze(r3, r4, r1);	 Catch:{ SQLiteException -> 0x0097 }
    L_0x008b:
        r1 = r14.moveToNext();	 Catch:{ SQLiteException -> 0x0097 }
        if (r1 != 0) goto L_0x0048;
    L_0x0091:
        if (r14 == 0) goto L_0x0096;
    L_0x0093:
        r14.close();
    L_0x0096:
        return r0;
    L_0x0097:
        r0 = move-exception;
        goto L_0x009e;
    L_0x0099:
        r13 = move-exception;
        r14 = r9;
        goto L_0x00b6;
    L_0x009c:
        r0 = move-exception;
        r14 = r9;
    L_0x009e:
        r1 = r12.zzwF();	 Catch:{ all -> 0x00b5 }
        r1 = r1.zzyx();	 Catch:{ all -> 0x00b5 }
        r2 = "Database error querying filters. appId";
        r13 = com.google.android.gms.internal.zzcfl.zzdZ(r13);	 Catch:{ all -> 0x00b5 }
        r1.zze(r2, r13, r0);	 Catch:{ all -> 0x00b5 }
        if (r14 == 0) goto L_0x00b4;
    L_0x00b1:
        r14.close();
    L_0x00b4:
        return r9;
    L_0x00b5:
        r13 = move-exception;
    L_0x00b6:
        if (r14 == 0) goto L_0x00bb;
    L_0x00b8:
        r14.close();
    L_0x00bb:
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzJ(java.lang.String, java.lang.String):java.util.Map");
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00b8  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b1  */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.zzcjq>> zzK(java.lang.String r13, java.lang.String r14) {
        /*
        r12 = this;
        r12.zzkD();
        r12.zzjC();
        com.google.android.gms.common.internal.zzbo.zzcF(r13);
        com.google.android.gms.common.internal.zzbo.zzcF(r14);
        r0 = new android.support.v4.util.ArrayMap;
        r0.<init>();
        r1 = r12.getWritableDatabase();
        r9 = 0;
        r2 = "property_filters";
        r3 = 2;
        r4 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r5 = "audience_id";
        r10 = 0;
        r4[r10] = r5;	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r5 = "data";
        r11 = 1;
        r4[r11] = r5;	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r5 = "app_id=? AND property_name=?";
        r6 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r6[r10] = r13;	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r6[r11] = r14;	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r14 = 0;
        r7 = 0;
        r8 = 0;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r14;
        r14 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
        r1 = r14.moveToFirst();	 Catch:{ SQLiteException -> 0x0097 }
        if (r1 != 0) goto L_0x0048;
    L_0x003e:
        r0 = java.util.Collections.emptyMap();	 Catch:{ SQLiteException -> 0x0097 }
        if (r14 == 0) goto L_0x0047;
    L_0x0044:
        r14.close();
    L_0x0047:
        return r0;
    L_0x0048:
        r1 = r14.getBlob(r11);	 Catch:{ SQLiteException -> 0x0097 }
        r2 = r1.length;	 Catch:{ SQLiteException -> 0x0097 }
        r1 = com.google.android.gms.internal.adg.zzb(r1, r10, r2);	 Catch:{ SQLiteException -> 0x0097 }
        r2 = new com.google.android.gms.internal.zzcjq;	 Catch:{ SQLiteException -> 0x0097 }
        r2.<init>();	 Catch:{ SQLiteException -> 0x0097 }
        r2.zza(r1);	 Catch:{ IOException -> 0x0079 }
        r1 = r14.getInt(r10);	 Catch:{ SQLiteException -> 0x0097 }
        r3 = java.lang.Integer.valueOf(r1);	 Catch:{ SQLiteException -> 0x0097 }
        r3 = r0.get(r3);	 Catch:{ SQLiteException -> 0x0097 }
        r3 = (java.util.List) r3;	 Catch:{ SQLiteException -> 0x0097 }
        if (r3 != 0) goto L_0x0075;
    L_0x0069:
        r3 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x0097 }
        r3.<init>();	 Catch:{ SQLiteException -> 0x0097 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ SQLiteException -> 0x0097 }
        r0.put(r1, r3);	 Catch:{ SQLiteException -> 0x0097 }
    L_0x0075:
        r3.add(r2);	 Catch:{ SQLiteException -> 0x0097 }
        goto L_0x008b;
    L_0x0079:
        r1 = move-exception;
        r2 = r12.zzwF();	 Catch:{ SQLiteException -> 0x0097 }
        r2 = r2.zzyx();	 Catch:{ SQLiteException -> 0x0097 }
        r3 = "Failed to merge filter";
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r13);	 Catch:{ SQLiteException -> 0x0097 }
        r2.zze(r3, r4, r1);	 Catch:{ SQLiteException -> 0x0097 }
    L_0x008b:
        r1 = r14.moveToNext();	 Catch:{ SQLiteException -> 0x0097 }
        if (r1 != 0) goto L_0x0048;
    L_0x0091:
        if (r14 == 0) goto L_0x0096;
    L_0x0093:
        r14.close();
    L_0x0096:
        return r0;
    L_0x0097:
        r0 = move-exception;
        goto L_0x009e;
    L_0x0099:
        r13 = move-exception;
        r14 = r9;
        goto L_0x00b6;
    L_0x009c:
        r0 = move-exception;
        r14 = r9;
    L_0x009e:
        r1 = r12.zzwF();	 Catch:{ all -> 0x00b5 }
        r1 = r1.zzyx();	 Catch:{ all -> 0x00b5 }
        r2 = "Database error querying filters. appId";
        r13 = com.google.android.gms.internal.zzcfl.zzdZ(r13);	 Catch:{ all -> 0x00b5 }
        r1.zze(r2, r13, r0);	 Catch:{ all -> 0x00b5 }
        if (r14 == 0) goto L_0x00b4;
    L_0x00b1:
        r14.close();
    L_0x00b4:
        return r9;
    L_0x00b5:
        r13 = move-exception;
    L_0x00b6:
        if (r14 == 0) goto L_0x00bb;
    L_0x00b8:
        r14.close();
    L_0x00bb:
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzK(java.lang.String, java.lang.String):java.util.Map");
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final long zzL(String str, String str2) {
        SQLiteException e;
        Throwable th;
        Throwable th2;
        String str3 = str;
        String str4 = str2;
        zzbo.zzcF(str);
        zzbo.zzcF(str2);
        zzjC();
        zzkD();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        long zza;
        try {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str2).length() + 32);
            stringBuilder.append("select ");
            stringBuilder.append(str4);
            stringBuilder.append(" from app2 where app_id=?");
            try {
                ContentValues contentValues;
                zza = zza(stringBuilder.toString(), new String[]{str3}, -1);
                if (zza == -1) {
                    contentValues = new ContentValues();
                    contentValues.put("app_id", str3);
                    contentValues.put("first_open_count", Integer.valueOf(0));
                    contentValues.put("previous_install_count", Integer.valueOf(0));
                    if (writableDatabase.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        zzwF().zzyx().zze("Failed to insert column (got -1). appId", zzcfl.zzdZ(str), str4);
                        writableDatabase.endTransaction();
                        return -1;
                    }
                    zza = 0;
                }
                try {
                    contentValues = new ContentValues();
                    contentValues.put("app_id", str3);
                    contentValues.put(str4, Long.valueOf(zza + 1));
                    if (((long) writableDatabase.update("app2", contentValues, "app_id = ?", new String[]{str3})) == 0) {
                        zzwF().zzyx().zze("Failed to update column (got 0). appId", zzcfl.zzdZ(str), str4);
                        writableDatabase.endTransaction();
                        return -1;
                    }
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                    return zza;
                } catch (SQLiteException e2) {
                    e = e2;
                }
            } catch (SQLiteException e3) {
                e = e3;
                zza = 0;
                try {
                    zzwF().zzyx().zzd("Error inserting column. appId", zzcfl.zzdZ(str), str4, e);
                    writableDatabase.endTransaction();
                    return zza;
                } catch (Throwable th3) {
                    th = th3;
                    th2 = th;
                    writableDatabase.endTransaction();
                    throw th2;
                }
            }
        } catch (SQLiteException e4) {
            e = e4;
            zza = 0;
            zzwF().zzyx().zzd("Error inserting column. appId", zzcfl.zzdZ(str), str4, e);
            writableDatabase.endTransaction();
            return zza;
        } catch (Throwable th4) {
            th = th4;
            th2 = th;
            writableDatabase.endTransaction();
            throw th2;
        }
    }

    public final long zza(zzcjz zzcjz) throws IOException {
        zzjC();
        zzkD();
        zzbo.zzu(zzcjz);
        zzbo.zzcF(zzcjz.zzaH);
        try {
            long j;
            byte[] bArr = new byte[zzcjz.zzLV()];
            adh zzc = adh.zzc(bArr, 0, bArr.length);
            zzcjz.zza(zzc);
            zzc.zzLM();
            zzcjl zzwB = zzwB();
            zzbo.zzu(bArr);
            zzwB.zzjC();
            MessageDigest zzbE = zzcjl.zzbE("MD5");
            if (zzbE == null) {
                zzwB.zzwF().zzyx().log("Failed to get MD5");
                j = 0;
            } else {
                j = zzcjl.zzn(zzbE.digest(bArr));
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzcjz.zzaH);
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("metadata", bArr);
            try {
                getWritableDatabase().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                return j;
            } catch (SQLiteException e) {
                zzwF().zzyx().zze("Error storing raw event metadata. appId", zzcfl.zzdZ(zzcjz.zzaH), e);
                throw e;
            }
        } catch (IOException e2) {
            zzwF().zzyx().zze("Data loss. Failed to serialize event metadata. appId", zzcfl.zzdZ(zzcjz.zzaH), e2);
            throw e2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:0x0149  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0140  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0149  */
    @android.support.annotation.WorkerThread
    public final com.google.android.gms.internal.zzceo zza(long r22, java.lang.String r24, boolean r25, boolean r26, boolean r27, boolean r28, boolean r29) {
        /*
        r21 = this;
        com.google.android.gms.common.internal.zzbo.zzcF(r24);
        r21.zzjC();
        r21.zzkD();
        r2 = 1;
        r3 = new java.lang.String[r2];
        r4 = 0;
        r3[r4] = r24;
        r5 = new com.google.android.gms.internal.zzceo;
        r5.<init>();
        r15 = r21.getWritableDatabase();	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r8 = "apps";
        r7 = 6;
        r9 = new java.lang.String[r7];	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r7 = "day";
        r9[r4] = r7;	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r7 = "daily_events_count";
        r9[r2] = r7;	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r7 = "daily_public_events_count";
        r14 = 2;
        r9[r14] = r7;	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r7 = "daily_conversions_count";
        r13 = 3;
        r9[r13] = r7;	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r7 = "daily_error_events_count";
        r12 = 4;
        r9[r12] = r7;	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r7 = "daily_realtime_events_count";
        r11 = 5;
        r9[r11] = r7;	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r10 = "app_id=?";
        r7 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r7[r4] = r24;	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r16 = 0;
        r17 = 0;
        r18 = 0;
        r19 = r7;
        r7 = r15;
        r6 = 5;
        r11 = r19;
        r6 = 4;
        r12 = r16;
        r6 = 3;
        r13 = r17;
        r6 = 2;
        r14 = r18;
        r7 = r7.query(r8, r9, r10, r11, r12, r13, r14);	 Catch:{ SQLiteException -> 0x012a, all -> 0x0126 }
        r8 = r7.moveToFirst();	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        if (r8 != 0) goto L_0x0075;
    L_0x005e:
        r2 = r21.zzwF();	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = r2.zzyz();	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r3 = "Not updating daily counts, app is not known. appId";
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r24);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2.zzj(r3, r4);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        if (r7 == 0) goto L_0x0074;
    L_0x0071:
        r7.close();
    L_0x0074:
        return r5;
    L_0x0075:
        r8 = r7.getLong(r4);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r4 = (r8 > r22 ? 1 : (r8 == r22 ? 0 : -1));
        if (r4 != 0) goto L_0x009e;
    L_0x007d:
        r8 = r7.getLong(r2);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r5.zzbpv = r8;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r8 = r7.getLong(r6);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r5.zzbpu = r8;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = 3;
        r8 = r7.getLong(r2);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r5.zzbpw = r8;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = 4;
        r8 = r7.getLong(r2);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r5.zzbpx = r8;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = 5;
        r8 = r7.getLong(r2);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r5.zzbpy = r8;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
    L_0x009e:
        r8 = 1;
        if (r25 == 0) goto L_0x00a9;
    L_0x00a2:
        r12 = r5.zzbpv;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = 0;
        r1 = r12 + r8;
        r5.zzbpv = r1;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
    L_0x00a9:
        if (r26 == 0) goto L_0x00b2;
    L_0x00ab:
        r1 = r5.zzbpu;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r4 = 0;
        r12 = r1 + r8;
        r5.zzbpu = r12;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
    L_0x00b2:
        if (r27 == 0) goto L_0x00bb;
    L_0x00b4:
        r1 = r5.zzbpw;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r4 = 0;
        r12 = r1 + r8;
        r5.zzbpw = r12;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
    L_0x00bb:
        if (r28 == 0) goto L_0x00c4;
    L_0x00bd:
        r1 = r5.zzbpx;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r4 = 0;
        r12 = r1 + r8;
        r5.zzbpx = r12;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
    L_0x00c4:
        if (r29 == 0) goto L_0x00cd;
    L_0x00c6:
        r1 = r5.zzbpy;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r4 = 0;
        r12 = r1 + r8;
        r5.zzbpy = r12;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
    L_0x00cd:
        r1 = new android.content.ContentValues;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r1.<init>();	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = "day";
        r4 = java.lang.Long.valueOf(r22);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r1.put(r2, r4);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = "daily_public_events_count";
        r8 = r5.zzbpu;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r4 = java.lang.Long.valueOf(r8);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r1.put(r2, r4);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = "daily_events_count";
        r8 = r5.zzbpv;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r4 = java.lang.Long.valueOf(r8);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r1.put(r2, r4);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = "daily_conversions_count";
        r8 = r5.zzbpw;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r4 = java.lang.Long.valueOf(r8);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r1.put(r2, r4);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = "daily_error_events_count";
        r8 = r5.zzbpx;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r4 = java.lang.Long.valueOf(r8);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r1.put(r2, r4);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = "daily_realtime_events_count";
        r8 = r5.zzbpy;	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r4 = java.lang.Long.valueOf(r8);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r1.put(r2, r4);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        r2 = "apps";
        r4 = "app_id=?";
        r15.update(r2, r1, r4, r3);	 Catch:{ SQLiteException -> 0x0122, all -> 0x011f }
        if (r7 == 0) goto L_0x011e;
    L_0x011b:
        r7.close();
    L_0x011e:
        return r5;
    L_0x011f:
        r0 = move-exception;
        r1 = r0;
        goto L_0x0147;
    L_0x0122:
        r0 = move-exception;
        r1 = r0;
        r6 = r7;
        goto L_0x012d;
    L_0x0126:
        r0 = move-exception;
        r1 = r0;
        r7 = 0;
        goto L_0x0147;
    L_0x012a:
        r0 = move-exception;
        r1 = r0;
        r6 = 0;
    L_0x012d:
        r2 = r21.zzwF();	 Catch:{ all -> 0x0144 }
        r2 = r2.zzyx();	 Catch:{ all -> 0x0144 }
        r3 = "Error updating daily counts. appId";
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r24);	 Catch:{ all -> 0x0144 }
        r2.zze(r3, r4, r1);	 Catch:{ all -> 0x0144 }
        if (r6 == 0) goto L_0x0143;
    L_0x0140:
        r6.close();
    L_0x0143:
        return r5;
    L_0x0144:
        r0 = move-exception;
        r1 = r0;
        r7 = r6;
    L_0x0147:
        if (r7 == 0) goto L_0x014c;
    L_0x0149:
        r7.close();
    L_0x014c:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zza(long, java.lang.String, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.internal.zzceo");
    }

    @WorkerThread
    public final void zza(zzceg zzceg) {
        zzbo.zzu(zzceg);
        zzjC();
        zzkD();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzceg.zzhl());
        contentValues.put("app_instance_id", zzceg.getAppInstanceId());
        contentValues.put("gmp_app_id", zzceg.getGmpAppId());
        contentValues.put("resettable_device_id_hash", zzceg.zzwJ());
        contentValues.put("last_bundle_index", Long.valueOf(zzceg.zzwS()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzceg.zzwL()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzceg.zzwM()));
        contentValues.put("app_version", zzceg.zzjH());
        contentValues.put("app_store", zzceg.zzwO());
        contentValues.put("gmp_version", Long.valueOf(zzceg.zzwP()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzceg.zzwQ()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzceg.zzwR()));
        contentValues.put("day", Long.valueOf(zzceg.zzwW()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzceg.zzwX()));
        contentValues.put("daily_events_count", Long.valueOf(zzceg.zzwY()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzceg.zzwZ()));
        contentValues.put("config_fetched_time", Long.valueOf(zzceg.zzwT()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzceg.zzwU()));
        contentValues.put("app_version_int", Long.valueOf(zzceg.zzwN()));
        contentValues.put("firebase_instance_id", zzceg.zzwK());
        contentValues.put("daily_error_events_count", Long.valueOf(zzceg.zzxb()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzceg.zzxa()));
        contentValues.put("health_monitor_sample", zzceg.zzxc());
        contentValues.put("android_id", Long.valueOf(zzceg.zzxe()));
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (((long) writableDatabase.update("apps", contentValues, "app_id = ?", new String[]{zzceg.zzhl()})) == 0 && writableDatabase.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzwF().zzyx().zzj("Failed to insert/update app (got -1). appId", zzcfl.zzdZ(zzceg.zzhl()));
            }
        } catch (SQLiteException e) {
            zzwF().zzyx().zze("Error storing app. appId", zzcfl.zzdZ(zzceg.zzhl()), e);
        }
    }

    @WorkerThread
    public final void zza(zzcev zzcev) {
        zzbo.zzu(zzcev);
        zzjC();
        zzkD();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzcev.mAppId);
        contentValues.put("name", zzcev.mName);
        contentValues.put("lifetime_count", Long.valueOf(zzcev.zzbpG));
        contentValues.put("current_bundle_count", Long.valueOf(zzcev.zzbpH));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzcev.zzbpI));
        try {
            if (getWritableDatabase().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                zzwF().zzyx().zzj("Failed to insert/update event aggregates (got -1). appId", zzcfl.zzdZ(zzcev.mAppId));
            }
        } catch (SQLiteException e) {
            zzwF().zzyx().zze("Error storing event aggregates. appId", zzcfl.zzdZ(zzcev.mAppId), e);
        }
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zza(String str, zzcjm[] zzcjmArr) {
        zzkD();
        zzjC();
        zzbo.zzcF(str);
        zzbo.zzu(zzcjmArr);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            zzkD();
            zzjC();
            zzbo.zzcF(str);
            SQLiteDatabase writableDatabase2 = getWritableDatabase();
            String[] strArr = new String[1];
            int i = 0;
            strArr[0] = str;
            writableDatabase2.delete("property_filters", "app_id=?", strArr);
            writableDatabase2.delete("event_filters", "app_id=?", new String[]{str});
            for (Object obj : zzcjmArr) {
                Object obj2;
                zzkD();
                zzjC();
                zzbo.zzcF(str);
                zzbo.zzu(obj2);
                zzbo.zzu(obj2.zzbuK);
                zzbo.zzu(obj2.zzbuJ);
                if (obj2.zzbuI == null) {
                    zzwF().zzyz().zzj("Audience with no ID. appId", zzcfl.zzdZ(str));
                } else {
                    zzcfn zzyz;
                    String str2;
                    Object zzdZ;
                    Object obj3;
                    int intValue = obj2.zzbuI.intValue();
                    for (zzcjn zzcjn : obj2.zzbuK) {
                        if (zzcjn.zzbuM == null) {
                            zzyz = zzwF().zzyz();
                            str2 = "Event filter with no ID. Audience definition ignored. appId, audienceId";
                            zzdZ = zzcfl.zzdZ(str);
                            obj2 = obj2.zzbuI;
                            break;
                        }
                    }
                    for (zzcjq zzcjq : obj2.zzbuJ) {
                        if (zzcjq.zzbuM == null) {
                            zzyz = zzwF().zzyz();
                            str2 = "Property filter with no ID. Audience definition ignored. appId, audienceId";
                            zzdZ = zzcfl.zzdZ(str);
                            obj2 = obj2.zzbuI;
                            zzyz.zze(str2, zzdZ, obj2);
                            break;
                        }
                    }
                    for (zzcjn zzcjn2 : obj2.zzbuK) {
                        if (!zza(str, intValue, zzcjn2)) {
                            obj3 = null;
                            break;
                        }
                    }
                    obj3 = 1;
                    if (obj3 != null) {
                        for (zzcjq zzcjq2 : obj2.zzbuJ) {
                            if (!zza(str, intValue, zzcjq2)) {
                                obj3 = null;
                                break;
                            }
                        }
                    }
                    if (obj3 == null) {
                        zzkD();
                        zzjC();
                        zzbo.zzcF(str);
                        SQLiteDatabase writableDatabase3 = getWritableDatabase();
                        writableDatabase3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(intValue)});
                        writableDatabase3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(intValue)});
                    }
                }
            }
            List arrayList = new ArrayList();
            int length = zzcjmArr.length;
            while (i < length) {
                arrayList.add(zzcjmArr[i].zzbuI);
                i++;
            }
            zzc(str, arrayList);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    @WorkerThread
    public final boolean zza(zzcek zzcek) {
        zzbo.zzu(zzcek);
        zzjC();
        zzkD();
        if (zzG(zzcek.packageName, zzcek.zzbpd.name) == null) {
            long zzb = zzb("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzcek.packageName});
            zzcem.zzxv();
            if (zzb >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzcek.packageName);
        contentValues.put(Param.ORIGIN, zzcek.zzbpc);
        contentValues.put("name", zzcek.zzbpd.name);
        zza(contentValues, Param.VALUE, zzcek.zzbpd.getValue());
        contentValues.put("active", Boolean.valueOf(zzcek.zzbpf));
        contentValues.put("trigger_event_name", zzcek.zzbpg);
        contentValues.put("trigger_timeout", Long.valueOf(zzcek.zzbpi));
        zzwB();
        contentValues.put("timed_out_event", zzcjl.zza(zzcek.zzbph));
        contentValues.put("creation_timestamp", Long.valueOf(zzcek.zzbpe));
        zzwB();
        contentValues.put("triggered_event", zzcjl.zza(zzcek.zzbpj));
        contentValues.put("triggered_timestamp", Long.valueOf(zzcek.zzbpd.zzbuy));
        contentValues.put("time_to_live", Long.valueOf(zzcek.zzbpk));
        zzwB();
        contentValues.put("expired_event", zzcjl.zza(zzcek.zzbpl));
        try {
            if (getWritableDatabase().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzwF().zzyx().zzj("Failed to insert/update conditional user property (got -1)", zzcfl.zzdZ(zzcek.packageName));
                return true;
            }
        } catch (SQLiteException e) {
            zzwF().zzyx().zze("Error storing conditional user property", zzcfl.zzdZ(zzcek.packageName), e);
        }
        return true;
    }

    public final boolean zza(zzceu zzceu, long j, boolean z) {
        Object e;
        zzcfn zzyx;
        String str;
        zzjC();
        zzkD();
        zzbo.zzu(zzceu);
        zzbo.zzcF(zzceu.mAppId);
        zzcjw zzcjw = new zzcjw();
        zzcjw.zzbvy = Long.valueOf(zzceu.zzbpE);
        zzcjw.zzbvw = new zzcjx[zzceu.zzbpF.size()];
        Iterator it = zzceu.zzbpF.iterator();
        int i = 0;
        while (it.hasNext()) {
            String str2 = (String) it.next();
            zzcjx zzcjx = new zzcjx();
            int i2 = i + 1;
            zzcjw.zzbvw[i] = zzcjx;
            zzcjx.name = str2;
            zzwB().zza(zzcjx, zzceu.zzbpF.get(str2));
            i = i2;
        }
        try {
            byte[] bArr = new byte[zzcjw.zzLV()];
            adh zzc = adh.zzc(bArr, 0, bArr.length);
            zzcjw.zza(zzc);
            zzc.zzLM();
            zzwF().zzyD().zze("Saving event, name, data size", zzwA().zzdW(zzceu.mName), Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzceu.mAppId);
            contentValues.put("name", zzceu.mName);
            contentValues.put(AppMeasurement.Param.TIMESTAMP, Long.valueOf(zzceu.zzayS));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("data", bArr);
            contentValues.put("realtime", Integer.valueOf(z));
            try {
                if (getWritableDatabase().insert("raw_events", null, contentValues) != -1) {
                    return true;
                }
                zzwF().zzyx().zzj("Failed to insert raw event (got -1). appId", zzcfl.zzdZ(zzceu.mAppId));
                return false;
            } catch (SQLiteException e2) {
                e = e2;
                zzyx = zzwF().zzyx();
                str = "Error storing raw event. appId";
                zzyx.zze(str, zzcfl.zzdZ(zzceu.mAppId), e);
                return false;
            }
        } catch (IOException e3) {
            e = e3;
            zzyx = zzwF().zzyx();
            str = "Data loss. Failed to serialize event params/data. appId";
            zzyx.zze(str, zzcfl.zzdZ(zzceu.mAppId), e);
            return false;
        }
    }

    @WorkerThread
    public final boolean zza(zzcjk zzcjk) {
        zzbo.zzu(zzcjk);
        zzjC();
        zzkD();
        if (zzG(zzcjk.mAppId, zzcjk.mName) == null) {
            long zzb;
            if (zzcjl.zzeo(zzcjk.mName)) {
                zzb = zzb("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzcjk.mAppId});
                zzcem.zzxs();
                if (zzb >= 25) {
                    return false;
                }
            }
            zzb = zzb("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzcjk.mAppId, zzcjk.mOrigin});
            zzcem.zzxu();
            if (zzb >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzcjk.mAppId);
        contentValues.put(Param.ORIGIN, zzcjk.mOrigin);
        contentValues.put("name", zzcjk.mName);
        contentValues.put("set_timestamp", Long.valueOf(zzcjk.zzbuC));
        zza(contentValues, Param.VALUE, zzcjk.mValue);
        try {
            if (getWritableDatabase().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                zzwF().zzyx().zzj("Failed to insert/update user property (got -1). appId", zzcfl.zzdZ(zzcjk.mAppId));
                return true;
            }
        } catch (SQLiteException e) {
            zzwF().zzyx().zze("Error storing user property. appId", zzcfl.zzdZ(zzcjk.mAppId), e);
        }
        return true;
    }

    @WorkerThread
    public final boolean zza(zzcjz zzcjz, boolean z) {
        Object e;
        zzcfn zzyx;
        String str;
        zzjC();
        zzkD();
        zzbo.zzu(zzcjz);
        zzbo.zzcF(zzcjz.zzaH);
        zzbo.zzu(zzcjz.zzbvI);
        zzye();
        long currentTimeMillis = zzkq().currentTimeMillis();
        if (zzcjz.zzbvI.longValue() < currentTimeMillis - zzcem.zzxG() || zzcjz.zzbvI.longValue() > currentTimeMillis + zzcem.zzxG()) {
            zzwF().zzyz().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzcfl.zzdZ(zzcjz.zzaH), Long.valueOf(currentTimeMillis), zzcjz.zzbvI);
        }
        try {
            byte[] bArr = new byte[zzcjz.zzLV()];
            adh zzc = adh.zzc(bArr, 0, bArr.length);
            zzcjz.zza(zzc);
            zzc.zzLM();
            bArr = zzwB().zzl(bArr);
            zzwF().zzyD().zzj("Saving bundle, size", Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzcjz.zzaH);
            contentValues.put("bundle_end_timestamp", zzcjz.zzbvI);
            contentValues.put("data", bArr);
            contentValues.put("has_realtime", Integer.valueOf(z));
            try {
                if (getWritableDatabase().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzwF().zzyx().zzj("Failed to insert bundle (got -1). appId", zzcfl.zzdZ(zzcjz.zzaH));
                return false;
            } catch (SQLiteException e2) {
                e = e2;
                zzyx = zzwF().zzyx();
                str = "Error storing bundle. appId";
                zzyx.zze(str, zzcfl.zzdZ(zzcjz.zzaH), e);
                return false;
            }
        } catch (IOException e3) {
            e = e3;
            zzyx = zzwF().zzyx();
            str = "Data loss. Failed to serialize bundle. appId";
            zzyx.zze(str, zzcfl.zzdZ(zzcjz.zzaH), e);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0054  */
    public final java.lang.String zzaa(long r5) {
        /*
        r4 = this;
        r4.zzjC();
        r4.zzkD();
        r0 = 0;
        r1 = r4.getWritableDatabase();	 Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
        r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;";
        r3 = 1;
        r3 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
        r5 = java.lang.String.valueOf(r5);	 Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
        r6 = 0;
        r3[r6] = r5;	 Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
        r5 = r1.rawQuery(r2, r3);	 Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
        r1 = r5.moveToFirst();	 Catch:{ SQLiteException -> 0x003e }
        if (r1 != 0) goto L_0x0034;
    L_0x0021:
        r6 = r4.zzwF();	 Catch:{ SQLiteException -> 0x003e }
        r6 = r6.zzyD();	 Catch:{ SQLiteException -> 0x003e }
        r1 = "No expired configs for apps with pending events";
        r6.log(r1);	 Catch:{ SQLiteException -> 0x003e }
        if (r5 == 0) goto L_0x0033;
    L_0x0030:
        r5.close();
    L_0x0033:
        return r0;
    L_0x0034:
        r6 = r5.getString(r6);	 Catch:{ SQLiteException -> 0x003e }
        if (r5 == 0) goto L_0x003d;
    L_0x003a:
        r5.close();
    L_0x003d:
        return r6;
    L_0x003e:
        r6 = move-exception;
        goto L_0x0045;
    L_0x0040:
        r6 = move-exception;
        r5 = r0;
        goto L_0x0059;
    L_0x0043:
        r6 = move-exception;
        r5 = r0;
    L_0x0045:
        r1 = r4.zzwF();	 Catch:{ all -> 0x0058 }
        r1 = r1.zzyx();	 Catch:{ all -> 0x0058 }
        r2 = "Error selecting expired configs";
        r1.zzj(r2, r6);	 Catch:{ all -> 0x0058 }
        if (r5 == 0) goto L_0x0057;
    L_0x0054:
        r5.close();
    L_0x0057:
        return r0;
    L_0x0058:
        r6 = move-exception;
    L_0x0059:
        if (r5 == 0) goto L_0x005e;
    L_0x005b:
        r5.close();
    L_0x005e:
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzaa(long):java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0177  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0180  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0180  */
    public final java.util.List<com.google.android.gms.internal.zzcek> zzc(java.lang.String r39, java.lang.String[] r40) {
        /*
        r38 = this;
        r38.zzjC();
        r38.zzkD();
        r1 = new java.util.ArrayList;
        r1.<init>();
        r3 = r38.getWritableDatabase();	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r4 = "conditional_properties";
        r5 = 13;
        r5 = new java.lang.String[r5];	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "app_id";
        r12 = 0;
        r5[r12] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "origin";
        r13 = 1;
        r5[r13] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "name";
        r14 = 2;
        r5[r14] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "value";
        r15 = 3;
        r5[r15] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "active";
        r11 = 4;
        r5[r11] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "trigger_event_name";
        r10 = 5;
        r5[r10] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "trigger_timeout";
        r9 = 6;
        r5[r9] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "timed_out_event";
        r8 = 7;
        r5[r8] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "creation_timestamp";
        r7 = 8;
        r5[r7] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "triggered_event";
        r2 = 9;
        r5[r2] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "triggered_timestamp";
        r2 = 10;
        r5[r2] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "time_to_live";
        r2 = 11;
        r5[r2] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r6 = "expired_event";
        r2 = 12;
        r5[r2] = r6;	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r20 = 0;
        r21 = 0;
        r22 = "rowid";
        com.google.android.gms.internal.zzcem.zzxv();	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r23 = "1001";
        r6 = r39;
        r2 = 8;
        r7 = r40;
        r2 = 7;
        r8 = r20;
        r2 = 6;
        r9 = r21;
        r2 = 5;
        r10 = r22;
        r2 = 4;
        r11 = r23;
        r3 = r3.query(r4, r5, r6, r7, r8, r9, r10, r11);	 Catch:{ SQLiteException -> 0x0161, all -> 0x015d }
        r4 = r3.moveToFirst();	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        if (r4 != 0) goto L_0x0088;
    L_0x0082:
        if (r3 == 0) goto L_0x0087;
    L_0x0084:
        r3.close();
    L_0x0087:
        return r1;
    L_0x0088:
        r4 = r1.size();	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r5 = com.google.android.gms.internal.zzcem.zzxv();	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        if (r4 < r5) goto L_0x00a9;
    L_0x0092:
        r2 = r38.zzwF();	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r2 = r2.zzyx();	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r4 = "Read more than the max allowed conditional properties, ignoring extra";
        r5 = com.google.android.gms.internal.zzcem.zzxv();	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r2.zzj(r4, r5);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        goto L_0x014c;
    L_0x00a9:
        r4 = r3.getString(r12);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r11 = r3.getString(r13);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r6 = r3.getString(r14);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r10 = r38;
        r9 = r10.zza(r3, r15);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r5 = r3.getInt(r2);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        if (r5 == 0) goto L_0x00c5;
    L_0x00c1:
        r7 = 5;
        r22 = 1;
        goto L_0x00c8;
    L_0x00c5:
        r7 = 5;
        r22 = 0;
    L_0x00c8:
        r23 = r3.getString(r7);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r8 = 6;
        r27 = r3.getLong(r8);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r5 = r38.zzwB();	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r2 = 7;
        r7 = r3.getBlob(r2);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r2 = com.google.android.gms.internal.zzcez.CREATOR;	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r2 = r5.zzb(r7, r2);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r2 = (com.google.android.gms.internal.zzcez) r2;	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r7 = 8;
        r20 = r3.getLong(r7);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r5 = r38.zzwB();	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r12 = 9;
        r7 = r3.getBlob(r12);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r8 = com.google.android.gms.internal.zzcez.CREATOR;	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r5 = r5.zzb(r7, r8);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r29 = r5;
        r29 = (com.google.android.gms.internal.zzcez) r29;	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r7 = 10;
        r16 = r3.getLong(r7);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r8 = 11;
        r34 = r3.getLong(r8);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r5 = r38.zzwB();	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r12 = 12;
        r7 = r3.getBlob(r12);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r8 = com.google.android.gms.internal.zzcez.CREATOR;	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r5 = r5.zzb(r7, r8);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r30 = r5;
        r30 = (com.google.android.gms.internal.zzcez) r30;	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r19 = new com.google.android.gms.internal.zzcji;	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r5 = r19;
        r31 = 5;
        r32 = 6;
        r33 = 8;
        r36 = 10;
        r37 = 11;
        r7 = r16;
        r10 = r11;
        r5.<init>(r6, r7, r9, r10);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r5 = new com.google.android.gms.internal.zzcek;	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r16 = r5;
        r17 = r4;
        r18 = r11;
        r24 = r2;
        r25 = r27;
        r27 = r29;
        r28 = r34;
        r16.<init>(r17, r18, r19, r20, r22, r23, r24, r25, r27, r28, r30);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r1.add(r5);	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        r2 = r3.moveToNext();	 Catch:{ SQLiteException -> 0x0159, all -> 0x0156 }
        if (r2 != 0) goto L_0x0152;
    L_0x014c:
        if (r3 == 0) goto L_0x0151;
    L_0x014e:
        r3.close();
    L_0x0151:
        return r1;
    L_0x0152:
        r2 = 4;
        r12 = 0;
        goto L_0x0088;
    L_0x0156:
        r0 = move-exception;
        r1 = r0;
        goto L_0x017e;
    L_0x0159:
        r0 = move-exception;
        r1 = r0;
        r2 = r3;
        goto L_0x0164;
    L_0x015d:
        r0 = move-exception;
        r1 = r0;
        r3 = 0;
        goto L_0x017e;
    L_0x0161:
        r0 = move-exception;
        r1 = r0;
        r2 = 0;
    L_0x0164:
        r3 = r38.zzwF();	 Catch:{ all -> 0x017b }
        r3 = r3.zzyx();	 Catch:{ all -> 0x017b }
        r4 = "Error querying conditional user property value";
        r3.zzj(r4, r1);	 Catch:{ all -> 0x017b }
        r1 = java.util.Collections.emptyList();	 Catch:{ all -> 0x017b }
        if (r2 == 0) goto L_0x017a;
    L_0x0177:
        r2.close();
    L_0x017a:
        return r1;
    L_0x017b:
        r0 = move-exception;
        r1 = r0;
        r3 = r2;
    L_0x017e:
        if (r3 == 0) goto L_0x0183;
    L_0x0180:
        r3.close();
    L_0x0183:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzc(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00c3  */
    @android.support.annotation.WorkerThread
    public final java.util.List<com.google.android.gms.internal.zzcjk> zzdP(java.lang.String r25) {
        /*
        r24 = this;
        com.google.android.gms.common.internal.zzbo.zzcF(r25);
        r24.zzjC();
        r24.zzkD();
        r1 = new java.util.ArrayList;
        r1.<init>();
        r2 = 0;
        r3 = r24.getWritableDatabase();	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r4 = "user_attributes";
        r5 = 4;
        r5 = new java.lang.String[r5];	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r6 = "name";
        r12 = 0;
        r5[r12] = r6;	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r6 = "origin";
        r13 = 1;
        r5[r13] = r6;	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r6 = "set_timestamp";
        r14 = 2;
        r5[r14] = r6;	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r6 = "value";
        r15 = 3;
        r5[r15] = r6;	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r6 = "app_id=?";
        r7 = new java.lang.String[r13];	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r7[r12] = r25;	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r8 = 0;
        r9 = 0;
        r10 = "rowid";
        r11 = com.google.android.gms.internal.zzcem.zzxt();	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r11 = java.lang.String.valueOf(r11);	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r3 = r3.query(r4, r5, r6, r7, r8, r9, r10, r11);	 Catch:{ SQLiteException -> 0x00a3, all -> 0x009d }
        r4 = r3.moveToFirst();	 Catch:{ SQLiteException -> 0x0098, all -> 0x0094 }
        if (r4 != 0) goto L_0x004e;
    L_0x0048:
        if (r3 == 0) goto L_0x004d;
    L_0x004a:
        r3.close();
    L_0x004d:
        return r1;
    L_0x004e:
        r19 = r3.getString(r12);	 Catch:{ SQLiteException -> 0x0098, all -> 0x0094 }
        r4 = r3.getString(r13);	 Catch:{ SQLiteException -> 0x0098, all -> 0x0094 }
        if (r4 != 0) goto L_0x005a;
    L_0x0058:
        r4 = "";
    L_0x005a:
        r18 = r4;
        r20 = r3.getLong(r14);	 Catch:{ SQLiteException -> 0x0098, all -> 0x0094 }
        r4 = r24;
        r22 = r4.zza(r3, r15);	 Catch:{ SQLiteException -> 0x0092 }
        if (r22 != 0) goto L_0x007a;
    L_0x0068:
        r5 = r24.zzwF();	 Catch:{ SQLiteException -> 0x0092 }
        r5 = r5.zzyx();	 Catch:{ SQLiteException -> 0x0092 }
        r6 = "Read invalid user property value, ignoring it. appId";
        r7 = com.google.android.gms.internal.zzcfl.zzdZ(r25);	 Catch:{ SQLiteException -> 0x0092 }
        r5.zzj(r6, r7);	 Catch:{ SQLiteException -> 0x0092 }
        goto L_0x0086;
    L_0x007a:
        r5 = new com.google.android.gms.internal.zzcjk;	 Catch:{ SQLiteException -> 0x0092 }
        r16 = r5;
        r17 = r25;
        r16.<init>(r17, r18, r19, r20, r22);	 Catch:{ SQLiteException -> 0x0092 }
        r1.add(r5);	 Catch:{ SQLiteException -> 0x0092 }
    L_0x0086:
        r5 = r3.moveToNext();	 Catch:{ SQLiteException -> 0x0092 }
        if (r5 != 0) goto L_0x004e;
    L_0x008c:
        if (r3 == 0) goto L_0x0091;
    L_0x008e:
        r3.close();
    L_0x0091:
        return r1;
    L_0x0092:
        r0 = move-exception;
        goto L_0x009b;
    L_0x0094:
        r0 = move-exception;
        r4 = r24;
        goto L_0x00c0;
    L_0x0098:
        r0 = move-exception;
        r4 = r24;
    L_0x009b:
        r1 = r0;
        goto L_0x00a8;
    L_0x009d:
        r0 = move-exception;
        r4 = r24;
        r1 = r0;
        r3 = r2;
        goto L_0x00c1;
    L_0x00a3:
        r0 = move-exception;
        r4 = r24;
        r1 = r0;
        r3 = r2;
    L_0x00a8:
        r5 = r24.zzwF();	 Catch:{ all -> 0x00bf }
        r5 = r5.zzyx();	 Catch:{ all -> 0x00bf }
        r6 = "Error querying user properties. appId";
        r7 = com.google.android.gms.internal.zzcfl.zzdZ(r25);	 Catch:{ all -> 0x00bf }
        r5.zze(r6, r7, r1);	 Catch:{ all -> 0x00bf }
        if (r3 == 0) goto L_0x00be;
    L_0x00bb:
        r3.close();
    L_0x00be:
        return r2;
    L_0x00bf:
        r0 = move-exception;
    L_0x00c0:
        r1 = r0;
    L_0x00c1:
        if (r3 == 0) goto L_0x00c6;
    L_0x00c3:
        r3.close();
    L_0x00c6:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzdP(java.lang.String):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x01f7  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0200  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x01f7  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0200  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0200  */
    @android.support.annotation.WorkerThread
    public final com.google.android.gms.internal.zzceg zzdQ(java.lang.String r21) {
        /*
        r20 = this;
        r1 = r21;
        com.google.android.gms.common.internal.zzbo.zzcF(r21);
        r20.zzjC();
        r20.zzkD();
        r2 = 0;
        r3 = r20.getWritableDatabase();	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r4 = "apps";
        r5 = 23;
        r5 = new java.lang.String[r5];	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "app_instance_id";
        r11 = 0;
        r5[r11] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "gmp_app_id";
        r12 = 1;
        r5[r12] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "resettable_device_id_hash";
        r13 = 2;
        r5[r13] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "last_bundle_index";
        r14 = 3;
        r5[r14] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "last_bundle_start_timestamp";
        r15 = 4;
        r5[r15] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "last_bundle_end_timestamp";
        r10 = 5;
        r5[r10] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "app_version";
        r9 = 6;
        r5[r9] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "app_store";
        r8 = 7;
        r5[r8] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "gmp_version";
        r7 = 8;
        r5[r7] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "dev_cert_hash";
        r15 = 9;
        r5[r15] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "measurement_enabled";
        r15 = 10;
        r5[r15] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "day";
        r15 = 11;
        r5[r15] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = 12;
        r16 = "daily_public_events_count";
        r5[r6] = r16;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = 13;
        r16 = "daily_events_count";
        r5[r6] = r16;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = 14;
        r16 = "daily_conversions_count";
        r5[r6] = r16;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = 15;
        r16 = "config_fetched_time";
        r5[r6] = r16;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = 16;
        r16 = "failed_config_fetch_time";
        r5[r6] = r16;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "app_version_int";
        r15 = 17;
        r5[r15] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = 18;
        r16 = "firebase_instance_id";
        r5[r6] = r16;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = 19;
        r16 = "daily_error_events_count";
        r5[r6] = r16;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = 20;
        r16 = "daily_realtime_events_count";
        r5[r6] = r16;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = 21;
        r16 = "health_monitor_sample";
        r5[r6] = r16;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "android_id";
        r15 = 22;
        r5[r15] = r6;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r6 = "app_id=?";
        r7 = new java.lang.String[r12];	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r7[r11] = r1;	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r16 = 0;
        r17 = 0;
        r18 = 0;
        r15 = 8;
        r15 = 7;
        r8 = r16;
        r15 = 6;
        r9 = r17;
        r15 = 5;
        r10 = r18;
        r3 = r3.query(r4, r5, r6, r7, r8, r9, r10);	 Catch:{ SQLiteException -> 0x01df, all -> 0x01d9 }
        r4 = r3.moveToFirst();	 Catch:{ SQLiteException -> 0x01d3, all -> 0x01ce }
        if (r4 != 0) goto L_0x00bf;
    L_0x00b9:
        if (r3 == 0) goto L_0x00be;
    L_0x00bb:
        r3.close();
    L_0x00be:
        return r2;
    L_0x00bf:
        r4 = new com.google.android.gms.internal.zzceg;	 Catch:{ SQLiteException -> 0x01d3, all -> 0x01ce }
        r5 = r20;
        r6 = r5.zzboe;	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.<init>(r6, r1);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = r3.getString(r11);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzdG(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = r3.getString(r12);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzdH(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = r3.getString(r13);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzdI(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = r3.getLong(r14);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzQ(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 4;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzL(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = r3.getLong(r15);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzM(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 6;
        r6 = r3.getString(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.setAppVersion(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 7;
        r6 = r3.getString(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzdK(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 8;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzO(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 9;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzP(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 10;
        r7 = r3.isNull(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        if (r7 == 0) goto L_0x011f;
    L_0x011d:
        r6 = 1;
        goto L_0x0123;
    L_0x011f:
        r6 = r3.getInt(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
    L_0x0123:
        if (r6 == 0) goto L_0x0126;
    L_0x0125:
        goto L_0x0127;
    L_0x0126:
        r12 = 0;
    L_0x0127:
        r4.setMeasurementEnabled(r12);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 11;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzT(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 12;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzU(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 13;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzV(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 14;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzW(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 15;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzR(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 16;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzS(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 17;
        r7 = r3.isNull(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        if (r7 == 0) goto L_0x016c;
    L_0x0168:
        r6 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        goto L_0x0171;
    L_0x016c:
        r6 = r3.getInt(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = (long) r6;	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
    L_0x0171:
        r4.zzN(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 18;
        r6 = r3.getString(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzdJ(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 19;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzY(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 20;
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzX(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 21;
        r6 = r3.getString(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzdL(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = 22;
        r7 = r3.isNull(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        if (r7 == 0) goto L_0x01a3;
    L_0x01a0:
        r6 = 0;
        goto L_0x01a7;
    L_0x01a3:
        r6 = r3.getLong(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
    L_0x01a7:
        r4.zzZ(r6);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r4.zzwI();	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = r3.moveToNext();	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        if (r6 == 0) goto L_0x01c4;
    L_0x01b3:
        r6 = r20.zzwF();	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6 = r6.zzyx();	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r7 = "Got multiple records for app, expected one. appId";
        r8 = com.google.android.gms.internal.zzcfl.zzdZ(r21);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
        r6.zzj(r7, r8);	 Catch:{ SQLiteException -> 0x01cc, all -> 0x01ca }
    L_0x01c4:
        if (r3 == 0) goto L_0x01c9;
    L_0x01c6:
        r3.close();
    L_0x01c9:
        return r4;
    L_0x01ca:
        r0 = move-exception;
        goto L_0x01d1;
    L_0x01cc:
        r0 = move-exception;
        goto L_0x01d6;
    L_0x01ce:
        r0 = move-exception;
        r5 = r20;
    L_0x01d1:
        r1 = r0;
        goto L_0x01fe;
    L_0x01d3:
        r0 = move-exception;
        r5 = r20;
    L_0x01d6:
        r4 = r3;
        r3 = r0;
        goto L_0x01e4;
    L_0x01d9:
        r0 = move-exception;
        r5 = r20;
        r1 = r0;
        r3 = r2;
        goto L_0x01fe;
    L_0x01df:
        r0 = move-exception;
        r5 = r20;
        r3 = r0;
        r4 = r2;
    L_0x01e4:
        r6 = r20.zzwF();	 Catch:{ all -> 0x01fb }
        r6 = r6.zzyx();	 Catch:{ all -> 0x01fb }
        r7 = "Error querying app. appId";
        r1 = com.google.android.gms.internal.zzcfl.zzdZ(r21);	 Catch:{ all -> 0x01fb }
        r6.zze(r7, r1, r3);	 Catch:{ all -> 0x01fb }
        if (r4 == 0) goto L_0x01fa;
    L_0x01f7:
        r4.close();
    L_0x01fa:
        return r2;
    L_0x01fb:
        r0 = move-exception;
        r1 = r0;
        r3 = r4;
    L_0x01fe:
        if (r3 == 0) goto L_0x0203;
    L_0x0200:
        r3.close();
    L_0x0203:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzdQ(java.lang.String):com.google.android.gms.internal.zzceg");
    }

    public final long zzdR(String str) {
        zzbo.zzcF(str);
        zzjC();
        zzkD();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String valueOf = String.valueOf(Math.max(0, Math.min(1000000, zzwH().zzb(str, zzcfb.zzbqk))));
            return (long) writableDatabase.delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, valueOf});
        } catch (SQLiteException e) {
            zzwF().zzyx().zze("Error deleting over the limit events. appId", zzcfl.zzdZ(str), e);
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0079  */
    @android.support.annotation.WorkerThread
    public final byte[] zzdS(java.lang.String r12) {
        /*
        r11 = this;
        com.google.android.gms.common.internal.zzbo.zzcF(r12);
        r11.zzjC();
        r11.zzkD();
        r0 = 0;
        r1 = r11.getWritableDatabase();	 Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
        r2 = "apps";
        r3 = 1;
        r4 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
        r5 = "remote_config";
        r9 = 0;
        r4[r9] = r5;	 Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
        r5 = "app_id=?";
        r6 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
        r6[r9] = r12;	 Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
        r7 = 0;
        r8 = 0;
        r10 = 0;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r7;
        r7 = r8;
        r8 = r10;
        r1 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
        r2 = r1.moveToFirst();	 Catch:{ SQLiteException -> 0x0058 }
        if (r2 != 0) goto L_0x0037;
    L_0x0031:
        if (r1 == 0) goto L_0x0036;
    L_0x0033:
        r1.close();
    L_0x0036:
        return r0;
    L_0x0037:
        r2 = r1.getBlob(r9);	 Catch:{ SQLiteException -> 0x0058 }
        r3 = r1.moveToNext();	 Catch:{ SQLiteException -> 0x0058 }
        if (r3 == 0) goto L_0x0052;
    L_0x0041:
        r3 = r11.zzwF();	 Catch:{ SQLiteException -> 0x0058 }
        r3 = r3.zzyx();	 Catch:{ SQLiteException -> 0x0058 }
        r4 = "Got multiple records for app config, expected one. appId";
        r5 = com.google.android.gms.internal.zzcfl.zzdZ(r12);	 Catch:{ SQLiteException -> 0x0058 }
        r3.zzj(r4, r5);	 Catch:{ SQLiteException -> 0x0058 }
    L_0x0052:
        if (r1 == 0) goto L_0x0057;
    L_0x0054:
        r1.close();
    L_0x0057:
        return r2;
    L_0x0058:
        r2 = move-exception;
        goto L_0x005f;
    L_0x005a:
        r12 = move-exception;
        r1 = r0;
        goto L_0x0077;
    L_0x005d:
        r2 = move-exception;
        r1 = r0;
    L_0x005f:
        r3 = r11.zzwF();	 Catch:{ all -> 0x0076 }
        r3 = r3.zzyx();	 Catch:{ all -> 0x0076 }
        r4 = "Error querying remote config. appId";
        r12 = com.google.android.gms.internal.zzcfl.zzdZ(r12);	 Catch:{ all -> 0x0076 }
        r3.zze(r4, r12, r2);	 Catch:{ all -> 0x0076 }
        if (r1 == 0) goto L_0x0075;
    L_0x0072:
        r1.close();
    L_0x0075:
        return r0;
    L_0x0076:
        r12 = move-exception;
    L_0x0077:
        if (r1 == 0) goto L_0x007c;
    L_0x0079:
        r1.close();
    L_0x007c:
        throw r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzdS(java.lang.String):byte[]");
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x009b  */
    public final java.util.Map<java.lang.Integer, com.google.android.gms.internal.zzcka> zzdT(java.lang.String r12) {
        /*
        r11 = this;
        r11.zzkD();
        r11.zzjC();
        com.google.android.gms.common.internal.zzbo.zzcF(r12);
        r0 = r11.getWritableDatabase();
        r8 = 0;
        r1 = "audience_filter_values";
        r2 = 2;
        r2 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
        r3 = "audience_id";
        r9 = 0;
        r2[r9] = r3;	 Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
        r3 = "current_results";
        r10 = 1;
        r2[r10] = r3;	 Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
        r3 = "app_id=?";
        r4 = new java.lang.String[r10];	 Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
        r4[r9] = r12;	 Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
        r1 = r0.moveToFirst();	 Catch:{ SQLiteException -> 0x007a }
        if (r1 != 0) goto L_0x0036;
    L_0x0030:
        if (r0 == 0) goto L_0x0035;
    L_0x0032:
        r0.close();
    L_0x0035:
        return r8;
    L_0x0036:
        r1 = new android.support.v4.util.ArrayMap;	 Catch:{ SQLiteException -> 0x007a }
        r1.<init>();	 Catch:{ SQLiteException -> 0x007a }
    L_0x003b:
        r2 = r0.getInt(r9);	 Catch:{ SQLiteException -> 0x007a }
        r3 = r0.getBlob(r10);	 Catch:{ SQLiteException -> 0x007a }
        r4 = r3.length;	 Catch:{ SQLiteException -> 0x007a }
        r3 = com.google.android.gms.internal.adg.zzb(r3, r9, r4);	 Catch:{ SQLiteException -> 0x007a }
        r4 = new com.google.android.gms.internal.zzcka;	 Catch:{ SQLiteException -> 0x007a }
        r4.<init>();	 Catch:{ SQLiteException -> 0x007a }
        r4.zza(r3);	 Catch:{ IOException -> 0x0058 }
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ SQLiteException -> 0x007a }
        r1.put(r2, r4);	 Catch:{ SQLiteException -> 0x007a }
        goto L_0x006e;
    L_0x0058:
        r3 = move-exception;
        r4 = r11.zzwF();	 Catch:{ SQLiteException -> 0x007a }
        r4 = r4.zzyx();	 Catch:{ SQLiteException -> 0x007a }
        r5 = "Failed to merge filter results. appId, audienceId, error";
        r6 = com.google.android.gms.internal.zzcfl.zzdZ(r12);	 Catch:{ SQLiteException -> 0x007a }
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ SQLiteException -> 0x007a }
        r4.zzd(r5, r6, r2, r3);	 Catch:{ SQLiteException -> 0x007a }
    L_0x006e:
        r2 = r0.moveToNext();	 Catch:{ SQLiteException -> 0x007a }
        if (r2 != 0) goto L_0x003b;
    L_0x0074:
        if (r0 == 0) goto L_0x0079;
    L_0x0076:
        r0.close();
    L_0x0079:
        return r1;
    L_0x007a:
        r1 = move-exception;
        goto L_0x0081;
    L_0x007c:
        r12 = move-exception;
        r0 = r8;
        goto L_0x0099;
    L_0x007f:
        r1 = move-exception;
        r0 = r8;
    L_0x0081:
        r2 = r11.zzwF();	 Catch:{ all -> 0x0098 }
        r2 = r2.zzyx();	 Catch:{ all -> 0x0098 }
        r3 = "Database error querying filter results. appId";
        r12 = com.google.android.gms.internal.zzcfl.zzdZ(r12);	 Catch:{ all -> 0x0098 }
        r2.zze(r3, r12, r1);	 Catch:{ all -> 0x0098 }
        if (r0 == 0) goto L_0x0097;
    L_0x0094:
        r0.close();
    L_0x0097:
        return r8;
    L_0x0098:
        r12 = move-exception;
    L_0x0099:
        if (r0 == 0) goto L_0x009e;
    L_0x009b:
        r0.close();
    L_0x009e:
        throw r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzdT(java.lang.String):java.util.Map");
    }

    public final long zzdU(String str) {
        zzbo.zzcF(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0);
    }

    /* JADX WARNING: Removed duplicated region for block: B:69:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0130 A:{ExcHandler: all (r0_10 'th' java.lang.Throwable), Splitter:B:1:0x000f} */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x015a  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x015a  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0130 A:{ExcHandler: all (r0_10 'th' java.lang.Throwable), Splitter:B:1:0x000f} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:10:0x0032, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:11:0x0033, code skipped:
            r15 = r23;
     */
    /* JADX WARNING: Missing block: B:60:0x0130, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:61:0x0131, code skipped:
            r15 = r23;
            r1 = r0;
     */
    /* JADX WARNING: Missing block: B:62:0x0135, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:63:0x0136, code skipped:
            r15 = r23;
            r12 = r24;
     */
    /* JADX WARNING: Missing block: B:74:0x015a, code skipped:
            r2.close();
     */
    @android.support.annotation.WorkerThread
    public final java.util.List<com.google.android.gms.internal.zzcjk> zzh(java.lang.String r24, java.lang.String r25, java.lang.String r26) {
        /*
        r23 = this;
        com.google.android.gms.common.internal.zzbo.zzcF(r24);
        r23.zzjC();
        r23.zzkD();
        r1 = new java.util.ArrayList;
        r1.<init>();
        r2 = 0;
        r3 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x0135, all -> 0x0130 }
        r4 = 3;
        r3.<init>(r4);	 Catch:{ SQLiteException -> 0x0135, all -> 0x0130 }
        r12 = r24;
        r3.add(r12);	 Catch:{ SQLiteException -> 0x012c, all -> 0x0130 }
        r5 = new java.lang.StringBuilder;	 Catch:{ SQLiteException -> 0x012c, all -> 0x0130 }
        r6 = "app_id=?";
        r5.<init>(r6);	 Catch:{ SQLiteException -> 0x012c, all -> 0x0130 }
        r6 = android.text.TextUtils.isEmpty(r25);	 Catch:{ SQLiteException -> 0x012c, all -> 0x0130 }
        if (r6 != 0) goto L_0x0037;
    L_0x0027:
        r6 = r25;
        r3.add(r6);	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r7 = " and origin=?";
        r5.append(r7);	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        goto L_0x0039;
    L_0x0032:
        r0 = move-exception;
        r15 = r23;
        goto L_0x013c;
    L_0x0037:
        r6 = r25;
    L_0x0039:
        r7 = android.text.TextUtils.isEmpty(r26);	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        if (r7 != 0) goto L_0x0051;
    L_0x003f:
        r7 = java.lang.String.valueOf(r26);	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r8 = "*";
        r7 = r7.concat(r8);	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r3.add(r7);	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r7 = " and name glob ?";
        r5.append(r7);	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
    L_0x0051:
        r7 = r3.size();	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r7 = new java.lang.String[r7];	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r3 = r3.toArray(r7);	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r17 = r3;
        r17 = (java.lang.String[]) r17;	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r13 = r23.getWritableDatabase();	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r14 = "user_attributes";
        r3 = 4;
        r15 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r3 = "name";
        r11 = 0;
        r15[r11] = r3;	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r3 = "set_timestamp";
        r9 = 1;
        r15[r9] = r3;	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r3 = "value";
        r10 = 2;
        r15[r10] = r3;	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r3 = "origin";
        r15[r4] = r3;	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r16 = r5.toString();	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r18 = 0;
        r19 = 0;
        r20 = "rowid";
        com.google.android.gms.internal.zzcem.zzxt();	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r21 = "1001";
        r3 = r13.query(r14, r15, r16, r17, r18, r19, r20, r21);	 Catch:{ SQLiteException -> 0x0032, all -> 0x0130 }
        r5 = r3.moveToFirst();	 Catch:{ SQLiteException -> 0x0127, all -> 0x0123 }
        if (r5 != 0) goto L_0x009a;
    L_0x0094:
        if (r3 == 0) goto L_0x0099;
    L_0x0096:
        r3.close();
    L_0x0099:
        return r1;
    L_0x009a:
        r5 = r1.size();	 Catch:{ SQLiteException -> 0x0127, all -> 0x0123 }
        r7 = com.google.android.gms.internal.zzcem.zzxt();	 Catch:{ SQLiteException -> 0x0127, all -> 0x0123 }
        if (r5 < r7) goto L_0x00bc;
    L_0x00a4:
        r4 = r23.zzwF();	 Catch:{ SQLiteException -> 0x0127, all -> 0x0123 }
        r4 = r4.zzyx();	 Catch:{ SQLiteException -> 0x0127, all -> 0x0123 }
        r5 = "Read more than the max allowed user properties, ignoring excess";
        r7 = com.google.android.gms.internal.zzcem.zzxt();	 Catch:{ SQLiteException -> 0x0127, all -> 0x0123 }
        r7 = java.lang.Integer.valueOf(r7);	 Catch:{ SQLiteException -> 0x0127, all -> 0x0123 }
        r4.zzj(r5, r7);	 Catch:{ SQLiteException -> 0x0127, all -> 0x0123 }
        r15 = r23;
        goto L_0x010b;
    L_0x00bc:
        r8 = r3.getString(r11);	 Catch:{ SQLiteException -> 0x0127, all -> 0x0123 }
        r13 = r3.getLong(r9);	 Catch:{ SQLiteException -> 0x0127, all -> 0x0123 }
        r15 = r23;
        r16 = r15.zza(r3, r10);	 Catch:{ SQLiteException -> 0x0121 }
        r7 = r3.getString(r4);	 Catch:{ SQLiteException -> 0x0121 }
        if (r16 != 0) goto L_0x00f0;
    L_0x00d0:
        r5 = r23.zzwF();	 Catch:{ SQLiteException -> 0x00eb }
        r5 = r5.zzyx();	 Catch:{ SQLiteException -> 0x00eb }
        r6 = "(2)Read invalid user property value, ignoring it";
        r8 = com.google.android.gms.internal.zzcfl.zzdZ(r24);	 Catch:{ SQLiteException -> 0x00eb }
        r13 = r26;
        r5.zzd(r6, r8, r7, r13);	 Catch:{ SQLiteException -> 0x00eb }
        r17 = r7;
        r13 = 0;
        r18 = 1;
        r19 = 2;
        goto L_0x0105;
    L_0x00eb:
        r0 = move-exception;
        r1 = r0;
        r6 = r7;
        goto L_0x013e;
    L_0x00f0:
        r6 = new com.google.android.gms.internal.zzcjk;	 Catch:{ SQLiteException -> 0x011a }
        r5 = r6;
        r4 = r6;
        r6 = r12;
        r17 = r7;
        r18 = 1;
        r19 = 2;
        r9 = r13;
        r13 = 0;
        r11 = r16;
        r5.<init>(r6, r7, r8, r9, r11);	 Catch:{ SQLiteException -> 0x0118 }
        r1.add(r4);	 Catch:{ SQLiteException -> 0x0118 }
    L_0x0105:
        r4 = r3.moveToNext();	 Catch:{ SQLiteException -> 0x0118 }
        if (r4 != 0) goto L_0x0111;
    L_0x010b:
        if (r3 == 0) goto L_0x0110;
    L_0x010d:
        r3.close();
    L_0x0110:
        return r1;
    L_0x0111:
        r6 = r17;
        r4 = 3;
        r9 = 1;
        r10 = 2;
        r11 = 0;
        goto L_0x009a;
    L_0x0118:
        r0 = move-exception;
        goto L_0x011d;
    L_0x011a:
        r0 = move-exception;
        r17 = r7;
    L_0x011d:
        r1 = r0;
        r6 = r17;
        goto L_0x013e;
    L_0x0121:
        r0 = move-exception;
        goto L_0x012a;
    L_0x0123:
        r0 = move-exception;
        r15 = r23;
        goto L_0x0156;
    L_0x0127:
        r0 = move-exception;
        r15 = r23;
    L_0x012a:
        r1 = r0;
        goto L_0x013e;
    L_0x012c:
        r0 = move-exception;
        r15 = r23;
        goto L_0x013a;
    L_0x0130:
        r0 = move-exception;
        r15 = r23;
        r1 = r0;
        goto L_0x0158;
    L_0x0135:
        r0 = move-exception;
        r15 = r23;
        r12 = r24;
    L_0x013a:
        r6 = r25;
    L_0x013c:
        r1 = r0;
        r3 = r2;
    L_0x013e:
        r4 = r23.zzwF();	 Catch:{ all -> 0x0155 }
        r4 = r4.zzyx();	 Catch:{ all -> 0x0155 }
        r5 = "(2)Error querying user properties";
        r7 = com.google.android.gms.internal.zzcfl.zzdZ(r24);	 Catch:{ all -> 0x0155 }
        r4.zzd(r5, r7, r6, r1);	 Catch:{ all -> 0x0155 }
        if (r3 == 0) goto L_0x0154;
    L_0x0151:
        r3.close();
    L_0x0154:
        return r2;
    L_0x0155:
        r0 = move-exception;
    L_0x0156:
        r1 = r0;
        r2 = r3;
    L_0x0158:
        if (r2 == 0) goto L_0x015d;
    L_0x015a:
        r2.close();
    L_0x015d:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzh(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    @WorkerThread
    public final List<zzcek> zzi(String str, String str2, String str3) {
        zzbo.zzcF(str);
        zzjC();
        zzkD();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder stringBuilder = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            stringBuilder.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            stringBuilder.append(" and name glob ?");
        }
        return zzc(stringBuilder.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00b5 A:{SYNTHETIC, EDGE_INSN: B:59:0x00b5->B:41:0x00b5 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00b3 A:{LOOP_END, LOOP:0: B:20:0x0055->B:40:0x00b3} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00db  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00b3 A:{LOOP_END, LOOP:0: B:20:0x0055->B:40:0x00b3} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00b5 A:{SYNTHETIC, EDGE_INSN: B:59:0x00b5->B:41:0x00b5 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00b7  */
    @android.support.annotation.WorkerThread
    public final java.util.List<android.util.Pair<com.google.android.gms.internal.zzcjz, java.lang.Long>> zzl(java.lang.String r13, int r14, int r15) {
        /*
        r12 = this;
        r12.zzjC();
        r12.zzkD();
        r0 = 1;
        r1 = 0;
        if (r14 <= 0) goto L_0x000c;
    L_0x000a:
        r2 = 1;
        goto L_0x000d;
    L_0x000c:
        r2 = 0;
    L_0x000d:
        com.google.android.gms.common.internal.zzbo.zzaf(r2);
        if (r15 <= 0) goto L_0x0014;
    L_0x0012:
        r2 = 1;
        goto L_0x0015;
    L_0x0014:
        r2 = 0;
    L_0x0015:
        com.google.android.gms.common.internal.zzbo.zzaf(r2);
        com.google.android.gms.common.internal.zzbo.zzcF(r13);
        r2 = 0;
        r3 = r12.getWritableDatabase();	 Catch:{ SQLiteException -> 0x00c3 }
        r4 = "queue";
        r5 = 2;
        r5 = new java.lang.String[r5];	 Catch:{ SQLiteException -> 0x00c3 }
        r6 = "rowid";
        r5[r1] = r6;	 Catch:{ SQLiteException -> 0x00c3 }
        r6 = "data";
        r5[r0] = r6;	 Catch:{ SQLiteException -> 0x00c3 }
        r6 = "app_id=?";
        r7 = new java.lang.String[r0];	 Catch:{ SQLiteException -> 0x00c3 }
        r7[r1] = r13;	 Catch:{ SQLiteException -> 0x00c3 }
        r8 = 0;
        r9 = 0;
        r10 = "rowid";
        r11 = java.lang.String.valueOf(r14);	 Catch:{ SQLiteException -> 0x00c3 }
        r14 = r3.query(r4, r5, r6, r7, r8, r9, r10, r11);	 Catch:{ SQLiteException -> 0x00c3 }
        r2 = r14.moveToFirst();	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        if (r2 != 0) goto L_0x004f;
    L_0x0045:
        r15 = java.util.Collections.emptyList();	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        if (r14 == 0) goto L_0x004e;
    L_0x004b:
        r14.close();
    L_0x004e:
        return r15;
    L_0x004f:
        r2 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r2.<init>();	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r3 = 0;
    L_0x0055:
        r4 = r14.getLong(r1);	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r6 = r14.getBlob(r0);	 Catch:{ IOException -> 0x009d }
        r7 = r12.zzwB();	 Catch:{ IOException -> 0x009d }
        r6 = r7.zzm(r6);	 Catch:{ IOException -> 0x009d }
        r7 = r2.isEmpty();	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        if (r7 != 0) goto L_0x006f;
    L_0x006b:
        r7 = r6.length;	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r7 = r7 + r3;
        if (r7 > r15) goto L_0x00b5;
    L_0x006f:
        r7 = r6.length;	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r7 = com.google.android.gms.internal.adg.zzb(r6, r1, r7);	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r8 = new com.google.android.gms.internal.zzcjz;	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r8.<init>();	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r8.zza(r7);	 Catch:{ IOException -> 0x008a }
        r6 = r6.length;	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r3 = r3 + r6;
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r4 = android.util.Pair.create(r8, r4);	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r2.add(r4);	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        goto L_0x00ad;
    L_0x008a:
        r4 = move-exception;
        r5 = r12.zzwF();	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r5 = r5.zzyx();	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r6 = "Failed to merge queued bundle. appId";
        r7 = com.google.android.gms.internal.zzcfl.zzdZ(r13);	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
    L_0x0099:
        r5.zze(r6, r7, r4);	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        goto L_0x00ad;
    L_0x009d:
        r4 = move-exception;
        r5 = r12.zzwF();	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r5 = r5.zzyx();	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        r6 = "Failed to unzip queued bundle. appId";
        r7 = com.google.android.gms.internal.zzcfl.zzdZ(r13);	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        goto L_0x0099;
    L_0x00ad:
        r4 = r14.moveToNext();	 Catch:{ SQLiteException -> 0x00bd, all -> 0x00bb }
        if (r4 == 0) goto L_0x00b5;
    L_0x00b3:
        if (r3 <= r15) goto L_0x0055;
    L_0x00b5:
        if (r14 == 0) goto L_0x00ba;
    L_0x00b7:
        r14.close();
    L_0x00ba:
        return r2;
    L_0x00bb:
        r13 = move-exception;
        goto L_0x00df;
    L_0x00bd:
        r15 = move-exception;
        r2 = r14;
        goto L_0x00c4;
    L_0x00c0:
        r13 = move-exception;
        r14 = r2;
        goto L_0x00df;
    L_0x00c3:
        r15 = move-exception;
    L_0x00c4:
        r14 = r12.zzwF();	 Catch:{ all -> 0x00c0 }
        r14 = r14.zzyx();	 Catch:{ all -> 0x00c0 }
        r0 = "Error querying bundles. appId";
        r13 = com.google.android.gms.internal.zzcfl.zzdZ(r13);	 Catch:{ all -> 0x00c0 }
        r14.zze(r0, r13, r15);	 Catch:{ all -> 0x00c0 }
        r13 = java.util.Collections.emptyList();	 Catch:{ all -> 0x00c0 }
        if (r2 == 0) goto L_0x00de;
    L_0x00db:
        r2.close();
    L_0x00de:
        return r13;
    L_0x00df:
        if (r14 == 0) goto L_0x00e4;
    L_0x00e1:
        r14.close();
    L_0x00e4:
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzl(java.lang.String, int, int):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0041  */
    @android.support.annotation.WorkerThread
    public final java.lang.String zzyc() {
        /*
        r6 = this;
        r0 = r6.getWritableDatabase();
        r1 = 0;
        r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;";
        r0 = r0.rawQuery(r2, r1);	 Catch:{ SQLiteException -> 0x0029, all -> 0x0024 }
        r2 = r0.moveToFirst();	 Catch:{ SQLiteException -> 0x0022 }
        if (r2 == 0) goto L_0x001c;
    L_0x0011:
        r2 = 0;
        r2 = r0.getString(r2);	 Catch:{ SQLiteException -> 0x0022 }
        if (r0 == 0) goto L_0x001b;
    L_0x0018:
        r0.close();
    L_0x001b:
        return r2;
    L_0x001c:
        if (r0 == 0) goto L_0x0021;
    L_0x001e:
        r0.close();
    L_0x0021:
        return r1;
    L_0x0022:
        r2 = move-exception;
        goto L_0x002b;
    L_0x0024:
        r0 = move-exception;
        r5 = r1;
        r1 = r0;
        r0 = r5;
        goto L_0x003f;
    L_0x0029:
        r2 = move-exception;
        r0 = r1;
    L_0x002b:
        r3 = r6.zzwF();	 Catch:{ all -> 0x003e }
        r3 = r3.zzyx();	 Catch:{ all -> 0x003e }
        r4 = "Database error getting next bundle app id";
        r3.zzj(r4, r2);	 Catch:{ all -> 0x003e }
        if (r0 == 0) goto L_0x003d;
    L_0x003a:
        r0.close();
    L_0x003d:
        return r1;
    L_0x003e:
        r1 = move-exception;
    L_0x003f:
        if (r0 == 0) goto L_0x0044;
    L_0x0041:
        r0.close();
    L_0x0044:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzyc():java.lang.String");
    }

    public final boolean zzyd() {
        return zzb("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzye() {
        zzjC();
        zzkD();
        if (zzyk()) {
            long j = zzwG().zzbrn.get();
            long elapsedRealtime = zzkq().elapsedRealtime();
            if (Math.abs(elapsedRealtime - j) > zzcem.zzxH()) {
                zzwG().zzbrn.set(elapsedRealtime);
                zzjC();
                zzkD();
                if (zzyk()) {
                    int delete = getWritableDatabase().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzkq().currentTimeMillis()), String.valueOf(zzcem.zzxG())});
                    if (delete > 0) {
                        zzwF().zzyD().zzj("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                    }
                }
            }
        }
    }

    @WorkerThread
    public final long zzyf() {
        return zza("select max(bundle_end_timestamp) from queue", null, 0);
    }

    @WorkerThread
    public final long zzyg() {
        return zza("select max(timestamp) from raw_events", null, 0);
    }

    public final boolean zzyh() {
        return zzb("select count(1) > 0 from raw_events", null) != 0;
    }

    public final boolean zzyi() {
        return zzb("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x003e  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0044  */
    public final long zzyj() {
        /*
        r7 = this;
        r0 = -1;
        r2 = 0;
        r3 = r7.getWritableDatabase();	 Catch:{ SQLiteException -> 0x002e }
        r4 = "select rowid from raw_events order by rowid desc limit 1;";
        r3 = r3.rawQuery(r4, r2);	 Catch:{ SQLiteException -> 0x002e }
        r2 = r3.moveToFirst();	 Catch:{ SQLiteException -> 0x0027, all -> 0x0024 }
        if (r2 != 0) goto L_0x0019;
    L_0x0013:
        if (r3 == 0) goto L_0x0018;
    L_0x0015:
        r3.close();
    L_0x0018:
        return r0;
    L_0x0019:
        r2 = 0;
        r4 = r3.getLong(r2);	 Catch:{ SQLiteException -> 0x0027, all -> 0x0024 }
        if (r3 == 0) goto L_0x0023;
    L_0x0020:
        r3.close();
    L_0x0023:
        return r4;
    L_0x0024:
        r0 = move-exception;
        r2 = r3;
        goto L_0x0042;
    L_0x0027:
        r2 = move-exception;
        r6 = r3;
        r3 = r2;
        r2 = r6;
        goto L_0x002f;
    L_0x002c:
        r0 = move-exception;
        goto L_0x0042;
    L_0x002e:
        r3 = move-exception;
    L_0x002f:
        r4 = r7.zzwF();	 Catch:{ all -> 0x002c }
        r4 = r4.zzyx();	 Catch:{ all -> 0x002c }
        r5 = "Error querying raw events";
        r4.zzj(r5, r3);	 Catch:{ all -> 0x002c }
        if (r2 == 0) goto L_0x0041;
    L_0x003e:
        r2.close();
    L_0x0041:
        return r0;
    L_0x0042:
        if (r2 == 0) goto L_0x0047;
    L_0x0044:
        r2.close();
    L_0x0047:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcen.zzyj():long");
    }
}
