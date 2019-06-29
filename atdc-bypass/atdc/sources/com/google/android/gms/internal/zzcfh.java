package com.google.android.gms.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.util.zze;

public final class zzcfh extends zzchj {
    private final zzcfi zzbqF = new zzcfi(this, super.getContext(), zzcem.zzxD());
    private boolean zzbqG;

    zzcfh(zzcgl zzcgl) {
        super(zzcgl);
    }

    @WorkerThread
    private final SQLiteDatabase getWritableDatabase() {
        if (this.zzbqG) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zzbqF.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzbqG = true;
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:76:0x013e  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0146 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0143  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0146 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0120  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x0156  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x0156  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00f3 A:{Catch:{ all -> 0x0124 }} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0120  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0146 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x013e  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0143  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0146 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00f3 A:{Catch:{ all -> 0x0124 }} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0146 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0120  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x0156  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x0156  */
    @android.support.annotation.WorkerThread
    @android.annotation.TargetApi(11)
    private final boolean zza(int r20, byte[] r21) {
        /*
        r19 = this;
        r1 = r19;
        super.zzwp();
        super.zzjC();
        r2 = r1.zzbqG;
        r3 = 0;
        if (r2 == 0) goto L_0x000e;
    L_0x000d:
        return r3;
    L_0x000e:
        r2 = new android.content.ContentValues;
        r2.<init>();
        r4 = "type";
        r5 = java.lang.Integer.valueOf(r20);
        r2.put(r4, r5);
        r4 = "entry";
        r5 = r21;
        r2.put(r4, r5);
        com.google.android.gms.internal.zzcem.zzxN();
        r4 = 5;
        r5 = 0;
        r6 = 5;
    L_0x0029:
        if (r5 >= r4) goto L_0x015a;
    L_0x002b:
        r7 = 0;
        r8 = 1;
        r9 = r19.getWritableDatabase();	 Catch:{ SQLiteFullException -> 0x0128, SQLiteException -> 0x00e9, all -> 0x00e2 }
        if (r9 != 0) goto L_0x0045;
    L_0x0033:
        r1.zzbqG = r8;	 Catch:{ SQLiteFullException -> 0x0041, SQLiteException -> 0x003b }
        if (r9 == 0) goto L_0x003a;
    L_0x0037:
        r9.close();
    L_0x003a:
        return r3;
    L_0x003b:
        r0 = move-exception;
        r3 = r0;
        r12 = r7;
    L_0x003e:
        r7 = r9;
        goto L_0x00ed;
    L_0x0041:
        r0 = move-exception;
    L_0x0042:
        r3 = r0;
        goto L_0x012c;
    L_0x0045:
        r9.beginTransaction();	 Catch:{ SQLiteFullException -> 0x00de, SQLiteException -> 0x00d8, all -> 0x00d2 }
        r10 = 0;
        r12 = "select count(1) from messages";
        r12 = r9.rawQuery(r12, r7);	 Catch:{ SQLiteFullException -> 0x00de, SQLiteException -> 0x00d8, all -> 0x00d2 }
        if (r12 == 0) goto L_0x0069;
    L_0x0052:
        r13 = r12.moveToFirst();	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        if (r13 == 0) goto L_0x0069;
    L_0x0058:
        r10 = r12.getLong(r3);	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        goto L_0x0069;
    L_0x005d:
        r0 = move-exception;
        r2 = r0;
        goto L_0x014f;
    L_0x0061:
        r0 = move-exception;
        r3 = r0;
        goto L_0x003e;
    L_0x0064:
        r0 = move-exception;
        r3 = r0;
        r7 = r12;
        goto L_0x012c;
    L_0x0069:
        r13 = 100000; // 0x186a0 float:1.4013E-40 double:4.94066E-319;
        r15 = (r10 > r13 ? 1 : (r10 == r13 ? 0 : -1));
        if (r15 < 0) goto L_0x00ba;
    L_0x0070:
        r15 = super.zzwF();	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r15 = r15.zzyx();	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r4 = "Data loss, local db full";
        r15.log(r4);	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r4 = 0;
        r16 = r13 - r10;
        r10 = 1;
        r13 = r16 + r10;
        r4 = "messages";
        r10 = "rowid in (select rowid from messages order by rowid asc limit ?)";
        r11 = new java.lang.String[r8];	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r15 = java.lang.Long.toString(r13);	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r11[r3] = r15;	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r4 = r9.delete(r4, r10, r11);	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r10 = (long) r4;	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r4 = (r10 > r13 ? 1 : (r10 == r13 ? 0 : -1));
        if (r4 == 0) goto L_0x00ba;
    L_0x0099:
        r4 = super.zzwF();	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r4 = r4.zzyx();	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r15 = "Different delete count than expected in local db. expected, received, difference";
        r3 = java.lang.Long.valueOf(r13);	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r8 = java.lang.Long.valueOf(r10);	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r16 = 0;
        r18 = r8;
        r7 = r13 - r10;
        r7 = java.lang.Long.valueOf(r7);	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r8 = r18;
        r4.zzd(r15, r3, r8, r7);	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
    L_0x00ba:
        r3 = "messages";
        r4 = 0;
        r9.insertOrThrow(r3, r4, r2);	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r9.setTransactionSuccessful();	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        r9.endTransaction();	 Catch:{ SQLiteFullException -> 0x0064, SQLiteException -> 0x0061, all -> 0x005d }
        if (r12 == 0) goto L_0x00cb;
    L_0x00c8:
        r12.close();
    L_0x00cb:
        if (r9 == 0) goto L_0x00d0;
    L_0x00cd:
        r9.close();
    L_0x00d0:
        r2 = 1;
        return r2;
    L_0x00d2:
        r0 = move-exception;
        r4 = r7;
        r2 = r0;
        r12 = r4;
        goto L_0x014f;
    L_0x00d8:
        r0 = move-exception;
        r4 = r7;
        r3 = r0;
        r12 = r4;
        goto L_0x003e;
    L_0x00de:
        r0 = move-exception;
        r4 = r7;
        goto L_0x0042;
    L_0x00e2:
        r0 = move-exception;
        r4 = r7;
        r2 = r0;
        r9 = r4;
        r12 = r9;
        goto L_0x014f;
    L_0x00e9:
        r0 = move-exception;
        r4 = r7;
        r3 = r0;
        r12 = r7;
    L_0x00ed:
        r4 = android.os.Build.VERSION.SDK_INT;	 Catch:{ all -> 0x0124 }
        r8 = 11;
        if (r4 < r8) goto L_0x00fe;
    L_0x00f3:
        r4 = r3 instanceof android.database.sqlite.SQLiteDatabaseLockedException;	 Catch:{ all -> 0x0124 }
        if (r4 == 0) goto L_0x00fe;
    L_0x00f7:
        r3 = (long) r6;	 Catch:{ all -> 0x0124 }
        android.os.SystemClock.sleep(r3);	 Catch:{ all -> 0x0124 }
        r6 = r6 + 20;
        goto L_0x0119;
    L_0x00fe:
        if (r7 == 0) goto L_0x0109;
    L_0x0100:
        r4 = r7.inTransaction();	 Catch:{ all -> 0x0124 }
        if (r4 == 0) goto L_0x0109;
    L_0x0106:
        r7.endTransaction();	 Catch:{ all -> 0x0124 }
    L_0x0109:
        r4 = super.zzwF();	 Catch:{ all -> 0x0124 }
        r4 = r4.zzyx();	 Catch:{ all -> 0x0124 }
        r8 = "Error writing entry to local database";
        r4.zzj(r8, r3);	 Catch:{ all -> 0x0124 }
        r3 = 1;
        r1.zzbqG = r3;	 Catch:{ all -> 0x0124 }
    L_0x0119:
        if (r12 == 0) goto L_0x011e;
    L_0x011b:
        r12.close();
    L_0x011e:
        if (r7 == 0) goto L_0x0146;
    L_0x0120:
        r7.close();
        goto L_0x0146;
    L_0x0124:
        r0 = move-exception;
        r2 = r0;
        r9 = r7;
        goto L_0x014f;
    L_0x0128:
        r0 = move-exception;
        r4 = r7;
        r3 = r0;
        r9 = r7;
    L_0x012c:
        r4 = super.zzwF();	 Catch:{ all -> 0x014c }
        r4 = r4.zzyx();	 Catch:{ all -> 0x014c }
        r8 = "Error writing entry to local database";
        r4.zzj(r8, r3);	 Catch:{ all -> 0x014c }
        r3 = 1;
        r1.zzbqG = r3;	 Catch:{ all -> 0x014c }
        if (r7 == 0) goto L_0x0141;
    L_0x013e:
        r7.close();
    L_0x0141:
        if (r9 == 0) goto L_0x0146;
    L_0x0143:
        r9.close();
    L_0x0146:
        r5 = r5 + 1;
        r3 = 0;
        r4 = 5;
        goto L_0x0029;
    L_0x014c:
        r0 = move-exception;
        r2 = r0;
        r12 = r7;
    L_0x014f:
        if (r12 == 0) goto L_0x0154;
    L_0x0151:
        r12.close();
    L_0x0154:
        if (r9 == 0) goto L_0x0159;
    L_0x0156:
        r9.close();
    L_0x0159:
        throw r2;
    L_0x015a:
        r2 = super.zzwF();
        r2 = r2.zzyz();
        r3 = "Failed to write entry to local database";
        r2.log(r3);
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcfh.zza(int, byte[]):boolean");
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final boolean zza(zzcez zzcez) {
        Parcel obtain = Parcel.obtain();
        zzcez.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return zza(0, marshall);
        }
        super.zzwF().zzyz().log("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean zza(zzcji zzcji) {
        Parcel obtain = Parcel.obtain();
        zzcji.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return zza(1, marshall);
        }
        super.zzwF().zzyz().log("User property too long for local database. Sending directly to service");
        return false;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:60:0x00e2 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:46:0x00b1 */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x01f8  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x01fd  */
    /* JADX WARNING: Missing exception handler attribute for start block: B:76:0x0116 */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x01c9  */
    /* JADX WARNING: Removed duplicated region for block: B:155:0x01ed A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x01f8  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x01fd  */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x01e7  */
    /* JADX WARNING: Removed duplicated region for block: B:157:0x01ed A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x01a2 A:{Catch:{ all -> 0x01f3 }} */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x01c9  */
    /* JADX WARNING: Removed duplicated region for block: B:155:0x01ed A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x01f8  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x01fd  */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x01a2 A:{Catch:{ all -> 0x01f3 }} */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x01c9  */
    /* JADX WARNING: Removed duplicated region for block: B:155:0x01ed A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x01f8  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x01fd  */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x01e7  */
    /* JADX WARNING: Removed duplicated region for block: B:157:0x01ed A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x01a2 A:{Catch:{ all -> 0x01f3 }} */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x01c9  */
    /* JADX WARNING: Removed duplicated region for block: B:155:0x01ed A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x01f8  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x01fd  */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:46|47|48|49|161) */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:60|61|62|63) */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:76|77|78|79) */
    /* JADX WARNING: Missing block: B:47:?, code skipped:
            super.zzwF().zzyx().log("Failed to load event from local database");
     */
    /* JADX WARNING: Missing block: B:49:?, code skipped:
            r12.recycle();
     */
    /* JADX WARNING: Missing block: B:61:?, code skipped:
            super.zzwF().zzyx().log("Failed to load user property from local database");
     */
    /* JADX WARNING: Missing block: B:63:?, code skipped:
            r12.recycle();
            r13 = null;
     */
    /* JADX WARNING: Missing block: B:77:?, code skipped:
            super.zzwF().zzyx().log("Failed to load user property from local database");
     */
    /* JADX WARNING: Missing block: B:79:?, code skipped:
            r12.recycle();
            r13 = null;
     */
    @android.annotation.TargetApi(11)
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.zza> zzbp(int r22) {
        /*
        r21 = this;
        r1 = r21;
        super.zzjC();
        super.zzwp();
        r2 = r1.zzbqG;
        r3 = 0;
        if (r2 == 0) goto L_0x000e;
    L_0x000d:
        return r3;
    L_0x000e:
        r2 = new java.util.ArrayList;
        r2.<init>();
        r4 = super.getContext();
        r5 = com.google.android.gms.internal.zzcem.zzxD();
        r4 = r4.getDatabasePath(r5);
        r4 = r4.exists();
        if (r4 != 0) goto L_0x0026;
    L_0x0025:
        return r2;
    L_0x0026:
        r4 = 5;
        r5 = 0;
        r6 = 0;
        r7 = 5;
    L_0x002a:
        if (r6 >= r4) goto L_0x0201;
    L_0x002c:
        r8 = 1;
        r15 = r21.getWritableDatabase();	 Catch:{ SQLiteFullException -> 0x01d2, SQLiteException -> 0x0198, all -> 0x0193 }
        if (r15 != 0) goto L_0x004a;
    L_0x0033:
        r1.zzbqG = r8;	 Catch:{ SQLiteFullException -> 0x0045, SQLiteException -> 0x0040, all -> 0x003b }
        if (r15 == 0) goto L_0x003a;
    L_0x0037:
        r15.close();
    L_0x003a:
        return r3;
    L_0x003b:
        r0 = move-exception;
        r2 = r0;
        r9 = r3;
        goto L_0x01f5;
    L_0x0040:
        r0 = move-exception;
        r9 = r3;
    L_0x0042:
        r3 = r0;
        goto L_0x019c;
    L_0x0045:
        r0 = move-exception;
        r9 = r3;
    L_0x0047:
        r3 = r0;
        goto L_0x01d6;
    L_0x004a:
        r15.beginTransaction();	 Catch:{ SQLiteFullException -> 0x018e, SQLiteException -> 0x0189, all -> 0x0185 }
        r10 = "messages";
        r9 = 3;
        r11 = new java.lang.String[r9];	 Catch:{ SQLiteFullException -> 0x018e, SQLiteException -> 0x0189, all -> 0x0185 }
        r9 = "rowid";
        r11[r5] = r9;	 Catch:{ SQLiteFullException -> 0x018e, SQLiteException -> 0x0189, all -> 0x0185 }
        r9 = "type";
        r11[r8] = r9;	 Catch:{ SQLiteFullException -> 0x018e, SQLiteException -> 0x0189, all -> 0x0185 }
        r9 = "entry";
        r14 = 2;
        r11[r14] = r9;	 Catch:{ SQLiteFullException -> 0x018e, SQLiteException -> 0x0189, all -> 0x0185 }
        r12 = 0;
        r13 = 0;
        r16 = 0;
        r17 = 0;
        r18 = "rowid asc";
        r9 = 100;
        r19 = java.lang.Integer.toString(r9);	 Catch:{ SQLiteFullException -> 0x018e, SQLiteException -> 0x0189, all -> 0x0185 }
        r9 = r15;
        r4 = 2;
        r14 = r16;
        r3 = r15;
        r15 = r17;
        r16 = r18;
        r17 = r19;
        r9 = r9.query(r10, r11, r12, r13, r14, r15, r16, r17);	 Catch:{ SQLiteFullException -> 0x0182, SQLiteException -> 0x017f, all -> 0x017d }
        r10 = -1;
    L_0x007e:
        r12 = r9.moveToNext();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        if (r12 == 0) goto L_0x013d;
    L_0x0084:
        r10 = r9.getLong(r5);	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r12 = r9.getInt(r8);	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r13 = r9.getBlob(r4);	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        if (r12 != 0) goto L_0x00c6;
    L_0x0092:
        r12 = android.os.Parcel.obtain();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r14 = r13.length;	 Catch:{ zzc -> 0x00b1 }
        r12.unmarshall(r13, r5, r14);	 Catch:{ zzc -> 0x00b1 }
        r12.setDataPosition(r5);	 Catch:{ zzc -> 0x00b1 }
        r13 = com.google.android.gms.internal.zzcez.CREATOR;	 Catch:{ zzc -> 0x00b1 }
        r13 = r13.createFromParcel(r12);	 Catch:{ zzc -> 0x00b1 }
        r13 = (com.google.android.gms.internal.zzcez) r13;	 Catch:{ zzc -> 0x00b1 }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        if (r13 == 0) goto L_0x007e;
    L_0x00aa:
        r2.add(r13);	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        goto L_0x007e;
    L_0x00ae:
        r0 = move-exception;
        r4 = r0;
        goto L_0x00c2;
    L_0x00b1:
        r13 = super.zzwF();	 Catch:{ all -> 0x00ae }
        r13 = r13.zzyx();	 Catch:{ all -> 0x00ae }
        r14 = "Failed to load event from local database";
        r13.log(r14);	 Catch:{ all -> 0x00ae }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        goto L_0x007e;
    L_0x00c2:
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        throw r4;	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
    L_0x00c6:
        if (r12 != r8) goto L_0x00fa;
    L_0x00c8:
        r12 = android.os.Parcel.obtain();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r14 = r13.length;	 Catch:{ zzc -> 0x00e2 }
        r12.unmarshall(r13, r5, r14);	 Catch:{ zzc -> 0x00e2 }
        r12.setDataPosition(r5);	 Catch:{ zzc -> 0x00e2 }
        r13 = com.google.android.gms.internal.zzcji.CREATOR;	 Catch:{ zzc -> 0x00e2 }
        r13 = r13.createFromParcel(r12);	 Catch:{ zzc -> 0x00e2 }
        r13 = (com.google.android.gms.internal.zzcji) r13;	 Catch:{ zzc -> 0x00e2 }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        goto L_0x00f3;
    L_0x00df:
        r0 = move-exception;
        r4 = r0;
        goto L_0x00f6;
    L_0x00e2:
        r13 = super.zzwF();	 Catch:{ all -> 0x00df }
        r13 = r13.zzyx();	 Catch:{ all -> 0x00df }
        r14 = "Failed to load user property from local database";
        r13.log(r14);	 Catch:{ all -> 0x00df }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r13 = 0;
    L_0x00f3:
        if (r13 == 0) goto L_0x007e;
    L_0x00f5:
        goto L_0x00aa;
    L_0x00f6:
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        throw r4;	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
    L_0x00fa:
        if (r12 != r4) goto L_0x012e;
    L_0x00fc:
        r12 = android.os.Parcel.obtain();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r14 = r13.length;	 Catch:{ zzc -> 0x0116 }
        r12.unmarshall(r13, r5, r14);	 Catch:{ zzc -> 0x0116 }
        r12.setDataPosition(r5);	 Catch:{ zzc -> 0x0116 }
        r13 = com.google.android.gms.internal.zzcek.CREATOR;	 Catch:{ zzc -> 0x0116 }
        r13 = r13.createFromParcel(r12);	 Catch:{ zzc -> 0x0116 }
        r13 = (com.google.android.gms.internal.zzcek) r13;	 Catch:{ zzc -> 0x0116 }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        goto L_0x0127;
    L_0x0113:
        r0 = move-exception;
        r4 = r0;
        goto L_0x012a;
    L_0x0116:
        r13 = super.zzwF();	 Catch:{ all -> 0x0113 }
        r13 = r13.zzyx();	 Catch:{ all -> 0x0113 }
        r14 = "Failed to load user property from local database";
        r13.log(r14);	 Catch:{ all -> 0x0113 }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r13 = 0;
    L_0x0127:
        if (r13 == 0) goto L_0x007e;
    L_0x0129:
        goto L_0x00aa;
    L_0x012a:
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        throw r4;	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
    L_0x012e:
        r12 = super.zzwF();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r12 = r12.zzyx();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r13 = "Unknown record type in local database";
        r12.log(r13);	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        goto L_0x007e;
    L_0x013d:
        r4 = "messages";
        r12 = "rowid <= ?";
        r13 = new java.lang.String[r8];	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r10 = java.lang.Long.toString(r10);	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r13[r5] = r10;	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r4 = r3.delete(r4, r12, r13);	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r10 = r2.size();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        if (r4 >= r10) goto L_0x0160;
    L_0x0153:
        r4 = super.zzwF();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r4 = r4.zzyx();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r10 = "Fewer entries removed from local database than expected";
        r4.log(r10);	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
    L_0x0160:
        r3.setTransactionSuccessful();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        r3.endTransaction();	 Catch:{ SQLiteFullException -> 0x0179, SQLiteException -> 0x0175, all -> 0x0171 }
        if (r9 == 0) goto L_0x016b;
    L_0x0168:
        r9.close();
    L_0x016b:
        if (r3 == 0) goto L_0x0170;
    L_0x016d:
        r3.close();
    L_0x0170:
        return r2;
    L_0x0171:
        r0 = move-exception;
        r2 = r0;
        goto L_0x01f6;
    L_0x0175:
        r0 = move-exception;
        r15 = r3;
        goto L_0x0042;
    L_0x0179:
        r0 = move-exception;
        r15 = r3;
        goto L_0x0047;
    L_0x017d:
        r0 = move-exception;
        goto L_0x0187;
    L_0x017f:
        r0 = move-exception;
        r15 = r3;
        goto L_0x018b;
    L_0x0182:
        r0 = move-exception;
        r15 = r3;
        goto L_0x0190;
    L_0x0185:
        r0 = move-exception;
        r3 = r15;
    L_0x0187:
        r2 = r0;
        goto L_0x0196;
    L_0x0189:
        r0 = move-exception;
        r3 = r15;
    L_0x018b:
        r9 = 0;
        goto L_0x0042;
    L_0x018e:
        r0 = move-exception;
        r3 = r15;
    L_0x0190:
        r9 = 0;
        goto L_0x0047;
    L_0x0193:
        r0 = move-exception;
        r2 = r0;
        r3 = 0;
    L_0x0196:
        r9 = 0;
        goto L_0x01f6;
    L_0x0198:
        r0 = move-exception;
        r3 = r0;
        r9 = 0;
        r15 = 0;
    L_0x019c:
        r4 = android.os.Build.VERSION.SDK_INT;	 Catch:{ all -> 0x01f3 }
        r10 = 11;
        if (r4 < r10) goto L_0x01ad;
    L_0x01a2:
        r4 = r3 instanceof android.database.sqlite.SQLiteDatabaseLockedException;	 Catch:{ all -> 0x01f3 }
        if (r4 == 0) goto L_0x01ad;
    L_0x01a6:
        r3 = (long) r7;	 Catch:{ all -> 0x01f3 }
        android.os.SystemClock.sleep(r3);	 Catch:{ all -> 0x01f3 }
        r7 = r7 + 20;
        goto L_0x01c7;
    L_0x01ad:
        if (r15 == 0) goto L_0x01b8;
    L_0x01af:
        r4 = r15.inTransaction();	 Catch:{ all -> 0x01f3 }
        if (r4 == 0) goto L_0x01b8;
    L_0x01b5:
        r15.endTransaction();	 Catch:{ all -> 0x01f3 }
    L_0x01b8:
        r4 = super.zzwF();	 Catch:{ all -> 0x01f3 }
        r4 = r4.zzyx();	 Catch:{ all -> 0x01f3 }
        r10 = "Error reading entries from local database";
        r4.zzj(r10, r3);	 Catch:{ all -> 0x01f3 }
        r1.zzbqG = r8;	 Catch:{ all -> 0x01f3 }
    L_0x01c7:
        if (r9 == 0) goto L_0x01cc;
    L_0x01c9:
        r9.close();
    L_0x01cc:
        if (r15 == 0) goto L_0x01ed;
    L_0x01ce:
        r15.close();
        goto L_0x01ed;
    L_0x01d2:
        r0 = move-exception;
        r3 = r0;
        r9 = 0;
        r15 = 0;
    L_0x01d6:
        r4 = super.zzwF();	 Catch:{ all -> 0x01f3 }
        r4 = r4.zzyx();	 Catch:{ all -> 0x01f3 }
        r10 = "Error reading entries from local database";
        r4.zzj(r10, r3);	 Catch:{ all -> 0x01f3 }
        r1.zzbqG = r8;	 Catch:{ all -> 0x01f3 }
        if (r9 == 0) goto L_0x01ea;
    L_0x01e7:
        r9.close();
    L_0x01ea:
        if (r15 == 0) goto L_0x01ed;
    L_0x01ec:
        goto L_0x01ce;
    L_0x01ed:
        r6 = r6 + 1;
        r3 = 0;
        r4 = 5;
        goto L_0x002a;
    L_0x01f3:
        r0 = move-exception;
        r2 = r0;
    L_0x01f5:
        r3 = r15;
    L_0x01f6:
        if (r9 == 0) goto L_0x01fb;
    L_0x01f8:
        r9.close();
    L_0x01fb:
        if (r3 == 0) goto L_0x0200;
    L_0x01fd:
        r3.close();
    L_0x0200:
        throw r2;
    L_0x0201:
        r2 = super.zzwF();
        r2 = r2.zzyz();
        r3 = "Failed to read events from database in reasonable time";
        r2.log(r3);
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcfh.zzbp(int):java.util.List");
    }

    public final boolean zzc(zzcek zzcek) {
        super.zzwB();
        byte[] zza = zzcjl.zza((Parcelable) zzcek);
        if (zza.length <= 131072) {
            return zza(2, zza);
        }
        super.zzwF().zzyz().log("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final /* bridge */ /* synthetic */ void zzjC() {
        super.zzjC();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
    }

    public final /* bridge */ /* synthetic */ zze zzkq() {
        return super.zzkq();
    }

    public final /* bridge */ /* synthetic */ zzcfj zzwA() {
        return super.zzwA();
    }

    public final /* bridge */ /* synthetic */ zzcjl zzwB() {
        return super.zzwB();
    }

    public final /* bridge */ /* synthetic */ zzcgf zzwC() {
        return super.zzwC();
    }

    public final /* bridge */ /* synthetic */ zzcja zzwD() {
        return super.zzwD();
    }

    public final /* bridge */ /* synthetic */ zzcgg zzwE() {
        return super.zzwE();
    }

    public final /* bridge */ /* synthetic */ zzcfl zzwF() {
        return super.zzwF();
    }

    public final /* bridge */ /* synthetic */ zzcfw zzwG() {
        return super.zzwG();
    }

    public final /* bridge */ /* synthetic */ zzcem zzwH() {
        return super.zzwH();
    }

    public final /* bridge */ /* synthetic */ void zzwo() {
        super.zzwo();
    }

    public final /* bridge */ /* synthetic */ void zzwp() {
        super.zzwp();
    }

    public final /* bridge */ /* synthetic */ void zzwq() {
        super.zzwq();
    }

    public final /* bridge */ /* synthetic */ zzcec zzwr() {
        return super.zzwr();
    }

    public final /* bridge */ /* synthetic */ zzcej zzws() {
        return super.zzws();
    }

    public final /* bridge */ /* synthetic */ zzchl zzwt() {
        return super.zzwt();
    }

    public final /* bridge */ /* synthetic */ zzcfg zzwu() {
        return super.zzwu();
    }

    public final /* bridge */ /* synthetic */ zzcet zzwv() {
        return super.zzwv();
    }

    public final /* bridge */ /* synthetic */ zzcid zzww() {
        return super.zzww();
    }

    public final /* bridge */ /* synthetic */ zzchz zzwx() {
        return super.zzwx();
    }

    public final /* bridge */ /* synthetic */ zzcfh zzwy() {
        return super.zzwy();
    }

    public final /* bridge */ /* synthetic */ zzcen zzwz() {
        return super.zzwz();
    }
}
