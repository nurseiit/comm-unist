package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

final class zzat implements zzc {
    private static final String zzbEn = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", new Object[]{"datalayer", "ID", "key", Param.VALUE, "expires"});
    private final Context mContext;
    private final Executor zzbEo;
    private zzax zzbEp;
    private int zzbEq;
    private zze zzvw;

    public zzat(Context context) {
        this(context, zzi.zzrY(), "google_tagmanager.db", 2000, Executors.newSingleThreadExecutor());
    }

    private zzat(Context context, zze zze, String str, int i, Executor executor) {
        this.mContext = context;
        this.zzvw = zze;
        this.zzbEq = 2000;
        this.zzbEo = executor;
        this.zzbEp = new zzax(this, this.mContext, str);
    }

    private final List<zza> zzBa() {
        try {
            zzah(this.zzvw.currentTimeMillis());
            List<zzay> zzBb = zzBb();
            List<zza> arrayList = new ArrayList();
            for (zzay zzay : zzBb) {
                arrayList.add(new zza(zzay.zzBN, zzt(zzay.zzbEw)));
            }
            return arrayList;
        } finally {
            zzBd();
        }
    }

    private final List<zzay> zzBb() {
        SQLiteDatabase zzfg = zzfg("Error opening database for loadSerialized.");
        List<zzay> arrayList = new ArrayList();
        if (zzfg == null) {
            return arrayList;
        }
        Cursor query = zzfg.query("datalayer", new String[]{"key", Param.VALUE}, null, null, null, null, "ID", null);
        while (query.moveToNext()) {
            try {
                arrayList.add(new zzay(query.getString(0), query.getBlob(1)));
            } finally {
                query.close();
            }
        }
        return arrayList;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0029 */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0030  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0036  */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:22:0x0030, code skipped:
            r2.close();
     */
    private final int zzBc() {
        /*
        r4 = this;
        r0 = "Error opening database for getNumStoredEntries.";
        r0 = r4.zzfg(r0);
        r1 = 0;
        if (r0 != 0) goto L_0x000a;
    L_0x0009:
        return r1;
    L_0x000a:
        r2 = 0;
        r3 = "SELECT COUNT(*) from datalayer";
        r0 = r0.rawQuery(r3, r2);	 Catch:{ SQLiteException -> 0x0029 }
        r2 = r0.moveToFirst();	 Catch:{ SQLiteException -> 0x0025, all -> 0x0022 }
        if (r2 == 0) goto L_0x001c;
    L_0x0017:
        r2 = r0.getLong(r1);	 Catch:{ SQLiteException -> 0x0025, all -> 0x0022 }
        r1 = (int) r2;
    L_0x001c:
        if (r0 == 0) goto L_0x0033;
    L_0x001e:
        r0.close();
        return r1;
    L_0x0022:
        r1 = move-exception;
        r2 = r0;
        goto L_0x0034;
    L_0x0025:
        r2 = r0;
        goto L_0x0029;
    L_0x0027:
        r1 = move-exception;
        goto L_0x0034;
    L_0x0029:
        r0 = "Error getting numStoredEntries";
        com.google.android.gms.tagmanager.zzdj.zzaT(r0);	 Catch:{ all -> 0x0027 }
        if (r2 == 0) goto L_0x0033;
    L_0x0030:
        r2.close();
    L_0x0033:
        return r1;
    L_0x0034:
        if (r2 == 0) goto L_0x0039;
    L_0x0036:
        r2.close();
    L_0x0039:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzBc():int");
    }

    private final void zzBd() {
        try {
            this.zzbEp.close();
        } catch (SQLiteException unused) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0029 A:{SYNTHETIC, Splitter:B:22:0x0029} */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x001f A:{SYNTHETIC, Splitter:B:13:0x001f} */
    private static byte[] zzF(java.lang.Object r3) {
        /*
        r0 = new java.io.ByteArrayOutputStream;
        r0.<init>();
        r1 = 0;
        r2 = new java.io.ObjectOutputStream;	 Catch:{ IOException -> 0x0026, all -> 0x001c }
        r2.<init>(r0);	 Catch:{ IOException -> 0x0026, all -> 0x001c }
        r2.writeObject(r3);	 Catch:{ IOException -> 0x0027, all -> 0x0019 }
        r3 = r0.toByteArray();	 Catch:{ IOException -> 0x0027, all -> 0x0019 }
        r2.close();	 Catch:{ IOException -> 0x0018 }
        r0.close();	 Catch:{ IOException -> 0x0018 }
    L_0x0018:
        return r3;
    L_0x0019:
        r3 = move-exception;
        r1 = r2;
        goto L_0x001d;
    L_0x001c:
        r3 = move-exception;
    L_0x001d:
        if (r1 == 0) goto L_0x0022;
    L_0x001f:
        r1.close();	 Catch:{ IOException -> 0x0025 }
    L_0x0022:
        r0.close();	 Catch:{ IOException -> 0x0025 }
    L_0x0025:
        throw r3;
    L_0x0026:
        r2 = r1;
    L_0x0027:
        if (r2 == 0) goto L_0x002c;
    L_0x0029:
        r2.close();	 Catch:{ IOException -> 0x002f }
    L_0x002c:
        r0.close();	 Catch:{ IOException -> 0x002f }
    L_0x002f:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzF(java.lang.Object):byte[]");
    }

    private final void zzah(long j) {
        SQLiteDatabase zzfg = zzfg("Error opening database for deleteOlderThan.");
        if (zzfg != null) {
            try {
                int delete = zzfg.delete("datalayer", "expires <= ?", new String[]{Long.toString(j)});
                StringBuilder stringBuilder = new StringBuilder(33);
                stringBuilder.append("Deleted ");
                stringBuilder.append(delete);
                stringBuilder.append(" expired items");
                zzdj.v(stringBuilder.toString());
            } catch (SQLiteException unused) {
                zzdj.zzaT("Error deleting old entries.");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x008a A:{Catch:{ all -> 0x009d }} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0085 A:{Catch:{ all -> 0x009d }} */
    /* JADX WARNING: Missing exception handler attribute for start block: B:14:0x0075 */
    /* JADX WARNING: Can't wrap try/catch for region: R(7:11|12|13|14|15|(1:17)(1:18)|19) */
    private final synchronized void zzb(java.util.List<com.google.android.gms.tagmanager.zzay> r11, long r12) {
        /*
        r10 = this;
        monitor-enter(r10);
        r0 = r10.zzvw;	 Catch:{ all -> 0x009d }
        r0 = r0.currentTimeMillis();	 Catch:{ all -> 0x009d }
        r10.zzah(r0);	 Catch:{ all -> 0x009d }
        r2 = r11.size();	 Catch:{ all -> 0x009d }
        r3 = r10.zzBc();	 Catch:{ all -> 0x009d }
        r4 = r10.zzbEq;	 Catch:{ all -> 0x009d }
        r3 = r3 - r4;
        r3 = r3 + r2;
        if (r3 <= 0) goto L_0x0092;
    L_0x0018:
        r2 = r10.zzby(r3);	 Catch:{ all -> 0x009d }
        r3 = r2.size();	 Catch:{ all -> 0x009d }
        r4 = 64;
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x009d }
        r5.<init>(r4);	 Catch:{ all -> 0x009d }
        r4 = "DataLayer store full, deleting ";
        r5.append(r4);	 Catch:{ all -> 0x009d }
        r5.append(r3);	 Catch:{ all -> 0x009d }
        r3 = " entries to make room.";
        r5.append(r3);	 Catch:{ all -> 0x009d }
        r3 = r5.toString();	 Catch:{ all -> 0x009d }
        com.google.android.gms.tagmanager.zzdj.zzaS(r3);	 Catch:{ all -> 0x009d }
        r3 = 0;
        r4 = new java.lang.String[r3];	 Catch:{ all -> 0x009d }
        r2 = r2.toArray(r4);	 Catch:{ all -> 0x009d }
        r2 = (java.lang.String[]) r2;	 Catch:{ all -> 0x009d }
        if (r2 == 0) goto L_0x0092;
    L_0x0046:
        r4 = r2.length;	 Catch:{ all -> 0x009d }
        if (r4 != 0) goto L_0x004a;
    L_0x0049:
        goto L_0x0092;
    L_0x004a:
        r4 = "Error opening database for deleteEntries.";
        r4 = r10.zzfg(r4);	 Catch:{ all -> 0x009d }
        if (r4 == 0) goto L_0x0092;
    L_0x0052:
        r5 = "%s in (%s)";
        r6 = 2;
        r6 = new java.lang.Object[r6];	 Catch:{ all -> 0x009d }
        r7 = "ID";
        r6[r3] = r7;	 Catch:{ all -> 0x009d }
        r3 = 1;
        r7 = ",";
        r8 = r2.length;	 Catch:{ all -> 0x009d }
        r9 = "?";
        r8 = java.util.Collections.nCopies(r8, r9);	 Catch:{ all -> 0x009d }
        r7 = android.text.TextUtils.join(r7, r8);	 Catch:{ all -> 0x009d }
        r6[r3] = r7;	 Catch:{ all -> 0x009d }
        r3 = java.lang.String.format(r5, r6);	 Catch:{ all -> 0x009d }
        r5 = "datalayer";
        r4.delete(r5, r3, r2);	 Catch:{ SQLiteException -> 0x0075 }
        goto L_0x0092;
    L_0x0075:
        r3 = "Error deleting entries ";
        r2 = java.util.Arrays.toString(r2);	 Catch:{ all -> 0x009d }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x009d }
        r4 = r2.length();	 Catch:{ all -> 0x009d }
        if (r4 == 0) goto L_0x008a;
    L_0x0085:
        r2 = r3.concat(r2);	 Catch:{ all -> 0x009d }
        goto L_0x008f;
    L_0x008a:
        r2 = new java.lang.String;	 Catch:{ all -> 0x009d }
        r2.<init>(r3);	 Catch:{ all -> 0x009d }
    L_0x008f:
        com.google.android.gms.tagmanager.zzdj.zzaT(r2);	 Catch:{ all -> 0x009d }
    L_0x0092:
        r2 = 0;
        r2 = r0 + r12;
        r10.zzc(r11, r2);	 Catch:{ all -> 0x009d }
        r10.zzBd();	 Catch:{ all -> 0x00a2 }
        monitor-exit(r10);
        return;
    L_0x009d:
        r11 = move-exception;
        r10.zzBd();	 Catch:{ all -> 0x00a2 }
        throw r11;	 Catch:{ all -> 0x00a2 }
    L_0x00a2:
        r11 = move-exception;
        monitor-exit(r10);
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzb(java.util.List, long):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x007d A:{Catch:{ all -> 0x0065 }} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0078 A:{Catch:{ all -> 0x0065 }} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0087  */
    private final java.util.List<java.lang.String> zzby(int r15) {
        /*
        r14 = this;
        r0 = new java.util.ArrayList;
        r0.<init>();
        if (r15 > 0) goto L_0x000d;
    L_0x0007:
        r15 = "Invalid maxEntries specified. Skipping.";
        com.google.android.gms.tagmanager.zzdj.zzaT(r15);
        return r0;
    L_0x000d:
        r1 = "Error opening database for peekEntryIds.";
        r2 = r14.zzfg(r1);
        if (r2 != 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r1 = 0;
        r3 = "datalayer";
        r4 = 1;
        r5 = new java.lang.String[r4];	 Catch:{ SQLiteException -> 0x0067 }
        r6 = "ID";
        r11 = 0;
        r5[r11] = r6;	 Catch:{ SQLiteException -> 0x0067 }
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r10 = "%s ASC";
        r4 = new java.lang.Object[r4];	 Catch:{ SQLiteException -> 0x0067 }
        r12 = "ID";
        r4[r11] = r12;	 Catch:{ SQLiteException -> 0x0067 }
        r10 = java.lang.String.format(r10, r4);	 Catch:{ SQLiteException -> 0x0067 }
        r15 = java.lang.Integer.toString(r15);	 Catch:{ SQLiteException -> 0x0067 }
        r4 = r5;
        r5 = r6;
        r6 = r7;
        r7 = r8;
        r8 = r9;
        r9 = r10;
        r10 = r15;
        r15 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10);	 Catch:{ SQLiteException -> 0x0067 }
        r1 = r15.moveToFirst();	 Catch:{ SQLiteException -> 0x0060, all -> 0x005d }
        if (r1 == 0) goto L_0x0057;
    L_0x0046:
        r1 = r15.getLong(r11);	 Catch:{ SQLiteException -> 0x0060, all -> 0x005d }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ SQLiteException -> 0x0060, all -> 0x005d }
        r0.add(r1);	 Catch:{ SQLiteException -> 0x0060, all -> 0x005d }
        r1 = r15.moveToNext();	 Catch:{ SQLiteException -> 0x0060, all -> 0x005d }
        if (r1 != 0) goto L_0x0046;
    L_0x0057:
        if (r15 == 0) goto L_0x008a;
    L_0x0059:
        r15.close();
        return r0;
    L_0x005d:
        r0 = move-exception;
        r1 = r15;
        goto L_0x008b;
    L_0x0060:
        r1 = move-exception;
        r13 = r1;
        r1 = r15;
        r15 = r13;
        goto L_0x0068;
    L_0x0065:
        r0 = move-exception;
        goto L_0x008b;
    L_0x0067:
        r15 = move-exception;
    L_0x0068:
        r2 = "Error in peekEntries fetching entryIds: ";
        r15 = r15.getMessage();	 Catch:{ all -> 0x0065 }
        r15 = java.lang.String.valueOf(r15);	 Catch:{ all -> 0x0065 }
        r3 = r15.length();	 Catch:{ all -> 0x0065 }
        if (r3 == 0) goto L_0x007d;
    L_0x0078:
        r15 = r2.concat(r15);	 Catch:{ all -> 0x0065 }
        goto L_0x0082;
    L_0x007d:
        r15 = new java.lang.String;	 Catch:{ all -> 0x0065 }
        r15.<init>(r2);	 Catch:{ all -> 0x0065 }
    L_0x0082:
        com.google.android.gms.tagmanager.zzdj.zzaT(r15);	 Catch:{ all -> 0x0065 }
        if (r1 == 0) goto L_0x008a;
    L_0x0087:
        r1.close();
    L_0x008a:
        return r0;
    L_0x008b:
        if (r1 == 0) goto L_0x0090;
    L_0x008d:
        r1.close();
    L_0x0090:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzby(int):java.util.List");
    }

    private final void zzc(List<zzay> list, long j) {
        SQLiteDatabase zzfg = zzfg("Error opening database for writeEntryToDatabase.");
        if (zzfg != null) {
            for (zzay zzay : list) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("expires", Long.valueOf(j));
                contentValues.put("key", zzay.zzBN);
                contentValues.put(Param.VALUE, zzay.zzbEw);
                zzfg.insert("datalayer", null, contentValues);
            }
        }
    }

    private final void zzff(String str) {
        SQLiteDatabase zzfg = zzfg("Error opening database for clearKeysWithPrefix.");
        if (zzfg != null) {
            StringBuilder stringBuilder;
            try {
                int delete = zzfg.delete("datalayer", "key = ? OR key LIKE ?", new String[]{str, String.valueOf(str).concat(".%")});
                stringBuilder = new StringBuilder(25);
                stringBuilder.append("Cleared ");
                stringBuilder.append(delete);
                stringBuilder.append(" items");
                zzdj.v(stringBuilder.toString());
            } catch (SQLiteException e) {
                String valueOf = String.valueOf(e);
                stringBuilder = new StringBuilder((String.valueOf(str).length() + 44) + String.valueOf(valueOf).length());
                stringBuilder.append("Error deleting entries with key prefix: ");
                stringBuilder.append(str);
                stringBuilder.append(" (");
                stringBuilder.append(valueOf);
                stringBuilder.append(").");
                zzdj.zzaT(stringBuilder.toString());
            } finally {
                zzBd();
            }
        }
    }

    private final SQLiteDatabase zzfg(String str) {
        try {
            return this.zzbEp.getWritableDatabase();
        } catch (SQLiteException unused) {
            zzdj.zzaT(str);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x0032 A:{SYNTHETIC, Splitter:B:31:0x0032} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0028 A:{SYNTHETIC, Splitter:B:22:0x0028} */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x001e A:{SYNTHETIC, Splitter:B:13:0x001e} */
    private static java.lang.Object zzt(byte[] r4) {
        /*
        r0 = new java.io.ByteArrayInputStream;
        r0.<init>(r4);
        r4 = 0;
        r1 = new java.io.ObjectInputStream;	 Catch:{ IOException -> 0x002f, ClassNotFoundException -> 0x0025, all -> 0x001b }
        r1.<init>(r0);	 Catch:{ IOException -> 0x002f, ClassNotFoundException -> 0x0025, all -> 0x001b }
        r2 = r1.readObject();	 Catch:{ IOException -> 0x0030, ClassNotFoundException -> 0x0026, all -> 0x0016 }
        r1.close();	 Catch:{ IOException -> 0x0015 }
        r0.close();	 Catch:{ IOException -> 0x0015 }
    L_0x0015:
        return r2;
    L_0x0016:
        r4 = move-exception;
        r3 = r1;
        r1 = r4;
        r4 = r3;
        goto L_0x001c;
    L_0x001b:
        r1 = move-exception;
    L_0x001c:
        if (r4 == 0) goto L_0x0021;
    L_0x001e:
        r4.close();	 Catch:{ IOException -> 0x0024 }
    L_0x0021:
        r0.close();	 Catch:{ IOException -> 0x0024 }
    L_0x0024:
        throw r1;
    L_0x0025:
        r1 = r4;
    L_0x0026:
        if (r1 == 0) goto L_0x002b;
    L_0x0028:
        r1.close();	 Catch:{ IOException -> 0x002e }
    L_0x002b:
        r0.close();	 Catch:{ IOException -> 0x002e }
    L_0x002e:
        return r4;
    L_0x002f:
        r1 = r4;
    L_0x0030:
        if (r1 == 0) goto L_0x0035;
    L_0x0032:
        r1.close();	 Catch:{ IOException -> 0x0038 }
    L_0x0035:
        r0.close();	 Catch:{ IOException -> 0x0038 }
    L_0x0038:
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzt(byte[]):java.lang.Object");
    }

    public final void zza(zzaq zzaq) {
        this.zzbEo.execute(new zzav(this, zzaq));
    }

    public final void zza(List<zza> list, long j) {
        ArrayList arrayList = new ArrayList();
        for (zza zza : list) {
            arrayList.add(new zzay(zza.zzBN, zzF(zza.mValue)));
        }
        this.zzbEo.execute(new zzau(this, arrayList, j));
    }

    public final void zzfe(String str) {
        this.zzbEo.execute(new zzaw(this, str));
    }
}
