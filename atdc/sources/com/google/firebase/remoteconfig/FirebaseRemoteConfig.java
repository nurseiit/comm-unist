package com.google.firebase.remoteconfig;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.XmlResourceParser;
import android.os.AsyncTask;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.internal.abe;
import com.google.android.gms.internal.abf;
import com.google.android.gms.internal.abg;
import com.google.android.gms.internal.abh;
import com.google.android.gms.internal.abi;
import com.google.android.gms.internal.abj;
import com.google.android.gms.internal.abk;
import com.google.android.gms.internal.abl;
import com.google.android.gms.internal.abm;
import com.google.android.gms.internal.abn;
import com.google.android.gms.internal.abo;
import com.google.android.gms.internal.abp;
import com.google.android.gms.internal.abq;
import com.google.android.gms.internal.in;
import com.google.android.gms.internal.zzbhb;
import com.google.android.gms.internal.zzbhg;
import com.google.android.gms.internal.zzbhh;
import com.google.android.gms.internal.zzbhs;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings.Builder;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class FirebaseRemoteConfig {
    public static final boolean DEFAULT_VALUE_FOR_BOOLEAN = false;
    public static final byte[] DEFAULT_VALUE_FOR_BYTE_ARRAY = new byte[0];
    public static final double DEFAULT_VALUE_FOR_DOUBLE = 0.0d;
    public static final long DEFAULT_VALUE_FOR_LONG = 0;
    public static final String DEFAULT_VALUE_FOR_STRING = "";
    public static final int LAST_FETCH_STATUS_FAILURE = 1;
    public static final int LAST_FETCH_STATUS_NO_FETCH_YET = 0;
    public static final int LAST_FETCH_STATUS_SUCCESS = -1;
    public static final int LAST_FETCH_STATUS_THROTTLED = 2;
    public static final int VALUE_SOURCE_DEFAULT = 1;
    public static final int VALUE_SOURCE_REMOTE = 2;
    public static final int VALUE_SOURCE_STATIC = 0;
    private static FirebaseRemoteConfig zzcns;
    private final Context mContext;
    private abh zzcnt;
    private abh zzcnu;
    private abh zzcnv;
    private abk zzcnw;
    private final ReadWriteLock zzcnx;

    private FirebaseRemoteConfig(Context context) {
        this(context, null, null, null, null);
    }

    private FirebaseRemoteConfig(Context context, abh abh, abh abh2, abh abh3, abk abk) {
        this.zzcnx = new ReentrantReadWriteLock(true);
        this.mContext = context;
        if (abk != null) {
            this.zzcnw = abk;
        } else {
            this.zzcnw = new abk();
        }
        this.zzcnw.zzaL(zzbS(this.mContext));
        if (abh != null) {
            this.zzcnt = abh;
        }
        if (abh2 != null) {
            this.zzcnu = abh2;
        }
        if (abh3 != null) {
            this.zzcnv = abh3;
        }
    }

    public static FirebaseRemoteConfig getInstance() {
        if (zzcns != null) {
            return zzcns;
        }
        FirebaseApp instance = FirebaseApp.getInstance();
        if (instance == null) {
            throw new IllegalStateException("FirebaseApp has not been initialized.");
        }
        Context applicationContext = instance.getApplicationContext();
        if (zzcns == null) {
            FirebaseRemoteConfig firebaseRemoteConfig;
            abp zzbT = zzbT(applicationContext);
            if (zzbT == null) {
                if (Log.isLoggable("FirebaseRemoteConfig", 3)) {
                    Log.d("FirebaseRemoteConfig", "No persisted config was found. Initializing from scratch.");
                }
                firebaseRemoteConfig = new FirebaseRemoteConfig(applicationContext);
            } else {
                abk abk;
                if (Log.isLoggable("FirebaseRemoteConfig", 3)) {
                    Log.d("FirebaseRemoteConfig", "Initializing from persisted config.");
                }
                abh zza = zza(zzbT.zzcnX);
                abh zza2 = zza(zzbT.zzcnY);
                abh zza3 = zza(zzbT.zzcnZ);
                abn abn = zzbT.zzcoa;
                if (abn == null) {
                    abk = null;
                } else {
                    abk abk2 = new abk();
                    abk2.zzce(abn.zzcnS);
                    abk2.zzaJ(abn.zzcnT);
                    abk2.zzaM(abn.zzcnU);
                    abk = abk2;
                }
                if (abk != null) {
                    abk.zzH(zza(zzbT.zzcob));
                }
                FirebaseRemoteConfig firebaseRemoteConfig2 = new FirebaseRemoteConfig(applicationContext, zza, zza2, zza3, abk);
            }
            zzcns = firebaseRemoteConfig;
        }
        return zzcns;
    }

    private final void zzKB() {
        this.zzcnx.readLock().lock();
        try {
            zzr(new abg(this.mContext, this.zzcnt, this.zzcnu, this.zzcnv, this.zzcnw));
        } finally {
            this.zzcnx.readLock().unlock();
        }
    }

    private static long zza(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += (long) read;
        }
    }

    private static abh zza(abl abl) {
        if (abl == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (abo abo : abl.zzcnO) {
            String str = abo.zzbxU;
            HashMap hashMap2 = new HashMap();
            for (abm abm : abo.zzcnW) {
                hashMap2.put(abm.key, abm.zzcnR);
            }
            hashMap.put(str, hashMap2);
        }
        byte[][] bArr = abl.zzcnP;
        ArrayList arrayList = new ArrayList();
        for (Object add : bArr) {
            arrayList.add(add);
        }
        return new abh(hashMap, abl.timestamp, arrayList);
    }

    private static Map<String, abe> zza(abq[] abqArr) {
        HashMap hashMap = new HashMap();
        if (abqArr == null) {
            return hashMap;
        }
        for (abq abq : abqArr) {
            hashMap.put(abq.zzbxU, new abe(abq.resourceId, abq.zzcod));
        }
        return hashMap;
    }

    private final long zzbS(Context context) {
        try {
            return this.mContext.getPackageManager().getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
        } catch (NameNotFoundException unused) {
            String valueOf = String.valueOf(context.getPackageName());
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 25);
            stringBuilder.append("Package [");
            stringBuilder.append(valueOf);
            stringBuilder.append("] was not found!");
            Log.e("FirebaseRemoteConfig", stringBuilder.toString());
            return 0;
        }
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:31:0x0056=Splitter:B:31:0x0056, B:20:0x003e=Splitter:B:20:0x003e} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x005f A:{Catch:{ all -> 0x0075 }} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0068 A:{SYNTHETIC, Splitter:B:36:0x0068} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0047 A:{SYNTHETIC, Splitter:B:23:0x0047} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0078 A:{SYNTHETIC, Splitter:B:44:0x0078} */
    private static com.google.android.gms.internal.abp zzbT(android.content.Context r5) {
        /*
        r0 = 0;
        if (r5 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = "persisted_config";
        r5 = r5.openFileInput(r1);	 Catch:{ FileNotFoundException -> 0x0054, IOException -> 0x003c, all -> 0x0037 }
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ FileNotFoundException -> 0x0035, IOException -> 0x0033 }
        r1.<init>();	 Catch:{ FileNotFoundException -> 0x0035, IOException -> 0x0033 }
        zza(r5, r1);	 Catch:{ FileNotFoundException -> 0x0035, IOException -> 0x0033 }
        r1 = r1.toByteArray();	 Catch:{ FileNotFoundException -> 0x0035, IOException -> 0x0033 }
        r2 = 0;
        r3 = r1.length;	 Catch:{ FileNotFoundException -> 0x0035, IOException -> 0x0033 }
        r1 = com.google.android.gms.internal.adg.zzb(r1, r2, r3);	 Catch:{ FileNotFoundException -> 0x0035, IOException -> 0x0033 }
        r2 = new com.google.android.gms.internal.abp;	 Catch:{ FileNotFoundException -> 0x0035, IOException -> 0x0033 }
        r2.<init>();	 Catch:{ FileNotFoundException -> 0x0035, IOException -> 0x0033 }
        r2.zza(r1);	 Catch:{ FileNotFoundException -> 0x0035, IOException -> 0x0033 }
        if (r5 == 0) goto L_0x0032;
    L_0x0026:
        r5.close();	 Catch:{ IOException -> 0x002a }
        return r2;
    L_0x002a:
        r5 = move-exception;
        r0 = "FirebaseRemoteConfig";
        r1 = "Failed to close persisted config file.";
        android.util.Log.e(r0, r1, r5);
    L_0x0032:
        return r2;
    L_0x0033:
        r1 = move-exception;
        goto L_0x003e;
    L_0x0035:
        r1 = move-exception;
        goto L_0x0056;
    L_0x0037:
        r5 = move-exception;
        r4 = r0;
        r0 = r5;
        r5 = r4;
        goto L_0x0076;
    L_0x003c:
        r1 = move-exception;
        r5 = r0;
    L_0x003e:
        r2 = "FirebaseRemoteConfig";
        r3 = "Cannot initialize from persisted config.";
        android.util.Log.e(r2, r3, r1);	 Catch:{ all -> 0x0075 }
        if (r5 == 0) goto L_0x0053;
    L_0x0047:
        r5.close();	 Catch:{ IOException -> 0x004b }
        return r0;
    L_0x004b:
        r5 = move-exception;
        r1 = "FirebaseRemoteConfig";
        r2 = "Failed to close persisted config file.";
        android.util.Log.e(r1, r2, r5);
    L_0x0053:
        return r0;
    L_0x0054:
        r1 = move-exception;
        r5 = r0;
    L_0x0056:
        r2 = "FirebaseRemoteConfig";
        r3 = 3;
        r2 = android.util.Log.isLoggable(r2, r3);	 Catch:{ all -> 0x0075 }
        if (r2 == 0) goto L_0x0066;
    L_0x005f:
        r2 = "FirebaseRemoteConfig";
        r3 = "Persisted config file was not found.";
        android.util.Log.d(r2, r3, r1);	 Catch:{ all -> 0x0075 }
    L_0x0066:
        if (r5 == 0) goto L_0x0074;
    L_0x0068:
        r5.close();	 Catch:{ IOException -> 0x006c }
        return r0;
    L_0x006c:
        r5 = move-exception;
        r1 = "FirebaseRemoteConfig";
        r2 = "Failed to close persisted config file.";
        android.util.Log.e(r1, r2, r5);
    L_0x0074:
        return r0;
    L_0x0075:
        r0 = move-exception;
    L_0x0076:
        if (r5 == 0) goto L_0x0084;
    L_0x0078:
        r5.close();	 Catch:{ IOException -> 0x007c }
        goto L_0x0084;
    L_0x007c:
        r5 = move-exception;
        r1 = "FirebaseRemoteConfig";
        r2 = "Failed to close persisted config file.";
        android.util.Log.e(r1, r2, r5);
    L_0x0084:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.FirebaseRemoteConfig.zzbT(android.content.Context):com.google.android.gms.internal.abp");
    }

    private final void zzc(Map<String, Object> map, String str, boolean z) {
        if (str != null) {
            abh abh;
            long currentTimeMillis;
            Object obj = (map == null || map.isEmpty()) ? 1 : null;
            HashMap hashMap = new HashMap();
            if (obj == null) {
                for (String str2 : map.keySet()) {
                    String str3;
                    Object obj2 = map.get(str2);
                    if (obj2 instanceof String) {
                        str3 = (String) obj2;
                    } else if (obj2 instanceof Long) {
                        str3 = ((Long) obj2).toString();
                    } else if (obj2 instanceof Integer) {
                        str3 = ((Integer) obj2).toString();
                    } else if (obj2 instanceof Double) {
                        str3 = ((Double) obj2).toString();
                    } else if (obj2 instanceof Float) {
                        str3 = ((Float) obj2).toString();
                    } else if (obj2 instanceof byte[]) {
                        byte[] bArr = (byte[]) obj2;
                        hashMap.put(str2, obj2);
                    } else if (obj2 instanceof Boolean) {
                        str3 = ((Boolean) obj2).toString();
                    } else {
                        throw new IllegalArgumentException("The type of a default value needs to beone of String, Long, Double, Boolean, or byte[].");
                    }
                    obj2 = str3.getBytes(abj.UTF_8);
                    hashMap.put(str2, obj2);
                }
            }
            this.zzcnx.writeLock().lock();
            if (obj != null) {
                try {
                    if (this.zzcnv != null) {
                        if (this.zzcnv.zzhF(str)) {
                            this.zzcnv.zzh(null, str);
                            abh = this.zzcnv;
                            currentTimeMillis = System.currentTimeMillis();
                        }
                    }
                    this.zzcnx.writeLock().unlock();
                } catch (Throwable th) {
                    this.zzcnx.writeLock().unlock();
                }
            } else {
                if (this.zzcnv == null) {
                    this.zzcnv = new abh(new HashMap(), System.currentTimeMillis(), null);
                }
                this.zzcnv.zzh(hashMap, str);
                abh = this.zzcnv;
                currentTimeMillis = System.currentTimeMillis();
            }
            abh.setTimestamp(currentTimeMillis);
            if (z) {
                this.zzcnw.zzhG(str);
            }
            zzKB();
            this.zzcnx.writeLock().unlock();
        }
    }

    private static void zzr(Runnable runnable) {
        AsyncTask.SERIAL_EXECUTOR.execute(runnable);
    }

    public boolean activateFetched() {
        this.zzcnx.writeLock().lock();
        try {
            if (this.zzcnt != null) {
                if (this.zzcnu == null || this.zzcnu.getTimestamp() < this.zzcnt.getTimestamp()) {
                    long timestamp = this.zzcnt.getTimestamp();
                    this.zzcnu = this.zzcnt;
                    this.zzcnu.setTimestamp(System.currentTimeMillis());
                    this.zzcnt = new abh(null, timestamp, null);
                    timestamp = this.zzcnw.zzKI();
                    this.zzcnw.zzaM(in.zza(timestamp, this.zzcnu.zzss()));
                    zzr(new abf(this.mContext, this.zzcnu.zzss(), timestamp));
                    zzKB();
                    this.zzcnx.writeLock().unlock();
                    return true;
                }
            }
            this.zzcnx.writeLock().unlock();
            return false;
        } catch (Throwable th) {
            this.zzcnx.writeLock().unlock();
        }
    }

    public Task<Void> fetch() {
        return fetch(43200);
    }

    public Task<Void> fetch(long j) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zzcnx.readLock().lock();
        try {
            zzbhg zzbhg = new zzbhg();
            zzbhg.zzA(j);
            if (this.zzcnw.isDeveloperModeEnabled()) {
                zzbhg.zzA("_rcn_developer", "true");
            }
            zzbhg.zzaE(10300);
            int i = Integer.MAX_VALUE;
            if (!(this.zzcnu == null || this.zzcnu.getTimestamp() == -1)) {
                long convert = TimeUnit.SECONDS.convert(System.currentTimeMillis() - this.zzcnu.getTimestamp(), TimeUnit.MILLISECONDS);
                zzbhg.zzaG(convert < 2147483647L ? (int) convert : Integer.MAX_VALUE);
            }
            if (!(this.zzcnt == null || this.zzcnt.getTimestamp() == -1)) {
                long convert2 = TimeUnit.SECONDS.convert(System.currentTimeMillis() - this.zzcnt.getTimestamp(), TimeUnit.MILLISECONDS);
                if (convert2 < 2147483647L) {
                    i = (int) convert2;
                }
                zzbhg.zzaF(i);
            }
            zzbhb.zzaKl.zza(new zzbhs(this.mContext).zzpi(), zzbhg.zzsr()).setResultCallback(new zza(this, taskCompletionSource));
            return taskCompletionSource.getTask();
        } finally {
            this.zzcnx.readLock().unlock();
        }
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, "configns:firebase");
    }

    /* JADX WARNING: Missing block: B:15:0x0047, code skipped:
            if (com.google.android.gms.internal.abj.zzaKt.matcher(r1).matches() != false) goto L_0x0049;
     */
    public boolean getBoolean(java.lang.String r6, java.lang.String r7) {
        /*
        r5 = this;
        r0 = 0;
        if (r7 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = r5.zzcnx;
        r1 = r1.readLock();
        r1.lock();
        r1 = r5.zzcnu;	 Catch:{ all -> 0x0084 }
        r2 = 1;
        if (r1 == 0) goto L_0x0053;
    L_0x0012:
        r1 = r5.zzcnu;	 Catch:{ all -> 0x0084 }
        r1 = r1.zzaj(r6, r7);	 Catch:{ all -> 0x0084 }
        if (r1 == 0) goto L_0x0053;
    L_0x001a:
        r1 = new java.lang.String;	 Catch:{ all -> 0x0084 }
        r3 = r5.zzcnu;	 Catch:{ all -> 0x0084 }
        r3 = r3.zzak(r6, r7);	 Catch:{ all -> 0x0084 }
        r4 = com.google.android.gms.internal.abj.UTF_8;	 Catch:{ all -> 0x0084 }
        r1.<init>(r3, r4);	 Catch:{ all -> 0x0084 }
        r3 = com.google.android.gms.internal.abj.zzaKs;	 Catch:{ all -> 0x0084 }
        r3 = r3.matcher(r1);	 Catch:{ all -> 0x0084 }
        r3 = r3.matches();	 Catch:{ all -> 0x0084 }
        if (r3 == 0) goto L_0x003d;
    L_0x0033:
        r6 = r5.zzcnx;
        r6 = r6.readLock();
        r6.unlock();
        return r2;
    L_0x003d:
        r3 = com.google.android.gms.internal.abj.zzaKt;	 Catch:{ all -> 0x0084 }
        r1 = r3.matcher(r1);	 Catch:{ all -> 0x0084 }
        r1 = r1.matches();	 Catch:{ all -> 0x0084 }
        if (r1 == 0) goto L_0x0053;
    L_0x0049:
        r6 = r5.zzcnx;
        r6 = r6.readLock();
        r6.unlock();
        return r0;
    L_0x0053:
        r1 = r5.zzcnv;	 Catch:{ all -> 0x0084 }
        if (r1 == 0) goto L_0x0049;
    L_0x0057:
        r1 = r5.zzcnv;	 Catch:{ all -> 0x0084 }
        r1 = r1.zzaj(r6, r7);	 Catch:{ all -> 0x0084 }
        if (r1 == 0) goto L_0x0049;
    L_0x005f:
        r1 = new java.lang.String;	 Catch:{ all -> 0x0084 }
        r3 = r5.zzcnv;	 Catch:{ all -> 0x0084 }
        r6 = r3.zzak(r6, r7);	 Catch:{ all -> 0x0084 }
        r7 = com.google.android.gms.internal.abj.UTF_8;	 Catch:{ all -> 0x0084 }
        r1.<init>(r6, r7);	 Catch:{ all -> 0x0084 }
        r6 = com.google.android.gms.internal.abj.zzaKs;	 Catch:{ all -> 0x0084 }
        r6 = r6.matcher(r1);	 Catch:{ all -> 0x0084 }
        r6 = r6.matches();	 Catch:{ all -> 0x0084 }
        if (r6 == 0) goto L_0x0079;
    L_0x0078:
        goto L_0x0033;
    L_0x0079:
        r6 = com.google.android.gms.internal.abj.zzaKt;	 Catch:{ all -> 0x0084 }
        r6 = r6.matcher(r1);	 Catch:{ all -> 0x0084 }
        r6 = r6.matches();	 Catch:{ all -> 0x0084 }
        goto L_0x0049;
    L_0x0084:
        r6 = move-exception;
        r7 = r5.zzcnx;
        r7 = r7.readLock();
        r7.unlock();
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.FirebaseRemoteConfig.getBoolean(java.lang.String, java.lang.String):boolean");
    }

    public byte[] getByteArray(String str) {
        return getByteArray(str, "configns:firebase");
    }

    public byte[] getByteArray(String str, String str2) {
        if (str2 == null) {
            return DEFAULT_VALUE_FOR_BYTE_ARRAY;
        }
        this.zzcnx.readLock().lock();
        try {
            abh abh;
            byte[] bArr;
            if (this.zzcnu != null && this.zzcnu.zzaj(str, str2)) {
                abh = this.zzcnu;
            } else if (this.zzcnv == null || !this.zzcnv.zzaj(str, str2)) {
                bArr = DEFAULT_VALUE_FOR_BYTE_ARRAY;
                this.zzcnx.readLock().unlock();
                return bArr;
            } else {
                abh = this.zzcnv;
            }
            bArr = abh.zzak(str, str2);
            this.zzcnx.readLock().unlock();
            return bArr;
        } catch (Throwable th) {
            this.zzcnx.readLock().unlock();
        }
    }

    public double getDouble(String str) {
        return getDouble(str, "configns:firebase");
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0039 */
    /* JADX WARNING: Can't wrap try/catch for region: R(9:3|4|5|(2:7|(3:9|10|11))|13|14|(5:18|19|20|21|22)|23|25) */
    public double getDouble(java.lang.String r6, java.lang.String r7) {
        /*
        r5 = this;
        r0 = 0;
        if (r7 != 0) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        r2 = r5.zzcnx;
        r2 = r2.readLock();
        r2.lock();
        r2 = r5.zzcnu;	 Catch:{ all -> 0x006e }
        if (r2 == 0) goto L_0x0039;
    L_0x0012:
        r2 = r5.zzcnu;	 Catch:{ all -> 0x006e }
        r2 = r2.zzaj(r6, r7);	 Catch:{ all -> 0x006e }
        if (r2 == 0) goto L_0x0039;
    L_0x001a:
        r2 = new java.lang.String;	 Catch:{ all -> 0x006e }
        r3 = r5.zzcnu;	 Catch:{ all -> 0x006e }
        r3 = r3.zzak(r6, r7);	 Catch:{ all -> 0x006e }
        r4 = com.google.android.gms.internal.abj.UTF_8;	 Catch:{ all -> 0x006e }
        r2.<init>(r3, r4);	 Catch:{ all -> 0x006e }
        r2 = java.lang.Double.valueOf(r2);	 Catch:{ NumberFormatException -> 0x0039 }
        r2 = r2.doubleValue();	 Catch:{ NumberFormatException -> 0x0039 }
        r6 = r5.zzcnx;
        r6 = r6.readLock();
        r6.unlock();
        return r2;
    L_0x0039:
        r2 = r5.zzcnv;	 Catch:{ all -> 0x006e }
        if (r2 == 0) goto L_0x0064;
    L_0x003d:
        r2 = r5.zzcnv;	 Catch:{ all -> 0x006e }
        r2 = r2.zzaj(r6, r7);	 Catch:{ all -> 0x006e }
        if (r2 == 0) goto L_0x0064;
    L_0x0045:
        r2 = new java.lang.String;	 Catch:{ all -> 0x006e }
        r3 = r5.zzcnv;	 Catch:{ all -> 0x006e }
        r6 = r3.zzak(r6, r7);	 Catch:{ all -> 0x006e }
        r7 = com.google.android.gms.internal.abj.UTF_8;	 Catch:{ all -> 0x006e }
        r2.<init>(r6, r7);	 Catch:{ all -> 0x006e }
        r6 = java.lang.Double.valueOf(r2);	 Catch:{ NumberFormatException -> 0x0064 }
        r6 = r6.doubleValue();	 Catch:{ NumberFormatException -> 0x0064 }
        r0 = r5.zzcnx;
        r0 = r0.readLock();
        r0.unlock();
        return r6;
    L_0x0064:
        r6 = r5.zzcnx;
        r6 = r6.readLock();
        r6.unlock();
        return r0;
    L_0x006e:
        r6 = move-exception;
        r7 = r5.zzcnx;
        r7 = r7.readLock();
        r7.unlock();
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.FirebaseRemoteConfig.getDouble(java.lang.String, java.lang.String):double");
    }

    public FirebaseRemoteConfigInfo getInfo() {
        FirebaseRemoteConfigInfo abi = new abi();
        this.zzcnx.readLock().lock();
        try {
            abi.zzaK(this.zzcnt == null ? -1 : this.zzcnt.getTimestamp());
            abi.zzce(this.zzcnw.getLastFetchStatus());
            abi.setConfigSettings(new Builder().setDeveloperModeEnabled(this.zzcnw.isDeveloperModeEnabled()).build());
            return abi;
        } finally {
            this.zzcnx.readLock().unlock();
        }
    }

    public Set<String> getKeysByPrefix(String str) {
        return getKeysByPrefix(str, "configns:firebase");
    }

    public Set<String> getKeysByPrefix(String str, String str2) {
        this.zzcnx.readLock().lock();
        try {
            Set<String> treeSet = this.zzcnu == null ? new TreeSet() : this.zzcnu.zzal(str, str2);
            this.zzcnx.readLock().unlock();
            return treeSet;
        } catch (Throwable th) {
            this.zzcnx.readLock().unlock();
        }
    }

    public long getLong(String str) {
        return getLong(str, "configns:firebase");
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0039 */
    /* JADX WARNING: Can't wrap try/catch for region: R(9:3|4|5|(2:7|(3:9|10|11))|13|14|(5:18|19|20|21|22)|23|25) */
    public long getLong(java.lang.String r6, java.lang.String r7) {
        /*
        r5 = this;
        r0 = 0;
        if (r7 != 0) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        r2 = r5.zzcnx;
        r2 = r2.readLock();
        r2.lock();
        r2 = r5.zzcnu;	 Catch:{ all -> 0x006e }
        if (r2 == 0) goto L_0x0039;
    L_0x0012:
        r2 = r5.zzcnu;	 Catch:{ all -> 0x006e }
        r2 = r2.zzaj(r6, r7);	 Catch:{ all -> 0x006e }
        if (r2 == 0) goto L_0x0039;
    L_0x001a:
        r2 = new java.lang.String;	 Catch:{ all -> 0x006e }
        r3 = r5.zzcnu;	 Catch:{ all -> 0x006e }
        r3 = r3.zzak(r6, r7);	 Catch:{ all -> 0x006e }
        r4 = com.google.android.gms.internal.abj.UTF_8;	 Catch:{ all -> 0x006e }
        r2.<init>(r3, r4);	 Catch:{ all -> 0x006e }
        r2 = java.lang.Long.valueOf(r2);	 Catch:{ NumberFormatException -> 0x0039 }
        r2 = r2.longValue();	 Catch:{ NumberFormatException -> 0x0039 }
        r6 = r5.zzcnx;
        r6 = r6.readLock();
        r6.unlock();
        return r2;
    L_0x0039:
        r2 = r5.zzcnv;	 Catch:{ all -> 0x006e }
        if (r2 == 0) goto L_0x0064;
    L_0x003d:
        r2 = r5.zzcnv;	 Catch:{ all -> 0x006e }
        r2 = r2.zzaj(r6, r7);	 Catch:{ all -> 0x006e }
        if (r2 == 0) goto L_0x0064;
    L_0x0045:
        r2 = new java.lang.String;	 Catch:{ all -> 0x006e }
        r3 = r5.zzcnv;	 Catch:{ all -> 0x006e }
        r6 = r3.zzak(r6, r7);	 Catch:{ all -> 0x006e }
        r7 = com.google.android.gms.internal.abj.UTF_8;	 Catch:{ all -> 0x006e }
        r2.<init>(r6, r7);	 Catch:{ all -> 0x006e }
        r6 = java.lang.Long.valueOf(r2);	 Catch:{ NumberFormatException -> 0x0064 }
        r6 = r6.longValue();	 Catch:{ NumberFormatException -> 0x0064 }
        r0 = r5.zzcnx;
        r0 = r0.readLock();
        r0.unlock();
        return r6;
    L_0x0064:
        r6 = r5.zzcnx;
        r6 = r6.readLock();
        r6.unlock();
        return r0;
    L_0x006e:
        r6 = move-exception;
        r7 = r5.zzcnx;
        r7 = r7.readLock();
        r7.unlock();
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.FirebaseRemoteConfig.getLong(java.lang.String, java.lang.String):long");
    }

    public String getString(String str) {
        return getString(str, "configns:firebase");
    }

    public String getString(String str, String str2) {
        if (str2 == null) {
            return "";
        }
        this.zzcnx.readLock().lock();
        try {
            String str3;
            if (this.zzcnu != null && this.zzcnu.zzaj(str, str2)) {
                str3 = new String(this.zzcnu.zzak(str, str2), abj.UTF_8);
            } else if (this.zzcnv == null || !this.zzcnv.zzaj(str, str2)) {
                str = "";
                this.zzcnx.readLock().unlock();
                return str;
            } else {
                str3 = new String(this.zzcnv.zzak(str, str2), abj.UTF_8);
            }
            this.zzcnx.readLock().unlock();
            return str3;
        } catch (Throwable th) {
            this.zzcnx.readLock().unlock();
        }
    }

    public FirebaseRemoteConfigValue getValue(String str) {
        return getValue(str, "configns:firebase");
    }

    public FirebaseRemoteConfigValue getValue(String str, String str2) {
        if (str2 == null) {
            return new abj(DEFAULT_VALUE_FOR_BYTE_ARRAY, 0);
        }
        this.zzcnx.readLock().lock();
        try {
            FirebaseRemoteConfigValue abj;
            if (this.zzcnu != null && this.zzcnu.zzaj(str, str2)) {
                abj = new abj(this.zzcnu.zzak(str, str2), 2);
            } else if (this.zzcnv == null || !this.zzcnv.zzaj(str, str2)) {
                abj abj2 = new abj(DEFAULT_VALUE_FOR_BYTE_ARRAY, 0);
                this.zzcnx.readLock().unlock();
                return abj2;
            } else {
                abj = new abj(this.zzcnv.zzak(str, str2), 1);
            }
            this.zzcnx.readLock().unlock();
            return abj;
        } catch (Throwable th) {
            this.zzcnx.readLock().unlock();
        }
    }

    public void setConfigSettings(FirebaseRemoteConfigSettings firebaseRemoteConfigSettings) {
        this.zzcnx.writeLock().lock();
        try {
            boolean isDeveloperModeEnabled = this.zzcnw.isDeveloperModeEnabled();
            boolean isDeveloperModeEnabled2 = firebaseRemoteConfigSettings == null ? false : firebaseRemoteConfigSettings.isDeveloperModeEnabled();
            this.zzcnw.zzaJ(isDeveloperModeEnabled2);
            if (isDeveloperModeEnabled != isDeveloperModeEnabled2) {
                zzKB();
            }
            this.zzcnx.writeLock().unlock();
        } catch (Throwable th) {
            this.zzcnx.writeLock().unlock();
        }
    }

    public void setDefaults(int i) {
        setDefaults(i, "configns:firebase");
    }

    public void setDefaults(int i, String str) {
        if (str == null) {
            if (Log.isLoggable("FirebaseRemoteConfig", 3)) {
                Log.d("FirebaseRemoteConfig", "namespace cannot be null for setDefaults.");
            }
            return;
        }
        this.zzcnx.readLock().lock();
        try {
            if (!(this.zzcnw == null || this.zzcnw.zzKG() == null || this.zzcnw.zzKG().get(str) == null)) {
                abe abe = (abe) this.zzcnw.zzKG().get(str);
                if (i == abe.zzKC() && this.zzcnw.zzKH() == abe.zzKD()) {
                    if (Log.isLoggable("FirebaseRemoteConfig", 3)) {
                        Log.d("FirebaseRemoteConfig", "Skipped setting defaults from resource file as this resource file was already applied.");
                    }
                    this.zzcnx.readLock().unlock();
                    return;
                }
            }
            this.zzcnx.readLock().unlock();
            HashMap hashMap = new HashMap();
            try {
                XmlResourceParser xml = this.mContext.getResources().getXml(i);
                Object obj = null;
                Object obj2 = obj;
                Object obj3 = obj2;
                for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                    if (eventType == 2) {
                        obj = xml.getName();
                    } else if (eventType == 3) {
                        if (!(!"entry".equals(xml.getName()) || obj2 == null || obj3 == null)) {
                            hashMap.put(obj2, obj3);
                            obj2 = null;
                            obj3 = obj2;
                        }
                        obj = null;
                    } else if (eventType == 4) {
                        if ("key".equals(obj)) {
                            obj2 = xml.getText();
                        } else if (Param.VALUE.equals(obj)) {
                            obj3 = xml.getText();
                        }
                    }
                }
                this.zzcnw.zza(str, new abe(i, this.zzcnw.zzKH()));
                zzc(hashMap, str, false);
            } catch (Exception e) {
                Log.e("FirebaseRemoteConfig", "Caught exception while parsing XML resource. Skipping setDefaults.", e);
            }
        } catch (Throwable th) {
            this.zzcnx.readLock().unlock();
        }
    }

    public void setDefaults(Map<String, Object> map) {
        setDefaults((Map) map, "configns:firebase");
    }

    public void setDefaults(Map<String, Object> map, String str) {
        zzc(map, str, true);
    }

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final void zza(TaskCompletionSource<Void> taskCompletionSource, zzbhh zzbhh) {
        if (zzbhh == null || zzbhh.getStatus() == null) {
            this.zzcnw.zzce(1);
            taskCompletionSource.setException(new FirebaseRemoteConfigFetchException());
            zzKB();
            return;
        }
        Map zzst;
        HashMap hashMap;
        int statusCode = zzbhh.getStatus().getStatusCode();
        this.zzcnx.writeLock().lock();
        if (statusCode != -6508) {
            if (statusCode != GamesStatusCodes.STATUS_MATCH_ERROR_LOCALLY_MODIFIED) {
                switch (statusCode) {
                    case -6506:
                        break;
                    case -6505:
                        zzst = zzbhh.zzst();
                        hashMap = new HashMap();
                        for (String str : zzst.keySet()) {
                            HashMap hashMap2 = new HashMap();
                            for (String str2 : (Set) zzst.get(str)) {
                                hashMap2.put(str2, zzbhh.zza(str2, null, str));
                            }
                            hashMap.put(str, hashMap2);
                        }
                        this.zzcnt = new abh(hashMap, System.currentTimeMillis(), zzbhh.zzss());
                        this.zzcnw.zzce(-1);
                        taskCompletionSource.setResult(null);
                        break;
                    default:
                        switch (statusCode) {
                            case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_PARTICIPANT_STATE /*6500*/:
                            case GamesStatusCodes.STATUS_MATCH_ERROR_INACTIVE_MATCH /*6501*/:
                            case GamesStatusCodes.STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION /*6503*/:
                            case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS /*6504*/:
                                this.zzcnw.zzce(1);
                                taskCompletionSource.setException(new FirebaseRemoteConfigFetchException());
                                break;
                            case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_STATE /*6502*/:
                                break;
                            default:
                                try {
                                    if (zzbhh.getStatus().isSuccess()) {
                                        StringBuilder stringBuilder = new StringBuilder(45);
                                        stringBuilder.append("Unknown (successful) status code: ");
                                        stringBuilder.append(statusCode);
                                        Log.w("FirebaseRemoteConfig", stringBuilder.toString());
                                    }
                                    this.zzcnw.zzce(1);
                                    taskCompletionSource.setException(new FirebaseRemoteConfigFetchException());
                                    break;
                                } catch (Throwable th) {
                                    this.zzcnx.writeLock().unlock();
                                }
                        }
                        break;
                }
            }
            this.zzcnw.zzce(2);
            taskCompletionSource.setException(new FirebaseRemoteConfigFetchThrottledException(zzbhh.getThrottleEndTimeMillis()));
            zzKB();
            this.zzcnx.writeLock().unlock();
        }
        this.zzcnw.zzce(-1);
        if (!(this.zzcnt == null || this.zzcnt.zzKF())) {
            zzst = zzbhh.zzst();
            hashMap = new HashMap();
            for (String str3 : zzst.keySet()) {
                HashMap hashMap3 = new HashMap();
                for (String str4 : (Set) zzst.get(str3)) {
                    hashMap3.put(str4, zzbhh.zza(str4, null, str3));
                }
                hashMap.put(str3, hashMap3);
            }
            this.zzcnt = new abh(hashMap, this.zzcnt.getTimestamp(), zzbhh.zzss());
        }
        taskCompletionSource.setResult(null);
        zzKB();
        this.zzcnx.writeLock().unlock();
    }
}
