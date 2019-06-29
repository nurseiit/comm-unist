package com.google.android.gms.internal;

import android.content.Context;
import android.os.Environment;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

@zzzn
public final class zzmr {
    private Context mContext;
    private String zzGJ;
    private BlockingQueue<zznb> zzGL;
    private ExecutorService zzGM;
    private LinkedHashMap<String, String> zzGN = new LinkedHashMap();
    private Map<String, zzmv> zzGO = new HashMap();
    private AtomicBoolean zzGP;
    private File zzGQ;
    private String zzwH;

    public zzmr(Context context, String str, String str2, Map<String, String> map) {
        this.mContext = context;
        this.zzwH = str;
        this.zzGJ = str2;
        this.zzGP = new AtomicBoolean(false);
        this.zzGP.set(((Boolean) zzbs.zzbL().zzd(zzmo.zzCS)).booleanValue());
        if (this.zzGP.get()) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != null) {
                this.zzGQ = new File(externalStorageDirectory, "sdk_csi_data.txt");
            }
        }
        for (Entry entry : map.entrySet()) {
            this.zzGN.put((String) entry.getKey(), (String) entry.getValue());
        }
        this.zzGL = new ArrayBlockingQueue(30);
        this.zzGM = Executors.newSingleThreadExecutor();
        this.zzGM.execute(new zzms(this));
        this.zzGO.put("action", zzmv.zzGT);
        this.zzGO.put("ad_format", zzmv.zzGT);
        this.zzGO.put("e", zzmv.zzGU);
    }

    /* JADX WARNING: Removed duplicated region for block: B:48:0x0000 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0097 A:{SYNTHETIC, Splitter:B:29:0x0097} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00a6 A:{SYNTHETIC, Splitter:B:35:0x00a6} */
    private final void zzdO() {
        /*
        r5 = this;
    L_0x0000:
        r0 = r5.zzGL;	 Catch:{ InterruptedException -> 0x00c4 }
        r0 = r0.take();	 Catch:{ InterruptedException -> 0x00c4 }
        r0 = (com.google.android.gms.internal.zznb) r0;	 Catch:{ InterruptedException -> 0x00c4 }
        r1 = r0.zzdU();	 Catch:{ InterruptedException -> 0x00c4 }
        r2 = android.text.TextUtils.isEmpty(r1);
        if (r2 != 0) goto L_0x0000;
    L_0x0012:
        r2 = r5.zzGN;
        r0 = r0.zzdV();
        r0 = r5.zza(r2, r0);
        r2 = r5.zzGJ;
        r2 = android.net.Uri.parse(r2);
        r2 = r2.buildUpon();
        r0 = r0.entrySet();
        r0 = r0.iterator();
    L_0x002e:
        r3 = r0.hasNext();
        if (r3 == 0) goto L_0x004a;
    L_0x0034:
        r3 = r0.next();
        r3 = (java.util.Map.Entry) r3;
        r4 = r3.getKey();
        r4 = (java.lang.String) r4;
        r3 = r3.getValue();
        r3 = (java.lang.String) r3;
        r2.appendQueryParameter(r4, r3);
        goto L_0x002e;
    L_0x004a:
        r0 = new java.lang.StringBuilder;
        r2 = r2.build();
        r2 = r2.toString();
        r0.<init>(r2);
        r2 = "&it=";
        r0.append(r2);
        r0.append(r1);
        r0 = r0.toString();
        r1 = r5.zzGP;
        r1 = r1.get();
        if (r1 == 0) goto L_0x00b8;
    L_0x006b:
        r1 = r5.zzGQ;
        if (r1 == 0) goto L_0x00b1;
    L_0x006f:
        r2 = 0;
        r3 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x008f }
        r4 = 1;
        r3.<init>(r1, r4);	 Catch:{ IOException -> 0x008f }
        r0 = r0.getBytes();	 Catch:{ IOException -> 0x008a, all -> 0x0087 }
        r3.write(r0);	 Catch:{ IOException -> 0x008a, all -> 0x0087 }
        r0 = 10;
        r3.write(r0);	 Catch:{ IOException -> 0x008a, all -> 0x0087 }
        r3.close();	 Catch:{ IOException -> 0x009c }
        goto L_0x0000;
    L_0x0087:
        r0 = move-exception;
        r2 = r3;
        goto L_0x00a4;
    L_0x008a:
        r0 = move-exception;
        r2 = r3;
        goto L_0x0090;
    L_0x008d:
        r0 = move-exception;
        goto L_0x00a4;
    L_0x008f:
        r0 = move-exception;
    L_0x0090:
        r1 = "CsiReporter: Cannot write to file: sdk_csi_data.txt.";
        com.google.android.gms.internal.zzajc.zzc(r1, r0);	 Catch:{ all -> 0x008d }
        if (r2 == 0) goto L_0x0000;
    L_0x0097:
        r2.close();	 Catch:{ IOException -> 0x009c }
        goto L_0x0000;
    L_0x009c:
        r0 = move-exception;
        r1 = "CsiReporter: Cannot close file: sdk_csi_data.txt.";
        com.google.android.gms.internal.zzajc.zzc(r1, r0);
        goto L_0x0000;
    L_0x00a4:
        if (r2 == 0) goto L_0x00b0;
    L_0x00a6:
        r2.close();	 Catch:{ IOException -> 0x00aa }
        goto L_0x00b0;
    L_0x00aa:
        r1 = move-exception;
        r2 = "CsiReporter: Cannot close file: sdk_csi_data.txt.";
        com.google.android.gms.internal.zzajc.zzc(r2, r1);
    L_0x00b0:
        throw r0;
    L_0x00b1:
        r0 = "CsiReporter: File doesn't exists. Cannot write CSI data to file.";
        com.google.android.gms.internal.zzajc.zzaT(r0);
        goto L_0x0000;
    L_0x00b8:
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r1 = r5.mContext;
        r2 = r5.zzwH;
        com.google.android.gms.internal.zzagz.zzd(r1, r2, r0);
        goto L_0x0000;
    L_0x00c4:
        r0 = move-exception;
        r1 = "CsiReporter:reporter interrupted";
        com.google.android.gms.internal.zzajc.zzc(r1, r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzmr.zzdO():void");
    }

    public final zzmv zzM(String str) {
        zzmv zzmv = (zzmv) this.zzGO.get(str);
        return zzmv != null ? zzmv : zzmv.zzGS;
    }

    /* Access modifiers changed, original: final */
    public final Map<String, String> zza(Map<String, String> map, @Nullable Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Entry entry : map2.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) linkedHashMap.get(str);
            linkedHashMap.put(str, zzM(str).zzg(str2, (String) entry.getValue()));
        }
        return linkedHashMap;
    }

    public final boolean zza(zznb zznb) {
        return this.zzGL.offer(zznb);
    }

    public final void zze(@Nullable List<String> list) {
        if (list != null && !list.isEmpty()) {
            this.zzGN.put("e", TextUtils.join(",", list));
        }
    }
}
