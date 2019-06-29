package com.google.android.gms.internal;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.sqlite.SQLiteException;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Size;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.lotecs.util.ErrorCode;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public class zzcgl {
    private static volatile zzcgl zzbsm;
    private final Context mContext;
    private final boolean zzafK;
    private final zzchz zzbsA;
    private final zzcid zzbsB;
    private final zzcet zzbsC;
    private final zzchl zzbsD;
    private final zzcfg zzbsE;
    private final zzcfu zzbsF;
    private final zzcjg zzbsG;
    private final zzcej zzbsH;
    private final zzcec zzbsI;
    private boolean zzbsJ;
    private Boolean zzbsK;
    private long zzbsL;
    private FileLock zzbsM;
    private FileChannel zzbsN;
    private List<Long> zzbsO;
    private List<Runnable> zzbsP;
    private int zzbsQ;
    private int zzbsR;
    private long zzbsS = -1;
    private long zzbsT;
    private boolean zzbsU;
    private boolean zzbsV;
    private boolean zzbsW;
    private final long zzbsX = this.zzvw.currentTimeMillis();
    private final zzcem zzbsn = new zzcem(this);
    private final zzcfw zzbso;
    private final zzcfl zzbsp;
    private final zzcgg zzbsq;
    private final zzcja zzbsr;
    private final zzcgf zzbss;
    private final AppMeasurement zzbst;
    private final FirebaseAnalytics zzbsu;
    private final zzcjl zzbsv;
    private final zzcfj zzbsw;
    private final zzcen zzbsx;
    private final zzcfh zzbsy;
    private final zzcfp zzbsz;
    private final zze zzvw = zzi.zzrY();

    class zza implements zzcep {
        zzcjz zzbsZ;
        List<Long> zzbta;
        private long zzbtb;
        List<zzcjw> zztH;

        private zza() {
        }

        /* synthetic */ zza(zzcgl zzcgl, zzcgm zzcgm) {
            this();
        }

        private static long zza(zzcjw zzcjw) {
            return ((zzcjw.zzbvx.longValue() / 1000) / 60) / 60;
        }

        public final boolean zza(long j, zzcjw zzcjw) {
            zzbo.zzu(zzcjw);
            if (this.zztH == null) {
                this.zztH = new ArrayList();
            }
            if (this.zzbta == null) {
                this.zzbta = new ArrayList();
            }
            if (this.zztH.size() > 0 && zza((zzcjw) this.zztH.get(0)) != zza(zzcjw)) {
                return false;
            }
            long zzLV = this.zzbtb + ((long) zzcjw.zzLV());
            if (zzLV >= ((long) zzcem.zzxL())) {
                return false;
            }
            this.zzbtb = zzLV;
            this.zztH.add(zzcjw);
            this.zzbta.add(Long.valueOf(j));
            return this.zztH.size() < zzcem.zzxM();
        }

        public final void zzb(zzcjz zzcjz) {
            zzbo.zzu(zzcjz);
            this.zzbsZ = zzcjz;
        }
    }

    private zzcgl(zzchk zzchk) {
        zzcfn zzyB;
        zzcfn zzyD;
        String str;
        zzbo.zzu(zzchk);
        this.mContext = zzchk.mContext;
        zzcfw zzcfw = new zzcfw(this);
        zzcfw.initialize();
        this.zzbso = zzcfw;
        zzcfl zzcfl = new zzcfl(this);
        zzcfl.initialize();
        this.zzbsp = zzcfl;
        zzwF().zzyB().zzj("App measurement is starting up, version", Long.valueOf(zzcem.zzwP()));
        zzcem.zzxE();
        zzwF().zzyB().log("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        zzcjl zzcjl = new zzcjl(this);
        zzcjl.initialize();
        this.zzbsv = zzcjl;
        zzcfj zzcfj = new zzcfj(this);
        zzcfj.initialize();
        this.zzbsw = zzcfj;
        zzcet zzcet = new zzcet(this);
        zzcet.initialize();
        this.zzbsC = zzcet;
        zzcfg zzcfg = new zzcfg(this);
        zzcfg.initialize();
        this.zzbsE = zzcfg;
        zzcem.zzxE();
        String zzhl = zzcfg.zzhl();
        if (zzwB().zzey(zzhl)) {
            zzyB = zzwF().zzyB();
            zzhl = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
        } else {
            zzyB = zzwF().zzyB();
            String str2 = "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ";
            zzhl = String.valueOf(zzhl);
            zzhl = zzhl.length() != 0 ? str2.concat(zzhl) : new String(str2);
        }
        zzyB.log(zzhl);
        zzwF().zzyC().log("Debug-level message logging enabled");
        zzcen zzcen = new zzcen(this);
        zzcen.initialize();
        this.zzbsx = zzcen;
        zzcfh zzcfh = new zzcfh(this);
        zzcfh.initialize();
        this.zzbsy = zzcfh;
        zzcej zzcej = new zzcej(this);
        zzcej.initialize();
        this.zzbsH = zzcej;
        this.zzbsI = new zzcec(this);
        zzcfp zzcfp = new zzcfp(this);
        zzcfp.initialize();
        this.zzbsz = zzcfp;
        zzchz zzchz = new zzchz(this);
        zzchz.initialize();
        this.zzbsA = zzchz;
        zzcid zzcid = new zzcid(this);
        zzcid.initialize();
        this.zzbsB = zzcid;
        zzchl zzchl = new zzchl(this);
        zzchl.initialize();
        this.zzbsD = zzchl;
        zzcjg zzcjg = new zzcjg(this);
        zzcjg.initialize();
        this.zzbsG = zzcjg;
        this.zzbsF = new zzcfu(this);
        this.zzbst = new AppMeasurement(this);
        this.zzbsu = new FirebaseAnalytics(this);
        zzcja zzcja = new zzcja(this);
        zzcja.initialize();
        this.zzbsr = zzcja;
        zzcgf zzcgf = new zzcgf(this);
        zzcgf.initialize();
        this.zzbss = zzcgf;
        zzcgg zzcgg = new zzcgg(this);
        zzcgg.initialize();
        this.zzbsq = zzcgg;
        if (this.zzbsQ != this.zzbsR) {
            zzwF().zzyx().zze("Not all components initialized", Integer.valueOf(this.zzbsQ), Integer.valueOf(this.zzbsR));
        }
        this.zzafK = true;
        zzcem.zzxE();
        if (this.mContext.getApplicationContext() instanceof Application) {
            zzchl = zzwt();
            if (zzchl.getContext().getApplicationContext() instanceof Application) {
                Application application = (Application) zzchl.getContext().getApplicationContext();
                if (zzchl.zzbto == null) {
                    zzchl.zzbto = new zzchy(zzchl, null);
                }
                application.unregisterActivityLifecycleCallbacks(zzchl.zzbto);
                application.registerActivityLifecycleCallbacks(zzchl.zzbto);
                zzyD = zzchl.zzwF().zzyD();
                str = "Registered activity lifecycle callback";
            }
            this.zzbsq.zzj(new zzcgm(this));
        }
        zzyD = zzwF().zzyz();
        str = "Application context is not an Application";
        zzyD.log(str);
        this.zzbsq.zzj(new zzcgm(this));
    }

    @WorkerThread
    private final int zza(FileChannel fileChannel) {
        zzwE().zzjC();
        if (fileChannel == null || !fileChannel.isOpen()) {
            zzwF().zzyx().log("Bad chanel to read from");
            return 0;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0);
            int read = fileChannel.read(allocate);
            if (read != 4) {
                if (read != -1) {
                    zzwF().zzyz().zzj("Unexpected data length. Bytes read", Integer.valueOf(read));
                }
                return 0;
            }
            allocate.flip();
            return allocate.getInt();
        } catch (IOException e) {
            zzwF().zzyx().zzj("Failed to read from channel", e);
            return 0;
        }
    }

    /* JADX WARNING: Missing block: B:37:0x0205, code skipped:
            if (r11.zzbpy < ((long) r1.zzbsn.zzdM(r2.mAppId))) goto L_0x0209;
     */
    private final void zza(com.google.android.gms.internal.zzceu r21, com.google.android.gms.internal.zzceh r22) {
        /*
        r20 = this;
        r1 = r20;
        r2 = r21;
        r3 = r22;
        r4 = r20.zzwE();
        r4.zzjC();
        r20.zzkD();
        com.google.android.gms.common.internal.zzbo.zzu(r21);
        com.google.android.gms.common.internal.zzbo.zzu(r22);
        r4 = r2.mAppId;
        com.google.android.gms.common.internal.zzbo.zzcF(r4);
        r4 = r2.mAppId;
        r5 = r3.packageName;
        r4 = r4.equals(r5);
        com.google.android.gms.common.internal.zzbo.zzaf(r4);
        r4 = new com.google.android.gms.internal.zzcjz;
        r4.<init>();
        r5 = 1;
        r6 = java.lang.Integer.valueOf(r5);
        r4.zzbvD = r6;
        r6 = "android";
        r4.zzbvL = r6;
        r6 = r3.packageName;
        r4.zzaH = r6;
        r6 = r3.zzboR;
        r4.zzboR = r6;
        r6 = r3.zzbgW;
        r4.zzbgW = r6;
        r6 = r3.zzboX;
        r8 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        r6 = 0;
        if (r10 != 0) goto L_0x004e;
    L_0x004c:
        r7 = r6;
        goto L_0x0055;
    L_0x004e:
        r7 = r3.zzboX;
        r7 = (int) r7;
        r7 = java.lang.Integer.valueOf(r7);
    L_0x0055:
        r4.zzbvY = r7;
        r7 = r3.zzboS;
        r7 = java.lang.Long.valueOf(r7);
        r4.zzbvP = r7;
        r7 = r3.zzboQ;
        r4.zzboQ = r7;
        r7 = r3.zzboT;
        r9 = 0;
        r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1));
        if (r11 != 0) goto L_0x006d;
    L_0x006b:
        r7 = r6;
        goto L_0x0073;
    L_0x006d:
        r7 = r3.zzboT;
        r7 = java.lang.Long.valueOf(r7);
    L_0x0073:
        r4.zzbvU = r7;
        r7 = r20.zzwG();
        r8 = r3.packageName;
        r7 = r7.zzeb(r8);
        if (r7 == 0) goto L_0x0097;
    L_0x0081:
        r8 = r7.first;
        r8 = (java.lang.CharSequence) r8;
        r8 = android.text.TextUtils.isEmpty(r8);
        if (r8 != 0) goto L_0x0097;
    L_0x008b:
        r8 = r7.first;
        r8 = (java.lang.String) r8;
        r4.zzbvR = r8;
        r7 = r7.second;
        r7 = (java.lang.Boolean) r7;
        r4.zzbvS = r7;
    L_0x0097:
        r7 = r20.zzwv();
        r7.zzkD();
        r7 = android.os.Build.MODEL;
        r4.zzbvM = r7;
        r7 = r20.zzwv();
        r7.zzkD();
        r7 = android.os.Build.VERSION.RELEASE;
        r4.zzaY = r7;
        r7 = r20.zzwv();
        r7 = r7.zzyq();
        r7 = (int) r7;
        r7 = java.lang.Integer.valueOf(r7);
        r4.zzbvO = r7;
        r7 = r20.zzwv();
        r7 = r7.zzyr();
        r4.zzbvN = r7;
        r4.zzbvQ = r6;
        r4.zzbvG = r6;
        r4.zzbvH = r6;
        r4.zzbvI = r6;
        r7 = r3.zzboZ;
        r7 = java.lang.Long.valueOf(r7);
        r4.zzbwc = r7;
        r7 = r20.isEnabled();
        if (r7 == 0) goto L_0x00e7;
    L_0x00dc:
        r7 = com.google.android.gms.internal.zzcem.zzyb();
        if (r7 == 0) goto L_0x00e7;
    L_0x00e2:
        r20.zzwu();
        r4.zzbwd = r6;
    L_0x00e7:
        r6 = r20.zzwz();
        r7 = r3.packageName;
        r6 = r6.zzdQ(r7);
        if (r6 != 0) goto L_0x014f;
    L_0x00f3:
        r6 = new com.google.android.gms.internal.zzceg;
        r7 = r3.packageName;
        r6.<init>(r1, r7);
        r7 = r20.zzwu();
        r7 = r7.zzyu();
        r6.zzdG(r7);
        r7 = r3.zzboY;
        r6.zzdJ(r7);
        r7 = r3.zzboQ;
        r6.zzdH(r7);
        r7 = r20.zzwG();
        r8 = r3.packageName;
        r7 = r7.zzec(r8);
        r6.zzdI(r7);
        r6.zzQ(r9);
        r6.zzL(r9);
        r6.zzM(r9);
        r7 = r3.zzbgW;
        r6.setAppVersion(r7);
        r7 = r3.zzboX;
        r6.zzN(r7);
        r7 = r3.zzboR;
        r6.zzdK(r7);
        r7 = r3.zzboS;
        r6.zzO(r7);
        r7 = r3.zzboT;
        r6.zzP(r7);
        r7 = r3.zzboV;
        r6.setMeasurementEnabled(r7);
        r7 = r3.zzboZ;
        r6.zzZ(r7);
        r7 = r20.zzwz();
        r7.zza(r6);
    L_0x014f:
        r7 = r6.getAppInstanceId();
        r4.zzbvT = r7;
        r6 = r6.zzwK();
        r4.zzboY = r6;
        r6 = r20.zzwz();
        r3 = r3.packageName;
        r3 = r6.zzdP(r3);
        r6 = r3.size();
        r6 = new com.google.android.gms.internal.zzckb[r6];
        r4.zzbvF = r6;
        r6 = 0;
        r7 = 0;
    L_0x016f:
        r8 = r3.size();
        if (r7 >= r8) goto L_0x01a8;
    L_0x0175:
        r8 = new com.google.android.gms.internal.zzckb;
        r8.<init>();
        r11 = r4.zzbvF;
        r11[r7] = r8;
        r11 = r3.get(r7);
        r11 = (com.google.android.gms.internal.zzcjk) r11;
        r11 = r11.mName;
        r8.name = r11;
        r11 = r3.get(r7);
        r11 = (com.google.android.gms.internal.zzcjk) r11;
        r11 = r11.zzbuC;
        r11 = java.lang.Long.valueOf(r11);
        r8.zzbwh = r11;
        r11 = r20.zzwB();
        r12 = r3.get(r7);
        r12 = (com.google.android.gms.internal.zzcjk) r12;
        r12 = r12.mValue;
        r11.zza(r8, r12);
        r7 = r7 + 1;
        goto L_0x016f;
    L_0x01a8:
        r3 = r20.zzwz();	 Catch:{ IOException -> 0x0212 }
        r7 = r3.zza(r4);	 Catch:{ IOException -> 0x0212 }
        r3 = r20.zzwz();
        r4 = r2.zzbpF;
        if (r4 == 0) goto L_0x0208;
    L_0x01b8:
        r4 = r2.zzbpF;
        r4 = r4.iterator();
    L_0x01be:
        r11 = r4.hasNext();
        if (r11 == 0) goto L_0x01d3;
    L_0x01c4:
        r11 = r4.next();
        r11 = (java.lang.String) r11;
        r12 = "_r";
        r11 = r12.equals(r11);
        if (r11 == 0) goto L_0x01be;
    L_0x01d2:
        goto L_0x0209;
    L_0x01d3:
        r4 = r20.zzwC();
        r11 = r2.mAppId;
        r12 = r2.mName;
        r4 = r4.zzO(r11, r12);
        r11 = r20.zzwz();
        r12 = r20.zzyZ();
        r14 = r2.mAppId;
        r15 = 0;
        r16 = 0;
        r17 = 0;
        r18 = 0;
        r19 = 0;
        r11 = r11.zza(r12, r14, r15, r16, r17, r18, r19);
        if (r4 == 0) goto L_0x0208;
    L_0x01f8:
        r11 = r11.zzbpy;
        r4 = r1.zzbsn;
        r13 = r2.mAppId;
        r4 = r4.zzdM(r13);
        r13 = (long) r4;
        r4 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1));
        if (r4 >= 0) goto L_0x0208;
    L_0x0207:
        goto L_0x0209;
    L_0x0208:
        r5 = 0;
    L_0x0209:
        r2 = r3.zza(r2, r7, r5);
        if (r2 == 0) goto L_0x0211;
    L_0x020f:
        r1.zzbsT = r9;
    L_0x0211:
        return;
    L_0x0212:
        r0 = move-exception;
        r2 = r0;
        r3 = r20.zzwF();
        r3 = r3.zzyx();
        r5 = "Data loss. Failed to insert raw event metadata. appId";
        r4 = r4.zzaH;
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r4);
        r3.zze(r5, r4, r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcgl.zza(com.google.android.gms.internal.zzceu, com.google.android.gms.internal.zzceh):void");
    }

    private static void zza(zzchi zzchi) {
        if (zzchi == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static void zza(zzchj zzchj) {
        if (zzchj == null) {
            throw new IllegalStateException("Component not created");
        } else if (!zzchj.isInitialized()) {
            throw new IllegalStateException("Component not initialized");
        }
    }

    @WorkerThread
    private final boolean zza(int i, FileChannel fileChannel) {
        zzwE().zzjC();
        if (fileChannel == null || !fileChannel.isOpen()) {
            zzwF().zzyx().log("Bad chanel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i);
        allocate.flip();
        try {
            fileChannel.truncate(0);
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() != 4) {
                zzwF().zzyx().zzj("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            }
            return true;
        } catch (IOException e) {
            zzwF().zzyx().zzj("Failed to write to channel", e);
            return false;
        }
    }

    private final zzcjv[] zza(String str, zzckb[] zzckbArr, zzcjw[] zzcjwArr) {
        zzbo.zzcF(str);
        return zzws().zza(str, zzcjwArr, zzckbArr);
    }

    @WorkerThread
    private final void zzb(zzceg zzceg) {
        zzwE().zzjC();
        if (TextUtils.isEmpty(zzceg.getGmpAppId())) {
            zzb(zzceg.zzhl(), 204, null, null, null);
            return;
        }
        String gmpAppId = zzceg.getGmpAppId();
        String appInstanceId = zzceg.getAppInstanceId();
        Builder builder = new Builder();
        Builder encodedAuthority = builder.scheme((String) zzcfb.zzbpZ.get()).encodedAuthority((String) zzcfb.zzbqa.get());
        String str = "config/app/";
        gmpAppId = String.valueOf(gmpAppId);
        encodedAuthority.path(gmpAppId.length() != 0 ? str.concat(gmpAppId) : new String(str)).appendQueryParameter("app_instance_id", appInstanceId).appendQueryParameter("platform", SystemMediaRouteProvider.PACKAGE_NAME).appendQueryParameter("gmp_version", "11020");
        gmpAppId = builder.build().toString();
        try {
            URL url = new URL(gmpAppId);
            zzwF().zzyD().zzj("Fetching remote configuration", zzceg.zzhl());
            zzcjt zzeh = zzwC().zzeh(zzceg.zzhl());
            Map map = null;
            str = zzwC().zzei(zzceg.zzhl());
            if (!(zzeh == null || TextUtils.isEmpty(str))) {
                map = new ArrayMap();
                map.put("If-Modified-Since", str);
            }
            this.zzbsU = true;
            zzyU().zza(zzceg.zzhl(), url, map, new zzcgp(this));
        } catch (MalformedURLException unused) {
            zzwF().zzyx().zze("Failed to parse config URL. Not fetching. appId", zzcfl.zzdZ(zzceg.zzhl()), gmpAppId);
        }
    }

    public static zzcgl zzbj(Context context) {
        zzbo.zzu(context);
        zzbo.zzu(context.getApplicationContext());
        if (zzbsm == null) {
            synchronized (zzcgl.class) {
                if (zzbsm == null) {
                    zzbsm = new zzcgl(new zzchk(context));
                }
            }
        }
        return zzbsm;
    }

    /* JADX WARNING: Removed duplicated region for block: B:85:0x02d5  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x02aa A:{Catch:{ SQLiteException -> 0x0211, all -> 0x04a6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0245 A:{Catch:{ SQLiteException -> 0x0211, all -> 0x04a6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x02aa A:{Catch:{ SQLiteException -> 0x0211, all -> 0x04a6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x02d5  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x02d5  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x02aa A:{Catch:{ SQLiteException -> 0x0211, all -> 0x04a6 }} */
    @android.support.annotation.WorkerThread
    private final void zzc(com.google.android.gms.internal.zzcez r28, com.google.android.gms.internal.zzceh r29) {
        /*
        r27 = this;
        r11 = r27;
        r1 = r28;
        r12 = r29;
        com.google.android.gms.common.internal.zzbo.zzu(r29);
        r2 = r12.packageName;
        com.google.android.gms.common.internal.zzbo.zzcF(r2);
        r13 = java.lang.System.nanoTime();
        r2 = r27.zzwE();
        r2.zzjC();
        r27.zzkD();
        r10 = r12.packageName;
        r27.zzwB();
        r2 = com.google.android.gms.internal.zzcjl.zzd(r28, r29);
        if (r2 != 0) goto L_0x0028;
    L_0x0027:
        return;
    L_0x0028:
        r2 = r12.zzboV;
        if (r2 != 0) goto L_0x0030;
    L_0x002c:
        r11.zzf(r12);
        return;
    L_0x0030:
        r2 = r27.zzwC();
        r3 = r1.name;
        r2 = r2.zzN(r10, r3);
        r3 = 1;
        r15 = 0;
        if (r2 == 0) goto L_0x00c6;
    L_0x003e:
        r2 = r27.zzwF();
        r2 = r2.zzyz();
        r4 = "Dropping blacklisted event. appId";
        r5 = com.google.android.gms.internal.zzcfl.zzdZ(r10);
        r6 = r27.zzwA();
        r7 = r1.name;
        r6 = r6.zzdW(r7);
        r2.zze(r4, r5, r6);
        r2 = r27.zzwB();
        r2 = r2.zzeA(r10);
        if (r2 != 0) goto L_0x006d;
    L_0x0063:
        r2 = r27.zzwB();
        r2 = r2.zzeB(r10);
        if (r2 == 0) goto L_0x006e;
    L_0x006d:
        r15 = 1;
    L_0x006e:
        if (r15 != 0) goto L_0x0089;
    L_0x0070:
        r2 = "_err";
        r3 = r1.name;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0089;
    L_0x007a:
        r3 = r27.zzwB();
        r5 = 11;
        r6 = "_ev";
        r7 = r1.name;
        r8 = 0;
        r4 = r10;
        r3.zza(r4, r5, r6, r7, r8);
    L_0x0089:
        if (r15 == 0) goto L_0x00c5;
    L_0x008b:
        r1 = r27.zzwz();
        r1 = r1.zzdQ(r10);
        if (r1 == 0) goto L_0x00c5;
    L_0x0095:
        r2 = r1.zzwU();
        r4 = r1.zzwT();
        r2 = java.lang.Math.max(r2, r4);
        r4 = r11.zzvw;
        r4 = r4.currentTimeMillis();
        r6 = r4 - r2;
        r2 = java.lang.Math.abs(r6);
        r4 = com.google.android.gms.internal.zzcem.zzxI();
        r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r6 <= 0) goto L_0x00c5;
    L_0x00b5:
        r2 = r27.zzwF();
        r2 = r2.zzyC();
        r3 = "Fetching config for blacklisted app";
        r2.log(r3);
        r11.zzb(r1);
    L_0x00c5:
        return;
    L_0x00c6:
        r2 = r27.zzwF();
        r9 = 2;
        r2 = r2.zzz(r9);
        if (r2 == 0) goto L_0x00e6;
    L_0x00d1:
        r2 = r27.zzwF();
        r2 = r2.zzyD();
        r4 = "Logging event";
        r5 = r27.zzwA();
        r5 = r5.zzb(r1);
        r2.zzj(r4, r5);
    L_0x00e6:
        r2 = r27.zzwz();
        r2.beginTransaction();
        r2 = r1.zzbpM;	 Catch:{ all -> 0x04a6 }
        r2 = r2.zzyt();	 Catch:{ all -> 0x04a6 }
        r11.zzf(r12);	 Catch:{ all -> 0x04a6 }
        r4 = "_iap";
        r5 = r1.name;	 Catch:{ all -> 0x04a6 }
        r4 = r4.equals(r5);	 Catch:{ all -> 0x04a6 }
        if (r4 != 0) goto L_0x010f;
    L_0x0100:
        r4 = "ecommerce_purchase";
        r5 = r1.name;	 Catch:{ all -> 0x04a6 }
        r4 = r4.equals(r5);	 Catch:{ all -> 0x04a6 }
        if (r4 == 0) goto L_0x010b;
    L_0x010a:
        goto L_0x010f;
    L_0x010b:
        r24 = r13;
        goto L_0x026f;
    L_0x010f:
        r4 = "currency";
        r4 = r2.getString(r4);	 Catch:{ all -> 0x04a6 }
        r5 = "ecommerce_purchase";
        r6 = r1.name;	 Catch:{ all -> 0x04a6 }
        r5 = r5.equals(r6);	 Catch:{ all -> 0x04a6 }
        if (r5 == 0) goto L_0x0170;
    L_0x011f:
        r5 = "value";
        r5 = r2.getDouble(r5);	 Catch:{ all -> 0x04a6 }
        r7 = 4696837146684686336; // 0x412e848000000000 float:0.0 double:1000000.0;
        r5 = r5 * r7;
        r16 = 0;
        r18 = (r5 > r16 ? 1 : (r5 == r16 ? 0 : -1));
        if (r18 != 0) goto L_0x013b;
    L_0x0132:
        r5 = "value";
        r5 = r2.getLong(r5);	 Catch:{ all -> 0x04a6 }
        r5 = (double) r5;	 Catch:{ all -> 0x04a6 }
        r5 = r5 * r7;
    L_0x013b:
        r7 = 4890909195324358656; // 0x43e0000000000000 float:0.0 double:9.223372036854776E18;
        r16 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r16 > 0) goto L_0x014c;
    L_0x0141:
        r7 = -4332462841530417152; // 0xc3e0000000000000 float:0.0 double:-9.223372036854776E18;
        r16 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r16 < 0) goto L_0x014c;
    L_0x0147:
        r5 = java.lang.Math.round(r5);	 Catch:{ all -> 0x04a6 }
        goto L_0x0176;
    L_0x014c:
        r1 = r27.zzwF();	 Catch:{ all -> 0x04a6 }
        r1 = r1.zzyz();	 Catch:{ all -> 0x04a6 }
        r2 = "Data lost. Currency value is too big. appId";
        r3 = com.google.android.gms.internal.zzcfl.zzdZ(r10);	 Catch:{ all -> 0x04a6 }
        r4 = java.lang.Double.valueOf(r5);	 Catch:{ all -> 0x04a6 }
        r1.zze(r2, r3, r4);	 Catch:{ all -> 0x04a6 }
        r1 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r1.setTransactionSuccessful();	 Catch:{ all -> 0x04a6 }
        r1 = r27.zzwz();
        r1.endTransaction();
        return;
    L_0x0170:
        r5 = "value";
        r5 = r2.getLong(r5);	 Catch:{ all -> 0x04a6 }
    L_0x0176:
        r7 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x04a6 }
        if (r7 != 0) goto L_0x010b;
    L_0x017c:
        r7 = java.util.Locale.US;	 Catch:{ all -> 0x04a6 }
        r4 = r4.toUpperCase(r7);	 Catch:{ all -> 0x04a6 }
        r7 = "[A-Z]{3}";
        r7 = r4.matches(r7);	 Catch:{ all -> 0x04a6 }
        if (r7 == 0) goto L_0x010b;
    L_0x018a:
        r7 = "_ltv_";
        r7 = java.lang.String.valueOf(r7);	 Catch:{ all -> 0x04a6 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x04a6 }
        r8 = r4.length();	 Catch:{ all -> 0x04a6 }
        if (r8 == 0) goto L_0x01a0;
    L_0x019a:
        r4 = r7.concat(r4);	 Catch:{ all -> 0x04a6 }
    L_0x019e:
        r7 = r4;
        goto L_0x01a6;
    L_0x01a0:
        r4 = new java.lang.String;	 Catch:{ all -> 0x04a6 }
        r4.<init>(r7);	 Catch:{ all -> 0x04a6 }
        goto L_0x019e;
    L_0x01a6:
        r4 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r4 = r4.zzG(r10, r7);	 Catch:{ all -> 0x04a6 }
        if (r4 == 0) goto L_0x01e0;
    L_0x01b0:
        r8 = r4.mValue;	 Catch:{ all -> 0x04a6 }
        r8 = r8 instanceof java.lang.Long;	 Catch:{ all -> 0x04a6 }
        if (r8 != 0) goto L_0x01b7;
    L_0x01b6:
        goto L_0x01e0;
    L_0x01b7:
        r3 = r4.mValue;	 Catch:{ all -> 0x04a6 }
        r3 = (java.lang.Long) r3;	 Catch:{ all -> 0x04a6 }
        r3 = r3.longValue();	 Catch:{ all -> 0x04a6 }
        r16 = new com.google.android.gms.internal.zzcjk;	 Catch:{ all -> 0x04a6 }
        r8 = r1.zzbpc;	 Catch:{ all -> 0x04a6 }
        r9 = r11.zzvw;	 Catch:{ all -> 0x04a6 }
        r17 = r9.currentTimeMillis();	 Catch:{ all -> 0x04a6 }
        r9 = 0;
        r24 = r13;
        r13 = r3 + r5;
        r9 = java.lang.Long.valueOf(r13);	 Catch:{ all -> 0x04a6 }
        r3 = r16;
        r4 = r10;
        r5 = r8;
        r6 = r7;
        r7 = r17;
        r13 = 2;
        r3.<init>(r4, r5, r6, r7, r9);	 Catch:{ all -> 0x04a6 }
        r13 = r16;
        goto L_0x023b;
    L_0x01e0:
        r24 = r13;
        r13 = 2;
        r4 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r8 = r11.zzbsn;	 Catch:{ all -> 0x04a6 }
        r9 = com.google.android.gms.internal.zzcfb.zzbqz;	 Catch:{ all -> 0x04a6 }
        r8 = r8.zzb(r10, r9);	 Catch:{ all -> 0x04a6 }
        r8 = r8 - r3;
        com.google.android.gms.common.internal.zzbo.zzcF(r10);	 Catch:{ all -> 0x04a6 }
        r4.zzjC();	 Catch:{ all -> 0x04a6 }
        r4.zzkD();	 Catch:{ all -> 0x04a6 }
        r9 = r4.getWritableDatabase();	 Catch:{ SQLiteException -> 0x0211 }
        r14 = "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);";
        r13 = 3;
        r13 = new java.lang.String[r13];	 Catch:{ SQLiteException -> 0x0211 }
        r13[r15] = r10;	 Catch:{ SQLiteException -> 0x0211 }
        r13[r3] = r10;	 Catch:{ SQLiteException -> 0x0211 }
        r3 = java.lang.String.valueOf(r8);	 Catch:{ SQLiteException -> 0x0211 }
        r8 = 2;
        r13[r8] = r3;	 Catch:{ SQLiteException -> 0x0211 }
        r9.execSQL(r14, r13);	 Catch:{ SQLiteException -> 0x0211 }
        goto L_0x0224;
    L_0x0211:
        r0 = move-exception;
        r3 = r0;
        r4 = r4.zzwF();	 Catch:{ all -> 0x04a6 }
        r4 = r4.zzyx();	 Catch:{ all -> 0x04a6 }
        r8 = "Error pruning currencies. appId";
        r9 = com.google.android.gms.internal.zzcfl.zzdZ(r10);	 Catch:{ all -> 0x04a6 }
        r4.zze(r8, r9, r3);	 Catch:{ all -> 0x04a6 }
    L_0x0224:
        r13 = new com.google.android.gms.internal.zzcjk;	 Catch:{ all -> 0x04a6 }
        r8 = r1.zzbpc;	 Catch:{ all -> 0x04a6 }
        r3 = r11.zzvw;	 Catch:{ all -> 0x04a6 }
        r16 = r3.currentTimeMillis();	 Catch:{ all -> 0x04a6 }
        r9 = java.lang.Long.valueOf(r5);	 Catch:{ all -> 0x04a6 }
        r3 = r13;
        r4 = r10;
        r5 = r8;
        r6 = r7;
        r7 = r16;
        r3.<init>(r4, r5, r6, r7, r9);	 Catch:{ all -> 0x04a6 }
    L_0x023b:
        r3 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r3 = r3.zza(r13);	 Catch:{ all -> 0x04a6 }
        if (r3 != 0) goto L_0x026f;
    L_0x0245:
        r3 = r27.zzwF();	 Catch:{ all -> 0x04a6 }
        r3 = r3.zzyx();	 Catch:{ all -> 0x04a6 }
        r4 = "Too many unique user properties are set. Ignoring user property. appId";
        r5 = com.google.android.gms.internal.zzcfl.zzdZ(r10);	 Catch:{ all -> 0x04a6 }
        r6 = r27.zzwA();	 Catch:{ all -> 0x04a6 }
        r7 = r13.mName;	 Catch:{ all -> 0x04a6 }
        r6 = r6.zzdY(r7);	 Catch:{ all -> 0x04a6 }
        r7 = r13.mValue;	 Catch:{ all -> 0x04a6 }
        r3.zzd(r4, r5, r6, r7);	 Catch:{ all -> 0x04a6 }
        r3 = r27.zzwB();	 Catch:{ all -> 0x04a6 }
        r5 = 9;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r4 = r10;
        r3.zza(r4, r5, r6, r7, r8);	 Catch:{ all -> 0x04a6 }
    L_0x026f:
        r3 = r1.name;	 Catch:{ all -> 0x04a6 }
        r3 = com.google.android.gms.internal.zzcjl.zzeo(r3);	 Catch:{ all -> 0x04a6 }
        r4 = "_err";
        r5 = r1.name;	 Catch:{ all -> 0x04a6 }
        r4 = r4.equals(r5);	 Catch:{ all -> 0x04a6 }
        r5 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r16 = r27.zzyZ();	 Catch:{ all -> 0x04a6 }
        r19 = 1;
        r21 = 0;
        r23 = 0;
        r6 = 0;
        r15 = r5;
        r18 = r10;
        r20 = r3;
        r22 = r4;
        r5 = r15.zza(r16, r18, r19, r20, r21, r22, r23);	 Catch:{ all -> 0x04a6 }
        r7 = r5.zzbpv;	 Catch:{ all -> 0x04a6 }
        r13 = com.google.android.gms.internal.zzcem.zzxq();	 Catch:{ all -> 0x04a6 }
        r9 = 0;
        r15 = r7 - r13;
        r7 = 0;
        r9 = (r15 > r7 ? 1 : (r15 == r7 ? 0 : -1));
        r13 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r6 = 1;
        if (r9 <= 0) goto L_0x02d5;
    L_0x02aa:
        r15 = r15 % r13;
        r1 = (r15 > r6 ? 1 : (r15 == r6 ? 0 : -1));
        if (r1 != 0) goto L_0x02c6;
    L_0x02af:
        r1 = r27.zzwF();	 Catch:{ all -> 0x04a6 }
        r1 = r1.zzyx();	 Catch:{ all -> 0x04a6 }
        r2 = "Data loss. Too many events logged. appId, count";
        r3 = com.google.android.gms.internal.zzcfl.zzdZ(r10);	 Catch:{ all -> 0x04a6 }
        r4 = r5.zzbpv;	 Catch:{ all -> 0x04a6 }
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x04a6 }
        r1.zze(r2, r3, r4);	 Catch:{ all -> 0x04a6 }
    L_0x02c6:
        r1 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r1.setTransactionSuccessful();	 Catch:{ all -> 0x04a6 }
        r1 = r27.zzwz();
        r1.endTransaction();
        return;
    L_0x02d5:
        if (r3 == 0) goto L_0x0321;
    L_0x02d7:
        r8 = r5.zzbpu;	 Catch:{ all -> 0x04a6 }
        r15 = com.google.android.gms.internal.zzcem.zzxr();	 Catch:{ all -> 0x04a6 }
        r3 = 0;
        r17 = r8 - r15;
        r8 = 0;
        r3 = (r17 > r8 ? 1 : (r17 == r8 ? 0 : -1));
        if (r3 <= 0) goto L_0x0321;
    L_0x02e6:
        r17 = r17 % r13;
        r2 = (r17 > r6 ? 1 : (r17 == r6 ? 0 : -1));
        if (r2 != 0) goto L_0x0303;
    L_0x02ec:
        r2 = r27.zzwF();	 Catch:{ all -> 0x04a6 }
        r2 = r2.zzyx();	 Catch:{ all -> 0x04a6 }
        r3 = "Data loss. Too many public events logged. appId, count";
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r10);	 Catch:{ all -> 0x04a6 }
        r5 = r5.zzbpu;	 Catch:{ all -> 0x04a6 }
        r5 = java.lang.Long.valueOf(r5);	 Catch:{ all -> 0x04a6 }
        r2.zze(r3, r4, r5);	 Catch:{ all -> 0x04a6 }
    L_0x0303:
        r3 = r27.zzwB();	 Catch:{ all -> 0x04a6 }
        r5 = 16;
        r6 = "_ev";
        r7 = r1.name;	 Catch:{ all -> 0x04a6 }
        r8 = 0;
        r4 = r10;
        r3.zza(r4, r5, r6, r7, r8);	 Catch:{ all -> 0x04a6 }
        r1 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r1.setTransactionSuccessful();	 Catch:{ all -> 0x04a6 }
        r1 = r27.zzwz();
        r1.endTransaction();
        return;
    L_0x0321:
        if (r4 == 0) goto L_0x036e;
    L_0x0323:
        r3 = r5.zzbpx;	 Catch:{ all -> 0x04a6 }
        r8 = r11.zzbsn;	 Catch:{ all -> 0x04a6 }
        r9 = r12.packageName;	 Catch:{ all -> 0x04a6 }
        r13 = com.google.android.gms.internal.zzcfb.zzbqg;	 Catch:{ all -> 0x04a6 }
        r8 = r8.zzb(r9, r13);	 Catch:{ all -> 0x04a6 }
        r9 = 1000000; // 0xf4240 float:1.401298E-39 double:4.940656E-318;
        r8 = java.lang.Math.min(r9, r8);	 Catch:{ all -> 0x04a6 }
        r9 = 0;
        r8 = java.lang.Math.max(r9, r8);	 Catch:{ all -> 0x04a6 }
        r8 = (long) r8;	 Catch:{ all -> 0x04a6 }
        r13 = r3 - r8;
        r3 = 0;
        r8 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1));
        if (r8 <= 0) goto L_0x036e;
    L_0x0344:
        r1 = (r13 > r6 ? 1 : (r13 == r6 ? 0 : -1));
        if (r1 != 0) goto L_0x035f;
    L_0x0348:
        r1 = r27.zzwF();	 Catch:{ all -> 0x04a6 }
        r1 = r1.zzyx();	 Catch:{ all -> 0x04a6 }
        r2 = "Too many error events logged. appId, count";
        r3 = com.google.android.gms.internal.zzcfl.zzdZ(r10);	 Catch:{ all -> 0x04a6 }
        r4 = r5.zzbpx;	 Catch:{ all -> 0x04a6 }
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x04a6 }
        r1.zze(r2, r3, r4);	 Catch:{ all -> 0x04a6 }
    L_0x035f:
        r1 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r1.setTransactionSuccessful();	 Catch:{ all -> 0x04a6 }
        r1 = r27.zzwz();
        r1.endTransaction();
        return;
    L_0x036e:
        r3 = r27.zzwB();	 Catch:{ all -> 0x04a6 }
        r4 = "_o";
        r5 = r1.zzbpc;	 Catch:{ all -> 0x04a6 }
        r3.zza(r2, r4, r5);	 Catch:{ all -> 0x04a6 }
        r3 = r27.zzwB();	 Catch:{ all -> 0x04a6 }
        r3 = r3.zzey(r10);	 Catch:{ all -> 0x04a6 }
        if (r3 == 0) goto L_0x039d;
    L_0x0383:
        r3 = r27.zzwB();	 Catch:{ all -> 0x04a6 }
        r4 = "_dbg";
        r5 = java.lang.Long.valueOf(r6);	 Catch:{ all -> 0x04a6 }
        r3.zza(r2, r4, r5);	 Catch:{ all -> 0x04a6 }
        r3 = r27.zzwB();	 Catch:{ all -> 0x04a6 }
        r4 = "_r";
        r5 = java.lang.Long.valueOf(r6);	 Catch:{ all -> 0x04a6 }
        r3.zza(r2, r4, r5);	 Catch:{ all -> 0x04a6 }
    L_0x039d:
        r3 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r3 = r3.zzdR(r10);	 Catch:{ all -> 0x04a6 }
        r5 = 0;
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r7 <= 0) goto L_0x03c0;
    L_0x03ab:
        r5 = r27.zzwF();	 Catch:{ all -> 0x04a6 }
        r5 = r5.zzyz();	 Catch:{ all -> 0x04a6 }
        r6 = "Data lost. Too many events stored on disk, deleted. appId";
        r7 = com.google.android.gms.internal.zzcfl.zzdZ(r10);	 Catch:{ all -> 0x04a6 }
        r3 = java.lang.Long.valueOf(r3);	 Catch:{ all -> 0x04a6 }
        r5.zze(r6, r7, r3);	 Catch:{ all -> 0x04a6 }
    L_0x03c0:
        r13 = new com.google.android.gms.internal.zzceu;	 Catch:{ all -> 0x04a6 }
        r3 = r1.zzbpc;	 Catch:{ all -> 0x04a6 }
        r5 = r1.name;	 Catch:{ all -> 0x04a6 }
        r6 = r1.zzbpN;	 Catch:{ all -> 0x04a6 }
        r8 = 0;
        r1 = r13;
        r14 = r2;
        r2 = r11;
        r4 = r10;
        r15 = r10;
        r10 = r14;
        r1.<init>(r2, r3, r4, r5, r6, r8, r10);	 Catch:{ all -> 0x04a6 }
        r1 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r2 = r13.mName;	 Catch:{ all -> 0x04a6 }
        r1 = r1.zzE(r15, r2);	 Catch:{ all -> 0x04a6 }
        if (r1 != 0) goto L_0x043e;
    L_0x03df:
        r1 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r1 = r1.zzdU(r15);	 Catch:{ all -> 0x04a6 }
        com.google.android.gms.internal.zzcem.zzxp();	 Catch:{ all -> 0x04a6 }
        r3 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
        if (r5 < 0) goto L_0x0428;
    L_0x03f0:
        r1 = r27.zzwF();	 Catch:{ all -> 0x04a6 }
        r1 = r1.zzyx();	 Catch:{ all -> 0x04a6 }
        r2 = "Too many event names used, ignoring event. appId, name, supported count";
        r3 = com.google.android.gms.internal.zzcfl.zzdZ(r15);	 Catch:{ all -> 0x04a6 }
        r4 = r27.zzwA();	 Catch:{ all -> 0x04a6 }
        r5 = r13.mName;	 Catch:{ all -> 0x04a6 }
        r4 = r4.zzdW(r5);	 Catch:{ all -> 0x04a6 }
        r5 = com.google.android.gms.internal.zzcem.zzxp();	 Catch:{ all -> 0x04a6 }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ all -> 0x04a6 }
        r1.zzd(r2, r3, r4, r5);	 Catch:{ all -> 0x04a6 }
        r3 = r27.zzwB();	 Catch:{ all -> 0x04a6 }
        r5 = 8;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r4 = r15;
        r3.zza(r4, r5, r6, r7, r8);	 Catch:{ all -> 0x04a6 }
        r1 = r27.zzwz();
        r1.endTransaction();
        return;
    L_0x0428:
        r1 = new com.google.android.gms.internal.zzcev;	 Catch:{ all -> 0x04a6 }
        r2 = r13.mName;	 Catch:{ all -> 0x04a6 }
        r18 = 0;
        r20 = 0;
        r3 = r13.zzayS;	 Catch:{ all -> 0x04a6 }
        r5 = r15;
        r15 = r1;
        r16 = r5;
        r17 = r2;
        r22 = r3;
        r15.<init>(r16, r17, r18, r20, r22);	 Catch:{ all -> 0x04a6 }
        goto L_0x044a;
    L_0x043e:
        r2 = r1.zzbpI;	 Catch:{ all -> 0x04a6 }
        r13 = r13.zza(r11, r2);	 Catch:{ all -> 0x04a6 }
        r2 = r13.zzayS;	 Catch:{ all -> 0x04a6 }
        r1 = r1.zzab(r2);	 Catch:{ all -> 0x04a6 }
    L_0x044a:
        r2 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r2.zza(r1);	 Catch:{ all -> 0x04a6 }
        r11.zza(r13, r12);	 Catch:{ all -> 0x04a6 }
        r1 = r27.zzwz();	 Catch:{ all -> 0x04a6 }
        r1.setTransactionSuccessful();	 Catch:{ all -> 0x04a6 }
        r1 = r27.zzwF();	 Catch:{ all -> 0x04a6 }
        r2 = 2;
        r1 = r1.zzz(r2);	 Catch:{ all -> 0x04a6 }
        if (r1 == 0) goto L_0x047b;
    L_0x0466:
        r1 = r27.zzwF();	 Catch:{ all -> 0x04a6 }
        r1 = r1.zzyD();	 Catch:{ all -> 0x04a6 }
        r2 = "Event recorded";
        r3 = r27.zzwA();	 Catch:{ all -> 0x04a6 }
        r3 = r3.zza(r13);	 Catch:{ all -> 0x04a6 }
        r1.zzj(r2, r3);	 Catch:{ all -> 0x04a6 }
    L_0x047b:
        r1 = r27.zzwz();
        r1.endTransaction();
        r27.zzzc();
        r1 = r27.zzwF();
        r1 = r1.zzyD();
        r2 = "Background event processing time, ms";
        r3 = java.lang.System.nanoTime();
        r5 = r3 - r24;
        r3 = 500000; // 0x7a120 float:7.00649E-40 double:2.47033E-318;
        r7 = r5 + r3;
        r3 = 1000000; // 0xf4240 float:1.401298E-39 double:4.940656E-318;
        r7 = r7 / r3;
        r3 = java.lang.Long.valueOf(r7);
        r1.zzj(r2, r3);
        return;
    L_0x04a6:
        r0 = move-exception;
        r1 = r0;
        r2 = r27.zzwz();
        r2.endTransaction();
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcgl.zzc(com.google.android.gms.internal.zzcez, com.google.android.gms.internal.zzceh):void");
    }

    @WorkerThread
    private final zzceh zzel(String str) {
        String str2 = str;
        zzceg zzdQ = zzwz().zzdQ(str2);
        if (zzdQ == null || TextUtils.isEmpty(zzdQ.zzjH())) {
            zzwF().zzyC().zzj("No app data available; dropping", str2);
            return null;
        }
        try {
            String str3 = zzbha.zzaP(this.mContext).getPackageInfo(str2, 0).versionName;
            if (!(zzdQ.zzjH() == null || zzdQ.zzjH().equals(str3))) {
                zzwF().zzyz().zzj("App version does not match; dropping. appId", zzcfl.zzdZ(str));
                return null;
            }
        } catch (NameNotFoundException unused) {
        }
        return new zzceh(str2, zzdQ.getGmpAppId(), zzdQ.zzjH(), zzdQ.zzwN(), zzdQ.zzwO(), zzdQ.zzwP(), zzdQ.zzwQ(), null, zzdQ.zzwR(), false, zzdQ.zzwK(), zzdQ.zzxe(), 0, 0);
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00f0  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00fe  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0128  */
    /* JADX WARNING: Removed duplicated region for block: B:53:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0130  */
    @android.support.annotation.WorkerThread
    private final void zzf(com.google.android.gms.internal.zzceh r9) {
        /*
        r8 = this;
        r0 = r8.zzwE();
        r0.zzjC();
        r8.zzkD();
        com.google.android.gms.common.internal.zzbo.zzu(r9);
        r0 = r9.packageName;
        com.google.android.gms.common.internal.zzbo.zzcF(r0);
        r0 = r8.zzwz();
        r1 = r9.packageName;
        r0 = r0.zzdQ(r1);
        r1 = r8.zzwG();
        r2 = r9.packageName;
        r1 = r1.zzec(r2);
        r2 = 1;
        if (r0 != 0) goto L_0x0040;
    L_0x0029:
        r0 = new com.google.android.gms.internal.zzceg;
        r3 = r9.packageName;
        r0.<init>(r8, r3);
        r3 = r8.zzwu();
        r3 = r3.zzyu();
        r0.zzdG(r3);
        r0.zzdI(r1);
    L_0x003e:
        r1 = 1;
        goto L_0x005a;
    L_0x0040:
        r3 = r0.zzwJ();
        r3 = r1.equals(r3);
        if (r3 != 0) goto L_0x0059;
    L_0x004a:
        r0.zzdI(r1);
        r1 = r8.zzwu();
        r1 = r1.zzyu();
        r0.zzdG(r1);
        goto L_0x003e;
    L_0x0059:
        r1 = 0;
    L_0x005a:
        r3 = r9.zzboQ;
        r3 = android.text.TextUtils.isEmpty(r3);
        if (r3 != 0) goto L_0x0074;
    L_0x0062:
        r3 = r9.zzboQ;
        r4 = r0.getGmpAppId();
        r3 = r3.equals(r4);
        if (r3 != 0) goto L_0x0074;
    L_0x006e:
        r1 = r9.zzboQ;
        r0.zzdH(r1);
        r1 = 1;
    L_0x0074:
        r3 = r9.zzboY;
        r3 = android.text.TextUtils.isEmpty(r3);
        if (r3 != 0) goto L_0x008e;
    L_0x007c:
        r3 = r9.zzboY;
        r4 = r0.zzwK();
        r3 = r3.equals(r4);
        if (r3 != 0) goto L_0x008e;
    L_0x0088:
        r1 = r9.zzboY;
        r0.zzdJ(r1);
        r1 = 1;
    L_0x008e:
        r3 = r9.zzboS;
        r5 = 0;
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r7 == 0) goto L_0x00a6;
    L_0x0096:
        r3 = r9.zzboS;
        r5 = r0.zzwP();
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r7 == 0) goto L_0x00a6;
    L_0x00a0:
        r3 = r9.zzboS;
        r0.zzO(r3);
        r1 = 1;
    L_0x00a6:
        r3 = r9.zzbgW;
        r3 = android.text.TextUtils.isEmpty(r3);
        if (r3 != 0) goto L_0x00c0;
    L_0x00ae:
        r3 = r9.zzbgW;
        r4 = r0.zzjH();
        r3 = r3.equals(r4);
        if (r3 != 0) goto L_0x00c0;
    L_0x00ba:
        r1 = r9.zzbgW;
        r0.setAppVersion(r1);
        r1 = 1;
    L_0x00c0:
        r3 = r9.zzboX;
        r5 = r0.zzwN();
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r7 == 0) goto L_0x00d0;
    L_0x00ca:
        r3 = r9.zzboX;
        r0.zzN(r3);
        r1 = 1;
    L_0x00d0:
        r3 = r9.zzboR;
        if (r3 == 0) goto L_0x00e6;
    L_0x00d4:
        r3 = r9.zzboR;
        r4 = r0.zzwO();
        r3 = r3.equals(r4);
        if (r3 != 0) goto L_0x00e6;
    L_0x00e0:
        r1 = r9.zzboR;
        r0.zzdK(r1);
        r1 = 1;
    L_0x00e6:
        r3 = r9.zzboT;
        r5 = r0.zzwQ();
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r7 == 0) goto L_0x00f6;
    L_0x00f0:
        r3 = r9.zzboT;
        r0.zzP(r3);
        r1 = 1;
    L_0x00f6:
        r3 = r9.zzboV;
        r4 = r0.zzwR();
        if (r3 == r4) goto L_0x0104;
    L_0x00fe:
        r1 = r9.zzboV;
        r0.setMeasurementEnabled(r1);
        r1 = 1;
    L_0x0104:
        r3 = r9.zzboU;
        r3 = android.text.TextUtils.isEmpty(r3);
        if (r3 != 0) goto L_0x011e;
    L_0x010c:
        r3 = r9.zzboU;
        r4 = r0.zzxc();
        r3 = r3.equals(r4);
        if (r3 != 0) goto L_0x011e;
    L_0x0118:
        r1 = r9.zzboU;
        r0.zzdL(r1);
        r1 = 1;
    L_0x011e:
        r3 = r9.zzboZ;
        r5 = r0.zzxe();
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r7 == 0) goto L_0x012e;
    L_0x0128:
        r3 = r9.zzboZ;
        r0.zzZ(r3);
        r1 = 1;
    L_0x012e:
        if (r1 == 0) goto L_0x0137;
    L_0x0130:
        r9 = r8.zzwz();
        r9.zza(r0);
    L_0x0137:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcgl.zzf(com.google.android.gms.internal.zzceh):void");
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:111:0x01f9=Splitter:B:111:0x01f9, B:137:0x026a=Splitter:B:137:0x026a, B:166:0x02ba=Splitter:B:166:0x02ba} */
    /* JADX WARNING: Removed duplicated region for block: B:318:0x0776 A:{SYNTHETIC, Splitter:B:318:0x0776} */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x02cc A:{Catch:{ all -> 0x078e }} */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x02be A:{Catch:{ all -> 0x078e }} */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x02cc A:{Catch:{ all -> 0x078e }} */
    /* JADX WARNING: Removed duplicated region for block: B:318:0x0776 A:{SYNTHETIC, Splitter:B:318:0x0776} */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x02be A:{Catch:{ all -> 0x078e }} */
    /* JADX WARNING: Removed duplicated region for block: B:318:0x0776 A:{SYNTHETIC, Splitter:B:318:0x0776} */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x02cc A:{Catch:{ all -> 0x078e }} */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x02be A:{Catch:{ all -> 0x078e }} */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x02cc A:{Catch:{ all -> 0x078e }} */
    /* JADX WARNING: Removed duplicated region for block: B:318:0x0776 A:{SYNTHETIC, Splitter:B:318:0x0776} */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x02be A:{Catch:{ all -> 0x078e }} */
    /* JADX WARNING: Removed duplicated region for block: B:318:0x0776 A:{SYNTHETIC, Splitter:B:318:0x0776} */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x02cc A:{Catch:{ all -> 0x078e }} */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x078a A:{SYNTHETIC, Splitter:B:325:0x078a} */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x078a A:{SYNTHETIC, Splitter:B:325:0x078a} */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0040 A:{PHI: r3 , ExcHandler: all (r0_4 'th' java.lang.Throwable), Splitter:B:9:0x0031} */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0040 A:{PHI: r3 , ExcHandler: all (r0_4 'th' java.lang.Throwable), Splitter:B:9:0x0031} */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x078a A:{SYNTHETIC, Splitter:B:325:0x078a} */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x078a A:{SYNTHETIC, Splitter:B:325:0x078a} */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x078a A:{SYNTHETIC, Splitter:B:325:0x078a} */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x078a A:{SYNTHETIC, Splitter:B:325:0x078a} */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x078a A:{SYNTHETIC, Splitter:B:325:0x078a} */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x078a A:{SYNTHETIC, Splitter:B:325:0x078a} */
    /* JADX WARNING: Removed duplicated region for block: B:315:0x076c  */
    /* JADX WARNING: Removed duplicated region for block: B:314:0x0769  */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x078a A:{SYNTHETIC, Splitter:B:325:0x078a} */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0040 A:{PHI: r3 , ExcHandler: all (r0_4 'th' java.lang.Throwable), Splitter:B:9:0x0031} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:9:0x0031, B:61:0x0100] */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:11:0x0040, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:12:0x0041, code skipped:
            r2 = r0;
            r6 = r3;
     */
    /* JADX WARNING: Missing block: B:13:0x0045, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:14:0x0046, code skipped:
            r6 = null;
            r12 = r6;
            r21 = r12;
     */
    /* JADX WARNING: Missing block: B:37:0x00a5, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:38:0x00a6, code skipped:
            r6 = r3;
     */
    /* JADX WARNING: Missing block: B:110:0x01f7, code skipped:
            if (r5 != null) goto L_0x01f9;
     */
    /* JADX WARNING: Missing block: B:126:0x0245, code skipped:
            if (r5 != null) goto L_0x01f9;
     */
    /* JADX WARNING: Missing block: B:136:0x0268, code skipped:
            if (r6 == null) goto L_0x02ba;
     */
    /* JADX WARNING: Missing block: B:138:?, code skipped:
            r6.close();
     */
    /* JADX WARNING: Missing block: B:149:0x0285, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:150:0x0286, code skipped:
            r6 = r3;
            r12 = r21;
     */
    /* JADX WARNING: Missing block: B:165:0x02b7, code skipped:
            if (r6 == null) goto L_0x02ba;
     */
    /* JADX WARNING: Missing block: B:194:0x039e, code skipped:
            if (com.google.android.gms.internal.zzcjl.zzeC(((com.google.android.gms.internal.zzcjw) r2.zztH.get(r4)).name) != false) goto L_0x03a0;
     */
    private final boolean zzg(java.lang.String r29, long r30) {
        /*
        r28 = this;
        r1 = r28;
        r2 = r28.zzwz();
        r2.beginTransaction();
        r2 = new com.google.android.gms.internal.zzcgl$zza;	 Catch:{ all -> 0x078e }
        r3 = 0;
        r2.<init>(r1, r3);	 Catch:{ all -> 0x078e }
        r4 = r28.zzwz();	 Catch:{ all -> 0x078e }
        r5 = r1.zzbsS;	 Catch:{ all -> 0x078e }
        com.google.android.gms.common.internal.zzbo.zzu(r2);	 Catch:{ all -> 0x078e }
        r4.zzjC();	 Catch:{ all -> 0x078e }
        r4.zzkD();	 Catch:{ all -> 0x078e }
        r7 = -1;
        r9 = 2;
        r10 = 1;
        r11 = 0;
        r15 = r4.getWritableDatabase();	 Catch:{ SQLiteException -> 0x029f, all -> 0x0297 }
        r12 = android.text.TextUtils.isEmpty(r3);	 Catch:{ SQLiteException -> 0x029f, all -> 0x0297 }
        if (r12 == 0) goto L_0x00bb;
    L_0x002d:
        r12 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r12 == 0) goto L_0x004d;
    L_0x0031:
        r12 = new java.lang.String[r9];	 Catch:{ SQLiteException -> 0x0045, all -> 0x0040 }
        r13 = java.lang.String.valueOf(r5);	 Catch:{ SQLiteException -> 0x0045, all -> 0x0040 }
        r12[r11] = r13;	 Catch:{ SQLiteException -> 0x0045, all -> 0x0040 }
        r13 = java.lang.String.valueOf(r30);	 Catch:{ SQLiteException -> 0x0045, all -> 0x0040 }
        r12[r10] = r13;	 Catch:{ SQLiteException -> 0x0045, all -> 0x0040 }
        goto L_0x0055;
    L_0x0040:
        r0 = move-exception;
        r2 = r0;
        r6 = r3;
        goto L_0x0788;
    L_0x0045:
        r0 = move-exception;
        r6 = r3;
        r12 = r6;
        r21 = r12;
    L_0x004a:
        r3 = r0;
        goto L_0x02a6;
    L_0x004d:
        r12 = new java.lang.String[r10];	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r13 = java.lang.String.valueOf(r30);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r12[r11] = r13;	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
    L_0x0055:
        r13 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r13 == 0) goto L_0x005c;
    L_0x0059:
        r13 = "rowid <= ? and ";
        goto L_0x005e;
    L_0x005c:
        r13 = "";
    L_0x005e:
        r14 = java.lang.String.valueOf(r13);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r14 = r14.length();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r14 = r14 + 148;
        r3 = new java.lang.StringBuilder;	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r3.<init>(r14);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r14 = "select app_id, metadata_fingerprint from raw_events where ";
        r3.append(r14);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r3.append(r13);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r13 = "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;";
        r3.append(r13);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r3 = r3.toString();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r3 = r15.rawQuery(r3, r12);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r12 = r3.moveToFirst();	 Catch:{ SQLiteException -> 0x00a8, all -> 0x0040 }
        if (r12 != 0) goto L_0x0091;
    L_0x0088:
        if (r3 == 0) goto L_0x008d;
    L_0x008a:
        r3.close();	 Catch:{ all -> 0x078e }
    L_0x008d:
        r21 = 0;
        goto L_0x02ba;
    L_0x0091:
        r12 = r3.getString(r11);	 Catch:{ SQLiteException -> 0x00a8, all -> 0x0040 }
        r13 = r3.getString(r10);	 Catch:{ SQLiteException -> 0x00a5, all -> 0x0040 }
        r3.close();	 Catch:{ SQLiteException -> 0x00a5, all -> 0x0040 }
        r23 = r3;
        r3 = r12;
        r22 = r13;
        r21 = 0;
        goto L_0x011a;
    L_0x00a5:
        r0 = move-exception;
        r6 = r3;
        goto L_0x00ab;
    L_0x00a8:
        r0 = move-exception;
        r6 = r3;
        r12 = 0;
    L_0x00ab:
        r21 = 0;
        goto L_0x004a;
    L_0x00ae:
        r0 = move-exception;
        r2 = r0;
        r6 = 0;
        goto L_0x0788;
    L_0x00b3:
        r0 = move-exception;
        r3 = r0;
        r6 = 0;
        r12 = 0;
        r21 = 0;
        goto L_0x02a6;
    L_0x00bb:
        r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r3 == 0) goto L_0x00cd;
    L_0x00bf:
        r3 = new java.lang.String[r9];	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r12 = 0;
        r3[r11] = r12;	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r12 = java.lang.String.valueOf(r5);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r3[r10] = r12;	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00ae }
        r21 = 0;
        goto L_0x00d3;
    L_0x00cd:
        r3 = new java.lang.String[r10];	 Catch:{ SQLiteException -> 0x0293, all -> 0x028f }
        r21 = 0;
        r3[r11] = r21;	 Catch:{ SQLiteException -> 0x028d, all -> 0x028b }
    L_0x00d3:
        r12 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r12 == 0) goto L_0x00da;
    L_0x00d7:
        r12 = " and rowid <= ?";
        goto L_0x00dc;
    L_0x00da:
        r12 = "";
    L_0x00dc:
        r13 = java.lang.String.valueOf(r12);	 Catch:{ SQLiteException -> 0x028d, all -> 0x028b }
        r13 = r13.length();	 Catch:{ SQLiteException -> 0x028d, all -> 0x028b }
        r13 = r13 + 84;
        r14 = new java.lang.StringBuilder;	 Catch:{ SQLiteException -> 0x028d, all -> 0x028b }
        r14.<init>(r13);	 Catch:{ SQLiteException -> 0x028d, all -> 0x028b }
        r13 = "select metadata_fingerprint from raw_events where app_id = ?";
        r14.append(r13);	 Catch:{ SQLiteException -> 0x028d, all -> 0x028b }
        r14.append(r12);	 Catch:{ SQLiteException -> 0x028d, all -> 0x028b }
        r12 = " order by rowid limit 1;";
        r14.append(r12);	 Catch:{ SQLiteException -> 0x028d, all -> 0x028b }
        r12 = r14.toString();	 Catch:{ SQLiteException -> 0x028d, all -> 0x028b }
        r3 = r15.rawQuery(r12, r3);	 Catch:{ SQLiteException -> 0x028d, all -> 0x028b }
        r12 = r3.moveToFirst();	 Catch:{ SQLiteException -> 0x0285, all -> 0x0040 }
        if (r12 != 0) goto L_0x010d;
    L_0x0106:
        if (r3 == 0) goto L_0x02ba;
    L_0x0108:
        r3.close();	 Catch:{ all -> 0x078e }
        goto L_0x02ba;
    L_0x010d:
        r13 = r3.getString(r11);	 Catch:{ SQLiteException -> 0x0285, all -> 0x0040 }
        r3.close();	 Catch:{ SQLiteException -> 0x0285, all -> 0x0040 }
        r23 = r3;
        r22 = r13;
        r3 = r21;
    L_0x011a:
        r13 = "raw_events_metadata";
        r14 = new java.lang.String[r10];	 Catch:{ SQLiteException -> 0x027f, all -> 0x0279 }
        r12 = "metadata";
        r14[r11] = r12;	 Catch:{ SQLiteException -> 0x027f, all -> 0x0279 }
        r16 = "app_id = ? and metadata_fingerprint = ?";
        r12 = new java.lang.String[r9];	 Catch:{ SQLiteException -> 0x027f, all -> 0x0279 }
        r12[r11] = r3;	 Catch:{ SQLiteException -> 0x027f, all -> 0x0279 }
        r12[r10] = r22;	 Catch:{ SQLiteException -> 0x027f, all -> 0x0279 }
        r17 = 0;
        r18 = 0;
        r19 = "rowid";
        r20 = "2";
        r24 = r12;
        r12 = r15;
        r25 = r15;
        r15 = r16;
        r16 = r24;
        r15 = r12.query(r13, r14, r15, r16, r17, r18, r19, r20);	 Catch:{ SQLiteException -> 0x027f, all -> 0x0279 }
        r12 = r15.moveToFirst();	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        if (r12 != 0) goto L_0x0167;
    L_0x0145:
        r5 = r4.zzwF();	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r5 = r5.zzyx();	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r6 = "Raw event metadata record is missing. appId";
        r12 = com.google.android.gms.internal.zzcfl.zzdZ(r3);	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r5.zzj(r6, r12);	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        if (r15 == 0) goto L_0x02ba;
    L_0x0158:
        r15.close();	 Catch:{ all -> 0x078e }
        goto L_0x02ba;
    L_0x015d:
        r0 = move-exception;
        r2 = r0;
        r6 = r15;
        goto L_0x0788;
    L_0x0162:
        r0 = move-exception;
        r12 = r3;
        r6 = r15;
        goto L_0x004a;
    L_0x0167:
        r12 = r15.getBlob(r11);	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r13 = r12.length;	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r12 = com.google.android.gms.internal.adg.zzb(r12, r11, r13);	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r13 = new com.google.android.gms.internal.zzcjz;	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r13.<init>();	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r13.zza(r12);	 Catch:{ IOException -> 0x0255 }
        r12 = r15.moveToNext();	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        if (r12 == 0) goto L_0x018f;
    L_0x017e:
        r12 = r4.zzwF();	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r12 = r12.zzyz();	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r14 = "Get multiple raw event metadata records, expected one. appId";
        r9 = com.google.android.gms.internal.zzcfl.zzdZ(r3);	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r12.zzj(r14, r9);	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
    L_0x018f:
        r15.close();	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r2.zzb(r13);	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        r14 = 3;
        if (r9 == 0) goto L_0x01ad;
    L_0x019a:
        r9 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
        r12 = new java.lang.String[r14];	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r12[r11] = r3;	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r12[r10] = r22;	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r5 = java.lang.String.valueOf(r5);	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r6 = 2;
        r12[r6] = r5;	 Catch:{ SQLiteException -> 0x0162, all -> 0x015d }
        r5 = r9;
        r16 = r12;
        goto L_0x01b8;
    L_0x01ad:
        r5 = "app_id = ? and metadata_fingerprint = ?";
        r6 = 2;
        r9 = new java.lang.String[r6];	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r9[r11] = r3;	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r9[r10] = r22;	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r16 = r9;
    L_0x01b8:
        r13 = "raw_events";
        r6 = 4;
        r6 = new java.lang.String[r6];	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r9 = "rowid";
        r6[r11] = r9;	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r9 = "name";
        r6[r10] = r9;	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r9 = "timestamp";
        r12 = 2;
        r6[r12] = r9;	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r9 = "data";
        r6[r14] = r9;	 Catch:{ SQLiteException -> 0x0274, all -> 0x0270 }
        r17 = 0;
        r18 = 0;
        r19 = "rowid";
        r20 = 0;
        r12 = r25;
        r9 = 3;
        r14 = r6;
        r6 = r15;
        r15 = r5;
        r5 = r12.query(r13, r14, r15, r16, r17, r18, r19, r20);	 Catch:{ SQLiteException -> 0x026e }
        r6 = r5.moveToFirst();	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        if (r6 != 0) goto L_0x01fe;
    L_0x01e6:
        r6 = r4.zzwF();	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r6 = r6.zzyz();	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r9 = "Raw event data disappeared while in transaction. appId";
        r12 = com.google.android.gms.internal.zzcfl.zzdZ(r3);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r6.zzj(r9, r12);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        if (r5 == 0) goto L_0x02ba;
    L_0x01f9:
        r5.close();	 Catch:{ all -> 0x078e }
        goto L_0x02ba;
    L_0x01fe:
        r12 = r5.getLong(r11);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r6 = r5.getBlob(r9);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r14 = r6.length;	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r6 = com.google.android.gms.internal.adg.zzb(r6, r11, r14);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r14 = new com.google.android.gms.internal.zzcjw;	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r14.<init>();	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r14.zza(r6);	 Catch:{ IOException -> 0x022d }
        r6 = r5.getString(r10);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r14.name = r6;	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r6 = 2;
        r7 = r5.getLong(r6);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r6 = java.lang.Long.valueOf(r7);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r14.zzbvx = r6;	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r6 = r2.zza(r12, r14);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        if (r6 != 0) goto L_0x023f;
    L_0x022a:
        if (r5 == 0) goto L_0x02ba;
    L_0x022c:
        goto L_0x01f9;
    L_0x022d:
        r0 = move-exception;
        r6 = r4.zzwF();	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r6 = r6.zzyx();	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r7 = "Data loss. Failed to merge raw event. appId";
        r8 = com.google.android.gms.internal.zzcfl.zzdZ(r3);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        r6.zze(r7, r8, r0);	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
    L_0x023f:
        r6 = r5.moveToNext();	 Catch:{ SQLiteException -> 0x0250, all -> 0x024b }
        if (r6 != 0) goto L_0x0248;
    L_0x0245:
        if (r5 == 0) goto L_0x02ba;
    L_0x0247:
        goto L_0x01f9;
    L_0x0248:
        r7 = -1;
        goto L_0x01fe;
    L_0x024b:
        r0 = move-exception;
        r2 = r0;
        r6 = r5;
        goto L_0x0788;
    L_0x0250:
        r0 = move-exception;
        r12 = r3;
        r6 = r5;
        goto L_0x004a;
    L_0x0255:
        r0 = move-exception;
        r6 = r15;
        r5 = r4.zzwF();	 Catch:{ SQLiteException -> 0x026e }
        r5 = r5.zzyx();	 Catch:{ SQLiteException -> 0x026e }
        r7 = "Data loss. Failed to merge raw event metadata. appId";
        r8 = com.google.android.gms.internal.zzcfl.zzdZ(r3);	 Catch:{ SQLiteException -> 0x026e }
        r5.zze(r7, r8, r0);	 Catch:{ SQLiteException -> 0x026e }
        if (r6 == 0) goto L_0x02ba;
    L_0x026a:
        r6.close();	 Catch:{ all -> 0x078e }
        goto L_0x02ba;
    L_0x026e:
        r0 = move-exception;
        goto L_0x0276;
    L_0x0270:
        r0 = move-exception;
        r6 = r15;
        goto L_0x0787;
    L_0x0274:
        r0 = move-exception;
        r6 = r15;
    L_0x0276:
        r12 = r3;
        goto L_0x004a;
    L_0x0279:
        r0 = move-exception;
        r2 = r0;
        r6 = r23;
        goto L_0x0788;
    L_0x027f:
        r0 = move-exception;
        r12 = r3;
        r6 = r23;
        goto L_0x004a;
    L_0x0285:
        r0 = move-exception;
        r6 = r3;
        r12 = r21;
        goto L_0x004a;
    L_0x028b:
        r0 = move-exception;
        goto L_0x029a;
    L_0x028d:
        r0 = move-exception;
        goto L_0x02a2;
    L_0x028f:
        r0 = move-exception;
        r21 = 0;
        goto L_0x029a;
    L_0x0293:
        r0 = move-exception;
        r21 = 0;
        goto L_0x02a2;
    L_0x0297:
        r0 = move-exception;
        r21 = r3;
    L_0x029a:
        r2 = r0;
        r6 = r21;
        goto L_0x0788;
    L_0x029f:
        r0 = move-exception;
        r21 = r3;
    L_0x02a2:
        r3 = r0;
        r6 = r21;
        r12 = r6;
    L_0x02a6:
        r4 = r4.zzwF();	 Catch:{ all -> 0x0786 }
        r4 = r4.zzyx();	 Catch:{ all -> 0x0786 }
        r5 = "Data loss. Error selecting raw event. appId";
        r7 = com.google.android.gms.internal.zzcfl.zzdZ(r12);	 Catch:{ all -> 0x0786 }
        r4.zze(r5, r7, r3);	 Catch:{ all -> 0x0786 }
        if (r6 == 0) goto L_0x02ba;
    L_0x02b9:
        goto L_0x026a;
    L_0x02ba:
        r3 = r2.zztH;	 Catch:{ all -> 0x078e }
        if (r3 == 0) goto L_0x02c9;
    L_0x02be:
        r3 = r2.zztH;	 Catch:{ all -> 0x078e }
        r3 = r3.isEmpty();	 Catch:{ all -> 0x078e }
        if (r3 == 0) goto L_0x02c7;
    L_0x02c6:
        goto L_0x02c9;
    L_0x02c7:
        r3 = 0;
        goto L_0x02ca;
    L_0x02c9:
        r3 = 1;
    L_0x02ca:
        if (r3 != 0) goto L_0x0776;
    L_0x02cc:
        r3 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r4 = r2.zztH;	 Catch:{ all -> 0x078e }
        r4 = r4.size();	 Catch:{ all -> 0x078e }
        r4 = new com.google.android.gms.internal.zzcjw[r4];	 Catch:{ all -> 0x078e }
        r3.zzbvE = r4;	 Catch:{ all -> 0x078e }
        r4 = 0;
        r5 = 0;
        r6 = 0;
    L_0x02db:
        r7 = r2.zztH;	 Catch:{ all -> 0x078e }
        r7 = r7.size();	 Catch:{ all -> 0x078e }
        if (r4 >= r7) goto L_0x05f1;
    L_0x02e3:
        r7 = r28.zzwC();	 Catch:{ all -> 0x078e }
        r8 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r8 = r8.zzaH;	 Catch:{ all -> 0x078e }
        r9 = r2.zztH;	 Catch:{ all -> 0x078e }
        r9 = r9.get(r4);	 Catch:{ all -> 0x078e }
        r9 = (com.google.android.gms.internal.zzcjw) r9;	 Catch:{ all -> 0x078e }
        r9 = r9.name;	 Catch:{ all -> 0x078e }
        r7 = r7.zzN(r8, r9);	 Catch:{ all -> 0x078e }
        if (r7 == 0) goto L_0x0375;
    L_0x02fb:
        r7 = r28.zzwF();	 Catch:{ all -> 0x078e }
        r7 = r7.zzyz();	 Catch:{ all -> 0x078e }
        r8 = "Dropping blacklisted raw event. appId";
        r9 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r9 = r9.zzaH;	 Catch:{ all -> 0x078e }
        r9 = com.google.android.gms.internal.zzcfl.zzdZ(r9);	 Catch:{ all -> 0x078e }
        r12 = r28.zzwA();	 Catch:{ all -> 0x078e }
        r13 = r2.zztH;	 Catch:{ all -> 0x078e }
        r13 = r13.get(r4);	 Catch:{ all -> 0x078e }
        r13 = (com.google.android.gms.internal.zzcjw) r13;	 Catch:{ all -> 0x078e }
        r13 = r13.name;	 Catch:{ all -> 0x078e }
        r12 = r12.zzdW(r13);	 Catch:{ all -> 0x078e }
        r7.zze(r8, r9, r12);	 Catch:{ all -> 0x078e }
        r7 = r28.zzwB();	 Catch:{ all -> 0x078e }
        r8 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r8 = r8.zzaH;	 Catch:{ all -> 0x078e }
        r7 = r7.zzeA(r8);	 Catch:{ all -> 0x078e }
        if (r7 != 0) goto L_0x0341;
    L_0x0330:
        r7 = r28.zzwB();	 Catch:{ all -> 0x078e }
        r8 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r8 = r8.zzaH;	 Catch:{ all -> 0x078e }
        r7 = r7.zzeB(r8);	 Catch:{ all -> 0x078e }
        if (r7 == 0) goto L_0x033f;
    L_0x033e:
        goto L_0x0341;
    L_0x033f:
        r7 = 0;
        goto L_0x0342;
    L_0x0341:
        r7 = 1;
    L_0x0342:
        if (r7 != 0) goto L_0x05eb;
    L_0x0344:
        r7 = "_err";
        r8 = r2.zztH;	 Catch:{ all -> 0x078e }
        r8 = r8.get(r4);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjw) r8;	 Catch:{ all -> 0x078e }
        r8 = r8.name;	 Catch:{ all -> 0x078e }
        r7 = r7.equals(r8);	 Catch:{ all -> 0x078e }
        if (r7 != 0) goto L_0x05eb;
    L_0x0356:
        r12 = r28.zzwB();	 Catch:{ all -> 0x078e }
        r7 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r13 = r7.zzaH;	 Catch:{ all -> 0x078e }
        r14 = 11;
        r15 = "_ev";
        r7 = r2.zztH;	 Catch:{ all -> 0x078e }
        r7 = r7.get(r4);	 Catch:{ all -> 0x078e }
        r7 = (com.google.android.gms.internal.zzcjw) r7;	 Catch:{ all -> 0x078e }
        r7 = r7.name;	 Catch:{ all -> 0x078e }
        r17 = 0;
        r16 = r7;
        r12.zza(r13, r14, r15, r16, r17);	 Catch:{ all -> 0x078e }
        goto L_0x05eb;
    L_0x0375:
        r7 = r28.zzwC();	 Catch:{ all -> 0x078e }
        r8 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r8 = r8.zzaH;	 Catch:{ all -> 0x078e }
        r9 = r2.zztH;	 Catch:{ all -> 0x078e }
        r9 = r9.get(r4);	 Catch:{ all -> 0x078e }
        r9 = (com.google.android.gms.internal.zzcjw) r9;	 Catch:{ all -> 0x078e }
        r9 = r9.name;	 Catch:{ all -> 0x078e }
        r7 = r7.zzO(r8, r9);	 Catch:{ all -> 0x078e }
        if (r7 != 0) goto L_0x03a0;
    L_0x038d:
        r28.zzwB();	 Catch:{ all -> 0x078e }
        r8 = r2.zztH;	 Catch:{ all -> 0x078e }
        r8 = r8.get(r4);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjw) r8;	 Catch:{ all -> 0x078e }
        r8 = r8.name;	 Catch:{ all -> 0x078e }
        r8 = com.google.android.gms.internal.zzcjl.zzeC(r8);	 Catch:{ all -> 0x078e }
        if (r8 == 0) goto L_0x05dc;
    L_0x03a0:
        r8 = r2.zztH;	 Catch:{ all -> 0x078e }
        r8 = r8.get(r4);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjw) r8;	 Catch:{ all -> 0x078e }
        r8 = r8.zzbvw;	 Catch:{ all -> 0x078e }
        if (r8 != 0) goto L_0x03b8;
    L_0x03ac:
        r8 = r2.zztH;	 Catch:{ all -> 0x078e }
        r8 = r8.get(r4);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjw) r8;	 Catch:{ all -> 0x078e }
        r9 = new com.google.android.gms.internal.zzcjx[r11];	 Catch:{ all -> 0x078e }
        r8.zzbvw = r9;	 Catch:{ all -> 0x078e }
    L_0x03b8:
        r8 = r2.zztH;	 Catch:{ all -> 0x078e }
        r8 = r8.get(r4);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjw) r8;	 Catch:{ all -> 0x078e }
        r8 = r8.zzbvw;	 Catch:{ all -> 0x078e }
        r9 = r8.length;	 Catch:{ all -> 0x078e }
        r12 = 0;
        r13 = 0;
        r14 = 0;
    L_0x03c6:
        if (r12 >= r9) goto L_0x03f4;
    L_0x03c8:
        r15 = r8[r12];	 Catch:{ all -> 0x078e }
        r10 = "_c";
        r11 = r15.name;	 Catch:{ all -> 0x078e }
        r10 = r10.equals(r11);	 Catch:{ all -> 0x078e }
        if (r10 == 0) goto L_0x03de;
    L_0x03d4:
        r10 = 1;
        r10 = java.lang.Long.valueOf(r10);	 Catch:{ all -> 0x078e }
        r15.zzbvA = r10;	 Catch:{ all -> 0x078e }
        r13 = 1;
        goto L_0x03f1;
    L_0x03de:
        r10 = "_r";
        r11 = r15.name;	 Catch:{ all -> 0x078e }
        r10 = r10.equals(r11);	 Catch:{ all -> 0x078e }
        if (r10 == 0) goto L_0x03f1;
    L_0x03e8:
        r10 = 1;
        r10 = java.lang.Long.valueOf(r10);	 Catch:{ all -> 0x078e }
        r15.zzbvA = r10;	 Catch:{ all -> 0x078e }
        r14 = 1;
    L_0x03f1:
        r12 = r12 + 1;
        goto L_0x03c6;
    L_0x03f4:
        if (r13 != 0) goto L_0x0454;
    L_0x03f6:
        if (r7 == 0) goto L_0x0454;
    L_0x03f8:
        r8 = r28.zzwF();	 Catch:{ all -> 0x078e }
        r8 = r8.zzyD();	 Catch:{ all -> 0x078e }
        r9 = "Marking event as conversion";
        r10 = r28.zzwA();	 Catch:{ all -> 0x078e }
        r11 = r2.zztH;	 Catch:{ all -> 0x078e }
        r11 = r11.get(r4);	 Catch:{ all -> 0x078e }
        r11 = (com.google.android.gms.internal.zzcjw) r11;	 Catch:{ all -> 0x078e }
        r11 = r11.name;	 Catch:{ all -> 0x078e }
        r10 = r10.zzdW(r11);	 Catch:{ all -> 0x078e }
        r8.zzj(r9, r10);	 Catch:{ all -> 0x078e }
        r8 = r2.zztH;	 Catch:{ all -> 0x078e }
        r8 = r8.get(r4);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjw) r8;	 Catch:{ all -> 0x078e }
        r8 = r8.zzbvw;	 Catch:{ all -> 0x078e }
        r9 = r2.zztH;	 Catch:{ all -> 0x078e }
        r9 = r9.get(r4);	 Catch:{ all -> 0x078e }
        r9 = (com.google.android.gms.internal.zzcjw) r9;	 Catch:{ all -> 0x078e }
        r9 = r9.zzbvw;	 Catch:{ all -> 0x078e }
        r9 = r9.length;	 Catch:{ all -> 0x078e }
        r10 = 1;
        r9 = r9 + r10;
        r8 = java.util.Arrays.copyOf(r8, r9);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjx[]) r8;	 Catch:{ all -> 0x078e }
        r9 = new com.google.android.gms.internal.zzcjx;	 Catch:{ all -> 0x078e }
        r9.<init>();	 Catch:{ all -> 0x078e }
        r10 = "_c";
        r9.name = r10;	 Catch:{ all -> 0x078e }
        r10 = 1;
        r12 = java.lang.Long.valueOf(r10);	 Catch:{ all -> 0x078e }
        r9.zzbvA = r12;	 Catch:{ all -> 0x078e }
        r10 = r8.length;	 Catch:{ all -> 0x078e }
        r11 = 1;
        r10 = r10 - r11;
        r8[r10] = r9;	 Catch:{ all -> 0x078e }
        r9 = r2.zztH;	 Catch:{ all -> 0x078e }
        r9 = r9.get(r4);	 Catch:{ all -> 0x078e }
        r9 = (com.google.android.gms.internal.zzcjw) r9;	 Catch:{ all -> 0x078e }
        r9.zzbvw = r8;	 Catch:{ all -> 0x078e }
    L_0x0454:
        if (r14 != 0) goto L_0x04b2;
    L_0x0456:
        r8 = r28.zzwF();	 Catch:{ all -> 0x078e }
        r8 = r8.zzyD();	 Catch:{ all -> 0x078e }
        r9 = "Marking event as real-time";
        r10 = r28.zzwA();	 Catch:{ all -> 0x078e }
        r11 = r2.zztH;	 Catch:{ all -> 0x078e }
        r11 = r11.get(r4);	 Catch:{ all -> 0x078e }
        r11 = (com.google.android.gms.internal.zzcjw) r11;	 Catch:{ all -> 0x078e }
        r11 = r11.name;	 Catch:{ all -> 0x078e }
        r10 = r10.zzdW(r11);	 Catch:{ all -> 0x078e }
        r8.zzj(r9, r10);	 Catch:{ all -> 0x078e }
        r8 = r2.zztH;	 Catch:{ all -> 0x078e }
        r8 = r8.get(r4);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjw) r8;	 Catch:{ all -> 0x078e }
        r8 = r8.zzbvw;	 Catch:{ all -> 0x078e }
        r9 = r2.zztH;	 Catch:{ all -> 0x078e }
        r9 = r9.get(r4);	 Catch:{ all -> 0x078e }
        r9 = (com.google.android.gms.internal.zzcjw) r9;	 Catch:{ all -> 0x078e }
        r9 = r9.zzbvw;	 Catch:{ all -> 0x078e }
        r9 = r9.length;	 Catch:{ all -> 0x078e }
        r10 = 1;
        r9 = r9 + r10;
        r8 = java.util.Arrays.copyOf(r8, r9);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjx[]) r8;	 Catch:{ all -> 0x078e }
        r9 = new com.google.android.gms.internal.zzcjx;	 Catch:{ all -> 0x078e }
        r9.<init>();	 Catch:{ all -> 0x078e }
        r10 = "_r";
        r9.name = r10;	 Catch:{ all -> 0x078e }
        r10 = 1;
        r10 = java.lang.Long.valueOf(r10);	 Catch:{ all -> 0x078e }
        r9.zzbvA = r10;	 Catch:{ all -> 0x078e }
        r10 = r8.length;	 Catch:{ all -> 0x078e }
        r11 = 1;
        r10 = r10 - r11;
        r8[r10] = r9;	 Catch:{ all -> 0x078e }
        r9 = r2.zztH;	 Catch:{ all -> 0x078e }
        r9 = r9.get(r4);	 Catch:{ all -> 0x078e }
        r9 = (com.google.android.gms.internal.zzcjw) r9;	 Catch:{ all -> 0x078e }
        r9.zzbvw = r8;	 Catch:{ all -> 0x078e }
    L_0x04b2:
        r10 = r28.zzwz();	 Catch:{ all -> 0x078e }
        r11 = r28.zzyZ();	 Catch:{ all -> 0x078e }
        r8 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r13 = r8.zzaH;	 Catch:{ all -> 0x078e }
        r14 = 0;
        r15 = 0;
        r16 = 0;
        r17 = 0;
        r18 = 1;
        r8 = r10.zza(r11, r13, r14, r15, r16, r17, r18);	 Catch:{ all -> 0x078e }
        r8 = r8.zzbpy;	 Catch:{ all -> 0x078e }
        r10 = r1.zzbsn;	 Catch:{ all -> 0x078e }
        r11 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r11 = r11.zzaH;	 Catch:{ all -> 0x078e }
        r10 = r10.zzdM(r11);	 Catch:{ all -> 0x078e }
        r10 = (long) r10;	 Catch:{ all -> 0x078e }
        r12 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
        if (r12 <= 0) goto L_0x0518;
    L_0x04db:
        r8 = r2.zztH;	 Catch:{ all -> 0x078e }
        r8 = r8.get(r4);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjw) r8;	 Catch:{ all -> 0x078e }
        r9 = 0;
    L_0x04e4:
        r10 = r8.zzbvw;	 Catch:{ all -> 0x078e }
        r10 = r10.length;	 Catch:{ all -> 0x078e }
        if (r9 >= r10) goto L_0x0519;
    L_0x04e9:
        r10 = "_r";
        r11 = r8.zzbvw;	 Catch:{ all -> 0x078e }
        r11 = r11[r9];	 Catch:{ all -> 0x078e }
        r11 = r11.name;	 Catch:{ all -> 0x078e }
        r10 = r10.equals(r11);	 Catch:{ all -> 0x078e }
        if (r10 == 0) goto L_0x0515;
    L_0x04f7:
        r10 = r8.zzbvw;	 Catch:{ all -> 0x078e }
        r10 = r10.length;	 Catch:{ all -> 0x078e }
        r11 = 1;
        r10 = r10 - r11;
        r10 = new com.google.android.gms.internal.zzcjx[r10];	 Catch:{ all -> 0x078e }
        if (r9 <= 0) goto L_0x0506;
    L_0x0500:
        r11 = r8.zzbvw;	 Catch:{ all -> 0x078e }
        r12 = 0;
        java.lang.System.arraycopy(r11, r12, r10, r12, r9);	 Catch:{ all -> 0x078e }
    L_0x0506:
        r11 = r10.length;	 Catch:{ all -> 0x078e }
        if (r9 >= r11) goto L_0x0512;
    L_0x0509:
        r11 = r8.zzbvw;	 Catch:{ all -> 0x078e }
        r12 = r9 + 1;
        r13 = r10.length;	 Catch:{ all -> 0x078e }
        r13 = r13 - r9;
        java.lang.System.arraycopy(r11, r12, r10, r9, r13);	 Catch:{ all -> 0x078e }
    L_0x0512:
        r8.zzbvw = r10;	 Catch:{ all -> 0x078e }
        goto L_0x0519;
    L_0x0515:
        r9 = r9 + 1;
        goto L_0x04e4;
    L_0x0518:
        r5 = 1;
    L_0x0519:
        r8 = r2.zztH;	 Catch:{ all -> 0x078e }
        r8 = r8.get(r4);	 Catch:{ all -> 0x078e }
        r8 = (com.google.android.gms.internal.zzcjw) r8;	 Catch:{ all -> 0x078e }
        r8 = r8.name;	 Catch:{ all -> 0x078e }
        r8 = com.google.android.gms.internal.zzcjl.zzeo(r8);	 Catch:{ all -> 0x078e }
        if (r8 == 0) goto L_0x05dc;
    L_0x0529:
        if (r7 == 0) goto L_0x05dc;
    L_0x052b:
        r9 = r28.zzwz();	 Catch:{ all -> 0x078e }
        r10 = r28.zzyZ();	 Catch:{ all -> 0x078e }
        r7 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r12 = r7.zzaH;	 Catch:{ all -> 0x078e }
        r13 = 0;
        r14 = 0;
        r15 = 1;
        r16 = 0;
        r17 = 0;
        r7 = r9.zza(r10, r12, r13, r14, r15, r16, r17);	 Catch:{ all -> 0x078e }
        r7 = r7.zzbpw;	 Catch:{ all -> 0x078e }
        r9 = r1.zzbsn;	 Catch:{ all -> 0x078e }
        r10 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r10 = r10.zzaH;	 Catch:{ all -> 0x078e }
        r11 = com.google.android.gms.internal.zzcfb.zzbqi;	 Catch:{ all -> 0x078e }
        r9 = r9.zzb(r10, r11);	 Catch:{ all -> 0x078e }
        r9 = (long) r9;	 Catch:{ all -> 0x078e }
        r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1));
        if (r11 <= 0) goto L_0x05dc;
    L_0x0555:
        r7 = r28.zzwF();	 Catch:{ all -> 0x078e }
        r7 = r7.zzyz();	 Catch:{ all -> 0x078e }
        r8 = "Too many conversions. Not logging as conversion. appId";
        r9 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r9 = r9.zzaH;	 Catch:{ all -> 0x078e }
        r9 = com.google.android.gms.internal.zzcfl.zzdZ(r9);	 Catch:{ all -> 0x078e }
        r7.zzj(r8, r9);	 Catch:{ all -> 0x078e }
        r7 = r2.zztH;	 Catch:{ all -> 0x078e }
        r7 = r7.get(r4);	 Catch:{ all -> 0x078e }
        r7 = (com.google.android.gms.internal.zzcjw) r7;	 Catch:{ all -> 0x078e }
        r8 = r7.zzbvw;	 Catch:{ all -> 0x078e }
        r9 = r8.length;	 Catch:{ all -> 0x078e }
        r12 = r21;
        r10 = 0;
        r11 = 0;
    L_0x0579:
        if (r10 >= r9) goto L_0x0597;
    L_0x057b:
        r13 = r8[r10];	 Catch:{ all -> 0x078e }
        r14 = "_c";
        r15 = r13.name;	 Catch:{ all -> 0x078e }
        r14 = r14.equals(r15);	 Catch:{ all -> 0x078e }
        if (r14 == 0) goto L_0x0589;
    L_0x0587:
        r12 = r13;
        goto L_0x0594;
    L_0x0589:
        r14 = "_err";
        r13 = r13.name;	 Catch:{ all -> 0x078e }
        r13 = r14.equals(r13);	 Catch:{ all -> 0x078e }
        if (r13 == 0) goto L_0x0594;
    L_0x0593:
        r11 = 1;
    L_0x0594:
        r10 = r10 + 1;
        goto L_0x0579;
    L_0x0597:
        if (r11 == 0) goto L_0x05b8;
    L_0x0599:
        if (r12 == 0) goto L_0x05b8;
    L_0x059b:
        r8 = r7.zzbvw;	 Catch:{ all -> 0x078e }
        r8 = r8.length;	 Catch:{ all -> 0x078e }
        r9 = 1;
        r8 = r8 - r9;
        r8 = new com.google.android.gms.internal.zzcjx[r8];	 Catch:{ all -> 0x078e }
        r9 = r7.zzbvw;	 Catch:{ all -> 0x078e }
        r10 = r9.length;	 Catch:{ all -> 0x078e }
        r11 = 0;
        r13 = 0;
    L_0x05a7:
        if (r11 >= r10) goto L_0x05b5;
    L_0x05a9:
        r14 = r9[r11];	 Catch:{ all -> 0x078e }
        if (r14 == r12) goto L_0x05b2;
    L_0x05ad:
        r15 = r13 + 1;
        r8[r13] = r14;	 Catch:{ all -> 0x078e }
        r13 = r15;
    L_0x05b2:
        r11 = r11 + 1;
        goto L_0x05a7;
    L_0x05b5:
        r7.zzbvw = r8;	 Catch:{ all -> 0x078e }
        goto L_0x05dc;
    L_0x05b8:
        if (r12 == 0) goto L_0x05c7;
    L_0x05ba:
        r7 = "_err";
        r12.name = r7;	 Catch:{ all -> 0x078e }
        r7 = 10;
        r7 = java.lang.Long.valueOf(r7);	 Catch:{ all -> 0x078e }
        r12.zzbvA = r7;	 Catch:{ all -> 0x078e }
        goto L_0x05dc;
    L_0x05c7:
        r7 = r28.zzwF();	 Catch:{ all -> 0x078e }
        r7 = r7.zzyx();	 Catch:{ all -> 0x078e }
        r8 = "Did not find conversion parameter. appId";
        r9 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r9 = r9.zzaH;	 Catch:{ all -> 0x078e }
        r9 = com.google.android.gms.internal.zzcfl.zzdZ(r9);	 Catch:{ all -> 0x078e }
        r7.zzj(r8, r9);	 Catch:{ all -> 0x078e }
    L_0x05dc:
        r7 = r3.zzbvE;	 Catch:{ all -> 0x078e }
        r8 = r6 + 1;
        r9 = r2.zztH;	 Catch:{ all -> 0x078e }
        r9 = r9.get(r4);	 Catch:{ all -> 0x078e }
        r9 = (com.google.android.gms.internal.zzcjw) r9;	 Catch:{ all -> 0x078e }
        r7[r6] = r9;	 Catch:{ all -> 0x078e }
        r6 = r8;
    L_0x05eb:
        r4 = r4 + 1;
        r10 = 1;
        r11 = 0;
        goto L_0x02db;
    L_0x05f1:
        r4 = r2.zztH;	 Catch:{ all -> 0x078e }
        r4 = r4.size();	 Catch:{ all -> 0x078e }
        if (r6 >= r4) goto L_0x0603;
    L_0x05f9:
        r4 = r3.zzbvE;	 Catch:{ all -> 0x078e }
        r4 = java.util.Arrays.copyOf(r4, r6);	 Catch:{ all -> 0x078e }
        r4 = (com.google.android.gms.internal.zzcjw[]) r4;	 Catch:{ all -> 0x078e }
        r3.zzbvE = r4;	 Catch:{ all -> 0x078e }
    L_0x0603:
        r4 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r4 = r4.zzaH;	 Catch:{ all -> 0x078e }
        r6 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r6 = r6.zzbvF;	 Catch:{ all -> 0x078e }
        r7 = r3.zzbvE;	 Catch:{ all -> 0x078e }
        r4 = r1.zza(r4, r6, r7);	 Catch:{ all -> 0x078e }
        r3.zzbvX = r4;	 Catch:{ all -> 0x078e }
        r6 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r4 = java.lang.Long.valueOf(r6);	 Catch:{ all -> 0x078e }
        r3.zzbvH = r4;	 Catch:{ all -> 0x078e }
        r6 = -9223372036854775808;
        r4 = java.lang.Long.valueOf(r6);	 Catch:{ all -> 0x078e }
        r3.zzbvI = r4;	 Catch:{ all -> 0x078e }
        r4 = 0;
    L_0x0627:
        r6 = r3.zzbvE;	 Catch:{ all -> 0x078e }
        r6 = r6.length;	 Catch:{ all -> 0x078e }
        if (r4 >= r6) goto L_0x065b;
    L_0x062c:
        r6 = r3.zzbvE;	 Catch:{ all -> 0x078e }
        r6 = r6[r4];	 Catch:{ all -> 0x078e }
        r7 = r6.zzbvx;	 Catch:{ all -> 0x078e }
        r7 = r7.longValue();	 Catch:{ all -> 0x078e }
        r9 = r3.zzbvH;	 Catch:{ all -> 0x078e }
        r9 = r9.longValue();	 Catch:{ all -> 0x078e }
        r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1));
        if (r11 >= 0) goto L_0x0644;
    L_0x0640:
        r7 = r6.zzbvx;	 Catch:{ all -> 0x078e }
        r3.zzbvH = r7;	 Catch:{ all -> 0x078e }
    L_0x0644:
        r7 = r6.zzbvx;	 Catch:{ all -> 0x078e }
        r7 = r7.longValue();	 Catch:{ all -> 0x078e }
        r9 = r3.zzbvI;	 Catch:{ all -> 0x078e }
        r9 = r9.longValue();	 Catch:{ all -> 0x078e }
        r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1));
        if (r11 <= 0) goto L_0x0658;
    L_0x0654:
        r6 = r6.zzbvx;	 Catch:{ all -> 0x078e }
        r3.zzbvI = r6;	 Catch:{ all -> 0x078e }
    L_0x0658:
        r4 = r4 + 1;
        goto L_0x0627;
    L_0x065b:
        r4 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r4 = r4.zzaH;	 Catch:{ all -> 0x078e }
        r6 = r28.zzwz();	 Catch:{ all -> 0x078e }
        r6 = r6.zzdQ(r4);	 Catch:{ all -> 0x078e }
        if (r6 != 0) goto L_0x067f;
    L_0x0669:
        r6 = r28.zzwF();	 Catch:{ all -> 0x078e }
        r6 = r6.zzyx();	 Catch:{ all -> 0x078e }
        r7 = "Bundling raw events w/o app info. appId";
        r8 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r8 = r8.zzaH;	 Catch:{ all -> 0x078e }
        r8 = com.google.android.gms.internal.zzcfl.zzdZ(r8);	 Catch:{ all -> 0x078e }
        r6.zzj(r7, r8);	 Catch:{ all -> 0x078e }
        goto L_0x06da;
    L_0x067f:
        r7 = r3.zzbvE;	 Catch:{ all -> 0x078e }
        r7 = r7.length;	 Catch:{ all -> 0x078e }
        if (r7 <= 0) goto L_0x06da;
    L_0x0684:
        r7 = r6.zzwM();	 Catch:{ all -> 0x078e }
        r9 = 0;
        r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1));
        if (r11 == 0) goto L_0x0693;
    L_0x068e:
        r11 = java.lang.Long.valueOf(r7);	 Catch:{ all -> 0x078e }
        goto L_0x0695;
    L_0x0693:
        r11 = r21;
    L_0x0695:
        r3.zzbvK = r11;	 Catch:{ all -> 0x078e }
        r11 = r6.zzwL();	 Catch:{ all -> 0x078e }
        r13 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1));
        if (r13 != 0) goto L_0x06a0;
    L_0x069f:
        r11 = r7;
    L_0x06a0:
        r7 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1));
        if (r7 == 0) goto L_0x06a9;
    L_0x06a4:
        r7 = java.lang.Long.valueOf(r11);	 Catch:{ all -> 0x078e }
        goto L_0x06ab;
    L_0x06a9:
        r7 = r21;
    L_0x06ab:
        r3.zzbvJ = r7;	 Catch:{ all -> 0x078e }
        r6.zzwV();	 Catch:{ all -> 0x078e }
        r7 = r6.zzwS();	 Catch:{ all -> 0x078e }
        r7 = (int) r7;	 Catch:{ all -> 0x078e }
        r7 = java.lang.Integer.valueOf(r7);	 Catch:{ all -> 0x078e }
        r3.zzbvV = r7;	 Catch:{ all -> 0x078e }
        r7 = r3.zzbvH;	 Catch:{ all -> 0x078e }
        r7 = r7.longValue();	 Catch:{ all -> 0x078e }
        r6.zzL(r7);	 Catch:{ all -> 0x078e }
        r7 = r3.zzbvI;	 Catch:{ all -> 0x078e }
        r7 = r7.longValue();	 Catch:{ all -> 0x078e }
        r6.zzM(r7);	 Catch:{ all -> 0x078e }
        r7 = r6.zzxd();	 Catch:{ all -> 0x078e }
        r3.zzboU = r7;	 Catch:{ all -> 0x078e }
        r7 = r28.zzwz();	 Catch:{ all -> 0x078e }
        r7.zza(r6);	 Catch:{ all -> 0x078e }
    L_0x06da:
        r6 = r3.zzbvE;	 Catch:{ all -> 0x078e }
        r6 = r6.length;	 Catch:{ all -> 0x078e }
        if (r6 <= 0) goto L_0x0727;
    L_0x06df:
        com.google.android.gms.internal.zzcem.zzxE();	 Catch:{ all -> 0x078e }
        r6 = r28.zzwC();	 Catch:{ all -> 0x078e }
        r7 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r7 = r7.zzaH;	 Catch:{ all -> 0x078e }
        r6 = r6.zzeh(r7);	 Catch:{ all -> 0x078e }
        if (r6 == 0) goto L_0x06fa;
    L_0x06f0:
        r7 = r6.zzbvl;	 Catch:{ all -> 0x078e }
        if (r7 != 0) goto L_0x06f5;
    L_0x06f4:
        goto L_0x06fa;
    L_0x06f5:
        r6 = r6.zzbvl;	 Catch:{ all -> 0x078e }
    L_0x06f7:
        r3.zzbwb = r6;	 Catch:{ all -> 0x078e }
        goto L_0x0720;
    L_0x06fa:
        r6 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r6 = r6.zzboQ;	 Catch:{ all -> 0x078e }
        r6 = android.text.TextUtils.isEmpty(r6);	 Catch:{ all -> 0x078e }
        if (r6 == 0) goto L_0x070b;
    L_0x0704:
        r6 = -1;
        r6 = java.lang.Long.valueOf(r6);	 Catch:{ all -> 0x078e }
        goto L_0x06f7;
    L_0x070b:
        r6 = r28.zzwF();	 Catch:{ all -> 0x078e }
        r6 = r6.zzyz();	 Catch:{ all -> 0x078e }
        r7 = "Did not find measurement config or missing version info. appId";
        r8 = r2.zzbsZ;	 Catch:{ all -> 0x078e }
        r8 = r8.zzaH;	 Catch:{ all -> 0x078e }
        r8 = com.google.android.gms.internal.zzcfl.zzdZ(r8);	 Catch:{ all -> 0x078e }
        r6.zzj(r7, r8);	 Catch:{ all -> 0x078e }
    L_0x0720:
        r6 = r28.zzwz();	 Catch:{ all -> 0x078e }
        r6.zza(r3, r5);	 Catch:{ all -> 0x078e }
    L_0x0727:
        r5 = r28.zzwz();	 Catch:{ all -> 0x078e }
        r2 = r2.zzbta;	 Catch:{ all -> 0x078e }
        r5.zzG(r2);	 Catch:{ all -> 0x078e }
        r2 = r28.zzwz();	 Catch:{ all -> 0x078e }
        r5 = r2.getWritableDatabase();	 Catch:{ all -> 0x078e }
        r6 = "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)";
        r7 = 2;
        r7 = new java.lang.String[r7];	 Catch:{ SQLiteException -> 0x0749 }
        r8 = 0;
        r7[r8] = r4;	 Catch:{ SQLiteException -> 0x0749 }
        r8 = 1;
        r7[r8] = r4;	 Catch:{ SQLiteException -> 0x0747 }
        r5.execSQL(r6, r7);	 Catch:{ SQLiteException -> 0x0747 }
        goto L_0x075d;
    L_0x0747:
        r0 = move-exception;
        goto L_0x074b;
    L_0x0749:
        r0 = move-exception;
        r8 = 1;
    L_0x074b:
        r5 = r0;
        r2 = r2.zzwF();	 Catch:{ all -> 0x078e }
        r2 = r2.zzyx();	 Catch:{ all -> 0x078e }
        r6 = "Failed to remove unused event metadata. appId";
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r4);	 Catch:{ all -> 0x078e }
        r2.zze(r6, r4, r5);	 Catch:{ all -> 0x078e }
    L_0x075d:
        r2 = r28.zzwz();	 Catch:{ all -> 0x078e }
        r2.setTransactionSuccessful();	 Catch:{ all -> 0x078e }
        r2 = r3.zzbvE;	 Catch:{ all -> 0x078e }
        r2 = r2.length;	 Catch:{ all -> 0x078e }
        if (r2 <= 0) goto L_0x076c;
    L_0x0769:
        r26 = 1;
        goto L_0x076e;
    L_0x076c:
        r26 = 0;
    L_0x076e:
        r2 = r28.zzwz();
        r2.endTransaction();
        return r26;
    L_0x0776:
        r2 = r28.zzwz();	 Catch:{ all -> 0x078e }
        r2.setTransactionSuccessful();	 Catch:{ all -> 0x078e }
        r2 = r28.zzwz();
        r2.endTransaction();
        r2 = 0;
        return r2;
    L_0x0786:
        r0 = move-exception;
    L_0x0787:
        r2 = r0;
    L_0x0788:
        if (r6 == 0) goto L_0x078d;
    L_0x078a:
        r6.close();	 Catch:{ all -> 0x078e }
    L_0x078d:
        throw r2;	 Catch:{ all -> 0x078e }
    L_0x078e:
        r0 = move-exception;
        r2 = r0;
        r3 = r28.zzwz();
        r3.endTransaction();
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcgl.zzg(java.lang.String, long):boolean");
    }

    static void zzwo() {
        zzcem.zzxE();
        throw new IllegalStateException("Unexpected call on client side");
    }

    private final zzcfu zzyV() {
        if (this.zzbsF != null) {
            return this.zzbsF;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final zzcjg zzyW() {
        zza(this.zzbsG);
        return this.zzbsG;
    }

    @WorkerThread
    private final boolean zzyX() {
        Object e;
        zzcfn zzyx;
        String str;
        zzwE().zzjC();
        try {
            this.zzbsN = new RandomAccessFile(new File(this.mContext.getFilesDir(), zzcem.zzxC()), "rw").getChannel();
            this.zzbsM = this.zzbsN.tryLock();
            if (this.zzbsM != null) {
                zzwF().zzyD().log("Storage concurrent access okay");
                return true;
            }
            zzwF().zzyx().log("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e2) {
            e = e2;
            zzyx = zzwF().zzyx();
            str = "Failed to acquire storage lock";
            zzyx.zzj(str, e);
            return false;
        } catch (IOException e3) {
            e = e3;
            zzyx = zzwF().zzyx();
            str = "Failed to access storage lock file";
            zzyx.zzj(str, e);
            return false;
        }
    }

    private final long zzyZ() {
        long currentTimeMillis = this.zzvw.currentTimeMillis();
        zzcfw zzwG = zzwG();
        zzwG.zzkD();
        zzwG.zzjC();
        long j = zzwG.zzbro.get();
        if (j == 0) {
            j = (long) (zzwG.zzwB().zzzt().nextInt(86400000) + 1);
            zzwG.zzbro.set(j);
        }
        return ((((currentTimeMillis + j) / 1000) / 60) / 60) / 24;
    }

    private final boolean zzzb() {
        zzwE().zzjC();
        zzkD();
        return zzwz().zzyh() || !TextUtils.isEmpty(zzwz().zzyc());
    }

    /* JADX WARNING: Removed duplicated region for block: B:55:0x015a  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x013e  */
    @android.support.annotation.WorkerThread
    private final void zzzc() {
        /*
        r19 = this;
        r0 = r19;
        r1 = r19.zzwE();
        r1.zzjC();
        r19.zzkD();
        r1 = r19.zzzf();
        if (r1 != 0) goto L_0x0013;
    L_0x0012:
        return;
    L_0x0013:
        r1 = r0.zzbsT;
        r3 = 0;
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
        if (r5 <= 0) goto L_0x0054;
    L_0x001b:
        r1 = r0.zzvw;
        r1 = r1.elapsedRealtime();
        r5 = 3600000; // 0x36ee80 float:5.044674E-39 double:1.7786363E-317;
        r7 = r0.zzbsT;
        r9 = r1 - r7;
        r1 = java.lang.Math.abs(r9);
        r7 = r5 - r1;
        r1 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1));
        if (r1 <= 0) goto L_0x0052;
    L_0x0032:
        r1 = r19.zzwF();
        r1 = r1.zzyD();
        r2 = "Upload has been suspended. Will update scheduling later in approximately ms";
        r3 = java.lang.Long.valueOf(r7);
        r1.zzj(r2, r3);
        r1 = r19.zzyV();
        r1.unregister();
        r1 = r19.zzyW();
        r1.cancel();
        return;
    L_0x0052:
        r0.zzbsT = r3;
    L_0x0054:
        r1 = r19.zzyP();
        if (r1 == 0) goto L_0x01dd;
    L_0x005a:
        r1 = r19.zzzb();
        if (r1 != 0) goto L_0x0062;
    L_0x0060:
        goto L_0x01dd;
    L_0x0062:
        r1 = r0.zzvw;
        r1 = r1.currentTimeMillis();
        r5 = com.google.android.gms.internal.zzcem.zzxX();
        r7 = r19.zzwz();
        r7 = r7.zzyi();
        if (r7 != 0) goto L_0x0083;
    L_0x0076:
        r7 = r19.zzwz();
        r7 = r7.zzyd();
        if (r7 == 0) goto L_0x0081;
    L_0x0080:
        goto L_0x0083;
    L_0x0081:
        r7 = 0;
        goto L_0x0084;
    L_0x0083:
        r7 = 1;
    L_0x0084:
        if (r7 == 0) goto L_0x00a4;
    L_0x0086:
        r10 = r0.zzbsn;
        r10 = r10.zzya();
        r11 = android.text.TextUtils.isEmpty(r10);
        if (r11 != 0) goto L_0x009f;
    L_0x0092:
        r11 = ".none.";
        r10 = r11.equals(r10);
        if (r10 != 0) goto L_0x009f;
    L_0x009a:
        r10 = com.google.android.gms.internal.zzcem.zzxT();
        goto L_0x00a8;
    L_0x009f:
        r10 = com.google.android.gms.internal.zzcem.zzxS();
        goto L_0x00a8;
    L_0x00a4:
        r10 = com.google.android.gms.internal.zzcem.zzxR();
    L_0x00a8:
        r12 = r19.zzwG();
        r12 = r12.zzbrk;
        r12 = r12.get();
        r14 = r19.zzwG();
        r14 = r14.zzbrl;
        r14 = r14.get();
        r8 = r19.zzwz();
        r16 = r10;
        r9 = r8.zzyf();
        r8 = r19.zzwz();
        r18 = r7;
        r7 = r8.zzyg();
        r7 = java.lang.Math.max(r9, r7);
        r9 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1));
        if (r9 != 0) goto L_0x00da;
    L_0x00d8:
        r5 = r3;
        goto L_0x013a;
    L_0x00da:
        r9 = 0;
        r9 = r7 - r1;
        r7 = java.lang.Math.abs(r9);
        r9 = r1 - r7;
        r7 = r12 - r1;
        r7 = java.lang.Math.abs(r7);
        r11 = r1 - r7;
        r7 = r14 - r1;
        r7 = java.lang.Math.abs(r7);
        r13 = r1 - r7;
        r1 = java.lang.Math.max(r11, r13);
        r7 = r9 + r5;
        if (r18 == 0) goto L_0x0105;
    L_0x00fb:
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
        if (r5 <= 0) goto L_0x0105;
    L_0x00ff:
        r5 = java.lang.Math.min(r9, r1);
        r7 = r5 + r16;
    L_0x0105:
        r5 = r19.zzwB();
        r11 = r16;
        r5 = r5.zzf(r1, r11);
        if (r5 != 0) goto L_0x0114;
    L_0x0111:
        r5 = r1 + r11;
        goto L_0x0115;
    L_0x0114:
        r5 = r7;
    L_0x0115:
        r1 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1));
        if (r1 == 0) goto L_0x013a;
    L_0x0119:
        r1 = (r13 > r9 ? 1 : (r13 == r9 ? 0 : -1));
        if (r1 < 0) goto L_0x013a;
    L_0x011d:
        r1 = 0;
    L_0x011e:
        r2 = com.google.android.gms.internal.zzcem.zzxZ();
        if (r1 >= r2) goto L_0x00d8;
    L_0x0124:
        r2 = 1;
        r7 = r2 << r1;
        r7 = (long) r7;
        r9 = com.google.android.gms.internal.zzcem.zzxY();
        r9 = r9 * r7;
        r7 = r5 + r9;
        r5 = (r7 > r13 ? 1 : (r7 == r13 ? 0 : -1));
        if (r5 <= 0) goto L_0x0136;
    L_0x0134:
        r5 = r7;
        goto L_0x013a;
    L_0x0136:
        r1 = r1 + 1;
        r5 = r7;
        goto L_0x011e;
    L_0x013a:
        r1 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1));
        if (r1 != 0) goto L_0x015a;
    L_0x013e:
        r1 = r19.zzwF();
        r1 = r1.zzyD();
        r2 = "Next upload time is 0";
        r1.log(r2);
        r1 = r19.zzyV();
        r1.unregister();
        r1 = r19.zzyW();
        r1.cancel();
        return;
    L_0x015a:
        r1 = r19.zzyU();
        r1 = r1.zzlQ();
        if (r1 != 0) goto L_0x0180;
    L_0x0164:
        r1 = r19.zzwF();
        r1 = r1.zzyD();
        r2 = "No network";
        r1.log(r2);
        r1 = r19.zzyV();
        r1.zzlN();
        r1 = r19.zzyW();
        r1.cancel();
        return;
    L_0x0180:
        r1 = r19.zzwG();
        r1 = r1.zzbrm;
        r1 = r1.get();
        r7 = com.google.android.gms.internal.zzcem.zzxQ();
        r9 = r19.zzwB();
        r9 = r9.zzf(r1, r7);
        if (r9 != 0) goto L_0x019e;
    L_0x0198:
        r9 = r1 + r7;
        r5 = java.lang.Math.max(r5, r9);
    L_0x019e:
        r1 = r19.zzyV();
        r1.unregister();
        r1 = r0.zzvw;
        r1 = r1.currentTimeMillis();
        r7 = r5 - r1;
        r1 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1));
        if (r1 > 0) goto L_0x01c4;
    L_0x01b1:
        r7 = com.google.android.gms.internal.zzcem.zzxU();
        r1 = r19.zzwG();
        r1 = r1.zzbrk;
        r2 = r0.zzvw;
        r2 = r2.currentTimeMillis();
        r1.set(r2);
    L_0x01c4:
        r1 = r19.zzwF();
        r1 = r1.zzyD();
        r2 = "Upload scheduled in approximately ms";
        r3 = java.lang.Long.valueOf(r7);
        r1.zzj(r2, r3);
        r1 = r19.zzyW();
        r1.zzs(r7);
        return;
    L_0x01dd:
        r1 = r19.zzwF();
        r1 = r1.zzyD();
        r2 = "Nothing to upload or uploading impossible";
        r1.log(r2);
        r1 = r19.zzyV();
        r1.unregister();
        r1 = r19.zzyW();
        r1.cancel();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcgl.zzzc():void");
    }

    @WorkerThread
    private final boolean zzzf() {
        zzwE().zzjC();
        zzkD();
        return this.zzbsJ;
    }

    @WorkerThread
    private final void zzzg() {
        zzwE().zzjC();
        if (this.zzbsU || this.zzbsV || this.zzbsW) {
            zzwF().zzyD().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzbsU), Boolean.valueOf(this.zzbsV), Boolean.valueOf(this.zzbsW));
            return;
        }
        zzwF().zzyD().log("Stopping uploading service(s)");
        if (this.zzbsP != null) {
            for (Runnable run : this.zzbsP) {
                run.run();
            }
            this.zzbsP.clear();
        }
    }

    public final Context getContext() {
        return this.mContext;
    }

    @WorkerThread
    public final boolean isEnabled() {
        zzwE().zzjC();
        zzkD();
        boolean z = false;
        if (this.zzbsn.zzxF()) {
            return false;
        }
        Boolean zzdN = this.zzbsn.zzdN("firebase_analytics_collection_enabled");
        if (zzdN != null) {
            z = zzdN.booleanValue();
        } else if (!zzcem.zzqB()) {
            z = true;
        }
        return zzwG().zzal(z);
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void start() {
        zzwE().zzjC();
        zzwz().zzye();
        if (zzwG().zzbrk.get() == 0) {
            zzwG().zzbrk.set(this.zzvw.currentTimeMillis());
        }
        if (Long.valueOf(zzwG().zzbrp.get()).longValue() == 0) {
            zzwF().zzyD().zzj("Persisting first open", Long.valueOf(this.zzbsX));
            zzwG().zzbrp.set(this.zzbsX);
        }
        if (zzyP()) {
            zzcem.zzxE();
            if (!TextUtils.isEmpty(zzwu().getGmpAppId())) {
                String zzyG = zzwG().zzyG();
                if (zzyG == null) {
                    zzwG().zzed(zzwu().getGmpAppId());
                } else if (!zzyG.equals(zzwu().getGmpAppId())) {
                    zzwF().zzyB().log("Rechecking which service to use due to a GMP App Id change");
                    zzwG().zzyJ();
                    this.zzbsB.disconnect();
                    this.zzbsB.zzla();
                    zzwG().zzed(zzwu().getGmpAppId());
                    zzwG().zzbrp.set(this.zzbsX);
                    zzwG().zzbrq.zzef(null);
                }
            }
            zzwt().zzee(zzwG().zzbrq.zzyL());
            zzcem.zzxE();
            if (!TextUtils.isEmpty(zzwu().getGmpAppId())) {
                zzchl zzwt = zzwt();
                zzwt.zzjC();
                zzwt.zzwp();
                zzwt.zzkD();
                if (zzwt.zzboe.zzyP()) {
                    zzwt.zzww().zzzk();
                    String zzyK = zzwt.zzwG().zzyK();
                    if (!TextUtils.isEmpty(zzyK)) {
                        zzwt.zzwv().zzkD();
                        if (!zzyK.equals(VERSION.RELEASE)) {
                            Bundle bundle = new Bundle();
                            bundle.putString("_po", zzyK);
                            zzwt.zzd("auto", "_ou", bundle);
                        }
                    }
                }
                zzww().zza(new AtomicReference());
            }
        } else if (isEnabled()) {
            if (!zzwB().zzbv("android.permission.INTERNET")) {
                zzwF().zzyx().log("App is missing INTERNET permission");
            }
            if (!zzwB().zzbv("android.permission.ACCESS_NETWORK_STATE")) {
                zzwF().zzyx().log("App is missing ACCESS_NETWORK_STATE permission");
            }
            zzcem.zzxE();
            if (!zzbha.zzaP(this.mContext).zzsl()) {
                if (!zzcgc.zzj(this.mContext, false)) {
                    zzwF().zzyx().log("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzciw.zzk(this.mContext, false)) {
                    zzwF().zzyx().log("AppMeasurementService not registered/enabled");
                }
            }
            zzwF().zzyx().log("Uploading is not possible. App measurement disabled");
        }
        zzzc();
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zza(int i, Throwable th, byte[] bArr) {
        zzwE().zzjC();
        zzkD();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.zzbsV = false;
                zzzg();
            }
        }
        List<Long> list = this.zzbsO;
        this.zzbsO = null;
        int i2 = 1;
        if ((i == 200 || i == 204) && th == null) {
            try {
                zzwG().zzbrk.set(this.zzvw.currentTimeMillis());
                zzwG().zzbrl.set(0);
                zzzc();
                zzwF().zzyD().zze("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                zzwz().beginTransaction();
                zzcen zzwz;
                try {
                    for (Long l : list) {
                        zzwz = zzwz();
                        long longValue = l.longValue();
                        zzwz.zzjC();
                        zzwz.zzkD();
                        if (zzwz.getWritableDatabase().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                            throw new SQLiteException("Deleted fewer rows from queue than expected");
                        }
                    }
                    zzwz().setTransactionSuccessful();
                    zzwz().endTransaction();
                    if (zzyU().zzlQ() && zzzb()) {
                        zzza();
                    } else {
                        this.zzbsS = -1;
                        zzzc();
                    }
                    this.zzbsT = 0;
                } catch (SQLiteException e) {
                    zzwz.zzwF().zzyx().zzj("Failed to delete a bundle in a queue table", e);
                    throw e;
                } catch (Throwable th3) {
                    zzwz().endTransaction();
                }
            } catch (SQLiteException e2) {
                zzwF().zzyx().zzj("Database error while trying to delete uploaded bundles", e2);
                this.zzbsT = this.zzvw.elapsedRealtime();
                zzwF().zzyD().zzj("Disable upload, time", Long.valueOf(this.zzbsT));
            }
        } else {
            zzwF().zzyD().zze("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            zzwG().zzbrl.set(this.zzvw.currentTimeMillis());
            if (i != ErrorCode.ERROR_CODE_URL) {
                if (i != 429) {
                    i2 = 0;
                }
            }
            if (i2 != 0) {
                zzwG().zzbrm.set(this.zzvw.currentTimeMillis());
            }
            zzzc();
        }
        this.zzbsV = false;
        zzzg();
    }

    @WorkerThread
    public final byte[] zza(@NonNull zzcez zzcez, @Size(min = 1) String str) {
        zzcez zzcez2 = zzcez;
        String str2 = str;
        zzkD();
        zzwE().zzjC();
        zzwo();
        zzbo.zzu(zzcez);
        zzbo.zzcF(str);
        zzcjy zzcjy = new zzcjy();
        zzwz().beginTransaction();
        try {
            zzceg zzdQ = zzwz().zzdQ(str2);
            if (zzdQ == null) {
                zzwF().zzyC().zzj("Log and bundle not available. package_name", str2);
            } else if (zzdQ.zzwR()) {
                int i;
                byte[] bArr;
                Bundle bundle;
                zzcjy zzcjy2;
                zzceg zzceg;
                int i2;
                zzcjz zzcjz;
                long j;
                long j2;
                zzcjz zzcjz2 = new zzcjz();
                zzcjy.zzbvB = new zzcjz[]{zzcjz2};
                zzcjz2.zzbvD = Integer.valueOf(1);
                zzcjz2.zzbvL = SystemMediaRouteProvider.PACKAGE_NAME;
                zzcjz2.zzaH = zzdQ.zzhl();
                zzcjz2.zzboR = zzdQ.zzwO();
                zzcjz2.zzbgW = zzdQ.zzjH();
                long zzwN = zzdQ.zzwN();
                zzcjz2.zzbvY = zzwN == -2147483648L ? null : Integer.valueOf((int) zzwN);
                zzcjz2.zzbvP = Long.valueOf(zzdQ.zzwP());
                zzcjz2.zzboQ = zzdQ.getGmpAppId();
                zzcjz2.zzbvU = Long.valueOf(zzdQ.zzwQ());
                if (isEnabled() && zzcem.zzyb() && this.zzbsn.zzdO(zzcjz2.zzaH)) {
                    zzwu();
                    zzcjz2.zzbwd = null;
                }
                Pair zzeb = zzwG().zzeb(zzdQ.zzhl());
                if (!(zzeb == null || TextUtils.isEmpty((CharSequence) zzeb.first))) {
                    zzcjz2.zzbvR = (String) zzeb.first;
                    zzcjz2.zzbvS = (Boolean) zzeb.second;
                }
                zzwv().zzkD();
                zzcjz2.zzbvM = Build.MODEL;
                zzwv().zzkD();
                zzcjz2.zzaY = VERSION.RELEASE;
                zzcjz2.zzbvO = Integer.valueOf((int) zzwv().zzyq());
                zzcjz2.zzbvN = zzwv().zzyr();
                zzcjz2.zzbvT = zzdQ.getAppInstanceId();
                zzcjz2.zzboY = zzdQ.zzwK();
                List zzdP = zzwz().zzdP(zzdQ.zzhl());
                zzcjz2.zzbvF = new zzckb[zzdP.size()];
                for (i = 0; i < zzdP.size(); i++) {
                    zzckb zzckb = new zzckb();
                    zzcjz2.zzbvF[i] = zzckb;
                    zzckb.name = ((zzcjk) zzdP.get(i)).mName;
                    zzckb.zzbwh = Long.valueOf(((zzcjk) zzdP.get(i)).zzbuC);
                    zzwB().zza(zzckb, ((zzcjk) zzdP.get(i)).mValue);
                }
                Bundle zzyt = zzcez2.zzbpM.zzyt();
                if ("_iap".equals(zzcez2.name)) {
                    zzyt.putLong("_c", 1);
                    zzwF().zzyC().log("Marking in-app purchase as real-time");
                    zzyt.putLong("_r", 1);
                }
                zzyt.putString("_o", zzcez2.zzbpc);
                if (zzwB().zzey(zzcjz2.zzaH)) {
                    zzwB().zza(zzyt, "_dbg", Long.valueOf(1));
                    zzwB().zza(zzyt, "_r", Long.valueOf(1));
                }
                zzcev zzE = zzwz().zzE(str2, zzcez2.name);
                if (zzE == null) {
                    zzcev zzcev = zzE;
                    bArr = null;
                    bundle = zzyt;
                    zzcjy2 = zzcjy;
                    zzceg = zzdQ;
                    i2 = 1;
                    zzcjz = zzcjz2;
                    zzE = new zzcev(str2, zzcez2.name, 1, 0, zzcez2.zzbpN);
                    zzwz().zza(zzcev);
                    j = 0;
                } else {
                    bArr = null;
                    bundle = zzyt;
                    zzcjy2 = zzcjy;
                    zzceg = zzdQ;
                    i2 = 1;
                    zzcjz = zzcjz2;
                    j2 = zzE.zzbpI;
                    zzwz().zza(zzE.zzab(zzcez2.zzbpN).zzys());
                    j = j2;
                }
                zzceu zzceu = new zzceu(this, zzcez2.zzbpc, str2, zzcez2.name, zzcez2.zzbpN, j, bundle);
                zzcjw zzcjw = new zzcjw();
                zzcjw[] zzcjwArr = new zzcjw[i2];
                zzcjwArr[0] = zzcjw;
                zzcjz.zzbvE = zzcjwArr;
                zzcjw.zzbvx = Long.valueOf(zzceu.zzayS);
                zzcjw.name = zzceu.mName;
                zzcjw.zzbvy = Long.valueOf(zzceu.zzbpE);
                zzcjw.zzbvw = new zzcjx[zzceu.zzbpF.size()];
                Iterator it = zzceu.zzbpF.iterator();
                i = 0;
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    zzcjx zzcjx = new zzcjx();
                    int i3 = i + 1;
                    zzcjw.zzbvw[i] = zzcjx;
                    zzcjx.name = str3;
                    zzwB().zza(zzcjx, zzceu.zzbpF.get(str3));
                    i = i3;
                }
                zzceg zzceg2 = zzceg;
                zzcjz.zzbvX = zza(zzceg2.zzhl(), zzcjz.zzbvF, zzcjz.zzbvE);
                zzcjz.zzbvH = zzcjw.zzbvx;
                zzcjz.zzbvI = zzcjw.zzbvx;
                j2 = zzceg2.zzwM();
                zzcjz.zzbvK = j2 != 0 ? Long.valueOf(j2) : bArr;
                long zzwL = zzceg2.zzwL();
                if (zzwL != 0) {
                    j2 = zzwL;
                }
                zzcjz.zzbvJ = j2 != 0 ? Long.valueOf(j2) : bArr;
                zzceg2.zzwV();
                zzcjz.zzbvV = Integer.valueOf((int) zzceg2.zzwS());
                zzcjz.zzbvQ = Long.valueOf(zzcem.zzwP());
                zzcjz.zzbvG = Long.valueOf(this.zzvw.currentTimeMillis());
                zzcjz.zzbvW = Boolean.TRUE;
                zzceg2.zzL(zzcjz.zzbvH.longValue());
                zzceg2.zzM(zzcjz.zzbvI.longValue());
                zzwz().zza(zzceg2);
                zzwz().setTransactionSuccessful();
                zzwz().endTransaction();
                zzcjy zzcjy3 = zzcjy2;
                try {
                    byte[] bArr2 = new byte[zzcjy3.zzLV()];
                    adh zzc = adh.zzc(bArr2, 0, bArr2.length);
                    zzcjy3.zza(zzc);
                    zzc.zzLM();
                    return zzwB().zzl(bArr2);
                } catch (IOException e) {
                    zzwF().zzyx().zze("Data loss. Failed to bundle and serialize. appId", zzcfl.zzdZ(str), e);
                    return bArr;
                }
            } else {
                zzwF().zzyC().zzj("Log and bundle disabled. package_name", str2);
            }
            byte[] bArr3 = new byte[0];
            zzwz().endTransaction();
            return bArr3;
        } catch (Throwable th) {
            Throwable th2 = th;
            zzwz().endTransaction();
        }
    }

    public final void zzam(boolean z) {
        zzzc();
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzb(zzcek zzcek, zzceh zzceh) {
        zzbo.zzu(zzcek);
        zzbo.zzcF(zzcek.packageName);
        zzbo.zzu(zzcek.zzbpc);
        zzbo.zzu(zzcek.zzbpd);
        zzbo.zzcF(zzcek.zzbpd.name);
        zzwE().zzjC();
        zzkD();
        if (!TextUtils.isEmpty(zzceh.zzboQ)) {
            if (zzceh.zzboV) {
                zzcek zzcek2 = new zzcek(zzcek);
                boolean z = false;
                zzcek2.zzbpf = false;
                zzwz().beginTransaction();
                try {
                    zzcfn zzyC;
                    String str;
                    Object obj;
                    Object zzdY;
                    Object value;
                    zzcek zzH = zzwz().zzH(zzcek2.packageName, zzcek2.zzbpd.name);
                    if (!(zzH == null || zzH.zzbpc.equals(zzcek2.zzbpc))) {
                        zzwF().zzyz().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", zzwA().zzdY(zzcek2.zzbpd.name), zzcek2.zzbpc, zzH.zzbpc);
                    }
                    if (zzH != null && zzH.zzbpf) {
                        zzcek2.zzbpc = zzH.zzbpc;
                        zzcek2.zzbpe = zzH.zzbpe;
                        zzcek2.zzbpi = zzH.zzbpi;
                        zzcek2.zzbpg = zzH.zzbpg;
                        zzcek2.zzbpj = zzH.zzbpj;
                        zzcek2.zzbpf = zzH.zzbpf;
                        zzcek2.zzbpd = new zzcji(zzcek2.zzbpd.name, zzH.zzbpd.zzbuy, zzcek2.zzbpd.getValue(), zzH.zzbpd.zzbpc);
                    } else if (TextUtils.isEmpty(zzcek2.zzbpg)) {
                        zzcek2.zzbpd = new zzcji(zzcek2.zzbpd.name, zzcek2.zzbpe, zzcek2.zzbpd.getValue(), zzcek2.zzbpd.zzbpc);
                        zzcek2.zzbpf = true;
                        z = true;
                    }
                    if (zzcek2.zzbpf) {
                        zzcfn zzyC2;
                        String str2;
                        Object obj2;
                        Object zzdY2;
                        Object obj3;
                        zzcji zzcji = zzcek2.zzbpd;
                        zzcjk zzcjk = new zzcjk(zzcek2.packageName, zzcek2.zzbpc, zzcji.name, zzcji.zzbuy, zzcji.getValue());
                        if (zzwz().zza(zzcjk)) {
                            zzyC2 = zzwF().zzyC();
                            str2 = "User property updated immediately";
                            obj2 = zzcek2.packageName;
                            zzdY2 = zzwA().zzdY(zzcjk.mName);
                            obj3 = zzcjk.mValue;
                        } else {
                            zzyC2 = zzwF().zzyx();
                            str2 = "(2)Too many active user properties, ignoring";
                            obj2 = zzcfl.zzdZ(zzcek2.packageName);
                            zzdY2 = zzwA().zzdY(zzcjk.mName);
                            obj3 = zzcjk.mValue;
                        }
                        zzyC2.zzd(str2, obj2, zzdY2, obj3);
                        if (z && zzcek2.zzbpj != null) {
                            zzc(new zzcez(zzcek2.zzbpj, zzcek2.zzbpe), zzceh);
                        }
                    }
                    if (zzwz().zza(zzcek2)) {
                        zzyC = zzwF().zzyC();
                        str = "Conditional property added";
                        obj = zzcek2.packageName;
                        zzdY = zzwA().zzdY(zzcek2.zzbpd.name);
                        value = zzcek2.zzbpd.getValue();
                    } else {
                        zzyC = zzwF().zzyx();
                        str = "Too many conditional properties, ignoring";
                        obj = zzcfl.zzdZ(zzcek2.packageName);
                        zzdY = zzwA().zzdY(zzcek2.zzbpd.name);
                        value = zzcek2.zzbpd.getValue();
                    }
                    zzyC.zzd(str, obj, zzdY, value);
                    zzwz().setTransactionSuccessful();
                } finally {
                    zzwz().endTransaction();
                }
            } else {
                zzf(zzceh);
            }
        }
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzb(zzcez zzcez, zzceh zzceh) {
        zzcez zzcez2 = zzcez;
        zzceh zzceh2 = zzceh;
        zzbo.zzu(zzceh);
        zzbo.zzcF(zzceh2.packageName);
        zzwE().zzjC();
        zzkD();
        String str = zzceh2.packageName;
        long j = zzcez2.zzbpN;
        zzwB();
        if (!zzcjl.zzd(zzcez, zzceh)) {
            return;
        }
        if (zzceh2.zzboV) {
            zzwz().beginTransaction();
            try {
                List emptyList;
                Object obj;
                List emptyList2;
                zzcen zzwz = zzwz();
                zzbo.zzcF(str);
                zzwz.zzjC();
                zzwz.zzkD();
                if (j < 0) {
                    zzwz.zzwF().zzyz().zze("Invalid time querying timed out conditional properties", zzcfl.zzdZ(str), Long.valueOf(j));
                    emptyList = Collections.emptyList();
                } else {
                    emptyList = zzwz.zzc("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
                }
                for (zzcek zzcek : emptyList) {
                    if (zzcek != null) {
                        zzwF().zzyC().zzd("User property timed out", zzcek.packageName, zzwA().zzdY(zzcek.zzbpd.name), zzcek.zzbpd.getValue());
                        if (zzcek.zzbph != null) {
                            zzc(new zzcez(zzcek.zzbph, j), zzceh2);
                        }
                        zzwz().zzI(str, zzcek.zzbpd.name);
                    }
                }
                zzwz = zzwz();
                zzbo.zzcF(str);
                zzwz.zzjC();
                zzwz.zzkD();
                if (j < 0) {
                    zzwz.zzwF().zzyz().zze("Invalid time querying expired conditional properties", zzcfl.zzdZ(str), Long.valueOf(j));
                    emptyList = Collections.emptyList();
                } else {
                    emptyList = zzwz.zzc("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(r5.size());
                for (zzcek zzcek2 : r5) {
                    if (zzcek2 != null) {
                        zzwF().zzyC().zzd("User property expired", zzcek2.packageName, zzwA().zzdY(zzcek2.zzbpd.name), zzcek2.zzbpd.getValue());
                        zzwz().zzF(str, zzcek2.zzbpd.name);
                        if (zzcek2.zzbpl != null) {
                            arrayList.add(zzcek2.zzbpl);
                        }
                        zzwz().zzI(str, zzcek2.zzbpd.name);
                    }
                }
                arrayList = arrayList;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    obj = arrayList.get(i);
                    i++;
                    zzc(new zzcez((zzcez) obj, j), zzceh2);
                }
                zzwz = zzwz();
                String str2 = zzcez2.name;
                zzbo.zzcF(str);
                zzbo.zzcF(str2);
                zzwz.zzjC();
                zzwz.zzkD();
                if (j < 0) {
                    zzwz.zzwF().zzyz().zzd("Invalid time querying triggered conditional properties", zzcfl.zzdZ(str), zzwz.zzwA().zzdW(str2), Long.valueOf(j));
                    emptyList2 = Collections.emptyList();
                } else {
                    emptyList2 = zzwz.zzc("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
                }
                ArrayList arrayList2 = new ArrayList(emptyList2.size());
                Iterator it = emptyList2.iterator();
                while (it.hasNext()) {
                    zzcek zzcek3 = (zzcek) it.next();
                    if (zzcek3 != null) {
                        zzcfn zzyC;
                        Object zzdY;
                        Object obj2;
                        zzcji zzcji = zzcek3.zzbpd;
                        zzcjk zzcjk = r5;
                        Iterator it2 = it;
                        zzcek zzcek4 = zzcek3;
                        zzcjk zzcjk2 = new zzcjk(zzcek3.packageName, zzcek3.zzbpc, zzcji.name, j, zzcji.getValue());
                        if (zzwz().zza(zzcjk)) {
                            zzyC = zzwF().zzyC();
                            str2 = "User property triggered";
                            obj = zzcek4.packageName;
                            zzdY = zzwA().zzdY(zzcjk.mName);
                            obj2 = zzcjk.mValue;
                        } else {
                            zzyC = zzwF().zzyx();
                            str2 = "Too many active user properties, ignoring";
                            obj = zzcfl.zzdZ(zzcek4.packageName);
                            zzdY = zzwA().zzdY(zzcjk.mName);
                            obj2 = zzcjk.mValue;
                        }
                        zzyC.zzd(str2, obj, zzdY, obj2);
                        if (zzcek4.zzbpj != null) {
                            arrayList2.add(zzcek4.zzbpj);
                        }
                        zzcek4.zzbpd = new zzcji(zzcjk);
                        zzcek4.zzbpf = true;
                        zzwz().zza(zzcek4);
                        it = it2;
                    }
                }
                zzc(zzcez, zzceh);
                arrayList2 = arrayList2;
                int size2 = arrayList2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj3 = arrayList2.get(i2);
                    i2++;
                    zzc(new zzcez((zzcez) obj3, j), zzceh2);
                }
                zzwz().setTransactionSuccessful();
                zzwz().endTransaction();
            } catch (Throwable th) {
                Throwable th2 = th;
                zzwz().endTransaction();
            }
        } else {
            zzf(zzceh2);
        }
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzb(zzcez zzcez, String str) {
        zzcez zzcez2 = zzcez;
        String str2 = str;
        zzceg zzdQ = zzwz().zzdQ(str2);
        if (zzdQ == null || TextUtils.isEmpty(zzdQ.zzjH())) {
            zzwF().zzyC().zzj("No app data available; dropping event", str2);
            return;
        }
        try {
            String str3 = zzbha.zzaP(this.mContext).getPackageInfo(str2, 0).versionName;
            if (!(zzdQ.zzjH() == null || zzdQ.zzjH().equals(str3))) {
                zzwF().zzyz().zzj("App version does not match; dropping event. appId", zzcfl.zzdZ(str));
                return;
            }
        } catch (NameNotFoundException unused) {
            if (!"_ui".equals(zzcez2.name)) {
                zzwF().zzyz().zzj("Could not find package. appId", zzcfl.zzdZ(str));
            }
        }
        zzceh zzceh = r2;
        zzceh zzceh2 = new zzceh(str2, zzdQ.getGmpAppId(), zzdQ.zzjH(), zzdQ.zzwN(), zzdQ.zzwO(), zzdQ.zzwP(), zzdQ.zzwQ(), null, zzdQ.zzwR(), false, zzdQ.zzwK(), zzdQ.zzxe(), 0, 0);
        zzb(zzcez2, zzceh);
    }

    /* Access modifiers changed, original: final */
    public final void zzb(zzchj zzchj) {
        this.zzbsQ++;
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzb(zzcji zzcji, zzceh zzceh) {
        zzwE().zzjC();
        zzkD();
        if (!TextUtils.isEmpty(zzceh.zzboQ)) {
            if (zzceh.zzboV) {
                int zzes = zzwB().zzes(zzcji.name);
                if (zzes != 0) {
                    zzwB();
                    zzwB().zza(zzceh.packageName, zzes, "_ev", zzcjl.zza(zzcji.name, zzcem.zzxi(), true), zzcji.name != null ? zzcji.name.length() : 0);
                    return;
                }
                int zzl = zzwB().zzl(zzcji.name, zzcji.getValue());
                if (zzl != 0) {
                    zzwB();
                    String zza = zzcjl.zza(zzcji.name, zzcem.zzxi(), true);
                    Object value = zzcji.getValue();
                    int length = (value == null || !((value instanceof String) || (value instanceof CharSequence))) ? 0 : String.valueOf(value).length();
                    zzwB().zza(zzceh.packageName, zzl, "_ev", zza, length);
                    return;
                }
                Object zzm = zzwB().zzm(zzcji.name, zzcji.getValue());
                if (zzm != null) {
                    zzcjk zzcjk = new zzcjk(zzceh.packageName, zzcji.zzbpc, zzcji.name, zzcji.zzbuy, zzm);
                    zzwF().zzyC().zze("Setting user property", zzwA().zzdY(zzcjk.mName), zzm);
                    zzwz().beginTransaction();
                    try {
                        zzf(zzceh);
                        boolean zza2 = zzwz().zza(zzcjk);
                        zzwz().setTransactionSuccessful();
                        if (zza2) {
                            zzwF().zzyC().zze("User property set", zzwA().zzdY(zzcjk.mName), zzcjk.mValue);
                        } else {
                            zzwF().zzyx().zze("Too many unique user properties are set. Ignoring user property", zzwA().zzdY(zzcjk.mName), zzcjk.mValue);
                            zzwB().zza(zzceh.packageName, 9, null, null, 0);
                        }
                        zzwz().endTransaction();
                        return;
                    } catch (Throwable th) {
                        zzwz().endTransaction();
                    }
                } else {
                    return;
                }
            }
            zzf(zzceh);
        }
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x012e A:{Catch:{ all -> 0x0163, all -> 0x0013 }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0120 A:{Catch:{ all -> 0x0163, all -> 0x0013 }} */
    @android.support.annotation.WorkerThread
    public final void zzb(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11) {
        /*
        r6 = this;
        r0 = r6.zzwE();
        r0.zzjC();
        r6.zzkD();
        com.google.android.gms.common.internal.zzbo.zzcF(r7);
        r0 = 0;
        if (r10 != 0) goto L_0x0016;
    L_0x0010:
        r10 = new byte[r0];	 Catch:{ all -> 0x0013 }
        goto L_0x0016;
    L_0x0013:
        r7 = move-exception;
        goto L_0x016c;
    L_0x0016:
        r1 = r6.zzwF();	 Catch:{ all -> 0x0013 }
        r1 = r1.zzyD();	 Catch:{ all -> 0x0013 }
        r2 = "onConfigFetched. Response size";
        r3 = r10.length;	 Catch:{ all -> 0x0013 }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ all -> 0x0013 }
        r1.zzj(r2, r3);	 Catch:{ all -> 0x0013 }
        r1 = r6.zzwz();	 Catch:{ all -> 0x0013 }
        r1.beginTransaction();	 Catch:{ all -> 0x0013 }
        r1 = r6.zzwz();	 Catch:{ all -> 0x0163 }
        r1 = r1.zzdQ(r7);	 Catch:{ all -> 0x0163 }
        r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r3 = 1;
        r4 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        if (r8 == r2) goto L_0x0044;
    L_0x003e:
        r2 = 204; // 0xcc float:2.86E-43 double:1.01E-321;
        if (r8 == r2) goto L_0x0044;
    L_0x0042:
        if (r8 != r4) goto L_0x0048;
    L_0x0044:
        if (r9 != 0) goto L_0x0048;
    L_0x0046:
        r2 = 1;
        goto L_0x0049;
    L_0x0048:
        r2 = 0;
    L_0x0049:
        if (r1 != 0) goto L_0x005e;
    L_0x004b:
        r8 = r6.zzwF();	 Catch:{ all -> 0x0163 }
        r8 = r8.zzyz();	 Catch:{ all -> 0x0163 }
        r9 = "App does not exist in onConfigFetched. appId";
        r7 = com.google.android.gms.internal.zzcfl.zzdZ(r7);	 Catch:{ all -> 0x0163 }
        r8.zzj(r9, r7);	 Catch:{ all -> 0x0163 }
        goto L_0x0157;
    L_0x005e:
        r5 = 404; // 0x194 float:5.66E-43 double:1.996E-321;
        if (r2 != 0) goto L_0x00bc;
    L_0x0062:
        if (r8 != r5) goto L_0x0065;
    L_0x0064:
        goto L_0x00bc;
    L_0x0065:
        r10 = r6.zzvw;	 Catch:{ all -> 0x0163 }
        r10 = r10.currentTimeMillis();	 Catch:{ all -> 0x0163 }
        r1.zzS(r10);	 Catch:{ all -> 0x0163 }
        r10 = r6.zzwz();	 Catch:{ all -> 0x0163 }
        r10.zza(r1);	 Catch:{ all -> 0x0163 }
        r10 = r6.zzwF();	 Catch:{ all -> 0x0163 }
        r10 = r10.zzyD();	 Catch:{ all -> 0x0163 }
        r11 = "Fetching config failed. code, error";
        r1 = java.lang.Integer.valueOf(r8);	 Catch:{ all -> 0x0163 }
        r10.zze(r11, r1, r9);	 Catch:{ all -> 0x0163 }
        r9 = r6.zzwC();	 Catch:{ all -> 0x0163 }
        r9.zzej(r7);	 Catch:{ all -> 0x0163 }
        r7 = r6.zzwG();	 Catch:{ all -> 0x0163 }
        r7 = r7.zzbrl;	 Catch:{ all -> 0x0163 }
        r9 = r6.zzvw;	 Catch:{ all -> 0x0163 }
        r9 = r9.currentTimeMillis();	 Catch:{ all -> 0x0163 }
        r7.set(r9);	 Catch:{ all -> 0x0163 }
        r7 = 503; // 0x1f7 float:7.05E-43 double:2.485E-321;
        if (r8 == r7) goto L_0x00a6;
    L_0x00a0:
        r7 = 429; // 0x1ad float:6.01E-43 double:2.12E-321;
        if (r8 != r7) goto L_0x00a5;
    L_0x00a4:
        goto L_0x00a6;
    L_0x00a5:
        r3 = 0;
    L_0x00a6:
        if (r3 == 0) goto L_0x00b7;
    L_0x00a8:
        r7 = r6.zzwG();	 Catch:{ all -> 0x0163 }
        r7 = r7.zzbrm;	 Catch:{ all -> 0x0163 }
        r8 = r6.zzvw;	 Catch:{ all -> 0x0163 }
        r8 = r8.currentTimeMillis();	 Catch:{ all -> 0x0163 }
        r7.set(r8);	 Catch:{ all -> 0x0163 }
    L_0x00b7:
        r6.zzzc();	 Catch:{ all -> 0x0163 }
        goto L_0x0157;
    L_0x00bc:
        r9 = 0;
        if (r11 == 0) goto L_0x00c8;
    L_0x00bf:
        r2 = "Last-Modified";
        r11 = r11.get(r2);	 Catch:{ all -> 0x0163 }
        r11 = (java.util.List) r11;	 Catch:{ all -> 0x0163 }
        goto L_0x00c9;
    L_0x00c8:
        r11 = r9;
    L_0x00c9:
        if (r11 == 0) goto L_0x00d8;
    L_0x00cb:
        r2 = r11.size();	 Catch:{ all -> 0x0163 }
        if (r2 <= 0) goto L_0x00d8;
    L_0x00d1:
        r11 = r11.get(r0);	 Catch:{ all -> 0x0163 }
        r11 = (java.lang.String) r11;	 Catch:{ all -> 0x0163 }
        goto L_0x00d9;
    L_0x00d8:
        r11 = r9;
    L_0x00d9:
        if (r8 == r5) goto L_0x00f5;
    L_0x00db:
        if (r8 != r4) goto L_0x00de;
    L_0x00dd:
        goto L_0x00f5;
    L_0x00de:
        r9 = r6.zzwC();	 Catch:{ all -> 0x0163 }
        r9 = r9.zzb(r7, r10, r11);	 Catch:{ all -> 0x0163 }
        if (r9 != 0) goto L_0x010e;
    L_0x00e8:
        r7 = r6.zzwz();	 Catch:{ all -> 0x0013 }
    L_0x00ec:
        r7.endTransaction();	 Catch:{ all -> 0x0013 }
        r6.zzbsU = r0;
        r6.zzzg();
        return;
    L_0x00f5:
        r11 = r6.zzwC();	 Catch:{ all -> 0x0163 }
        r11 = r11.zzeh(r7);	 Catch:{ all -> 0x0163 }
        if (r11 != 0) goto L_0x010e;
    L_0x00ff:
        r11 = r6.zzwC();	 Catch:{ all -> 0x0163 }
        r9 = r11.zzb(r7, r9, r9);	 Catch:{ all -> 0x0163 }
        if (r9 != 0) goto L_0x010e;
    L_0x0109:
        r7 = r6.zzwz();	 Catch:{ all -> 0x0013 }
        goto L_0x00ec;
    L_0x010e:
        r9 = r6.zzvw;	 Catch:{ all -> 0x0163 }
        r2 = r9.currentTimeMillis();	 Catch:{ all -> 0x0163 }
        r1.zzR(r2);	 Catch:{ all -> 0x0163 }
        r9 = r6.zzwz();	 Catch:{ all -> 0x0163 }
        r9.zza(r1);	 Catch:{ all -> 0x0163 }
        if (r8 != r5) goto L_0x012e;
    L_0x0120:
        r8 = r6.zzwF();	 Catch:{ all -> 0x0163 }
        r8 = r8.zzyA();	 Catch:{ all -> 0x0163 }
        r9 = "Config not found. Using empty config. appId";
        r8.zzj(r9, r7);	 Catch:{ all -> 0x0163 }
        goto L_0x0144;
    L_0x012e:
        r7 = r6.zzwF();	 Catch:{ all -> 0x0163 }
        r7 = r7.zzyD();	 Catch:{ all -> 0x0163 }
        r9 = "Successfully fetched config. Got network response. code, size";
        r8 = java.lang.Integer.valueOf(r8);	 Catch:{ all -> 0x0163 }
        r10 = r10.length;	 Catch:{ all -> 0x0163 }
        r10 = java.lang.Integer.valueOf(r10);	 Catch:{ all -> 0x0163 }
        r7.zze(r9, r8, r10);	 Catch:{ all -> 0x0163 }
    L_0x0144:
        r7 = r6.zzyU();	 Catch:{ all -> 0x0163 }
        r7 = r7.zzlQ();	 Catch:{ all -> 0x0163 }
        if (r7 == 0) goto L_0x00b7;
    L_0x014e:
        r7 = r6.zzzb();	 Catch:{ all -> 0x0163 }
        if (r7 == 0) goto L_0x00b7;
    L_0x0154:
        r6.zzza();	 Catch:{ all -> 0x0163 }
    L_0x0157:
        r7 = r6.zzwz();	 Catch:{ all -> 0x0163 }
        r7.setTransactionSuccessful();	 Catch:{ all -> 0x0163 }
        r7 = r6.zzwz();	 Catch:{ all -> 0x0013 }
        goto L_0x00ec;
    L_0x0163:
        r7 = move-exception;
        r8 = r6.zzwz();	 Catch:{ all -> 0x0013 }
        r8.endTransaction();	 Catch:{ all -> 0x0013 }
        throw r7;	 Catch:{ all -> 0x0013 }
    L_0x016c:
        r6.zzbsU = r0;
        r6.zzzg();
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcgl.zzb(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzc(zzcek zzcek, zzceh zzceh) {
        zzbo.zzu(zzcek);
        zzbo.zzcF(zzcek.packageName);
        zzbo.zzu(zzcek.zzbpd);
        zzbo.zzcF(zzcek.zzbpd.name);
        zzwE().zzjC();
        zzkD();
        if (!TextUtils.isEmpty(zzceh.zzboQ)) {
            if (zzceh.zzboV) {
                zzwz().beginTransaction();
                try {
                    zzf(zzceh);
                    zzcek zzH = zzwz().zzH(zzcek.packageName, zzcek.zzbpd.name);
                    if (zzH != null) {
                        zzwF().zzyC().zze("Removing conditional user property", zzcek.packageName, zzwA().zzdY(zzcek.zzbpd.name));
                        zzwz().zzI(zzcek.packageName, zzcek.zzbpd.name);
                        if (zzH.zzbpf) {
                            zzwz().zzF(zzcek.packageName, zzcek.zzbpd.name);
                        }
                        if (zzcek.zzbpl != null) {
                            Bundle bundle = null;
                            if (zzcek.zzbpl.zzbpM != null) {
                                bundle = zzcek.zzbpl.zzbpM.zzyt();
                            }
                            Bundle bundle2 = bundle;
                            zzc(zzwB().zza(zzcek.zzbpl.name, bundle2, zzH.zzbpc, zzcek.zzbpl.zzbpN, true, false), zzceh);
                        }
                    } else {
                        zzwF().zzyz().zze("Conditional user property doesn't exist", zzcfl.zzdZ(zzcek.packageName), zzwA().zzdY(zzcek.zzbpd.name));
                    }
                    zzwz().setTransactionSuccessful();
                } finally {
                    zzwz().endTransaction();
                }
            } else {
                zzf(zzceh);
            }
        }
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzc(zzcji zzcji, zzceh zzceh) {
        zzwE().zzjC();
        zzkD();
        if (!TextUtils.isEmpty(zzceh.zzboQ)) {
            if (zzceh.zzboV) {
                zzwF().zzyC().zzj("Removing user property", zzwA().zzdY(zzcji.name));
                zzwz().beginTransaction();
                try {
                    zzf(zzceh);
                    zzwz().zzF(zzceh.packageName, zzcji.name);
                    zzwz().setTransactionSuccessful();
                    zzwF().zzyC().zzj("User property removed", zzwA().zzdY(zzcji.name));
                } finally {
                    zzwz().endTransaction();
                }
            } else {
                zzf(zzceh);
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzd(zzceh zzceh) {
        zzwE().zzjC();
        zzkD();
        zzbo.zzcF(zzceh.packageName);
        zzf(zzceh);
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzd(zzcek zzcek) {
        zzceh zzel = zzel(zzcek.packageName);
        if (zzel != null) {
            zzb(zzcek, zzel);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:99:0x0342 A:{Catch:{ SQLiteException -> 0x0140, all -> 0x036b }} */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x01ae A:{Catch:{ SQLiteException -> 0x0140, all -> 0x036b }} */
    @android.support.annotation.WorkerThread
    public final void zze(com.google.android.gms.internal.zzceh r21) {
        /*
        r20 = this;
        r1 = r20;
        r2 = r21;
        r3 = r20.zzwE();
        r3.zzjC();
        r20.zzkD();
        com.google.android.gms.common.internal.zzbo.zzu(r21);
        r3 = r2.packageName;
        com.google.android.gms.common.internal.zzbo.zzcF(r3);
        r3 = r2.zzboQ;
        r3 = android.text.TextUtils.isEmpty(r3);
        if (r3 == 0) goto L_0x001f;
    L_0x001e:
        return;
    L_0x001f:
        r3 = r20.zzwz();
        r4 = r2.packageName;
        r3 = r3.zzdQ(r4);
        r4 = 0;
        if (r3 == 0) goto L_0x0052;
    L_0x002d:
        r6 = r3.getGmpAppId();
        r6 = android.text.TextUtils.isEmpty(r6);
        if (r6 == 0) goto L_0x0052;
    L_0x0037:
        r6 = r2.zzboQ;
        r6 = android.text.TextUtils.isEmpty(r6);
        if (r6 != 0) goto L_0x0052;
    L_0x003f:
        r3.zzR(r4);
        r6 = r20.zzwz();
        r6.zza(r3);
        r3 = r20.zzwC();
        r6 = r2.packageName;
        r3.zzek(r6);
    L_0x0052:
        r3 = r2.zzboV;
        if (r3 != 0) goto L_0x005a;
    L_0x0056:
        r20.zzf(r21);
        return;
    L_0x005a:
        r6 = r2.zzbpa;
        r3 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1));
        if (r3 != 0) goto L_0x0066;
    L_0x0060:
        r3 = r1.zzvw;
        r6 = r3.currentTimeMillis();
    L_0x0066:
        r3 = r2.zzbpb;
        r14 = 0;
        r15 = 1;
        if (r3 == 0) goto L_0x0086;
    L_0x006c:
        if (r3 == r15) goto L_0x0086;
    L_0x006e:
        r8 = r20.zzwF();
        r8 = r8.zzyz();
        r9 = "Incorrect app type, assuming installed app. appId, appType";
        r10 = r2.packageName;
        r10 = com.google.android.gms.internal.zzcfl.zzdZ(r10);
        r3 = java.lang.Integer.valueOf(r3);
        r8.zze(r9, r10, r3);
        r3 = 0;
    L_0x0086:
        r8 = r20.zzwz();
        r8.beginTransaction();
        r8 = r20.zzwz();	 Catch:{ all -> 0x036b }
        r9 = r2.packageName;	 Catch:{ all -> 0x036b }
        r8 = r8.zzdQ(r9);	 Catch:{ all -> 0x036b }
        r16 = 0;
        if (r8 == 0) goto L_0x0155;
    L_0x009b:
        r9 = r8.getGmpAppId();	 Catch:{ all -> 0x036b }
        if (r9 == 0) goto L_0x0155;
    L_0x00a1:
        r9 = r8.getGmpAppId();	 Catch:{ all -> 0x036b }
        r10 = r2.zzboQ;	 Catch:{ all -> 0x036b }
        r9 = r9.equals(r10);	 Catch:{ all -> 0x036b }
        if (r9 != 0) goto L_0x0155;
    L_0x00ad:
        r9 = r20.zzwF();	 Catch:{ all -> 0x036b }
        r9 = r9.zzyz();	 Catch:{ all -> 0x036b }
        r10 = "New GMP App Id passed in. Removing cached database data. appId";
        r11 = r8.zzhl();	 Catch:{ all -> 0x036b }
        r11 = com.google.android.gms.internal.zzcfl.zzdZ(r11);	 Catch:{ all -> 0x036b }
        r9.zzj(r10, r11);	 Catch:{ all -> 0x036b }
        r9 = r20.zzwz();	 Catch:{ all -> 0x036b }
        r8 = r8.zzhl();	 Catch:{ all -> 0x036b }
        r9.zzkD();	 Catch:{ all -> 0x036b }
        r9.zzjC();	 Catch:{ all -> 0x036b }
        com.google.android.gms.common.internal.zzbo.zzcF(r8);	 Catch:{ all -> 0x036b }
        r10 = r9.getWritableDatabase();	 Catch:{ SQLiteException -> 0x0140 }
        r11 = new java.lang.String[r15];	 Catch:{ SQLiteException -> 0x0140 }
        r11[r14] = r8;	 Catch:{ SQLiteException -> 0x0140 }
        r12 = "events";
        r13 = "app_id=?";
        r12 = r10.delete(r12, r13, r11);	 Catch:{ SQLiteException -> 0x0140 }
        r12 = r12 + r14;
        r13 = "user_attributes";
        r14 = "app_id=?";
        r13 = r10.delete(r13, r14, r11);	 Catch:{ SQLiteException -> 0x0140 }
        r12 = r12 + r13;
        r13 = "conditional_properties";
        r14 = "app_id=?";
        r13 = r10.delete(r13, r14, r11);	 Catch:{ SQLiteException -> 0x0140 }
        r12 = r12 + r13;
        r13 = "apps";
        r14 = "app_id=?";
        r13 = r10.delete(r13, r14, r11);	 Catch:{ SQLiteException -> 0x0140 }
        r12 = r12 + r13;
        r13 = "raw_events";
        r14 = "app_id=?";
        r13 = r10.delete(r13, r14, r11);	 Catch:{ SQLiteException -> 0x0140 }
        r12 = r12 + r13;
        r13 = "raw_events_metadata";
        r14 = "app_id=?";
        r13 = r10.delete(r13, r14, r11);	 Catch:{ SQLiteException -> 0x0140 }
        r12 = r12 + r13;
        r13 = "event_filters";
        r14 = "app_id=?";
        r13 = r10.delete(r13, r14, r11);	 Catch:{ SQLiteException -> 0x0140 }
        r12 = r12 + r13;
        r13 = "property_filters";
        r14 = "app_id=?";
        r13 = r10.delete(r13, r14, r11);	 Catch:{ SQLiteException -> 0x0140 }
        r12 = r12 + r13;
        r13 = "audience_filter_values";
        r14 = "app_id=?";
        r10 = r10.delete(r13, r14, r11);	 Catch:{ SQLiteException -> 0x0140 }
        r12 = r12 + r10;
        if (r12 <= 0) goto L_0x0153;
    L_0x012e:
        r10 = r9.zzwF();	 Catch:{ SQLiteException -> 0x0140 }
        r10 = r10.zzyD();	 Catch:{ SQLiteException -> 0x0140 }
        r11 = "Deleted application data. app, records";
        r12 = java.lang.Integer.valueOf(r12);	 Catch:{ SQLiteException -> 0x0140 }
        r10.zze(r11, r8, r12);	 Catch:{ SQLiteException -> 0x0140 }
        goto L_0x0153;
    L_0x0140:
        r0 = move-exception;
        r10 = r0;
        r9 = r9.zzwF();	 Catch:{ all -> 0x036b }
        r9 = r9.zzyx();	 Catch:{ all -> 0x036b }
        r11 = "Error deleting application data. appId, error";
        r8 = com.google.android.gms.internal.zzcfl.zzdZ(r8);	 Catch:{ all -> 0x036b }
        r9.zze(r11, r8, r10);	 Catch:{ all -> 0x036b }
    L_0x0153:
        r8 = r16;
    L_0x0155:
        if (r8 == 0) goto L_0x018d;
    L_0x0157:
        r9 = r8.zzjH();	 Catch:{ all -> 0x036b }
        if (r9 == 0) goto L_0x018d;
    L_0x015d:
        r9 = r8.zzjH();	 Catch:{ all -> 0x036b }
        r10 = r2.zzbgW;	 Catch:{ all -> 0x036b }
        r9 = r9.equals(r10);	 Catch:{ all -> 0x036b }
        if (r9 != 0) goto L_0x018d;
    L_0x0169:
        r9 = new android.os.Bundle;	 Catch:{ all -> 0x036b }
        r9.<init>();	 Catch:{ all -> 0x036b }
        r10 = "_pv";
        r8 = r8.zzjH();	 Catch:{ all -> 0x036b }
        r9.putString(r10, r8);	 Catch:{ all -> 0x036b }
        r14 = new com.google.android.gms.internal.zzcez;	 Catch:{ all -> 0x036b }
        r10 = "_au";
        r11 = new com.google.android.gms.internal.zzcew;	 Catch:{ all -> 0x036b }
        r11.<init>(r9);	 Catch:{ all -> 0x036b }
        r12 = "auto";
        r8 = r14;
        r9 = r10;
        r10 = r11;
        r11 = r12;
        r12 = r6;
        r8.<init>(r9, r10, r11, r12);	 Catch:{ all -> 0x036b }
        r1.zzb(r14, r2);	 Catch:{ all -> 0x036b }
    L_0x018d:
        r20.zzf(r21);	 Catch:{ all -> 0x036b }
        if (r3 != 0) goto L_0x019f;
    L_0x0192:
        r8 = r20.zzwz();	 Catch:{ all -> 0x036b }
        r9 = r2.packageName;	 Catch:{ all -> 0x036b }
        r10 = "_f";
    L_0x019a:
        r8 = r8.zzE(r9, r10);	 Catch:{ all -> 0x036b }
        goto L_0x01ac;
    L_0x019f:
        if (r3 != r15) goto L_0x01aa;
    L_0x01a1:
        r8 = r20.zzwz();	 Catch:{ all -> 0x036b }
        r9 = r2.packageName;	 Catch:{ all -> 0x036b }
        r10 = "_v";
        goto L_0x019a;
    L_0x01aa:
        r8 = r16;
    L_0x01ac:
        if (r8 != 0) goto L_0x0342;
    L_0x01ae:
        r8 = 3600000; // 0x36ee80 float:5.044674E-39 double:1.7786363E-317;
        r10 = r6 / r8;
        r13 = 1;
        r17 = r10 + r13;
        r8 = r8 * r17;
        if (r3 != 0) goto L_0x02e4;
    L_0x01bb:
        r3 = new com.google.android.gms.internal.zzcji;	 Catch:{ all -> 0x036b }
        r10 = "_fot";
        r12 = java.lang.Long.valueOf(r8);	 Catch:{ all -> 0x036b }
        r17 = "auto";
        r8 = r3;
        r9 = r10;
        r10 = r6;
        r4 = r13;
        r13 = r17;
        r8.<init>(r9, r10, r12, r13);	 Catch:{ all -> 0x036b }
        r1.zzb(r3, r2);	 Catch:{ all -> 0x036b }
        r3 = r20.zzwE();	 Catch:{ all -> 0x036b }
        r3.zzjC();	 Catch:{ all -> 0x036b }
        r20.zzkD();	 Catch:{ all -> 0x036b }
        r3 = new android.os.Bundle;	 Catch:{ all -> 0x036b }
        r3.<init>();	 Catch:{ all -> 0x036b }
        r8 = "_c";
        r3.putLong(r8, r4);	 Catch:{ all -> 0x036b }
        r8 = "_r";
        r3.putLong(r8, r4);	 Catch:{ all -> 0x036b }
        r8 = "_uwa";
        r9 = 0;
        r3.putLong(r8, r9);	 Catch:{ all -> 0x036b }
        r8 = "_pfo";
        r3.putLong(r8, r9);	 Catch:{ all -> 0x036b }
        r8 = "_sys";
        r3.putLong(r8, r9);	 Catch:{ all -> 0x036b }
        r8 = "_sysu";
        r3.putLong(r8, r9);	 Catch:{ all -> 0x036b }
        r8 = r1.mContext;	 Catch:{ all -> 0x036b }
        r8 = r8.getPackageManager();	 Catch:{ all -> 0x036b }
        if (r8 != 0) goto L_0x021d;
    L_0x0208:
        r8 = r20.zzwF();	 Catch:{ all -> 0x036b }
        r8 = r8.zzyx();	 Catch:{ all -> 0x036b }
        r9 = "PackageManager is null, first open report might be inaccurate. appId";
        r10 = r2.packageName;	 Catch:{ all -> 0x036b }
        r10 = com.google.android.gms.internal.zzcfl.zzdZ(r10);	 Catch:{ all -> 0x036b }
        r8.zzj(r9, r10);	 Catch:{ all -> 0x036b }
        goto L_0x02b0;
    L_0x021d:
        r8 = r1.mContext;	 Catch:{ NameNotFoundException -> 0x022b }
        r8 = com.google.android.gms.internal.zzbha.zzaP(r8);	 Catch:{ NameNotFoundException -> 0x022b }
        r9 = r2.packageName;	 Catch:{ NameNotFoundException -> 0x022b }
        r10 = 0;
        r8 = r8.getPackageInfo(r9, r10);	 Catch:{ NameNotFoundException -> 0x022b }
        goto L_0x0242;
    L_0x022b:
        r0 = move-exception;
        r8 = r0;
        r9 = r20.zzwF();	 Catch:{ all -> 0x036b }
        r9 = r9.zzyx();	 Catch:{ all -> 0x036b }
        r10 = "Package info is null, first open report might be inaccurate. appId";
        r11 = r2.packageName;	 Catch:{ all -> 0x036b }
        r11 = com.google.android.gms.internal.zzcfl.zzdZ(r11);	 Catch:{ all -> 0x036b }
        r9.zze(r10, r11, r8);	 Catch:{ all -> 0x036b }
        r8 = r16;
    L_0x0242:
        if (r8 == 0) goto L_0x0274;
    L_0x0244:
        r9 = r8.firstInstallTime;	 Catch:{ all -> 0x036b }
        r11 = 0;
        r13 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1));
        if (r13 == 0) goto L_0x0274;
    L_0x024c:
        r9 = r8.firstInstallTime;	 Catch:{ all -> 0x036b }
        r11 = r8.lastUpdateTime;	 Catch:{ all -> 0x036b }
        r8 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1));
        if (r8 == 0) goto L_0x025b;
    L_0x0254:
        r8 = "_uwa";
        r3.putLong(r8, r4);	 Catch:{ all -> 0x036b }
        r8 = 0;
        goto L_0x025c;
    L_0x025b:
        r8 = 1;
    L_0x025c:
        r14 = new com.google.android.gms.internal.zzcji;	 Catch:{ all -> 0x036b }
        r9 = "_fi";
        if (r8 == 0) goto L_0x0264;
    L_0x0262:
        r10 = r4;
        goto L_0x0266;
    L_0x0264:
        r10 = 0;
    L_0x0266:
        r12 = java.lang.Long.valueOf(r10);	 Catch:{ all -> 0x036b }
        r13 = "auto";
        r8 = r14;
        r10 = r6;
        r8.<init>(r9, r10, r12, r13);	 Catch:{ all -> 0x036b }
        r1.zzb(r14, r2);	 Catch:{ all -> 0x036b }
    L_0x0274:
        r8 = r1.mContext;	 Catch:{ NameNotFoundException -> 0x0282 }
        r8 = com.google.android.gms.internal.zzbha.zzaP(r8);	 Catch:{ NameNotFoundException -> 0x0282 }
        r9 = r2.packageName;	 Catch:{ NameNotFoundException -> 0x0282 }
        r10 = 0;
        r8 = r8.getApplicationInfo(r9, r10);	 Catch:{ NameNotFoundException -> 0x0282 }
        goto L_0x0299;
    L_0x0282:
        r0 = move-exception;
        r8 = r0;
        r9 = r20.zzwF();	 Catch:{ all -> 0x036b }
        r9 = r9.zzyx();	 Catch:{ all -> 0x036b }
        r10 = "Application info is null, first open report might be inaccurate. appId";
        r11 = r2.packageName;	 Catch:{ all -> 0x036b }
        r11 = com.google.android.gms.internal.zzcfl.zzdZ(r11);	 Catch:{ all -> 0x036b }
        r9.zze(r10, r11, r8);	 Catch:{ all -> 0x036b }
        r8 = r16;
    L_0x0299:
        if (r8 == 0) goto L_0x02b0;
    L_0x029b:
        r9 = r8.flags;	 Catch:{ all -> 0x036b }
        r9 = r9 & r15;
        if (r9 == 0) goto L_0x02a5;
    L_0x02a0:
        r9 = "_sys";
        r3.putLong(r9, r4);	 Catch:{ all -> 0x036b }
    L_0x02a5:
        r8 = r8.flags;	 Catch:{ all -> 0x036b }
        r8 = r8 & 128;
        if (r8 == 0) goto L_0x02b0;
    L_0x02ab:
        r8 = "_sysu";
        r3.putLong(r8, r4);	 Catch:{ all -> 0x036b }
    L_0x02b0:
        r8 = r20.zzwz();	 Catch:{ all -> 0x036b }
        r9 = r2.packageName;	 Catch:{ all -> 0x036b }
        com.google.android.gms.common.internal.zzbo.zzcF(r9);	 Catch:{ all -> 0x036b }
        r8.zzjC();	 Catch:{ all -> 0x036b }
        r8.zzkD();	 Catch:{ all -> 0x036b }
        r10 = "first_open_count";
        r8 = r8.zzL(r9, r10);	 Catch:{ all -> 0x036b }
        r10 = 0;
        r12 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
        if (r12 < 0) goto L_0x02d0;
    L_0x02cb:
        r10 = "_pfo";
        r3.putLong(r10, r8);	 Catch:{ all -> 0x036b }
    L_0x02d0:
        r14 = new com.google.android.gms.internal.zzcez;	 Catch:{ all -> 0x036b }
        r9 = "_f";
        r10 = new com.google.android.gms.internal.zzcew;	 Catch:{ all -> 0x036b }
        r10.<init>(r3);	 Catch:{ all -> 0x036b }
        r11 = "auto";
        r8 = r14;
        r12 = r6;
        r8.<init>(r9, r10, r11, r12);	 Catch:{ all -> 0x036b }
    L_0x02e0:
        r1.zzb(r14, r2);	 Catch:{ all -> 0x036b }
        goto L_0x0324;
    L_0x02e4:
        r4 = r13;
        if (r3 != r15) goto L_0x0324;
    L_0x02e7:
        r3 = new com.google.android.gms.internal.zzcji;	 Catch:{ all -> 0x036b }
        r10 = "_fvt";
        r12 = java.lang.Long.valueOf(r8);	 Catch:{ all -> 0x036b }
        r13 = "auto";
        r8 = r3;
        r9 = r10;
        r10 = r6;
        r8.<init>(r9, r10, r12, r13);	 Catch:{ all -> 0x036b }
        r1.zzb(r3, r2);	 Catch:{ all -> 0x036b }
        r3 = r20.zzwE();	 Catch:{ all -> 0x036b }
        r3.zzjC();	 Catch:{ all -> 0x036b }
        r20.zzkD();	 Catch:{ all -> 0x036b }
        r3 = new android.os.Bundle;	 Catch:{ all -> 0x036b }
        r3.<init>();	 Catch:{ all -> 0x036b }
        r8 = "_c";
        r3.putLong(r8, r4);	 Catch:{ all -> 0x036b }
        r8 = "_r";
        r3.putLong(r8, r4);	 Catch:{ all -> 0x036b }
        r14 = new com.google.android.gms.internal.zzcez;	 Catch:{ all -> 0x036b }
        r9 = "_v";
        r10 = new com.google.android.gms.internal.zzcew;	 Catch:{ all -> 0x036b }
        r10.<init>(r3);	 Catch:{ all -> 0x036b }
        r11 = "auto";
        r8 = r14;
        r12 = r6;
        r8.<init>(r9, r10, r11, r12);	 Catch:{ all -> 0x036b }
        goto L_0x02e0;
    L_0x0324:
        r3 = new android.os.Bundle;	 Catch:{ all -> 0x036b }
        r3.<init>();	 Catch:{ all -> 0x036b }
        r8 = "_et";
        r3.putLong(r8, r4);	 Catch:{ all -> 0x036b }
        r4 = new com.google.android.gms.internal.zzcez;	 Catch:{ all -> 0x036b }
        r9 = "_e";
        r10 = new com.google.android.gms.internal.zzcew;	 Catch:{ all -> 0x036b }
        r10.<init>(r3);	 Catch:{ all -> 0x036b }
        r11 = "auto";
        r8 = r4;
        r12 = r6;
        r8.<init>(r9, r10, r11, r12);	 Catch:{ all -> 0x036b }
    L_0x033e:
        r1.zzb(r4, r2);	 Catch:{ all -> 0x036b }
        goto L_0x035c;
    L_0x0342:
        r3 = r2.zzboW;	 Catch:{ all -> 0x036b }
        if (r3 == 0) goto L_0x035c;
    L_0x0346:
        r3 = new android.os.Bundle;	 Catch:{ all -> 0x036b }
        r3.<init>();	 Catch:{ all -> 0x036b }
        r4 = new com.google.android.gms.internal.zzcez;	 Catch:{ all -> 0x036b }
        r9 = "_cd";
        r10 = new com.google.android.gms.internal.zzcew;	 Catch:{ all -> 0x036b }
        r10.<init>(r3);	 Catch:{ all -> 0x036b }
        r11 = "auto";
        r8 = r4;
        r12 = r6;
        r8.<init>(r9, r10, r11, r12);	 Catch:{ all -> 0x036b }
        goto L_0x033e;
    L_0x035c:
        r2 = r20.zzwz();	 Catch:{ all -> 0x036b }
        r2.setTransactionSuccessful();	 Catch:{ all -> 0x036b }
        r2 = r20.zzwz();
        r2.endTransaction();
        return;
    L_0x036b:
        r0 = move-exception;
        r2 = r0;
        r3 = r20.zzwz();
        r3.endTransaction();
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcgl.zze(com.google.android.gms.internal.zzceh):void");
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zze(zzcek zzcek) {
        zzceh zzel = zzel(zzcek.packageName);
        if (zzel != null) {
            zzc(zzcek, zzel);
        }
    }

    public final String zzem(String str) {
        try {
            return (String) zzwE().zze(new zzcgn(this, str)).get(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzwF().zzyx().zze("Failed to get app instance id. appId", zzcfl.zzdZ(str), e);
            return null;
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzkD() {
        if (!this.zzafK) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    public final zze zzkq() {
        return this.zzvw;
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzl(Runnable runnable) {
        zzwE().zzjC();
        if (this.zzbsP == null) {
            this.zzbsP = new ArrayList();
        }
        this.zzbsP.add(runnable);
    }

    public final zzcfj zzwA() {
        zza(this.zzbsw);
        return this.zzbsw;
    }

    public final zzcjl zzwB() {
        zza(this.zzbsv);
        return this.zzbsv;
    }

    public final zzcgf zzwC() {
        zza(this.zzbss);
        return this.zzbss;
    }

    public final zzcja zzwD() {
        zza(this.zzbsr);
        return this.zzbsr;
    }

    public final zzcgg zzwE() {
        zza(this.zzbsq);
        return this.zzbsq;
    }

    public final zzcfl zzwF() {
        zza(this.zzbsp);
        return this.zzbsp;
    }

    public final zzcfw zzwG() {
        zza(this.zzbso);
        return this.zzbso;
    }

    public final zzcem zzwH() {
        return this.zzbsn;
    }

    public final zzcec zzwr() {
        zza(this.zzbsI);
        return this.zzbsI;
    }

    public final zzcej zzws() {
        zza(this.zzbsH);
        return this.zzbsH;
    }

    public final zzchl zzwt() {
        zza(this.zzbsD);
        return this.zzbsD;
    }

    public final zzcfg zzwu() {
        zza(this.zzbsE);
        return this.zzbsE;
    }

    public final zzcet zzwv() {
        zza(this.zzbsC);
        return this.zzbsC;
    }

    public final zzcid zzww() {
        zza(this.zzbsB);
        return this.zzbsB;
    }

    public final zzchz zzwx() {
        zza(this.zzbsA);
        return this.zzbsA;
    }

    public final zzcfh zzwy() {
        zza(this.zzbsy);
        return this.zzbsy;
    }

    public final zzcen zzwz() {
        zza(this.zzbsx);
        return this.zzbsx;
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final boolean zzyP() {
        zzkD();
        zzwE().zzjC();
        if (this.zzbsK == null || this.zzbsL == 0 || !(this.zzbsK == null || this.zzbsK.booleanValue() || Math.abs(this.zzvw.elapsedRealtime() - this.zzbsL) <= 1000)) {
            this.zzbsL = this.zzvw.elapsedRealtime();
            zzcem.zzxE();
            boolean z = false;
            if (zzwB().zzbv("android.permission.INTERNET") && zzwB().zzbv("android.permission.ACCESS_NETWORK_STATE") && (zzbha.zzaP(this.mContext).zzsl() || (zzcgc.zzj(this.mContext, false) && zzciw.zzk(this.mContext, false)))) {
                z = true;
            }
            this.zzbsK = Boolean.valueOf(z);
            if (this.zzbsK.booleanValue()) {
                this.zzbsK = Boolean.valueOf(zzwB().zzev(zzwu().getGmpAppId()));
            }
        }
        return this.zzbsK.booleanValue();
    }

    public final zzcfl zzyQ() {
        return (this.zzbsp == null || !this.zzbsp.isInitialized()) ? null : this.zzbsp;
    }

    /* Access modifiers changed, original: final */
    public final zzcgg zzyR() {
        return this.zzbsq;
    }

    public final AppMeasurement zzyS() {
        return this.zzbst;
    }

    public final FirebaseAnalytics zzyT() {
        return this.zzbsu;
    }

    public final zzcfp zzyU() {
        zza(this.zzbsz);
        return this.zzbsz;
    }

    /* Access modifiers changed, original: final */
    public final long zzyY() {
        Long valueOf = Long.valueOf(zzwG().zzbrp.get());
        return valueOf.longValue() == 0 ? this.zzbsX : Math.min(this.zzbsX, valueOf.longValue());
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:77:0x023a */
    /* JADX WARNING: Can't wrap try/catch for region: R(2:77|78) */
    /* JADX WARNING: Missing block: B:78:?, code skipped:
            zzwF().zzyx().zze("Failed to parse upload URL. Not uploading. appId", com.google.android.gms.internal.zzcfl.zzdZ(r4), r5);
     */
    @android.support.annotation.WorkerThread
    public final void zzza() {
        /*
        r14 = this;
        r0 = r14.zzwE();
        r0.zzjC();
        r14.zzkD();
        r0 = 1;
        r14.zzbsW = r0;
        r1 = 0;
        com.google.android.gms.internal.zzcem.zzxE();	 Catch:{ all -> 0x0273 }
        r2 = r14.zzwG();	 Catch:{ all -> 0x0273 }
        r2 = r2.zzyI();	 Catch:{ all -> 0x0273 }
        if (r2 != 0) goto L_0x002e;
    L_0x001b:
        r0 = r14.zzwF();	 Catch:{ all -> 0x0273 }
        r0 = r0.zzyz();	 Catch:{ all -> 0x0273 }
        r2 = "Upload data called on the client side before use of service was decided";
    L_0x0025:
        r0.log(r2);	 Catch:{ all -> 0x0273 }
    L_0x0028:
        r14.zzbsW = r1;
        r14.zzzg();
        return;
    L_0x002e:
        r2 = r2.booleanValue();	 Catch:{ all -> 0x0273 }
        if (r2 == 0) goto L_0x003f;
    L_0x0034:
        r0 = r14.zzwF();	 Catch:{ all -> 0x0273 }
        r0 = r0.zzyx();	 Catch:{ all -> 0x0273 }
        r2 = "Upload called in the client side when service should be used";
        goto L_0x0025;
    L_0x003f:
        r2 = r14.zzbsT;	 Catch:{ all -> 0x0273 }
        r4 = 0;
        r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r6 <= 0) goto L_0x004b;
    L_0x0047:
        r14.zzzc();	 Catch:{ all -> 0x0273 }
        goto L_0x0028;
    L_0x004b:
        r2 = r14.zzwE();	 Catch:{ all -> 0x0273 }
        r2.zzjC();	 Catch:{ all -> 0x0273 }
        r2 = r14.zzbsO;	 Catch:{ all -> 0x0273 }
        if (r2 == 0) goto L_0x0058;
    L_0x0056:
        r2 = 1;
        goto L_0x0059;
    L_0x0058:
        r2 = 0;
    L_0x0059:
        if (r2 == 0) goto L_0x0066;
    L_0x005b:
        r0 = r14.zzwF();	 Catch:{ all -> 0x0273 }
        r0 = r0.zzyD();	 Catch:{ all -> 0x0273 }
        r2 = "Uploading requested multiple times";
        goto L_0x0025;
    L_0x0066:
        r2 = r14.zzyU();	 Catch:{ all -> 0x0273 }
        r2 = r2.zzlQ();	 Catch:{ all -> 0x0273 }
        if (r2 != 0) goto L_0x007e;
    L_0x0070:
        r0 = r14.zzwF();	 Catch:{ all -> 0x0273 }
        r0 = r0.zzyD();	 Catch:{ all -> 0x0273 }
        r2 = "Network not connected, ignoring upload request";
        r0.log(r2);	 Catch:{ all -> 0x0273 }
        goto L_0x0047;
    L_0x007e:
        r2 = r14.zzvw;	 Catch:{ all -> 0x0273 }
        r2 = r2.currentTimeMillis();	 Catch:{ all -> 0x0273 }
        r6 = com.google.android.gms.internal.zzcem.zzxP();	 Catch:{ all -> 0x0273 }
        r8 = 0;
        r8 = r2 - r6;
        r6 = 0;
        r14.zzg(r6, r8);	 Catch:{ all -> 0x0273 }
        r7 = r14.zzwG();	 Catch:{ all -> 0x0273 }
        r7 = r7.zzbrk;	 Catch:{ all -> 0x0273 }
        r7 = r7.get();	 Catch:{ all -> 0x0273 }
        r9 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1));
        if (r9 == 0) goto L_0x00b5;
    L_0x009d:
        r4 = r14.zzwF();	 Catch:{ all -> 0x0273 }
        r4 = r4.zzyC();	 Catch:{ all -> 0x0273 }
        r5 = "Uploading events. Elapsed time since last upload attempt (ms)";
        r9 = 0;
        r9 = r2 - r7;
        r7 = java.lang.Math.abs(r9);	 Catch:{ all -> 0x0273 }
        r7 = java.lang.Long.valueOf(r7);	 Catch:{ all -> 0x0273 }
        r4.zzj(r5, r7);	 Catch:{ all -> 0x0273 }
    L_0x00b5:
        r4 = r14.zzwz();	 Catch:{ all -> 0x0273 }
        r4 = r4.zzyc();	 Catch:{ all -> 0x0273 }
        r5 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x0273 }
        r7 = -1;
        if (r5 != 0) goto L_0x024d;
    L_0x00c5:
        r9 = r14.zzbsS;	 Catch:{ all -> 0x0273 }
        r5 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1));
        if (r5 != 0) goto L_0x00d5;
    L_0x00cb:
        r5 = r14.zzwz();	 Catch:{ all -> 0x0273 }
        r7 = r5.zzyj();	 Catch:{ all -> 0x0273 }
        r14.zzbsS = r7;	 Catch:{ all -> 0x0273 }
    L_0x00d5:
        r5 = r14.zzbsn;	 Catch:{ all -> 0x0273 }
        r7 = com.google.android.gms.internal.zzcfb.zzbqb;	 Catch:{ all -> 0x0273 }
        r5 = r5.zzb(r4, r7);	 Catch:{ all -> 0x0273 }
        r7 = r14.zzbsn;	 Catch:{ all -> 0x0273 }
        r8 = com.google.android.gms.internal.zzcfb.zzbqc;	 Catch:{ all -> 0x0273 }
        r7 = r7.zzb(r4, r8);	 Catch:{ all -> 0x0273 }
        r7 = java.lang.Math.max(r1, r7);	 Catch:{ all -> 0x0273 }
        r8 = r14.zzwz();	 Catch:{ all -> 0x0273 }
        r5 = r8.zzl(r4, r5, r7);	 Catch:{ all -> 0x0273 }
        r7 = r5.isEmpty();	 Catch:{ all -> 0x0273 }
        if (r7 != 0) goto L_0x0028;
    L_0x00f7:
        r7 = r5.iterator();	 Catch:{ all -> 0x0273 }
    L_0x00fb:
        r8 = r7.hasNext();	 Catch:{ all -> 0x0273 }
        if (r8 == 0) goto L_0x0116;
    L_0x0101:
        r8 = r7.next();	 Catch:{ all -> 0x0273 }
        r8 = (android.util.Pair) r8;	 Catch:{ all -> 0x0273 }
        r8 = r8.first;	 Catch:{ all -> 0x0273 }
        r8 = (com.google.android.gms.internal.zzcjz) r8;	 Catch:{ all -> 0x0273 }
        r9 = r8.zzbvR;	 Catch:{ all -> 0x0273 }
        r9 = android.text.TextUtils.isEmpty(r9);	 Catch:{ all -> 0x0273 }
        if (r9 != 0) goto L_0x00fb;
    L_0x0113:
        r7 = r8.zzbvR;	 Catch:{ all -> 0x0273 }
        goto L_0x0117;
    L_0x0116:
        r7 = r6;
    L_0x0117:
        if (r7 == 0) goto L_0x0142;
    L_0x0119:
        r8 = 0;
    L_0x011a:
        r9 = r5.size();	 Catch:{ all -> 0x0273 }
        if (r8 >= r9) goto L_0x0142;
    L_0x0120:
        r9 = r5.get(r8);	 Catch:{ all -> 0x0273 }
        r9 = (android.util.Pair) r9;	 Catch:{ all -> 0x0273 }
        r9 = r9.first;	 Catch:{ all -> 0x0273 }
        r9 = (com.google.android.gms.internal.zzcjz) r9;	 Catch:{ all -> 0x0273 }
        r10 = r9.zzbvR;	 Catch:{ all -> 0x0273 }
        r10 = android.text.TextUtils.isEmpty(r10);	 Catch:{ all -> 0x0273 }
        if (r10 != 0) goto L_0x013f;
    L_0x0132:
        r9 = r9.zzbvR;	 Catch:{ all -> 0x0273 }
        r9 = r9.equals(r7);	 Catch:{ all -> 0x0273 }
        if (r9 != 0) goto L_0x013f;
    L_0x013a:
        r5 = r5.subList(r1, r8);	 Catch:{ all -> 0x0273 }
        goto L_0x0142;
    L_0x013f:
        r8 = r8 + 1;
        goto L_0x011a;
    L_0x0142:
        r7 = new com.google.android.gms.internal.zzcjy;	 Catch:{ all -> 0x0273 }
        r7.<init>();	 Catch:{ all -> 0x0273 }
        r8 = r5.size();	 Catch:{ all -> 0x0273 }
        r8 = new com.google.android.gms.internal.zzcjz[r8];	 Catch:{ all -> 0x0273 }
        r7.zzbvB = r8;	 Catch:{ all -> 0x0273 }
        r8 = new java.util.ArrayList;	 Catch:{ all -> 0x0273 }
        r9 = r5.size();	 Catch:{ all -> 0x0273 }
        r8.<init>(r9);	 Catch:{ all -> 0x0273 }
        r9 = com.google.android.gms.internal.zzcem.zzyb();	 Catch:{ all -> 0x0273 }
        if (r9 == 0) goto L_0x0168;
    L_0x015e:
        r9 = r14.zzbsn;	 Catch:{ all -> 0x0273 }
        r9 = r9.zzdO(r4);	 Catch:{ all -> 0x0273 }
        if (r9 == 0) goto L_0x0168;
    L_0x0166:
        r9 = 1;
        goto L_0x0169;
    L_0x0168:
        r9 = 0;
    L_0x0169:
        r10 = 0;
    L_0x016a:
        r11 = r7.zzbvB;	 Catch:{ all -> 0x0273 }
        r11 = r11.length;	 Catch:{ all -> 0x0273 }
        if (r10 >= r11) goto L_0x01bb;
    L_0x016f:
        r11 = r7.zzbvB;	 Catch:{ all -> 0x0273 }
        r12 = r5.get(r10);	 Catch:{ all -> 0x0273 }
        r12 = (android.util.Pair) r12;	 Catch:{ all -> 0x0273 }
        r12 = r12.first;	 Catch:{ all -> 0x0273 }
        r12 = (com.google.android.gms.internal.zzcjz) r12;	 Catch:{ all -> 0x0273 }
        r11[r10] = r12;	 Catch:{ all -> 0x0273 }
        r11 = r5.get(r10);	 Catch:{ all -> 0x0273 }
        r11 = (android.util.Pair) r11;	 Catch:{ all -> 0x0273 }
        r11 = r11.second;	 Catch:{ all -> 0x0273 }
        r11 = (java.lang.Long) r11;	 Catch:{ all -> 0x0273 }
        r8.add(r11);	 Catch:{ all -> 0x0273 }
        r11 = r7.zzbvB;	 Catch:{ all -> 0x0273 }
        r11 = r11[r10];	 Catch:{ all -> 0x0273 }
        r12 = com.google.android.gms.internal.zzcem.zzwP();	 Catch:{ all -> 0x0273 }
        r12 = java.lang.Long.valueOf(r12);	 Catch:{ all -> 0x0273 }
        r11.zzbvQ = r12;	 Catch:{ all -> 0x0273 }
        r11 = r7.zzbvB;	 Catch:{ all -> 0x0273 }
        r11 = r11[r10];	 Catch:{ all -> 0x0273 }
        r12 = java.lang.Long.valueOf(r2);	 Catch:{ all -> 0x0273 }
        r11.zzbvG = r12;	 Catch:{ all -> 0x0273 }
        r11 = r7.zzbvB;	 Catch:{ all -> 0x0273 }
        r11 = r11[r10];	 Catch:{ all -> 0x0273 }
        r12 = com.google.android.gms.internal.zzcem.zzxE();	 Catch:{ all -> 0x0273 }
        r12 = java.lang.Boolean.valueOf(r12);	 Catch:{ all -> 0x0273 }
        r11.zzbvW = r12;	 Catch:{ all -> 0x0273 }
        if (r9 != 0) goto L_0x01b8;
    L_0x01b2:
        r11 = r7.zzbvB;	 Catch:{ all -> 0x0273 }
        r11 = r11[r10];	 Catch:{ all -> 0x0273 }
        r11.zzbwd = r6;	 Catch:{ all -> 0x0273 }
    L_0x01b8:
        r10 = r10 + 1;
        goto L_0x016a;
    L_0x01bb:
        r5 = r14.zzwF();	 Catch:{ all -> 0x0273 }
        r9 = 2;
        r5 = r5.zzz(r9);	 Catch:{ all -> 0x0273 }
        if (r5 == 0) goto L_0x01ce;
    L_0x01c6:
        r5 = r14.zzwA();	 Catch:{ all -> 0x0273 }
        r6 = r5.zza(r7);	 Catch:{ all -> 0x0273 }
    L_0x01ce:
        r5 = r14.zzwB();	 Catch:{ all -> 0x0273 }
        r10 = r5.zzb(r7);	 Catch:{ all -> 0x0273 }
        r5 = com.google.android.gms.internal.zzcem.zzxO();	 Catch:{ all -> 0x0273 }
        r9 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x023a }
        r9.<init>(r5);	 Catch:{ MalformedURLException -> 0x023a }
        r11 = r8.isEmpty();	 Catch:{ MalformedURLException -> 0x023a }
        r11 = r11 ^ r0;
        com.google.android.gms.common.internal.zzbo.zzaf(r11);	 Catch:{ MalformedURLException -> 0x023a }
        r11 = r14.zzbsO;	 Catch:{ MalformedURLException -> 0x023a }
        if (r11 == 0) goto L_0x01f9;
    L_0x01eb:
        r8 = r14.zzwF();	 Catch:{ MalformedURLException -> 0x023a }
        r8 = r8.zzyx();	 Catch:{ MalformedURLException -> 0x023a }
        r11 = "Set uploading progress before finishing the previous upload";
        r8.log(r11);	 Catch:{ MalformedURLException -> 0x023a }
        goto L_0x0200;
    L_0x01f9:
        r11 = new java.util.ArrayList;	 Catch:{ MalformedURLException -> 0x023a }
        r11.<init>(r8);	 Catch:{ MalformedURLException -> 0x023a }
        r14.zzbsO = r11;	 Catch:{ MalformedURLException -> 0x023a }
    L_0x0200:
        r8 = r14.zzwG();	 Catch:{ MalformedURLException -> 0x023a }
        r8 = r8.zzbrl;	 Catch:{ MalformedURLException -> 0x023a }
        r8.set(r2);	 Catch:{ MalformedURLException -> 0x023a }
        r2 = "?";
        r3 = r7.zzbvB;	 Catch:{ MalformedURLException -> 0x023a }
        r3 = r3.length;	 Catch:{ MalformedURLException -> 0x023a }
        if (r3 <= 0) goto L_0x0216;
    L_0x0210:
        r2 = r7.zzbvB;	 Catch:{ MalformedURLException -> 0x023a }
        r2 = r2[r1];	 Catch:{ MalformedURLException -> 0x023a }
        r2 = r2.zzaH;	 Catch:{ MalformedURLException -> 0x023a }
    L_0x0216:
        r3 = r14.zzwF();	 Catch:{ MalformedURLException -> 0x023a }
        r3 = r3.zzyD();	 Catch:{ MalformedURLException -> 0x023a }
        r7 = "Uploading data. app, uncompressed size, data";
        r8 = r10.length;	 Catch:{ MalformedURLException -> 0x023a }
        r8 = java.lang.Integer.valueOf(r8);	 Catch:{ MalformedURLException -> 0x023a }
        r3.zzd(r7, r2, r8, r6);	 Catch:{ MalformedURLException -> 0x023a }
        r14.zzbsV = r0;	 Catch:{ MalformedURLException -> 0x023a }
        r7 = r14.zzyU();	 Catch:{ MalformedURLException -> 0x023a }
        r11 = 0;
        r12 = new com.google.android.gms.internal.zzcgo;	 Catch:{ MalformedURLException -> 0x023a }
        r12.<init>(r14);	 Catch:{ MalformedURLException -> 0x023a }
        r8 = r4;
        r7.zza(r8, r9, r10, r11, r12);	 Catch:{ MalformedURLException -> 0x023a }
        goto L_0x0028;
    L_0x023a:
        r0 = r14.zzwF();	 Catch:{ all -> 0x0273 }
        r0 = r0.zzyx();	 Catch:{ all -> 0x0273 }
        r2 = "Failed to parse upload URL. Not uploading. appId";
        r3 = com.google.android.gms.internal.zzcfl.zzdZ(r4);	 Catch:{ all -> 0x0273 }
        r0.zze(r2, r3, r5);	 Catch:{ all -> 0x0273 }
        goto L_0x0028;
    L_0x024d:
        r14.zzbsS = r7;	 Catch:{ all -> 0x0273 }
        r0 = r14.zzwz();	 Catch:{ all -> 0x0273 }
        r4 = com.google.android.gms.internal.zzcem.zzxP();	 Catch:{ all -> 0x0273 }
        r6 = 0;
        r6 = r2 - r4;
        r0 = r0.zzaa(r6);	 Catch:{ all -> 0x0273 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ all -> 0x0273 }
        if (r2 != 0) goto L_0x0028;
    L_0x0264:
        r2 = r14.zzwz();	 Catch:{ all -> 0x0273 }
        r0 = r2.zzdQ(r0);	 Catch:{ all -> 0x0273 }
        if (r0 == 0) goto L_0x0028;
    L_0x026e:
        r14.zzb(r0);	 Catch:{ all -> 0x0273 }
        goto L_0x0028;
    L_0x0273:
        r0 = move-exception;
        r14.zzbsW = r1;
        r14.zzzg();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcgl.zzza():void");
    }

    /* Access modifiers changed, original: final */
    public final void zzzd() {
        this.zzbsR++;
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzze() {
        zzwE().zzjC();
        zzkD();
        if (!this.zzbsJ) {
            zzwF().zzyB().log("This instance being marked as an uploader");
            zzwE().zzjC();
            zzkD();
            if (zzzf() && zzyX()) {
                zzcfn zzyx;
                String str;
                int zza = zza(this.zzbsN);
                int zzyv = zzwu().zzyv();
                zzwE().zzjC();
                if (zza > zzyv) {
                    zzyx = zzwF().zzyx();
                    str = "Panic: can't downgrade version. Previous, current version";
                } else if (zza < zzyv) {
                    if (zza(zzyv, this.zzbsN)) {
                        zzyx = zzwF().zzyD();
                        str = "Storage version upgraded. Previous, current version";
                    } else {
                        zzyx = zzwF().zzyx();
                        str = "Storage version upgrade failed. Previous, current version";
                    }
                }
                zzyx.zze(str, Integer.valueOf(zza), Integer.valueOf(zzyv));
            }
            this.zzbsJ = true;
            zzzc();
        }
    }
}
