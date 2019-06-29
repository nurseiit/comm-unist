package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;
import java.util.Collections;
import java.util.List;

final class zzec implements zzcc {
    private static final String zzagp = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", new Object[]{"gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time"});
    private final Context mContext;
    private final zzee zzbFu;
    private volatile zzbe zzbFv;
    private final zzcd zzbFw;
    private final String zzbFx;
    private long zzbFy;
    private final int zzbFz;
    private zze zzvw;

    zzec(zzcd zzcd, Context context) {
        this(zzcd, context, "gtm_urls.db", 2000);
    }

    private zzec(zzcd zzcd, Context context, String str, int i) {
        this.mContext = context.getApplicationContext();
        this.zzbFx = str;
        this.zzbFw = zzcd;
        this.zzvw = zzi.zzrY();
        this.zzbFu = new zzee(this, this.mContext, this.zzbFx);
        this.zzbFv = new zzfv(this.mContext, new zzed(this));
        this.zzbFy = 0;
        this.zzbFz = 2000;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0029 */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0030  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0036  */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:22:0x0030, code skipped:
            r2.close();
     */
    private final int zzBA() {
        /*
        r4 = this;
        r0 = "Error opening database for getNumStoredHits.";
        r0 = r4.zzfg(r0);
        r1 = 0;
        if (r0 != 0) goto L_0x000a;
    L_0x0009:
        return r1;
    L_0x000a:
        r2 = 0;
        r3 = "SELECT COUNT(*) from gtm_hits";
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
        r0 = "Error getting numStoredHits";
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzec.zzBA():int");
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0035 */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0042  */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:15|14|17|18|(0)|21) */
    /* JADX WARNING: Missing block: B:16:0x0033, code skipped:
            r0 = th;
     */
    /* JADX WARNING: Missing block: B:20:0x003c, code skipped:
            r9.close();
     */
    /* JADX WARNING: Missing block: B:23:0x0042, code skipped:
            r9.close();
     */
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
        r3 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x0035 }
        r4 = "hit_id";
        r3[r0] = r4;	 Catch:{ SQLiteException -> 0x0035 }
        r4 = 1;
        r5 = "hit_first_send_time";
        r3[r4] = r5;	 Catch:{ SQLiteException -> 0x0035 }
        r4 = "hit_first_send_time=0";
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r1 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ SQLiteException -> 0x0035 }
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
        goto L_0x0040;
    L_0x0031:
        r9 = r1;
        goto L_0x0035;
    L_0x0033:
        r0 = move-exception;
        goto L_0x0040;
    L_0x0035:
        r1 = "Error getting num untried hits";
        com.google.android.gms.tagmanager.zzdj.zzaT(r1);	 Catch:{ all -> 0x0033 }
        if (r9 == 0) goto L_0x003f;
    L_0x003c:
        r9.close();
    L_0x003f:
        return r0;
    L_0x0040:
        if (r9 == 0) goto L_0x0045;
    L_0x0042:
        r9.close();
    L_0x0045:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzec.zzBB():int");
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
        com.google.android.gms.tagmanager.zzdj.zzaT(r15);
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzec.zzbD(int):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:66:0x0156  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x011c A:{Catch:{ all -> 0x0152 }} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0117 A:{Catch:{ all -> 0x0152 }} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0133 A:{Catch:{ all -> 0x0152 }} */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x014e  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0156  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x018d A:{Catch:{ all -> 0x019b }} */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0188 A:{Catch:{ all -> 0x019b }} */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0197  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x019f  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0117 A:{Catch:{ all -> 0x0152 }} */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x011c A:{Catch:{ all -> 0x0152 }} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0133 A:{Catch:{ all -> 0x0152 }} */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x014e  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0188 A:{Catch:{ all -> 0x019b }} */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x018d A:{Catch:{ all -> 0x019b }} */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0197  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x019f  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x018d A:{Catch:{ all -> 0x019b }} */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0188 A:{Catch:{ all -> 0x019b }} */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0197  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0162 A:{ExcHandler: all (r0_11 'th' java.lang.Throwable), Splitter:B:5:0x0044} */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x019f  */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:70:0x0162, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:71:0x0163, code skipped:
            r1 = r0;
            r13 = r12;
     */
    /* JADX WARNING: Missing block: B:72:0x0169, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:73:0x016a, code skipped:
            r11 = r1;
            r13 = r12;
     */
    private final java.util.List<com.google.android.gms.tagmanager.zzbx> zzbE(int r19) {
        /*
        r18 = this;
        r1 = new java.util.ArrayList;
        r1.<init>();
        r2 = "Error opening database for peekHits";
        r3 = r18;
        r2 = r3.zzfg(r2);
        if (r2 != 0) goto L_0x0010;
    L_0x000f:
        return r1;
    L_0x0010:
        r5 = "gtm_hits";
        r4 = 3;
        r6 = new java.lang.String[r4];	 Catch:{ SQLiteException -> 0x0174, all -> 0x0170 }
        r4 = "hit_id";
        r14 = 0;
        r6[r14] = r4;	 Catch:{ SQLiteException -> 0x0174, all -> 0x0170 }
        r4 = "hit_time";
        r15 = 1;
        r6[r15] = r4;	 Catch:{ SQLiteException -> 0x0174, all -> 0x0170 }
        r4 = "hit_first_send_time";
        r12 = 2;
        r6[r12] = r4;	 Catch:{ SQLiteException -> 0x0174, all -> 0x0170 }
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r10 = 0;
        r4 = "%s ASC";
        r11 = new java.lang.Object[r15];	 Catch:{ SQLiteException -> 0x0174, all -> 0x0170 }
        r16 = "hit_id";
        r11[r14] = r16;	 Catch:{ SQLiteException -> 0x0174, all -> 0x0170 }
        r11 = java.lang.String.format(r4, r11);	 Catch:{ SQLiteException -> 0x0174, all -> 0x0170 }
        r4 = 40;
        r16 = java.lang.Integer.toString(r4);	 Catch:{ SQLiteException -> 0x0174, all -> 0x0170 }
        r13 = 40;
        r4 = r2;
        r13 = 2;
        r12 = r16;
        r12 = r4.query(r5, r6, r7, r8, r9, r10, r11, r12);	 Catch:{ SQLiteException -> 0x0174, all -> 0x0170 }
        r11 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x0169, all -> 0x0162 }
        r11.<init>();	 Catch:{ SQLiteException -> 0x0169, all -> 0x0162 }
        r1 = r12.moveToFirst();	 Catch:{ SQLiteException -> 0x015a, all -> 0x0162 }
        if (r1 == 0) goto L_0x0075;
    L_0x004f:
        r1 = new com.google.android.gms.tagmanager.zzbx;	 Catch:{ SQLiteException -> 0x0070, all -> 0x006b }
        r5 = r12.getLong(r14);	 Catch:{ SQLiteException -> 0x0070, all -> 0x006b }
        r7 = r12.getLong(r15);	 Catch:{ SQLiteException -> 0x0070, all -> 0x006b }
        r9 = r12.getLong(r13);	 Catch:{ SQLiteException -> 0x0070, all -> 0x006b }
        r4 = r1;
        r4.<init>(r5, r7, r9);	 Catch:{ SQLiteException -> 0x0070, all -> 0x006b }
        r11.add(r1);	 Catch:{ SQLiteException -> 0x0070, all -> 0x006b }
        r1 = r12.moveToNext();	 Catch:{ SQLiteException -> 0x0070, all -> 0x006b }
        if (r1 != 0) goto L_0x004f;
    L_0x006a:
        goto L_0x0075;
    L_0x006b:
        r0 = move-exception;
        r1 = r0;
        r13 = r12;
        goto L_0x019d;
    L_0x0070:
        r0 = move-exception;
        r1 = r0;
        r13 = r12;
        goto L_0x0178;
    L_0x0075:
        if (r12 == 0) goto L_0x007a;
    L_0x0077:
        r12.close();
    L_0x007a:
        r5 = "gtm_hits";
        r6 = new java.lang.String[r13];	 Catch:{ SQLiteException -> 0x0102, all -> 0x00fd }
        r1 = "hit_id";
        r6[r14] = r1;	 Catch:{ SQLiteException -> 0x0102, all -> 0x00fd }
        r1 = "hit_url";
        r6[r15] = r1;	 Catch:{ SQLiteException -> 0x0102, all -> 0x00fd }
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r10 = 0;
        r1 = "%s ASC";
        r4 = new java.lang.Object[r15];	 Catch:{ SQLiteException -> 0x0102, all -> 0x00fd }
        r13 = "hit_id";
        r4[r14] = r13;	 Catch:{ SQLiteException -> 0x0102, all -> 0x00fd }
        r1 = java.lang.String.format(r1, r4);	 Catch:{ SQLiteException -> 0x0102, all -> 0x00fd }
        r4 = 40;
        r13 = java.lang.Integer.toString(r4);	 Catch:{ SQLiteException -> 0x0102, all -> 0x00fd }
        r4 = r2;
        r2 = r11;
        r11 = r1;
        r16 = r12;
        r12 = r13;
        r12 = r4.query(r5, r6, r7, r8, r9, r10, r11, r12);	 Catch:{ SQLiteException -> 0x00f8, all -> 0x00f3 }
        r1 = r12.moveToFirst();	 Catch:{ SQLiteException -> 0x00f1 }
        if (r1 == 0) goto L_0x00eb;
    L_0x00ac:
        r1 = 0;
    L_0x00ad:
        r4 = r12;
        r4 = (android.database.sqlite.SQLiteCursor) r4;	 Catch:{ SQLiteException -> 0x00f1 }
        r4 = r4.getWindow();	 Catch:{ SQLiteException -> 0x00f1 }
        r4 = r4.getNumRows();	 Catch:{ SQLiteException -> 0x00f1 }
        if (r4 <= 0) goto L_0x00c8;
    L_0x00ba:
        r4 = r2.get(r1);	 Catch:{ SQLiteException -> 0x00f1 }
        r4 = (com.google.android.gms.tagmanager.zzbx) r4;	 Catch:{ SQLiteException -> 0x00f1 }
        r5 = r12.getString(r15);	 Catch:{ SQLiteException -> 0x00f1 }
        r4.zzfl(r5);	 Catch:{ SQLiteException -> 0x00f1 }
        goto L_0x00e3;
    L_0x00c8:
        r4 = "HitString for hitId %d too large.  Hit will be deleted.";
        r5 = new java.lang.Object[r15];	 Catch:{ SQLiteException -> 0x00f1 }
        r6 = r2.get(r1);	 Catch:{ SQLiteException -> 0x00f1 }
        r6 = (com.google.android.gms.tagmanager.zzbx) r6;	 Catch:{ SQLiteException -> 0x00f1 }
        r6 = r6.zzBm();	 Catch:{ SQLiteException -> 0x00f1 }
        r6 = java.lang.Long.valueOf(r6);	 Catch:{ SQLiteException -> 0x00f1 }
        r5[r14] = r6;	 Catch:{ SQLiteException -> 0x00f1 }
        r4 = java.lang.String.format(r4, r5);	 Catch:{ SQLiteException -> 0x00f1 }
        com.google.android.gms.tagmanager.zzdj.zzaT(r4);	 Catch:{ SQLiteException -> 0x00f1 }
    L_0x00e3:
        r1 = r1 + 1;
        r4 = r12.moveToNext();	 Catch:{ SQLiteException -> 0x00f1 }
        if (r4 != 0) goto L_0x00ad;
    L_0x00eb:
        if (r12 == 0) goto L_0x00f0;
    L_0x00ed:
        r12.close();
    L_0x00f0:
        return r2;
    L_0x00f1:
        r0 = move-exception;
        goto L_0x0106;
    L_0x00f3:
        r0 = move-exception;
        r1 = r0;
        r12 = r16;
        goto L_0x0154;
    L_0x00f8:
        r0 = move-exception;
        r1 = r0;
        r12 = r16;
        goto L_0x0107;
    L_0x00fd:
        r0 = move-exception;
        r16 = r12;
    L_0x0100:
        r1 = r0;
        goto L_0x0154;
    L_0x0102:
        r0 = move-exception;
        r2 = r11;
        r16 = r12;
    L_0x0106:
        r1 = r0;
    L_0x0107:
        r4 = "Error in peekHits fetching hit url: ";
        r1 = r1.getMessage();	 Catch:{ all -> 0x0152 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x0152 }
        r5 = r1.length();	 Catch:{ all -> 0x0152 }
        if (r5 == 0) goto L_0x011c;
    L_0x0117:
        r1 = r4.concat(r1);	 Catch:{ all -> 0x0152 }
        goto L_0x0121;
    L_0x011c:
        r1 = new java.lang.String;	 Catch:{ all -> 0x0152 }
        r1.<init>(r4);	 Catch:{ all -> 0x0152 }
    L_0x0121:
        com.google.android.gms.tagmanager.zzdj.zzaT(r1);	 Catch:{ all -> 0x0152 }
        r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0152 }
        r1.<init>();	 Catch:{ all -> 0x0152 }
        r11 = r2;
        r11 = (java.util.ArrayList) r11;	 Catch:{ all -> 0x0152 }
        r2 = r11.size();	 Catch:{ all -> 0x0152 }
        r4 = 0;
    L_0x0131:
        if (r14 >= r2) goto L_0x014c;
    L_0x0133:
        r5 = r11.get(r14);	 Catch:{ all -> 0x0152 }
        r14 = r14 + 1;
        r5 = (com.google.android.gms.tagmanager.zzbx) r5;	 Catch:{ all -> 0x0152 }
        r6 = r5.zzBo();	 Catch:{ all -> 0x0152 }
        r6 = android.text.TextUtils.isEmpty(r6);	 Catch:{ all -> 0x0152 }
        if (r6 == 0) goto L_0x0148;
    L_0x0145:
        if (r4 != 0) goto L_0x014c;
    L_0x0147:
        r4 = 1;
    L_0x0148:
        r1.add(r5);	 Catch:{ all -> 0x0152 }
        goto L_0x0131;
    L_0x014c:
        if (r12 == 0) goto L_0x0151;
    L_0x014e:
        r12.close();
    L_0x0151:
        return r1;
    L_0x0152:
        r0 = move-exception;
        goto L_0x0100;
    L_0x0154:
        if (r12 == 0) goto L_0x0159;
    L_0x0156:
        r12.close();
    L_0x0159:
        throw r1;
    L_0x015a:
        r0 = move-exception;
        r2 = r11;
        r16 = r12;
        r1 = r0;
        r13 = r16;
        goto L_0x0178;
    L_0x0162:
        r0 = move-exception;
        r16 = r12;
        r1 = r0;
        r13 = r16;
        goto L_0x019d;
    L_0x0169:
        r0 = move-exception;
        r16 = r12;
        r11 = r1;
        r13 = r16;
        goto L_0x0177;
    L_0x0170:
        r0 = move-exception;
        r1 = r0;
        r13 = 0;
        goto L_0x019d;
    L_0x0174:
        r0 = move-exception;
        r11 = r1;
        r13 = 0;
    L_0x0177:
        r1 = r0;
    L_0x0178:
        r2 = "Error in peekHits fetching hitIds: ";
        r1 = r1.getMessage();	 Catch:{ all -> 0x019b }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x019b }
        r4 = r1.length();	 Catch:{ all -> 0x019b }
        if (r4 == 0) goto L_0x018d;
    L_0x0188:
        r1 = r2.concat(r1);	 Catch:{ all -> 0x019b }
        goto L_0x0192;
    L_0x018d:
        r1 = new java.lang.String;	 Catch:{ all -> 0x019b }
        r1.<init>(r2);	 Catch:{ all -> 0x019b }
    L_0x0192:
        com.google.android.gms.tagmanager.zzdj.zzaT(r1);	 Catch:{ all -> 0x019b }
        if (r13 == 0) goto L_0x019a;
    L_0x0197:
        r13.close();
    L_0x019a:
        return r11;
    L_0x019b:
        r0 = move-exception;
        r1 = r0;
    L_0x019d:
        if (r13 == 0) goto L_0x01a2;
    L_0x019f:
        r13.close();
    L_0x01a2:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzec.zzbE(int):java.util.List");
    }

    private final void zzd(String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            SQLiteDatabase zzfg = zzfg("Error opening database for deleteHits.");
            if (zzfg != null) {
                boolean z = true;
                try {
                    zzfg.delete("gtm_hits", String.format("HIT_ID in (%s)", new Object[]{TextUtils.join(",", Collections.nCopies(strArr.length, "?"))}), strArr);
                    zzcd zzcd = this.zzbFw;
                    if (zzBA() != 0) {
                        z = false;
                    }
                    zzcd.zzar(z);
                } catch (SQLiteException unused) {
                    zzdj.zzaT("Error deleting hits");
                }
            }
        }
    }

    private final SQLiteDatabase zzfg(String str) {
        try {
            return this.zzbFu.getWritableDatabase();
        } catch (SQLiteException unused) {
            zzdj.zzaT(str);
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
            } catch (SQLiteException unused) {
                StringBuilder stringBuilder = new StringBuilder(69);
                stringBuilder.append("Error setting HIT_FIRST_DISPATCH_TIME for hitId: ");
                stringBuilder.append(j);
                zzdj.zzaT(stringBuilder.toString());
                zzp(j);
            }
        }
    }

    private final void zzp(long j) {
        zzd(new String[]{String.valueOf(j)});
    }

    public final void dispatch() {
        zzdj.v("GTM Dispatch running...");
        if (this.zzbFv.zzBf()) {
            List zzbE = zzbE(40);
            if (zzbE.isEmpty()) {
                zzdj.v("...nothing to dispatch");
                this.zzbFw.zzar(true);
                return;
            }
            this.zzbFv.zzK(zzbE);
            if (zzBB() > 0) {
                zzfo.zzBV().dispatch();
            }
        }
    }

    public final void zzb(long j, String str) {
        SQLiteDatabase zzfg;
        long currentTimeMillis = this.zzvw.currentTimeMillis();
        if (currentTimeMillis > this.zzbFy + 86400000) {
            this.zzbFy = currentTimeMillis;
            zzfg = zzfg("Error opening database for deleteStaleHits.");
            if (zzfg != null) {
                long currentTimeMillis2 = this.zzvw.currentTimeMillis() - 2592000000L;
                zzfg.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(currentTimeMillis2)});
                this.zzbFw.zzar(zzBA() == 0);
            }
        }
        int zzBA = (zzBA() - this.zzbFz) + 1;
        if (zzBA > 0) {
            List zzbD = zzbD(zzBA);
            int size = zzbD.size();
            StringBuilder stringBuilder = new StringBuilder(51);
            stringBuilder.append("Store full, deleting ");
            stringBuilder.append(size);
            stringBuilder.append(" hits to make room.");
            zzdj.v(stringBuilder.toString());
            zzd((String[]) zzbD.toArray(new String[0]));
        }
        zzfg = zzfg("Error opening database for putHit");
        if (zzfg != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_time", Long.valueOf(j));
            contentValues.put("hit_url", str);
            contentValues.put("hit_first_send_time", Integer.valueOf(0));
            try {
                zzfg.insert("gtm_hits", null, contentValues);
                this.zzbFw.zzar(false);
            } catch (SQLiteException unused) {
                zzdj.zzaT("Error storing hit");
            }
        }
    }
}
