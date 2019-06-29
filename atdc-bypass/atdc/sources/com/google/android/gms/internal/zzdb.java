package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.zze;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class zzdb {
    private static final String TAG = "zzdb";
    private static Object zzqQ = new Object();
    private static zze zzqS;
    protected Context zzqD;
    private Context zzqE;
    private ExecutorService zzqF;
    private DexClassLoader zzqG;
    private zzcw zzqH;
    private byte[] zzqI;
    private volatile AdvertisingIdClient zzqJ = null;
    private Future zzqK = null;
    private volatile zzax zzqL = null;
    private Future zzqM = null;
    private zzcn zzqN;
    private GoogleApiClient zzqO = null;
    protected boolean zzqP = false;
    private boolean zzqR = false;
    protected boolean zzqT = false;
    private Map<Pair<String, String>, zzea> zzqU;
    private boolean zzqV = false;
    private volatile boolean zzqk = false;

    private zzdb(Context context) {
        this.zzqD = context;
        this.zzqE = context.getApplicationContext();
        this.zzqU = new HashMap();
    }

    private final void zzM() {
        try {
            if (this.zzqJ == null && this.zzqE != null) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.zzqE);
                advertisingIdClient.start();
                this.zzqJ = advertisingIdClient;
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException unused) {
            this.zzqJ = null;
        }
    }

    @VisibleForTesting
    private final zzax zzN() {
        try {
            return zzcaq.zzn(this.zzqD, this.zzqD.getPackageName(), Integer.toString(this.zzqD.getPackageManager().getPackageInfo(this.zzqD.getPackageName(), 0).versionCode));
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x006e A:{Catch:{ zzcx -> 0x014b, zzcy -> 0x0152 }} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a0 A:{Catch:{ all -> 0x0118, FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }} */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00ca A:{Catch:{ all -> 0x0118, FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }} */
    /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0065 */
    /* JADX WARNING: Can't wrap try/catch for region: R(19:1|2|(1:4)|5|6|7|8|(1:10)(1:11)|12|(1:14)(1:15)|16|(1:18)|19|20|(2:22|(2:24|25))|26|27|28|(13:29|30|(2:32|(2:34|35))|36|(1:38)|39|40|41|42|43|44|45|46)) */
    public static com.google.android.gms.internal.zzdb zza(android.content.Context r8, java.lang.String r9, java.lang.String r10, boolean r11) {
        /*
        r0 = new com.google.android.gms.internal.zzdb;
        r0.<init>(r8);
        r8 = java.util.concurrent.Executors.newCachedThreadPool();	 Catch:{ zzcy -> 0x0152 }
        r0.zzqF = r8;	 Catch:{ zzcy -> 0x0152 }
        r0.zzqk = r11;	 Catch:{ zzcy -> 0x0152 }
        if (r11 == 0) goto L_0x001c;
    L_0x000f:
        r8 = r0.zzqF;	 Catch:{ zzcy -> 0x0152 }
        r11 = new com.google.android.gms.internal.zzdc;	 Catch:{ zzcy -> 0x0152 }
        r11.<init>(r0);	 Catch:{ zzcy -> 0x0152 }
        r8 = r8.submit(r11);	 Catch:{ zzcy -> 0x0152 }
        r0.zzqK = r8;	 Catch:{ zzcy -> 0x0152 }
    L_0x001c:
        r8 = r0.zzqF;	 Catch:{ zzcy -> 0x0152 }
        r11 = new com.google.android.gms.internal.zzde;	 Catch:{ zzcy -> 0x0152 }
        r11.<init>(r0);	 Catch:{ zzcy -> 0x0152 }
        r8.execute(r11);	 Catch:{ zzcy -> 0x0152 }
        r8 = 1;
        r11 = 0;
        r1 = com.google.android.gms.common.zze.zzoW();	 Catch:{ Throwable -> 0x0065 }
        zzqS = r1;	 Catch:{ Throwable -> 0x0065 }
        r1 = r0.zzqD;	 Catch:{ Throwable -> 0x0065 }
        r1 = com.google.android.gms.common.zze.zzau(r1);	 Catch:{ Throwable -> 0x0065 }
        if (r1 <= 0) goto L_0x0038;
    L_0x0036:
        r1 = 1;
        goto L_0x0039;
    L_0x0038:
        r1 = 0;
    L_0x0039:
        r0.zzqP = r1;	 Catch:{ Throwable -> 0x0065 }
        r1 = zzqS;	 Catch:{ Throwable -> 0x0065 }
        r2 = r0.zzqD;	 Catch:{ Throwable -> 0x0065 }
        r1 = r1.isGooglePlayServicesAvailable(r2);	 Catch:{ Throwable -> 0x0065 }
        if (r1 != 0) goto L_0x0047;
    L_0x0045:
        r1 = 1;
        goto L_0x0048;
    L_0x0047:
        r1 = 0;
    L_0x0048:
        r0.zzqR = r1;	 Catch:{ Throwable -> 0x0065 }
        r1 = r0.zzqD;	 Catch:{ Throwable -> 0x0065 }
        r1 = r1.getApplicationContext();	 Catch:{ Throwable -> 0x0065 }
        if (r1 == 0) goto L_0x0065;
    L_0x0052:
        r1 = new com.google.android.gms.common.api.GoogleApiClient$Builder;	 Catch:{ Throwable -> 0x0065 }
        r2 = r0.zzqD;	 Catch:{ Throwable -> 0x0065 }
        r1.<init>(r2);	 Catch:{ Throwable -> 0x0065 }
        r2 = com.google.android.gms.internal.zzazn.API;	 Catch:{ Throwable -> 0x0065 }
        r1 = r1.addApi(r2);	 Catch:{ Throwable -> 0x0065 }
        r1 = r1.build();	 Catch:{ Throwable -> 0x0065 }
        r0.zzqO = r1;	 Catch:{ Throwable -> 0x0065 }
    L_0x0065:
        r0.zza(r11, r8);	 Catch:{ zzcy -> 0x0152 }
        r1 = com.google.android.gms.internal.zzdg.zzS();	 Catch:{ zzcy -> 0x0152 }
        if (r1 == 0) goto L_0x0088;
    L_0x006e:
        r1 = com.google.android.gms.internal.zzmo.zzFa;	 Catch:{ zzcy -> 0x0152 }
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ zzcy -> 0x0152 }
        r1 = r2.zzd(r1);	 Catch:{ zzcy -> 0x0152 }
        r1 = (java.lang.Boolean) r1;	 Catch:{ zzcy -> 0x0152 }
        r1 = r1.booleanValue();	 Catch:{ zzcy -> 0x0152 }
        if (r1 == 0) goto L_0x0088;
    L_0x0080:
        r8 = new java.lang.IllegalStateException;	 Catch:{ zzcy -> 0x0152 }
        r9 = "Task Context initialization must not be called from the UI thread.";
        r8.<init>(r9);	 Catch:{ zzcy -> 0x0152 }
        throw r8;	 Catch:{ zzcy -> 0x0152 }
    L_0x0088:
        r1 = new com.google.android.gms.internal.zzcw;	 Catch:{ zzcy -> 0x0152 }
        r2 = 0;
        r1.<init>(r2);	 Catch:{ zzcy -> 0x0152 }
        r0.zzqH = r1;	 Catch:{ zzcy -> 0x0152 }
        r1 = r0.zzqH;	 Catch:{ zzcx -> 0x014b }
        r9 = r1.zzl(r9);	 Catch:{ zzcx -> 0x014b }
        r0.zzqI = r9;	 Catch:{ zzcx -> 0x014b }
        r9 = r0.zzqD;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r9 = r9.getCacheDir();	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        if (r9 != 0) goto L_0x00b0;
    L_0x00a0:
        r9 = r0.zzqD;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r1 = "dex";
        r9 = r9.getDir(r1, r11);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        if (r9 != 0) goto L_0x00b0;
    L_0x00aa:
        r8 = new com.google.android.gms.internal.zzcy;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r8.<init>();	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        throw r8;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
    L_0x00b0:
        r1 = "1489418796403";
        r3 = new java.io.File;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r4 = "%s/%s.jar";
        r5 = 2;
        r6 = new java.lang.Object[r5];	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r6[r11] = r9;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r6[r8] = r1;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r4 = java.lang.String.format(r4, r6);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r3.<init>(r4);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r4 = r3.exists();	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        if (r4 != 0) goto L_0x00e1;
    L_0x00ca:
        r4 = r0.zzqH;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r6 = r0.zzqI;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r10 = r4.zza(r6, r10);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r3.createNewFile();	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r4 = new java.io.FileOutputStream;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r4.<init>(r3);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r6 = r10.length;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r4.write(r10, r11, r6);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r4.close();	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
    L_0x00e1:
        r0.zzb(r9, r1);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r10 = new dalvik.system.DexClassLoader;	 Catch:{ all -> 0x0118 }
        r4 = r3.getAbsolutePath();	 Catch:{ all -> 0x0118 }
        r6 = r9.getAbsolutePath();	 Catch:{ all -> 0x0118 }
        r7 = r0.zzqD;	 Catch:{ all -> 0x0118 }
        r7 = r7.getClassLoader();	 Catch:{ all -> 0x0118 }
        r10.<init>(r4, r6, r2, r7);	 Catch:{ all -> 0x0118 }
        r0.zzqG = r10;	 Catch:{ all -> 0x0118 }
        zza(r3);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r0.zza(r9, r1);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r10 = "%s/%s.dex";
        r2 = new java.lang.Object[r5];	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r2[r11] = r9;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r2[r8] = r1;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r9 = java.lang.String.format(r10, r2);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        zzm(r9);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r9 = new com.google.android.gms.internal.zzcn;	 Catch:{ zzcy -> 0x0152 }
        r9.<init>(r0);	 Catch:{ zzcy -> 0x0152 }
        r0.zzqN = r9;	 Catch:{ zzcy -> 0x0152 }
        r0.zzqV = r8;	 Catch:{ zzcy -> 0x0152 }
        return r0;
    L_0x0118:
        r10 = move-exception;
        zza(r3);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r0.zza(r9, r1);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r2 = "%s/%s.dex";
        r3 = new java.lang.Object[r5];	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r3[r11] = r9;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r3[r8] = r1;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        r8 = java.lang.String.format(r2, r3);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        zzm(r8);	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
        throw r10;	 Catch:{ FileNotFoundException -> 0x0144, IOException -> 0x013d, zzcx -> 0x0136, NullPointerException -> 0x012f }
    L_0x012f:
        r8 = move-exception;
        r9 = new com.google.android.gms.internal.zzcy;	 Catch:{ zzcy -> 0x0152 }
        r9.<init>(r8);	 Catch:{ zzcy -> 0x0152 }
        throw r9;	 Catch:{ zzcy -> 0x0152 }
    L_0x0136:
        r8 = move-exception;
        r9 = new com.google.android.gms.internal.zzcy;	 Catch:{ zzcy -> 0x0152 }
        r9.<init>(r8);	 Catch:{ zzcy -> 0x0152 }
        throw r9;	 Catch:{ zzcy -> 0x0152 }
    L_0x013d:
        r8 = move-exception;
        r9 = new com.google.android.gms.internal.zzcy;	 Catch:{ zzcy -> 0x0152 }
        r9.<init>(r8);	 Catch:{ zzcy -> 0x0152 }
        throw r9;	 Catch:{ zzcy -> 0x0152 }
    L_0x0144:
        r8 = move-exception;
        r9 = new com.google.android.gms.internal.zzcy;	 Catch:{ zzcy -> 0x0152 }
        r9.<init>(r8);	 Catch:{ zzcy -> 0x0152 }
        throw r9;	 Catch:{ zzcy -> 0x0152 }
    L_0x014b:
        r8 = move-exception;
        r9 = new com.google.android.gms.internal.zzcy;	 Catch:{ zzcy -> 0x0152 }
        r9.<init>(r8);	 Catch:{ zzcy -> 0x0152 }
        throw r9;	 Catch:{ zzcy -> 0x0152 }
    L_0x0152:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzdb.zza(android.content.Context, java.lang.String, java.lang.String, boolean):com.google.android.gms.internal.zzdb");
    }

    private static void zza(File file) {
        if (file.exists()) {
            file.delete();
            return;
        }
        Log.d(TAG, String.format("File %s not found. No need for deletion", new Object[]{file.getAbsolutePath()}));
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x0091 */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00b2 A:{SYNTHETIC, Splitter:B:52:0x00b2} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00b7 A:{SYNTHETIC, Splitter:B:56:0x00b7} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00a3 A:{SYNTHETIC, Splitter:B:39:0x00a3} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00a8 A:{SYNTHETIC, Splitter:B:43:0x00a8} */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00b2 A:{SYNTHETIC, Splitter:B:52:0x00b2} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00b7 A:{SYNTHETIC, Splitter:B:56:0x00b7} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00a3 A:{SYNTHETIC, Splitter:B:39:0x00a3} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00a8 A:{SYNTHETIC, Splitter:B:43:0x00a8} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(10:20|21|22|23|24|25|26|27|28|30) */
    private final void zza(java.io.File r8, java.lang.String r9) {
        /*
        r7 = this;
        r0 = new java.io.File;
        r1 = "%s/%s.tmp";
        r2 = 2;
        r3 = new java.lang.Object[r2];
        r4 = 0;
        r3[r4] = r8;
        r5 = 1;
        r3[r5] = r9;
        r1 = java.lang.String.format(r1, r3);
        r0.<init>(r1);
        r1 = r0.exists();
        if (r1 == 0) goto L_0x001b;
    L_0x001a:
        return;
    L_0x001b:
        r1 = new java.io.File;
        r3 = "%s/%s.dex";
        r2 = new java.lang.Object[r2];
        r2[r4] = r8;
        r2[r5] = r9;
        r8 = java.lang.String.format(r3, r2);
        r1.<init>(r8);
        r8 = r1.exists();
        if (r8 != 0) goto L_0x0033;
    L_0x0032:
        return;
    L_0x0033:
        r2 = r1.length();
        r5 = 0;
        r8 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1));
        if (r8 > 0) goto L_0x003e;
    L_0x003d:
        return;
    L_0x003e:
        r8 = (int) r2;
        r8 = new byte[r8];
        r2 = 0;
        r3 = new java.io.FileInputStream;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00af, zzcx | IOException | NoSuchAlgorithmException -> 0x00af, zzcx | IOException | NoSuchAlgorithmException -> 0x00af, all -> 0x009f }
        r3.<init>(r1);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00af, zzcx | IOException | NoSuchAlgorithmException -> 0x00af, zzcx | IOException | NoSuchAlgorithmException -> 0x00af, all -> 0x009f }
        r5 = r3.read(r8);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        if (r5 > 0) goto L_0x0054;
    L_0x004d:
        r3.close();	 Catch:{ IOException -> 0x0050 }
    L_0x0050:
        zza(r1);
        return;
    L_0x0054:
        r5 = new com.google.android.gms.internal.zzbc;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r5.<init>();	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r6 = android.os.Build.VERSION.SDK;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r6 = r6.getBytes();	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r5.zzcG = r6;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r9 = r9.getBytes();	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r5.zzcF = r9;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r9 = r7.zzqH;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r6 = r7.zzqI;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r8 = r9.zzc(r6, r8);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r8 = r8.getBytes();	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r5.data = r8;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r8 = com.google.android.gms.internal.zzbv.zzb(r8);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r5.zzcE = r8;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r0.createNewFile();	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r8 = new java.io.FileOutputStream;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r8.<init>(r0);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, zzcx | IOException | NoSuchAlgorithmException -> 0x00b0, all -> 0x009d }
        r9 = com.google.android.gms.internal.adp.zzc(r5);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x009b, zzcx | IOException | NoSuchAlgorithmException -> 0x009b, zzcx | IOException | NoSuchAlgorithmException -> 0x009b, all -> 0x0098 }
        r0 = r9.length;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x009b, zzcx | IOException | NoSuchAlgorithmException -> 0x009b, zzcx | IOException | NoSuchAlgorithmException -> 0x009b, all -> 0x0098 }
        r8.write(r9, r4, r0);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x009b, zzcx | IOException | NoSuchAlgorithmException -> 0x009b, zzcx | IOException | NoSuchAlgorithmException -> 0x009b, all -> 0x0098 }
        r8.close();	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x009b, zzcx | IOException | NoSuchAlgorithmException -> 0x009b, zzcx | IOException | NoSuchAlgorithmException -> 0x009b, all -> 0x0098 }
        r3.close();	 Catch:{ IOException -> 0x0091 }
    L_0x0091:
        r8.close();	 Catch:{ IOException -> 0x0094 }
    L_0x0094:
        zza(r1);
        return;
    L_0x0098:
        r9 = move-exception;
        r2 = r8;
        goto L_0x00a1;
    L_0x009b:
        r2 = r8;
        goto L_0x00b0;
    L_0x009d:
        r9 = move-exception;
        goto L_0x00a1;
    L_0x009f:
        r9 = move-exception;
        r3 = r2;
    L_0x00a1:
        if (r3 == 0) goto L_0x00a6;
    L_0x00a3:
        r3.close();	 Catch:{ IOException -> 0x00a6 }
    L_0x00a6:
        if (r2 == 0) goto L_0x00ab;
    L_0x00a8:
        r2.close();	 Catch:{ IOException -> 0x00ab }
    L_0x00ab:
        zza(r1);
        throw r9;
    L_0x00af:
        r3 = r2;
    L_0x00b0:
        if (r3 == 0) goto L_0x00b5;
    L_0x00b2:
        r3.close();	 Catch:{ IOException -> 0x00b5 }
    L_0x00b5:
        if (r2 == 0) goto L_0x00ba;
    L_0x00b7:
        r2.close();	 Catch:{ IOException -> 0x00ba }
    L_0x00ba:
        zza(r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzdb.zza(java.io.File, java.lang.String):void");
    }

    private static boolean zza(int i, zzax zzax) {
        if (i < 4) {
            if (zzax == null) {
                return true;
            }
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFd)).booleanValue() && (zzax.zzaT == null || zzax.zzaT.equals("0000000000000000000000000000000000000000000000000000000000000000"))) {
                return true;
            }
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFe)).booleanValue() && (zzax.zzbZ == null || zzax.zzbZ.zzcx == null || zzax.zzbZ.zzcx.longValue() == -2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:64:0x00d3 A:{SYNTHETIC, Splitter:B:64:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00d8 A:{SYNTHETIC, Splitter:B:68:0x00d8} */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00c7 A:{SYNTHETIC, Splitter:B:52:0x00c7} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00cc A:{SYNTHETIC, Splitter:B:56:0x00cc} */
    /* JADX WARNING: Missing exception handler attribute for start block: B:34:0x00b1 */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00d3 A:{SYNTHETIC, Splitter:B:64:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00d8 A:{SYNTHETIC, Splitter:B:68:0x00d8} */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00c7 A:{SYNTHETIC, Splitter:B:52:0x00c7} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00cc A:{SYNTHETIC, Splitter:B:56:0x00cc} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(8:29|30|31|32|33|34|35|36) */
    private final boolean zzb(java.io.File r10, java.lang.String r11) {
        /*
        r9 = this;
        r0 = new java.io.File;
        r1 = "%s/%s.tmp";
        r2 = 2;
        r3 = new java.lang.Object[r2];
        r4 = 0;
        r3[r4] = r10;
        r5 = 1;
        r3[r5] = r11;
        r1 = java.lang.String.format(r1, r3);
        r0.<init>(r1);
        r1 = r0.exists();
        if (r1 != 0) goto L_0x001b;
    L_0x001a:
        return r4;
    L_0x001b:
        r1 = new java.io.File;
        r3 = "%s/%s.dex";
        r2 = new java.lang.Object[r2];
        r2[r4] = r10;
        r2[r5] = r11;
        r10 = java.lang.String.format(r3, r2);
        r1.<init>(r10);
        r10 = r1.exists();
        if (r10 == 0) goto L_0x0033;
    L_0x0032:
        return r4;
    L_0x0033:
        r10 = 0;
        r2 = r0.length();	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, all -> 0x00c3 }
        r6 = 0;
        r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1));
        if (r8 > 0) goto L_0x0042;
    L_0x003e:
        zza(r0);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, all -> 0x00c3 }
        return r4;
    L_0x0042:
        r2 = (int) r2;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, all -> 0x00c3 }
        r2 = new byte[r2];	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, all -> 0x00c3 }
        r3 = new java.io.FileInputStream;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, all -> 0x00c3 }
        r3.<init>(r0);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, zzcx | IOException | NoSuchAlgorithmException -> 0x00d0, all -> 0x00c3 }
        r6 = r3.read(r2);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        if (r6 > 0) goto L_0x005e;
    L_0x0050:
        r11 = TAG;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r1 = "Cannot read the cache data.";
        android.util.Log.d(r11, r1);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        zza(r0);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r3.close();	 Catch:{ IOException -> 0x005d }
    L_0x005d:
        return r4;
    L_0x005e:
        r6 = new com.google.android.gms.internal.zzbc;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r6.<init>();	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r2 = com.google.android.gms.internal.adp.zza(r6, r2);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r2 = (com.google.android.gms.internal.zzbc) r2;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r6 = new java.lang.String;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r7 = r2.zzcF;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r6.<init>(r7);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r11 = r11.equals(r6);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        if (r11 == 0) goto L_0x00ba;
    L_0x0076:
        r11 = r2.zzcE;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r6 = r2.data;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r6 = com.google.android.gms.internal.zzbv.zzb(r6);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r11 = java.util.Arrays.equals(r11, r6);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        if (r11 == 0) goto L_0x00ba;
    L_0x0084:
        r11 = r2.zzcG;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r6 = android.os.Build.VERSION.SDK;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r6 = r6.getBytes();	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r11 = java.util.Arrays.equals(r11, r6);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        if (r11 != 0) goto L_0x0093;
    L_0x0092:
        goto L_0x00ba;
    L_0x0093:
        r11 = r9.zzqH;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r0 = r9.zzqI;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r6 = new java.lang.String;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r2 = r2.data;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r6.<init>(r2);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r11 = r11.zza(r0, r6);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r1.createNewFile();	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r0 = new java.io.FileOutputStream;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r0.<init>(r1);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r10 = r11.length;	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b8, zzcx | IOException | NoSuchAlgorithmException -> 0x00b8, zzcx | IOException | NoSuchAlgorithmException -> 0x00b8, all -> 0x00b5 }
        r0.write(r11, r4, r10);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00b8, zzcx | IOException | NoSuchAlgorithmException -> 0x00b8, zzcx | IOException | NoSuchAlgorithmException -> 0x00b8, all -> 0x00b5 }
        r3.close();	 Catch:{ IOException -> 0x00b1 }
    L_0x00b1:
        r0.close();	 Catch:{ IOException -> 0x00b4 }
    L_0x00b4:
        return r5;
    L_0x00b5:
        r11 = move-exception;
        r10 = r0;
        goto L_0x00c5;
    L_0x00b8:
        r10 = r0;
        goto L_0x00d1;
    L_0x00ba:
        zza(r0);	 Catch:{ zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, zzcx | IOException | NoSuchAlgorithmException -> 0x00d1, all -> 0x00c1 }
        r3.close();	 Catch:{ IOException -> 0x00c0 }
    L_0x00c0:
        return r4;
    L_0x00c1:
        r11 = move-exception;
        goto L_0x00c5;
    L_0x00c3:
        r11 = move-exception;
        r3 = r10;
    L_0x00c5:
        if (r3 == 0) goto L_0x00ca;
    L_0x00c7:
        r3.close();	 Catch:{ IOException -> 0x00ca }
    L_0x00ca:
        if (r10 == 0) goto L_0x00cf;
    L_0x00cc:
        r10.close();	 Catch:{ IOException -> 0x00cf }
    L_0x00cf:
        throw r11;
    L_0x00d0:
        r3 = r10;
    L_0x00d1:
        if (r3 == 0) goto L_0x00d6;
    L_0x00d3:
        r3.close();	 Catch:{ IOException -> 0x00d6 }
    L_0x00d6:
        if (r10 == 0) goto L_0x00db;
    L_0x00d8:
        r10.close();	 Catch:{ IOException -> 0x00db }
    L_0x00db:
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzdb.zzb(java.io.File, java.lang.String):boolean");
    }

    private static void zzm(String str) {
        zza(new File(str));
    }

    public final Context getApplicationContext() {
        return this.zzqE;
    }

    public final Context getContext() {
        return this.zzqD;
    }

    public final boolean isInitialized() {
        return this.zzqV;
    }

    public final ExecutorService zzC() {
        return this.zzqF;
    }

    public final DexClassLoader zzD() {
        return this.zzqG;
    }

    public final zzcw zzE() {
        return this.zzqH;
    }

    public final byte[] zzF() {
        return this.zzqI;
    }

    public final GoogleApiClient zzG() {
        return this.zzqO;
    }

    public final boolean zzH() {
        return this.zzqP;
    }

    public final zzcn zzI() {
        return this.zzqN;
    }

    public final boolean zzJ() {
        return this.zzqR;
    }

    public final zzax zzK() {
        return this.zzqL;
    }

    public final Future zzL() {
        return this.zzqM;
    }

    public final AdvertisingIdClient zzO() {
        if (!this.zzqk) {
            return null;
        }
        if (this.zzqJ != null) {
            return this.zzqJ;
        }
        if (this.zzqK != null) {
            try {
                this.zzqK.get(2000, TimeUnit.MILLISECONDS);
                this.zzqK = null;
            } catch (InterruptedException | ExecutionException unused) {
            } catch (TimeoutException unused2) {
                this.zzqK.cancel(true);
            }
        }
        return this.zzqJ;
    }

    /* JADX WARNING: Missing block: B:15:0x001e, code skipped:
            return;
     */
    public final void zzP() {
        /*
        r2 = this;
        r0 = zzqQ;	 Catch:{ Throwable -> 0x0022 }
        monitor-enter(r0);	 Catch:{ Throwable -> 0x0022 }
        r1 = r2.zzqT;	 Catch:{ all -> 0x001f }
        if (r1 == 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r0);	 Catch:{ all -> 0x001f }
        return;
    L_0x0009:
        r1 = r2.zzqR;	 Catch:{ all -> 0x001f }
        if (r1 == 0) goto L_0x001a;
    L_0x000d:
        r1 = r2.zzqO;	 Catch:{ all -> 0x001f }
        if (r1 == 0) goto L_0x001a;
    L_0x0011:
        r1 = r2.zzqO;	 Catch:{ all -> 0x001f }
        r1.connect();	 Catch:{ all -> 0x001f }
        r1 = 1;
        r2.zzqT = r1;	 Catch:{ all -> 0x001f }
        goto L_0x001d;
    L_0x001a:
        r1 = 0;
        r2.zzqT = r1;	 Catch:{ all -> 0x001f }
    L_0x001d:
        monitor-exit(r0);	 Catch:{ all -> 0x001f }
        return;
    L_0x001f:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x001f }
        throw r1;	 Catch:{ Throwable -> 0x0022 }
    L_0x0022:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzdb.zzP():void");
    }

    public final void zzQ() {
        synchronized (zzqQ) {
            if (this.zzqT && this.zzqO != null) {
                this.zzqO.disconnect();
                this.zzqT = false;
            }
        }
    }

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final void zza(int i, boolean z) {
        if (this.zzqR) {
            Future submit = this.zzqF.submit(new zzdd(this, i, z));
            if (i == 0) {
                this.zzqM = submit;
            }
        }
    }

    public final boolean zza(String str, String str2, Class<?>... clsArr) {
        if (this.zzqU.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.zzqU.put(new Pair(str, str2), new zzea(this, str, str2, clsArr));
        return true;
    }

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final zzax zzb(int i, boolean z) {
        if (i > 0 && z) {
            try {
                Thread.sleep((long) (i * 1000));
            } catch (InterruptedException unused) {
            }
        }
        return zzN();
    }

    public final Method zzc(String str, String str2) {
        zzea zzea = (zzea) this.zzqU.get(new Pair(str, str2));
        return zzea == null ? null : zzea.zzY();
    }

    public final int zzy() {
        return this.zzqN != null ? zzcn.zzy() : Integer.MIN_VALUE;
    }
}
