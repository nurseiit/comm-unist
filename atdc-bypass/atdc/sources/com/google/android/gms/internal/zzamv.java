package com.google.android.gms.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.zza;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.analytics.zzj;
import com.google.android.gms.analytics.zzl;
import com.google.android.gms.common.internal.zzbo;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

final class zzamv extends zzamh {
    private boolean mStarted;
    private final zzanm zzagA;
    private final zzanm zzagB;
    private final zzaoo zzagC;
    private long zzagD;
    private boolean zzagE;
    private final zzams zzagv;
    private final zzaoe zzagw;
    private final zzaod zzagx;
    private final zzamn zzagy;
    private long zzagz = Long.MIN_VALUE;

    protected zzamv(zzamj zzamj, zzaml zzaml) {
        super(zzamj);
        zzbo.zzu(zzaml);
        this.zzagx = new zzaod(zzamj);
        this.zzagv = new zzams(zzamj);
        this.zzagw = new zzaoe(zzamj);
        this.zzagy = new zzamn(zzamj);
        this.zzagC = new zzaoo(zzkq());
        this.zzagA = new zzamw(this, zzamj);
        this.zzagB = new zzamx(this, zzamj);
    }

    private final void zza(zzamm zzamm, zzall zzall) {
        zzbo.zzu(zzamm);
        zzbo.zzu(zzall);
        zza zza = new zza(zzkp());
        zza.zzaY(zzamm.zzkL());
        zza.enableAdvertisingIdCollection(zzamm.zzkM());
        zzi zzjj = zza.zzjj();
        zzalt zzalt = (zzalt) zzjj.zzb(zzalt.class);
        zzalt.zzbj("data");
        zzalt.zzH(true);
        zzjj.zza((zzj) zzall);
        zzalo zzalo = (zzalo) zzjj.zzb(zzalo.class);
        zzalk zzalk = (zzalk) zzjj.zzb(zzalk.class);
        for (Entry entry : zzamm.zzdV().entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if ("an".equals(str)) {
                zzalk.setAppName(str2);
            } else if ("av".equals(str)) {
                zzalk.setAppVersion(str2);
            } else if ("aid".equals(str)) {
                zzalk.setAppId(str2);
            } else if ("aiid".equals(str)) {
                zzalk.setAppInstallerId(str2);
            } else if ("uid".equals(str)) {
                zzalt.setUserId(str2);
            } else {
                zzalo.set(str, str2);
            }
        }
        zzb("Sending installation campaign to", zzamm.zzkL(), zzall);
        zzjj.zzl(zzky().zzlU());
        zzjj.zzjt();
    }

    private final boolean zzbv(String str) {
        return zzbha.zzaP(getContext()).checkCallingOrSelfPermission(str) == 0;
    }

    private final long zzkT() {
        zzl.zzjC();
        zzkD();
        try {
            return this.zzagv.zzkT();
        } catch (SQLiteException e) {
            zze("Failed to get min/max hit times from local store", e);
            return 0;
        }
    }

    private final void zzkY() {
        zzb(new zzamz(this));
    }

    private final void zzkZ() {
        try {
            this.zzagv.zzkS();
            zzld();
        } catch (SQLiteException e) {
            zzd("Failed to delete stale hits", e);
        }
        this.zzagB.zzs(86400000);
    }

    private final void zzla() {
        if (!this.zzagE && zzank.zzlo() && !this.zzagy.isConnected()) {
            if (this.zzagC.zzu(((Long) zzans.zzahS.get()).longValue())) {
                this.zzagC.start();
                zzbo("Connecting to service");
                if (this.zzagy.connect()) {
                    zzbo("Connected to service");
                    this.zzagC.clear();
                    onServiceConnected();
                }
            }
        }
    }

    /* JADX WARNING: Missing block: B:26:0x0090, code skipped:
            zzd("Database contains successfully uploaded hit", java.lang.Long.valueOf(r4), java.lang.Integer.valueOf(r6.size()));
            zzlf();
     */
    private final boolean zzlb() {
        /*
        r11 = this;
        com.google.android.gms.analytics.zzl.zzjC();
        r11.zzkD();
        r0 = "Dispatching a batch of local hits";
        r11.zzbo(r0);
        r0 = r11.zzagy;
        r0 = r0.isConnected();
        r0 = r0 ^ 1;
        r1 = r11.zzagw;
        r1 = r1.zzlQ();
        r1 = r1 ^ 1;
        r2 = 0;
        if (r0 == 0) goto L_0x0026;
    L_0x001e:
        if (r1 == 0) goto L_0x0026;
    L_0x0020:
        r0 = "No network or service available. Will retry later";
        r11.zzbo(r0);
        return r2;
    L_0x0026:
        r0 = com.google.android.gms.internal.zzank.zzls();
        r1 = com.google.android.gms.internal.zzank.zzlt();
        r0 = java.lang.Math.max(r0, r1);
        r0 = (long) r0;
        r3 = new java.util.ArrayList;
        r3.<init>();
        r4 = 0;
    L_0x003a:
        r6 = r11.zzagv;	 Catch:{ all -> 0x01ba }
        r6.beginTransaction();	 Catch:{ all -> 0x01ba }
        r3.clear();	 Catch:{ all -> 0x01ba }
        r6 = r11.zzagv;	 Catch:{ SQLiteException -> 0x019c }
        r6 = r6.zzo(r0);	 Catch:{ SQLiteException -> 0x019c }
        r7 = r6.isEmpty();	 Catch:{ SQLiteException -> 0x019c }
        if (r7 == 0) goto L_0x006b;
    L_0x004e:
        r0 = "Store is empty, nothing to dispatch";
        r11.zzbo(r0);	 Catch:{ SQLiteException -> 0x019c }
        r11.zzlf();	 Catch:{ SQLiteException -> 0x019c }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x0061 }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x0061 }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x0061 }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x0061 }
        return r2;
    L_0x0061:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r11.zze(r1, r0);
        r11.zzlf();
        return r2;
    L_0x006b:
        r7 = "Hits loaded from store. count";
        r8 = r6.size();	 Catch:{ SQLiteException -> 0x019c }
        r8 = java.lang.Integer.valueOf(r8);	 Catch:{ SQLiteException -> 0x019c }
        r11.zza(r7, r8);	 Catch:{ SQLiteException -> 0x019c }
        r7 = r6.iterator();	 Catch:{ all -> 0x01ba }
    L_0x007c:
        r8 = r7.hasNext();	 Catch:{ all -> 0x01ba }
        if (r8 == 0) goto L_0x00b9;
    L_0x0082:
        r8 = r7.next();	 Catch:{ all -> 0x01ba }
        r8 = (com.google.android.gms.internal.zzanx) r8;	 Catch:{ all -> 0x01ba }
        r8 = r8.zzlF();	 Catch:{ all -> 0x01ba }
        r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1));
        if (r10 != 0) goto L_0x007c;
    L_0x0090:
        r0 = "Database contains successfully uploaded hit";
        r1 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x01ba }
        r3 = r6.size();	 Catch:{ all -> 0x01ba }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ all -> 0x01ba }
        r11.zzd(r0, r1, r3);	 Catch:{ all -> 0x01ba }
        r11.zzlf();	 Catch:{ all -> 0x01ba }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x00af }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x00af }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x00af }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x00af }
        return r2;
    L_0x00af:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r11.zze(r1, r0);
        r11.zzlf();
        return r2;
    L_0x00b9:
        r7 = r11.zzagy;	 Catch:{ all -> 0x01ba }
        r7 = r7.isConnected();	 Catch:{ all -> 0x01ba }
        if (r7 == 0) goto L_0x011d;
    L_0x00c1:
        r7 = "Service connected, sending hits to the service";
        r11.zzbo(r7);	 Catch:{ all -> 0x01ba }
    L_0x00c6:
        r7 = r6.isEmpty();	 Catch:{ all -> 0x01ba }
        if (r7 != 0) goto L_0x011d;
    L_0x00cc:
        r7 = r6.get(r2);	 Catch:{ all -> 0x01ba }
        r7 = (com.google.android.gms.internal.zzanx) r7;	 Catch:{ all -> 0x01ba }
        r8 = r11.zzagy;	 Catch:{ all -> 0x01ba }
        r8 = r8.zzb(r7);	 Catch:{ all -> 0x01ba }
        if (r8 == 0) goto L_0x011d;
    L_0x00da:
        r8 = r7.zzlF();	 Catch:{ all -> 0x01ba }
        r4 = java.lang.Math.max(r4, r8);	 Catch:{ all -> 0x01ba }
        r6.remove(r7);	 Catch:{ all -> 0x01ba }
        r8 = "Hit sent do device AnalyticsService for delivery";
        r11.zzb(r8, r7);	 Catch:{ all -> 0x01ba }
        r8 = r11.zzagv;	 Catch:{ SQLiteException -> 0x00ff }
        r9 = r7.zzlF();	 Catch:{ SQLiteException -> 0x00ff }
        r8.zzp(r9);	 Catch:{ SQLiteException -> 0x00ff }
        r7 = r7.zzlF();	 Catch:{ SQLiteException -> 0x00ff }
        r7 = java.lang.Long.valueOf(r7);	 Catch:{ SQLiteException -> 0x00ff }
        r3.add(r7);	 Catch:{ SQLiteException -> 0x00ff }
        goto L_0x00c6;
    L_0x00ff:
        r0 = move-exception;
        r1 = "Failed to remove hit that was send for delivery";
        r11.zze(r1, r0);	 Catch:{ all -> 0x01ba }
        r11.zzlf();	 Catch:{ all -> 0x01ba }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x0113 }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x0113 }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x0113 }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x0113 }
        return r2;
    L_0x0113:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r11.zze(r1, r0);
        r11.zzlf();
        return r2;
    L_0x011d:
        r7 = r11.zzagw;	 Catch:{ all -> 0x01ba }
        r7 = r7.zzlQ();	 Catch:{ all -> 0x01ba }
        if (r7 == 0) goto L_0x016b;
    L_0x0125:
        r7 = r11.zzagw;	 Catch:{ all -> 0x01ba }
        r6 = r7.zzu(r6);	 Catch:{ all -> 0x01ba }
        r7 = r6.iterator();	 Catch:{ all -> 0x01ba }
    L_0x012f:
        r8 = r7.hasNext();	 Catch:{ all -> 0x01ba }
        if (r8 == 0) goto L_0x0144;
    L_0x0135:
        r8 = r7.next();	 Catch:{ all -> 0x01ba }
        r8 = (java.lang.Long) r8;	 Catch:{ all -> 0x01ba }
        r8 = r8.longValue();	 Catch:{ all -> 0x01ba }
        r4 = java.lang.Math.max(r4, r8);	 Catch:{ all -> 0x01ba }
        goto L_0x012f;
    L_0x0144:
        r7 = r11.zzagv;	 Catch:{ SQLiteException -> 0x014d }
        r7.zzs(r6);	 Catch:{ SQLiteException -> 0x014d }
        r3.addAll(r6);	 Catch:{ SQLiteException -> 0x014d }
        goto L_0x016b;
    L_0x014d:
        r0 = move-exception;
        r1 = "Failed to remove successfully uploaded hits";
        r11.zze(r1, r0);	 Catch:{ all -> 0x01ba }
        r11.zzlf();	 Catch:{ all -> 0x01ba }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x0161 }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x0161 }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x0161 }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x0161 }
        return r2;
    L_0x0161:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r11.zze(r1, r0);
        r11.zzlf();
        return r2;
    L_0x016b:
        r6 = r3.isEmpty();	 Catch:{ all -> 0x01ba }
        if (r6 == 0) goto L_0x0186;
    L_0x0171:
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x017c }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x017c }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x017c }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x017c }
        return r2;
    L_0x017c:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r11.zze(r1, r0);
        r11.zzlf();
        return r2;
    L_0x0186:
        r6 = r11.zzagv;	 Catch:{ SQLiteException -> 0x0192 }
        r6.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x0192 }
        r6 = r11.zzagv;	 Catch:{ SQLiteException -> 0x0192 }
        r6.endTransaction();	 Catch:{ SQLiteException -> 0x0192 }
        goto L_0x003a;
    L_0x0192:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r11.zze(r1, r0);
        r11.zzlf();
        return r2;
    L_0x019c:
        r0 = move-exception;
        r1 = "Failed to read hits from persisted store";
        r11.zzd(r1, r0);	 Catch:{ all -> 0x01ba }
        r11.zzlf();	 Catch:{ all -> 0x01ba }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x01b0 }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x01b0 }
        r0 = r11.zzagv;	 Catch:{ SQLiteException -> 0x01b0 }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x01b0 }
        return r2;
    L_0x01b0:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r11.zze(r1, r0);
        r11.zzlf();
        return r2;
    L_0x01ba:
        r0 = move-exception;
        r1 = r11.zzagv;	 Catch:{ SQLiteException -> 0x01c6 }
        r1.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x01c6 }
        r1 = r11.zzagv;	 Catch:{ SQLiteException -> 0x01c6 }
        r1.endTransaction();	 Catch:{ SQLiteException -> 0x01c6 }
        throw r0;
    L_0x01c6:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r11.zze(r1, r0);
        r11.zzlf();
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzamv.zzlb():boolean");
    }

    private final void zzle() {
        zzanp zzkw = zzkw();
        if (zzkw.zzlC() && !zzkw.zzbo()) {
            long zzkT = zzkT();
            if (zzkT != 0 && Math.abs(zzkq().currentTimeMillis() - zzkT) <= ((Long) zzans.zzahr.get()).longValue()) {
                zza("Dispatch alarm scheduled (ms)", Long.valueOf(zzank.zzlr()));
                zzkw.schedule();
            }
        }
    }

    private final void zzlf() {
        if (this.zzagA.zzbo()) {
            zzbo("All hits dispatched or no network/service. Going to power save mode");
        }
        this.zzagA.cancel();
        zzanp zzkw = zzkw();
        if (zzkw.zzbo()) {
            zzkw.cancel();
        }
    }

    private final long zzlg() {
        if (this.zzagz != Long.MIN_VALUE) {
            return this.zzagz;
        }
        long longValue = ((Long) zzans.zzahm.get()).longValue();
        zzaot zzkx = zzkx();
        zzkx.zzkD();
        if (zzkx.zzaiP) {
            zzaot zzkx2 = zzkx();
            zzkx2.zzkD();
            longValue = ((long) zzkx2.zzahZ) * 1000;
        }
        return longValue;
    }

    private final void zzlh() {
        zzkD();
        zzl.zzjC();
        this.zzagE = true;
        this.zzagy.disconnect();
        zzld();
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0044 A:{LOOP_START, LOOP:1: B:15:0x0044->B:24:0x0069} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0040 A:{SYNTHETIC} */
    public final void onServiceConnected() {
        /*
        r5 = this;
        com.google.android.gms.analytics.zzl.zzjC();
        com.google.android.gms.analytics.zzl.zzjC();
        r5.zzkD();
        r0 = com.google.android.gms.internal.zzank.zzlo();
        if (r0 != 0) goto L_0x0014;
    L_0x000f:
        r0 = "Service client disabled. Can't dispatch local hits to device AnalyticsService";
        r5.zzbr(r0);
    L_0x0014:
        r0 = r5.zzagy;
        r0 = r0.isConnected();
        if (r0 != 0) goto L_0x0022;
    L_0x001c:
        r0 = "Service not connected";
        r5.zzbo(r0);
        return;
    L_0x0022:
        r0 = r5.zzagv;
        r0 = r0.isEmpty();
        if (r0 != 0) goto L_0x007d;
    L_0x002a:
        r0 = "Dispatching local hits to device AnalyticsService";
        r5.zzbo(r0);
    L_0x002f:
        r0 = r5.zzagv;	 Catch:{ SQLiteException -> 0x0074 }
        r1 = com.google.android.gms.internal.zzank.zzls();	 Catch:{ SQLiteException -> 0x0074 }
        r1 = (long) r1;	 Catch:{ SQLiteException -> 0x0074 }
        r0 = r0.zzo(r1);	 Catch:{ SQLiteException -> 0x0074 }
        r1 = r0.isEmpty();	 Catch:{ SQLiteException -> 0x0074 }
        if (r1 == 0) goto L_0x0044;
    L_0x0040:
        r5.zzld();	 Catch:{ SQLiteException -> 0x0074 }
        return;
    L_0x0044:
        r1 = r0.isEmpty();
        if (r1 != 0) goto L_0x002f;
    L_0x004a:
        r1 = 0;
        r1 = r0.get(r1);
        r1 = (com.google.android.gms.internal.zzanx) r1;
        r2 = r5.zzagy;
        r2 = r2.zzb(r1);
        if (r2 != 0) goto L_0x005d;
    L_0x0059:
        r5.zzld();
        return;
    L_0x005d:
        r0.remove(r1);
        r2 = r5.zzagv;	 Catch:{ SQLiteException -> 0x006a }
        r3 = r1.zzlF();	 Catch:{ SQLiteException -> 0x006a }
        r2.zzp(r3);	 Catch:{ SQLiteException -> 0x006a }
        goto L_0x0044;
    L_0x006a:
        r0 = move-exception;
        r1 = "Failed to remove hit that was send for delivery";
        r5.zze(r1, r0);
        r5.zzlf();
        return;
    L_0x0074:
        r0 = move-exception;
        r1 = "Failed to read hits from store";
        r5.zze(r1, r0);
        r5.zzlf();
    L_0x007d:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzamv.onServiceConnected():void");
    }

    /* Access modifiers changed, original: final */
    public final void start() {
        zzkD();
        zzbo.zza(this.mStarted ^ 1, (Object) "Analytics backend already started");
        this.mStarted = true;
        zzkt().zzf(new zzamy(this));
    }

    public final long zza(zzamm zzamm, boolean z) {
        zzbo.zzu(zzamm);
        zzkD();
        zzl.zzjC();
        try {
            this.zzagv.beginTransaction();
            zzams zzams = this.zzagv;
            long zzkK = zzamm.zzkK();
            zzbo.zzcF(zzamm.zzjX());
            zzams.zzkD();
            zzl.zzjC();
            int delete = zzams.getWritableDatabase().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(zzkK), r4});
            if (delete > 0) {
                zzams.zza("Deleted property records", Integer.valueOf(delete));
            }
            zzkK = this.zzagv.zza(zzamm.zzkK(), zzamm.zzjX(), zzamm.zzkL());
            zzamm.zzm(zzkK + 1);
            zzams = this.zzagv;
            zzbo.zzu(zzamm);
            zzams.zzkD();
            zzl.zzjC();
            SQLiteDatabase writableDatabase = zzams.getWritableDatabase();
            Map zzdV = zzamm.zzdV();
            zzbo.zzu(zzdV);
            Builder builder = new Builder();
            for (Entry entry : zzdV.entrySet()) {
                builder.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
            }
            String encodedQuery = builder.build().getEncodedQuery();
            if (encodedQuery == null) {
                encodedQuery = "";
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_uid", Long.valueOf(zzamm.zzkK()));
            contentValues.put("cid", zzamm.zzjX());
            contentValues.put("tid", zzamm.zzkL());
            contentValues.put("adid", Integer.valueOf(zzamm.zzkM()));
            contentValues.put("hits_count", Long.valueOf(zzamm.zzkN()));
            contentValues.put("params", encodedQuery);
            try {
                if (writableDatabase.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                    zzams.zzbs("Failed to insert/update a property (got -1)");
                }
            } catch (SQLiteException e) {
                zzams.zze("Error storing a property", e);
            }
            this.zzagv.setTransactionSuccessful();
            try {
                this.zzagv.endTransaction();
                return zzkK;
            } catch (SQLiteException e2) {
                zze("Failed to end transaction", e2);
                return zzkK;
            }
        } catch (SQLiteException e22) {
            zze("Failed to update Analytics property", e22);
            try {
                this.zzagv.endTransaction();
                return -1;
            } catch (SQLiteException e222) {
                zze("Failed to end transaction", e222);
                return -1;
            }
        } catch (Throwable th) {
            try {
                this.zzagv.endTransaction();
            } catch (SQLiteException e3) {
                zze("Failed to end transaction", e3);
            }
            throw th;
        }
    }

    public final void zza(zzanx zzanx) {
        zzbo.zzu(zzanx);
        zzl.zzjC();
        zzkD();
        if (this.zzagE) {
            zzbp("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            zza("Delivering hit", zzanx);
        }
        if (TextUtils.isEmpty(zzanx.zzlK())) {
            Pair zzmb = zzky().zzlZ().zzmb();
            if (zzmb != null) {
                Long l = (Long) zzmb.second;
                String str = (String) zzmb.first;
                String valueOf = String.valueOf(l);
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(str).length());
                stringBuilder.append(valueOf);
                stringBuilder.append(":");
                stringBuilder.append(str);
                str = stringBuilder.toString();
                HashMap hashMap = new HashMap(zzanx.zzdV());
                hashMap.put("_m", str);
                zzanx = new zzanx(this, hashMap, zzanx.zzlG(), zzanx.zzlI(), zzanx.zzlF(), zzanx.zzlE(), zzanx.zzlH());
            }
        }
        zzla();
        if (this.zzagy.zzb(zzanx)) {
            zzbp("Hit sent to the device AnalyticsService for delivery");
            return;
        }
        try {
            this.zzagv.zzc(zzanx);
            zzld();
        } catch (SQLiteException e) {
            zze("Delivery failed to save hit to a database", e);
            zzkr().zza(zzanx, "deliver: failed to insert hit to database");
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzb(zzamm zzamm) {
        zzl.zzjC();
        zzb("Sending first hit to property", zzamm.zzkL());
        if (!zzky().zzlV().zzu(zzank.zzly())) {
            String zzlY = zzky().zzlY();
            if (!TextUtils.isEmpty(zzlY)) {
                zzall zza = zzaos.zza(zzkr(), zzlY);
                zzb("Found relevant installation campaign", zza);
                zza(zzamm, zza);
            }
        }
    }

    public final void zzb(zzanq zzanq) {
        long j = this.zzagD;
        zzl.zzjC();
        zzkD();
        long zzlW = zzky().zzlW();
        zzb("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(zzlW != 0 ? Math.abs(zzkq().currentTimeMillis() - zzlW) : -1));
        zzla();
        try {
            zzlb();
            zzky().zzlX();
            zzld();
            if (zzanq != null) {
                zzanq.zzc(null);
            }
            if (this.zzagD != j) {
                this.zzagx.zzlP();
            }
        } catch (Throwable th) {
            zze("Local dispatch failed", th);
            zzky().zzlX();
            zzld();
            if (zzanq != null) {
                zzanq.zzc(th);
            }
        }
    }

    public final void zzbw(String str) {
        zzbo.zzcF(str);
        zzl.zzjC();
        zzall zza = zzaos.zza(zzkr(), str);
        if (zza == null) {
            zzd("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        String zzlY = zzky().zzlY();
        if (str.equals(zzlY)) {
            zzbr("Ignoring duplicate install campaign");
        } else if (TextUtils.isEmpty(zzlY)) {
            zzky().zzbz(str);
            if (zzky().zzlV().zzu(zzank.zzly())) {
                zzd("Campaign received too late, ignoring", zza);
                return;
            }
            zzb("Received installation campaign", zza);
            for (zzamm zza2 : this.zzagv.zzq(0)) {
                zza(zza2, zza);
            }
        } else {
            zzd("Ignoring multiple install campaigns. original, new", zzlY, str);
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
        this.zzagv.initialize();
        this.zzagw.initialize();
        this.zzagy.initialize();
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0049  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x006b  */
    public final void zzkX() {
        /*
        r2 = this;
        r2.zzkD();
        com.google.android.gms.analytics.zzl.zzjC();
        r0 = r2.zzkp();
        r0 = r0.getContext();
        r1 = com.google.android.gms.internal.zzaoj.zzac(r0);
        if (r1 != 0) goto L_0x001a;
    L_0x0014:
        r1 = "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.";
        r2.zzbr(r1);
        goto L_0x0025;
    L_0x001a:
        r1 = com.google.android.gms.internal.zzaok.zzad(r0);
        if (r1 != 0) goto L_0x0025;
    L_0x0020:
        r1 = "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.";
        r2.zzbs(r1);
    L_0x0025:
        r1 = com.google.android.gms.analytics.CampaignTrackingReceiver.zzac(r0);
        if (r1 != 0) goto L_0x0031;
    L_0x002b:
        r0 = "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.";
    L_0x002d:
        r2.zzbr(r0);
        goto L_0x003a;
    L_0x0031:
        r0 = com.google.android.gms.analytics.CampaignTrackingService.zzad(r0);
        if (r0 != 0) goto L_0x003a;
    L_0x0037:
        r0 = "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.";
        goto L_0x002d;
    L_0x003a:
        r0 = r2.zzky();
        r0.zzlU();
        r0 = "android.permission.ACCESS_NETWORK_STATE";
        r0 = r2.zzbv(r0);
        if (r0 != 0) goto L_0x0051;
    L_0x0049:
        r0 = "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions";
        r2.zzbs(r0);
        r2.zzlh();
    L_0x0051:
        r0 = "android.permission.INTERNET";
        r0 = r2.zzbv(r0);
        if (r0 != 0) goto L_0x0061;
    L_0x0059:
        r0 = "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions";
        r2.zzbs(r0);
        r2.zzlh();
    L_0x0061:
        r0 = r2.getContext();
        r0 = com.google.android.gms.internal.zzaok.zzad(r0);
        if (r0 == 0) goto L_0x0071;
    L_0x006b:
        r0 = "AnalyticsService registered in the app manifest and enabled";
        r2.zzbo(r0);
        goto L_0x0076;
    L_0x0071:
        r0 = "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.";
        r2.zzbr(r0);
    L_0x0076:
        r0 = r2.zzagE;
        if (r0 != 0) goto L_0x0085;
    L_0x007a:
        r0 = r2.zzagv;
        r0 = r0.isEmpty();
        if (r0 != 0) goto L_0x0085;
    L_0x0082:
        r2.zzla();
    L_0x0085:
        r2.zzld();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzamv.zzkX():void");
    }

    public final void zzkk() {
        zzl.zzjC();
        zzkD();
        zzbo("Delete all hits from local store");
        try {
            zzams zzams = this.zzagv;
            zzl.zzjC();
            zzams.zzkD();
            zzams.getWritableDatabase().delete("hits2", null, null);
            zzams = this.zzagv;
            zzl.zzjC();
            zzams.zzkD();
            zzams.getWritableDatabase().delete("properties", null, null);
            zzld();
        } catch (SQLiteException e) {
            zzd("Failed to delete hits from store", e);
        }
        zzla();
        if (this.zzagy.zzkO()) {
            zzbo("Device service unavailable. Can't clear hits stored on the device service.");
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzko() {
        zzl.zzjC();
        this.zzagD = zzkq().currentTimeMillis();
    }

    public final void zzlc() {
        zzl.zzjC();
        zzkD();
        zzbp("Sync dispatching local hits");
        long j = this.zzagD;
        zzla();
        try {
            zzlb();
            zzky().zzlX();
            zzld();
            if (this.zzagD != j) {
                this.zzagx.zzlP();
            }
        } catch (Throwable th) {
            zze("Sync local dispatch failed", th);
            zzld();
        }
    }

    /* JADX WARNING: Missing block: B:20:0x0074, code skipped:
            if (r6 > 0) goto L_0x007f;
     */
    public final void zzld() {
        /*
        r10 = this;
        com.google.android.gms.analytics.zzl.zzjC();
        r10.zzkD();
        r0 = r10.zzagE;
        r1 = 1;
        r2 = 0;
        if (r0 != 0) goto L_0x0017;
    L_0x000d:
        r4 = r10.zzlg();
        r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r0 <= 0) goto L_0x0017;
    L_0x0015:
        r0 = 1;
        goto L_0x0018;
    L_0x0017:
        r0 = 0;
    L_0x0018:
        if (r0 != 0) goto L_0x0023;
    L_0x001a:
        r0 = r10.zzagx;
        r0.unregister();
        r10.zzlf();
        return;
    L_0x0023:
        r0 = r10.zzagv;
        r0 = r0.isEmpty();
        if (r0 == 0) goto L_0x0034;
    L_0x002b:
        r0 = r10.zzagx;
        r0.unregister();
        r10.zzlf();
        return;
    L_0x0034:
        r0 = com.google.android.gms.internal.zzans.zzahN;
        r0 = r0.get();
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 != 0) goto L_0x004d;
    L_0x0042:
        r0 = r10.zzagx;
        r0.zzlN();
        r0 = r10.zzagx;
        r1 = r0.isConnected();
    L_0x004d:
        if (r1 == 0) goto L_0x00aa;
    L_0x004f:
        r10.zzle();
        r0 = r10.zzlg();
        r4 = r10.zzky();
        r4 = r4.zzlW();
        r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r6 == 0) goto L_0x0077;
    L_0x0062:
        r6 = r10.zzkq();
        r6 = r6.currentTimeMillis();
        r8 = r6 - r4;
        r4 = java.lang.Math.abs(r8);
        r6 = r0 - r4;
        r4 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1));
        if (r4 <= 0) goto L_0x0077;
    L_0x0076:
        goto L_0x007f;
    L_0x0077:
        r2 = com.google.android.gms.internal.zzank.zzlq();
        r6 = java.lang.Math.min(r2, r0);
    L_0x007f:
        r0 = "Dispatch scheduled (ms)";
        r1 = java.lang.Long.valueOf(r6);
        r10.zza(r0, r1);
        r0 = r10.zzagA;
        r0 = r0.zzbo();
        if (r0 == 0) goto L_0x00a4;
    L_0x0090:
        r0 = 1;
        r2 = r10.zzagA;
        r2 = r2.zzlz();
        r4 = r6 + r2;
        r0 = java.lang.Math.max(r0, r4);
        r2 = r10.zzagA;
        r2.zzt(r0);
        return;
    L_0x00a4:
        r0 = r10.zzagA;
        r0.zzs(r6);
        return;
    L_0x00aa:
        r10.zzlf();
        r10.zzle();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzamv.zzld():void");
    }

    public final void zzr(long j) {
        zzl.zzjC();
        zzkD();
        if (j < 0) {
            j = 0;
        }
        this.zzagz = j;
        zzld();
    }
}
