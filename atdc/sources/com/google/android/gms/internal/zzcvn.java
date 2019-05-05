package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.common.util.zzi;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

final class zzcvn implements zzcvb {
    private static final String zzagp = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT UNIQUE, '%s' TEXT, '%s' TEXT);", new Object[]{"gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time", "hit_method", "hit_unique_id", "hit_headers", "hit_body"});
    private static final String zzbIv = String.format("CREATE TABLE IF NOT EXISTS %s ('%s' TEXT UNIQUE);", new Object[]{"gtm_hit_unique_ids", "hit_unique_id"});
    private static final String zzbIw = String.format("CREATE TRIGGER IF NOT EXISTS %s DELETE ON %s FOR EACH ROW WHEN OLD.%s NOTNULL BEGIN     INSERT OR IGNORE INTO %s (%s) VALUES (OLD.%s); END;", new Object[]{"save_unique_on_delete", "gtm_hits", "hit_unique_id", "gtm_hit_unique_ids", "hit_unique_id", "hit_unique_id"});
    private static final String zzbIx = String.format("CREATE TRIGGER IF NOT EXISTS %s BEFORE INSERT ON %s FOR EACH ROW WHEN NEW.%s NOT NULL BEGIN     SELECT RAISE(ABORT, 'Duplicate unique ID.')     WHERE EXISTS (SELECT 1 FROM %s WHERE %s = NEW.%s); END;", new Object[]{"check_unique_on_insert", "gtm_hits", "hit_unique_id", "gtm_hit_unique_ids", "hit_unique_id", "hit_unique_id"});
    private final Context mContext;
    private final String zzbFx;
    private long zzbFy;
    private final int zzbFz;
    private final zzcvc zzbIA;
    private final zzcvp zzbIy;
    private volatile zzcus zzbIz;
    private zze zzvw;

    zzcvn(zzcvc zzcvc, Context context) {
        this(zzcvc, context, "gtm_urls.db", 2000);
    }

    private zzcvn(zzcvc zzcvc, Context context, String str, int i) {
        this.mContext = context.getApplicationContext();
        this.zzbFx = str;
        this.zzbIA = zzcvc;
        this.zzvw = zzi.zzrY();
        this.zzbIy = new zzcvp(this, this.mContext, this.zzbFx);
        this.zzbIz = new zzcwj(this.mContext, new zzcvo(this));
        this.zzbFy = 0;
        this.zzbFz = 2000;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x004c A:{Catch:{ all -> 0x0034 }} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0047 A:{Catch:{ all -> 0x0034 }} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0057  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x005d  */
    private final int zzBB() {
        /*
        r10 = this;
        r0 = "Error opening database for getNumStoredHits.";
        r1 = r10.zzfg(r0);
        r0 = 0;
        if (r1 != 0) goto L_0x000a;
    L_0x0009:
        return r0;
    L_0x000a:
        r9 = 0;
        r2 = "gtm_hits";
        r3 = 2;
        r3 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x0036 }
        r4 = "hit_id";
        r3[r0] = r4;	 Catch:{ SQLiteException -> 0x0036 }
        r4 = 1;
        r5 = "hit_first_send_time";
        r3[r4] = r5;	 Catch:{ SQLiteException -> 0x0036 }
        r4 = "hit_first_send_time=0";
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r1 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ SQLiteException -> 0x0036 }
        r2 = r1.getCount();	 Catch:{ SQLiteException -> 0x0031, all -> 0x002e }
        if (r1 == 0) goto L_0x002c;
    L_0x0029:
        r1.close();
    L_0x002c:
        r0 = r2;
        return r0;
    L_0x002e:
        r0 = move-exception;
        r9 = r1;
        goto L_0x005b;
    L_0x0031:
        r2 = move-exception;
        r9 = r1;
        goto L_0x0037;
    L_0x0034:
        r0 = move-exception;
        goto L_0x005b;
    L_0x0036:
        r2 = move-exception;
    L_0x0037:
        r1 = "Error getting num untried hits: ";
        r2 = r2.getMessage();	 Catch:{ all -> 0x0034 }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0034 }
        r3 = r2.length();	 Catch:{ all -> 0x0034 }
        if (r3 == 0) goto L_0x004c;
    L_0x0047:
        r1 = r1.concat(r2);	 Catch:{ all -> 0x0034 }
        goto L_0x0052;
    L_0x004c:
        r2 = new java.lang.String;	 Catch:{ all -> 0x0034 }
        r2.<init>(r1);	 Catch:{ all -> 0x0034 }
        r1 = r2;
    L_0x0052:
        com.google.android.gms.internal.zzcvk.zzaT(r1);	 Catch:{ all -> 0x0034 }
        if (r9 == 0) goto L_0x005a;
    L_0x0057:
        r9.close();
    L_0x005a:
        return r0;
    L_0x005b:
        if (r9 == 0) goto L_0x0060;
    L_0x005d:
        r9.close();
    L_0x0060:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcvn.zzBB():int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x007d A:{Catch:{ all -> 0x0065 }} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0078 A:{Catch:{ all -> 0x0065 }} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0087  */
    private final java.util.List<java.lang.String> zzbD(int r15) {
        /*
        r14 = this;
        r0 = new java.util.ArrayList;
        r0.<init>();
        if (r15 > 0) goto L_0x000d;
    L_0x0007:
        r15 = "Invalid maxHits specified. Skipping";
        com.google.android.gms.internal.zzcvk.zzaT(r15);
        return r0;
    L_0x000d:
        r1 = "Error opening database for peekHitIds.";
        r2 = r14.zzfg(r1);
        if (r2 != 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r1 = 0;
        r3 = "gtm_hits";
        r4 = 1;
        r5 = new java.lang.String[r4];	 Catch:{ SQLiteException -> 0x0067 }
        r6 = "hit_id";
        r11 = 0;
        r5[r11] = r6;	 Catch:{ SQLiteException -> 0x0067 }
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r10 = "%s ASC";
        r4 = new java.lang.Object[r4];	 Catch:{ SQLiteException -> 0x0067 }
        r12 = "hit_id";
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
        r2 = "Error in peekHits fetching hitIds: ";
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
        com.google.android.gms.internal.zzcvk.zzaT(r15);	 Catch:{ all -> 0x0065 }
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcvn.zzbD(int):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:107:0x0225  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x01a5 A:{Catch:{ all -> 0x01db }} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x01a0 A:{Catch:{ all -> 0x01db }} */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x01bc A:{Catch:{ all -> 0x01db }} */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x01d7  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x01a0 A:{Catch:{ all -> 0x01db }} */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x01a5 A:{Catch:{ all -> 0x01db }} */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x01bc A:{Catch:{ all -> 0x01db }} */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x01d7  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x01df  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x0213 A:{Catch:{ all -> 0x0221 }} */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x020e A:{Catch:{ all -> 0x0221 }} */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x021d  */
    /* JADX WARNING: Removed duplicated region for block: B:107:0x0225  */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x020e A:{Catch:{ all -> 0x0221 }} */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x0213 A:{Catch:{ all -> 0x0221 }} */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x021d  */
    /* JADX WARNING: Removed duplicated region for block: B:107:0x0225  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x01df  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x0213 A:{Catch:{ all -> 0x0221 }} */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x020e A:{Catch:{ all -> 0x0221 }} */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x021d  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x01e8 A:{ExcHandler: all (r0_12 'th' java.lang.Throwable), Splitter:B:5:0x0045} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:85:0x01e8, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:86:0x01e9, code skipped:
            r1 = r0;
            r13 = r12;
     */
    /* JADX WARNING: Missing block: B:87:0x01ef, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:88:0x01f0, code skipped:
            r16 = r12;
            r11 = r1;
     */
    private final java.util.List<com.google.android.gms.internal.zzcuw> zzbE(int r20) {
        /*
        r19 = this;
        r1 = new java.util.ArrayList;
        r1.<init>();
        r2 = "Error opening database for peekHits";
        r3 = r19;
        r2 = r3.zzfg(r2);
        if (r2 != 0) goto L_0x0010;
    L_0x000f:
        return r1;
    L_0x0010:
        r5 = "gtm_hits";
        r14 = 3;
        r6 = new java.lang.String[r14];	 Catch:{ SQLiteException -> 0x01fa, all -> 0x01f6 }
        r4 = "hit_id";
        r15 = 0;
        r6[r15] = r4;	 Catch:{ SQLiteException -> 0x01fa, all -> 0x01f6 }
        r4 = "hit_time";
        r12 = 1;
        r6[r12] = r4;	 Catch:{ SQLiteException -> 0x01fa, all -> 0x01f6 }
        r4 = "hit_first_send_time";
        r11 = 2;
        r6[r11] = r4;	 Catch:{ SQLiteException -> 0x01fa, all -> 0x01f6 }
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r10 = 0;
        r4 = "%s ASC";
        r11 = new java.lang.Object[r12];	 Catch:{ SQLiteException -> 0x01fa, all -> 0x01f6 }
        r17 = "hit_id";
        r11[r15] = r17;	 Catch:{ SQLiteException -> 0x01fa, all -> 0x01f6 }
        r11 = java.lang.String.format(r4, r11);	 Catch:{ SQLiteException -> 0x01fa, all -> 0x01f6 }
        r4 = 40;
        r17 = java.lang.Integer.toString(r4);	 Catch:{ SQLiteException -> 0x01fa, all -> 0x01f6 }
        r13 = 40;
        r4 = r2;
        r13 = 2;
        r14 = 1;
        r12 = r17;
        r12 = r4.query(r5, r6, r7, r8, r9, r10, r11, r12);	 Catch:{ SQLiteException -> 0x01fa, all -> 0x01f6 }
        r11 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x01ef, all -> 0x01e8 }
        r11.<init>();	 Catch:{ SQLiteException -> 0x01ef, all -> 0x01e8 }
        r1 = r12.moveToFirst();	 Catch:{ SQLiteException -> 0x01e3, all -> 0x01e8 }
        if (r1 == 0) goto L_0x0076;
    L_0x0050:
        r1 = new com.google.android.gms.internal.zzcuw;	 Catch:{ SQLiteException -> 0x0071, all -> 0x006c }
        r5 = r12.getLong(r15);	 Catch:{ SQLiteException -> 0x0071, all -> 0x006c }
        r7 = r12.getLong(r14);	 Catch:{ SQLiteException -> 0x0071, all -> 0x006c }
        r9 = r12.getLong(r13);	 Catch:{ SQLiteException -> 0x0071, all -> 0x006c }
        r4 = r1;
        r4.<init>(r5, r7, r9);	 Catch:{ SQLiteException -> 0x0071, all -> 0x006c }
        r11.add(r1);	 Catch:{ SQLiteException -> 0x0071, all -> 0x006c }
        r1 = r12.moveToNext();	 Catch:{ SQLiteException -> 0x0071, all -> 0x006c }
        if (r1 != 0) goto L_0x0050;
    L_0x006b:
        goto L_0x0076;
    L_0x006c:
        r0 = move-exception;
        r1 = r0;
        r13 = r12;
        goto L_0x0223;
    L_0x0071:
        r0 = move-exception;
        r1 = r0;
        r13 = r12;
        goto L_0x01fe;
    L_0x0076:
        if (r12 == 0) goto L_0x007b;
    L_0x0078:
        r12.close();
    L_0x007b:
        r5 = "gtm_hits";
        r1 = 5;
        r6 = new java.lang.String[r1];	 Catch:{ SQLiteException -> 0x018b, all -> 0x0186 }
        r1 = "hit_id";
        r6[r15] = r1;	 Catch:{ SQLiteException -> 0x018b, all -> 0x0186 }
        r1 = "hit_url";
        r6[r14] = r1;	 Catch:{ SQLiteException -> 0x018b, all -> 0x0186 }
        r1 = "hit_method";
        r6[r13] = r1;	 Catch:{ SQLiteException -> 0x018b, all -> 0x0186 }
        r1 = "hit_headers";
        r4 = 3;
        r6[r4] = r1;	 Catch:{ SQLiteException -> 0x018b, all -> 0x0186 }
        r1 = "hit_body";
        r10 = 4;
        r6[r10] = r1;	 Catch:{ SQLiteException -> 0x018b, all -> 0x0186 }
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r1 = 0;
        r4 = "%s ASC";
        r10 = new java.lang.Object[r14];	 Catch:{ SQLiteException -> 0x018b, all -> 0x0186 }
        r16 = "hit_id";
        r10[r15] = r16;	 Catch:{ SQLiteException -> 0x018b, all -> 0x0186 }
        r16 = java.lang.String.format(r4, r10);	 Catch:{ SQLiteException -> 0x018b, all -> 0x0186 }
        r4 = 40;
        r17 = java.lang.Integer.toString(r4);	 Catch:{ SQLiteException -> 0x018b, all -> 0x0186 }
        r4 = r2;
        r2 = 4;
        r10 = r1;
        r1 = r11;
        r11 = r16;
        r16 = r12;
        r12 = r17;
        r12 = r4.query(r5, r6, r7, r8, r9, r10, r11, r12);	 Catch:{ SQLiteException -> 0x0181, all -> 0x017c }
        r4 = r12.moveToFirst();	 Catch:{ SQLiteException -> 0x017a }
        if (r4 == 0) goto L_0x0174;
    L_0x00c0:
        r4 = 0;
    L_0x00c1:
        r5 = r12;
        r5 = (android.database.sqlite.SQLiteCursor) r5;	 Catch:{ SQLiteException -> 0x017a }
        r5 = r5.getWindow();	 Catch:{ SQLiteException -> 0x017a }
        r5 = r5.getNumRows();	 Catch:{ SQLiteException -> 0x017a }
        if (r5 <= 0) goto L_0x0150;
    L_0x00ce:
        r5 = r1.get(r4);	 Catch:{ SQLiteException -> 0x017a }
        r5 = (com.google.android.gms.internal.zzcuw) r5;	 Catch:{ SQLiteException -> 0x017a }
        r6 = r12.getString(r14);	 Catch:{ SQLiteException -> 0x017a }
        r5.zzfl(r6);	 Catch:{ SQLiteException -> 0x017a }
        r5 = r1.get(r4);	 Catch:{ SQLiteException -> 0x017a }
        r5 = (com.google.android.gms.internal.zzcuw) r5;	 Catch:{ SQLiteException -> 0x017a }
        r6 = r12.getString(r13);	 Catch:{ SQLiteException -> 0x017a }
        r5.zzfD(r6);	 Catch:{ SQLiteException -> 0x017a }
        r5 = r1.get(r4);	 Catch:{ SQLiteException -> 0x017a }
        r5 = (com.google.android.gms.internal.zzcuw) r5;	 Catch:{ SQLiteException -> 0x017a }
        r6 = r12.getString(r2);	 Catch:{ SQLiteException -> 0x017a }
        r5.zzfE(r6);	 Catch:{ SQLiteException -> 0x017a }
        r5 = 3;
        r6 = r12.getString(r5);	 Catch:{ JSONException -> 0x012c }
        if (r6 == 0) goto L_0x0121;
    L_0x00fc:
        r7 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x012c }
        r7.<init>(r6);	 Catch:{ JSONException -> 0x012c }
        r6 = r7.names();	 Catch:{ JSONException -> 0x012c }
        r8 = new java.util.HashMap;	 Catch:{ JSONException -> 0x012c }
        r8.<init>();	 Catch:{ JSONException -> 0x012c }
        r9 = 0;
    L_0x010b:
        r10 = r6.length();	 Catch:{ JSONException -> 0x012c }
        if (r9 >= r10) goto L_0x0122;
    L_0x0111:
        r10 = r6.getString(r9);	 Catch:{ JSONException -> 0x012c }
        r11 = r7.opt(r10);	 Catch:{ JSONException -> 0x012c }
        r11 = (java.lang.String) r11;	 Catch:{ JSONException -> 0x012c }
        r8.put(r10, r11);	 Catch:{ JSONException -> 0x012c }
        r9 = r9 + 1;
        goto L_0x010b;
    L_0x0121:
        r8 = 0;
    L_0x0122:
        r6 = r1.get(r4);	 Catch:{ SQLiteException -> 0x017a }
        r6 = (com.google.android.gms.internal.zzcuw) r6;	 Catch:{ SQLiteException -> 0x017a }
        r6.zzu(r8);	 Catch:{ SQLiteException -> 0x017a }
        goto L_0x016c;
    L_0x012c:
        r0 = move-exception;
        r6 = r0;
        r7 = "Failed to read headers for hitId %d: %s";
        r8 = new java.lang.Object[r13];	 Catch:{ SQLiteException -> 0x017a }
        r9 = r1.get(r4);	 Catch:{ SQLiteException -> 0x017a }
        r9 = (com.google.android.gms.internal.zzcuw) r9;	 Catch:{ SQLiteException -> 0x017a }
        r9 = r9.zzBm();	 Catch:{ SQLiteException -> 0x017a }
        r9 = java.lang.Long.valueOf(r9);	 Catch:{ SQLiteException -> 0x017a }
        r8[r15] = r9;	 Catch:{ SQLiteException -> 0x017a }
        r6 = r6.getMessage();	 Catch:{ SQLiteException -> 0x017a }
        r8[r14] = r6;	 Catch:{ SQLiteException -> 0x017a }
        r6 = java.lang.String.format(r7, r8);	 Catch:{ SQLiteException -> 0x017a }
        com.google.android.gms.internal.zzcvk.zzaT(r6);	 Catch:{ SQLiteException -> 0x017a }
        goto L_0x016e;
    L_0x0150:
        r5 = 3;
        r6 = "HitString for hitId %d too large. Hit will be deleted.";
        r7 = new java.lang.Object[r14];	 Catch:{ SQLiteException -> 0x017a }
        r8 = r1.get(r4);	 Catch:{ SQLiteException -> 0x017a }
        r8 = (com.google.android.gms.internal.zzcuw) r8;	 Catch:{ SQLiteException -> 0x017a }
        r8 = r8.zzBm();	 Catch:{ SQLiteException -> 0x017a }
        r8 = java.lang.Long.valueOf(r8);	 Catch:{ SQLiteException -> 0x017a }
        r7[r15] = r8;	 Catch:{ SQLiteException -> 0x017a }
        r6 = java.lang.String.format(r6, r7);	 Catch:{ SQLiteException -> 0x017a }
        com.google.android.gms.internal.zzcvk.zzaT(r6);	 Catch:{ SQLiteException -> 0x017a }
    L_0x016c:
        r4 = r4 + 1;
    L_0x016e:
        r6 = r12.moveToNext();	 Catch:{ SQLiteException -> 0x017a }
        if (r6 != 0) goto L_0x00c1;
    L_0x0174:
        if (r12 == 0) goto L_0x0179;
    L_0x0176:
        r12.close();
    L_0x0179:
        return r1;
    L_0x017a:
        r0 = move-exception;
        goto L_0x018f;
    L_0x017c:
        r0 = move-exception;
        r1 = r0;
        r12 = r16;
        goto L_0x01dd;
    L_0x0181:
        r0 = move-exception;
        r2 = r0;
        r12 = r16;
        goto L_0x0190;
    L_0x0186:
        r0 = move-exception;
        r16 = r12;
    L_0x0189:
        r1 = r0;
        goto L_0x01dd;
    L_0x018b:
        r0 = move-exception;
        r1 = r11;
        r16 = r12;
    L_0x018f:
        r2 = r0;
    L_0x0190:
        r4 = "Error in peekHits fetching hit url: ";
        r2 = r2.getMessage();	 Catch:{ all -> 0x01db }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x01db }
        r5 = r2.length();	 Catch:{ all -> 0x01db }
        if (r5 == 0) goto L_0x01a5;
    L_0x01a0:
        r2 = r4.concat(r2);	 Catch:{ all -> 0x01db }
        goto L_0x01aa;
    L_0x01a5:
        r2 = new java.lang.String;	 Catch:{ all -> 0x01db }
        r2.<init>(r4);	 Catch:{ all -> 0x01db }
    L_0x01aa:
        com.google.android.gms.internal.zzcvk.zzaT(r2);	 Catch:{ all -> 0x01db }
        r2 = new java.util.ArrayList;	 Catch:{ all -> 0x01db }
        r2.<init>();	 Catch:{ all -> 0x01db }
        r11 = r1;
        r11 = (java.util.ArrayList) r11;	 Catch:{ all -> 0x01db }
        r1 = r11.size();	 Catch:{ all -> 0x01db }
        r4 = 0;
    L_0x01ba:
        if (r15 >= r1) goto L_0x01d5;
    L_0x01bc:
        r5 = r11.get(r15);	 Catch:{ all -> 0x01db }
        r15 = r15 + 1;
        r5 = (com.google.android.gms.internal.zzcuw) r5;	 Catch:{ all -> 0x01db }
        r6 = r5.zzBo();	 Catch:{ all -> 0x01db }
        r6 = android.text.TextUtils.isEmpty(r6);	 Catch:{ all -> 0x01db }
        if (r6 == 0) goto L_0x01d1;
    L_0x01ce:
        if (r4 != 0) goto L_0x01d5;
    L_0x01d0:
        r4 = 1;
    L_0x01d1:
        r2.add(r5);	 Catch:{ all -> 0x01db }
        goto L_0x01ba;
    L_0x01d5:
        if (r12 == 0) goto L_0x01da;
    L_0x01d7:
        r12.close();
    L_0x01da:
        return r2;
    L_0x01db:
        r0 = move-exception;
        goto L_0x0189;
    L_0x01dd:
        if (r12 == 0) goto L_0x01e2;
    L_0x01df:
        r12.close();
    L_0x01e2:
        throw r1;
    L_0x01e3:
        r0 = move-exception;
        r1 = r11;
        r16 = r12;
        goto L_0x01f3;
    L_0x01e8:
        r0 = move-exception;
        r16 = r12;
        r1 = r0;
        r13 = r16;
        goto L_0x0223;
    L_0x01ef:
        r0 = move-exception;
        r16 = r12;
        r11 = r1;
    L_0x01f3:
        r13 = r16;
        goto L_0x01fd;
    L_0x01f6:
        r0 = move-exception;
        r1 = r0;
        r13 = 0;
        goto L_0x0223;
    L_0x01fa:
        r0 = move-exception;
        r11 = r1;
        r13 = 0;
    L_0x01fd:
        r1 = r0;
    L_0x01fe:
        r2 = "Error in peekHits fetching hitIds: ";
        r1 = r1.getMessage();	 Catch:{ all -> 0x0221 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x0221 }
        r4 = r1.length();	 Catch:{ all -> 0x0221 }
        if (r4 == 0) goto L_0x0213;
    L_0x020e:
        r1 = r2.concat(r1);	 Catch:{ all -> 0x0221 }
        goto L_0x0218;
    L_0x0213:
        r1 = new java.lang.String;	 Catch:{ all -> 0x0221 }
        r1.<init>(r2);	 Catch:{ all -> 0x0221 }
    L_0x0218:
        com.google.android.gms.internal.zzcvk.zzaT(r1);	 Catch:{ all -> 0x0221 }
        if (r13 == 0) goto L_0x0220;
    L_0x021d:
        r13.close();
    L_0x0220:
        return r11;
    L_0x0221:
        r0 = move-exception;
        r1 = r0;
    L_0x0223:
        if (r13 == 0) goto L_0x0228;
    L_0x0225:
        r13.close();
    L_0x0228:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcvn.zzbE(int):java.util.List");
    }

    private final void zzd(String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            SQLiteDatabase zzfg = zzfg("Error opening database for deleteHits.");
            if (zzfg != null) {
                boolean z = true;
                try {
                    zzfg.delete("gtm_hits", String.format("HIT_ID in (%s)", new Object[]{TextUtils.join(",", Collections.nCopies(strArr.length, "?"))}), strArr);
                    zzcvc zzcvc = this.zzbIA;
                    if (zzfF("gtm_hits") != 0) {
                        z = false;
                    }
                    zzcvc.zzar(z);
                } catch (SQLiteException e) {
                    String str = "Error deleting hits: ";
                    String valueOf = String.valueOf(e.getMessage());
                    zzcvk.zzaT(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0056 A:{Catch:{ all -> 0x003e }} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0051 A:{Catch:{ all -> 0x003e }} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0066  */
    private final int zzfF(java.lang.String r6) {
        /*
        r5 = this;
        r0 = "Error opening database for getNumRecords.";
        r0 = r5.zzfg(r0);
        r1 = 0;
        if (r0 != 0) goto L_0x000a;
    L_0x0009:
        return r1;
    L_0x000a:
        r2 = 0;
        r3 = "SELECT COUNT(*) from ";
        r6 = java.lang.String.valueOf(r6);	 Catch:{ SQLiteException -> 0x0040 }
        r4 = r6.length();	 Catch:{ SQLiteException -> 0x0040 }
        if (r4 == 0) goto L_0x001c;
    L_0x0017:
        r6 = r3.concat(r6);	 Catch:{ SQLiteException -> 0x0040 }
        goto L_0x0021;
    L_0x001c:
        r6 = new java.lang.String;	 Catch:{ SQLiteException -> 0x0040 }
        r6.<init>(r3);	 Catch:{ SQLiteException -> 0x0040 }
    L_0x0021:
        r6 = r0.rawQuery(r6, r2);	 Catch:{ SQLiteException -> 0x0040 }
        r0 = r6.moveToFirst();	 Catch:{ SQLiteException -> 0x003a, all -> 0x0036 }
        if (r0 == 0) goto L_0x0030;
    L_0x002b:
        r2 = r6.getLong(r1);	 Catch:{ SQLiteException -> 0x003a, all -> 0x0036 }
        r1 = (int) r2;
    L_0x0030:
        if (r6 == 0) goto L_0x0063;
    L_0x0032:
        r6.close();
        return r1;
    L_0x0036:
        r0 = move-exception;
        r2 = r6;
        r6 = r0;
        goto L_0x0064;
    L_0x003a:
        r0 = move-exception;
        r2 = r6;
        r6 = r0;
        goto L_0x0041;
    L_0x003e:
        r6 = move-exception;
        goto L_0x0064;
    L_0x0040:
        r6 = move-exception;
    L_0x0041:
        r0 = "Error getting numStoredRecords: ";
        r6 = r6.getMessage();	 Catch:{ all -> 0x003e }
        r6 = java.lang.String.valueOf(r6);	 Catch:{ all -> 0x003e }
        r3 = r6.length();	 Catch:{ all -> 0x003e }
        if (r3 == 0) goto L_0x0056;
    L_0x0051:
        r6 = r0.concat(r6);	 Catch:{ all -> 0x003e }
        goto L_0x005b;
    L_0x0056:
        r6 = new java.lang.String;	 Catch:{ all -> 0x003e }
        r6.<init>(r0);	 Catch:{ all -> 0x003e }
    L_0x005b:
        com.google.android.gms.internal.zzcvk.zzaT(r6);	 Catch:{ all -> 0x003e }
        if (r2 == 0) goto L_0x0063;
    L_0x0060:
        r2.close();
    L_0x0063:
        return r1;
    L_0x0064:
        if (r2 == 0) goto L_0x0069;
    L_0x0066:
        r2.close();
    L_0x0069:
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcvn.zzfF(java.lang.String):int");
    }

    private final SQLiteDatabase zzfg(String str) {
        try {
            return this.zzbIy.getWritableDatabase();
        } catch (SQLiteException e) {
            Context context = this.mContext;
            zzcvk.zzc(str, e);
            zzcvk.v(zzg.zza(context, e) ? "Crash reported successfully." : "Failed to report crash");
            return null;
        }
    }

    private final void zzh(long j, long j2) {
        SQLiteDatabase zzfg = zzfg("Error opening database for getNumStoredHits.");
        if (zzfg != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_first_send_time", Long.valueOf(j2));
            try {
                zzfg.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(j)});
            } catch (SQLiteException e) {
                String valueOf = String.valueOf(e.getMessage());
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 70);
                stringBuilder.append("Error setting HIT_FIRST_DISPATCH_TIME for hitId ");
                stringBuilder.append(j);
                stringBuilder.append(": ");
                stringBuilder.append(valueOf);
                zzcvk.zzaT(stringBuilder.toString());
                zzp(j);
            }
        }
    }

    private final void zzp(long j) {
        zzd(new String[]{String.valueOf(j)});
    }

    public final void dispatch() {
        zzcvk.v("GTM Dispatch running...");
        if (this.zzbIz.zzBf()) {
            List zzbE = zzbE(40);
            if (zzbE.isEmpty()) {
                zzcvk.v("...nothing to dispatch");
                this.zzbIA.zzar(true);
                return;
            }
            this.zzbIz.zzK(zzbE);
            if (zzBB() > 0) {
                zzcwd.zzCA().dispatch();
            }
        }
    }

    public final void zza(long j, String str, @Nullable String str2, @Nullable String str3, @Nullable Map<String, String> map, @Nullable String str4) {
        SQLiteDatabase zzfg;
        int delete;
        String str5;
        String str6 = str;
        Map<String, String> map2 = map;
        long currentTimeMillis = this.zzvw.currentTimeMillis();
        if (currentTimeMillis > this.zzbFy + 86400000) {
            this.zzbFy = currentTimeMillis;
            zzfg = zzfg("Error opening database for deleteStaleHits.");
            if (zzfg != null) {
                long currentTimeMillis2 = this.zzvw.currentTimeMillis() - 2592000000L;
                delete = zzfg.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(currentTimeMillis2)});
                StringBuilder stringBuilder = new StringBuilder(31);
                stringBuilder.append("Removed ");
                stringBuilder.append(delete);
                stringBuilder.append(" stale hits.");
                zzcvk.v(stringBuilder.toString());
                this.zzbIA.zzar(zzfF("gtm_hits") == 0);
            }
        }
        delete = (zzfF("gtm_hits") - this.zzbFz) + 1;
        if (delete > 0) {
            List zzbD = zzbD(delete);
            int size = zzbD.size();
            StringBuilder stringBuilder2 = new StringBuilder(51);
            stringBuilder2.append("Store full, deleting ");
            stringBuilder2.append(size);
            stringBuilder2.append(" hits to make room.");
            zzcvk.v(stringBuilder2.toString());
            zzd((String[]) zzbD.toArray(new String[0]));
        }
        zzfg = zzfg("Error opening database for putHit");
        if (zzfg != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_time", Long.valueOf(j));
            contentValues.put("hit_url", str6);
            contentValues.put("hit_first_send_time", Integer.valueOf(0));
            contentValues.put("hit_method", str2 == null ? "GET" : str2);
            contentValues.put("hit_unique_id", str3);
            contentValues.put("hit_headers", map2 == null ? null : new JSONObject(map2).toString());
            contentValues.put("hit_body", str4);
            try {
                zzfg.insertOrThrow("gtm_hits", null, contentValues);
                StringBuilder stringBuilder3 = new StringBuilder(String.valueOf(str).length() + 19);
                stringBuilder3.append("Hit stored (url = ");
                stringBuilder3.append(str6);
                stringBuilder3.append(")");
                zzcvk.v(stringBuilder3.toString());
                this.zzbIA.zzar(false);
            } catch (SQLiteConstraintException unused) {
                str5 = "Hit has already been sent: ";
                str6 = String.valueOf(str);
                zzcvk.v(str6.length() != 0 ? str5.concat(str6) : new String(str5));
            } catch (SQLiteException e) {
                str5 = "Error storing hit: ";
                str6 = String.valueOf(e.getMessage());
                zzcvk.zzaT(str6.length() != 0 ? str5.concat(str6) : new String(str5));
            }
        }
        if (zzcvs.zzCw().isPreview()) {
            zzcvk.v("Sending hits immediately under preview.");
            dispatch();
        }
    }
}
