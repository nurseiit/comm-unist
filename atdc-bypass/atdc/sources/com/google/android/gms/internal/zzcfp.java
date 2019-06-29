package com.google.android.gms.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import java.net.URL;
import java.util.Map;

public final class zzcfp extends zzchj {
    public zzcfp(zzcgl zzcgl) {
        super(zzcgl);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x002b  */
    @android.support.annotation.WorkerThread
    private static byte[] zzc(java.net.HttpURLConnection r5) throws java.io.IOException {
        /*
        r0 = 0;
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ all -> 0x0025 }
        r1.<init>();	 Catch:{ all -> 0x0025 }
        r5 = r5.getInputStream();	 Catch:{ all -> 0x0025 }
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = new byte[r0];	 Catch:{ all -> 0x0023 }
    L_0x000e:
        r2 = r5.read(r0);	 Catch:{ all -> 0x0023 }
        if (r2 <= 0) goto L_0x0019;
    L_0x0014:
        r3 = 0;
        r1.write(r0, r3, r2);	 Catch:{ all -> 0x0023 }
        goto L_0x000e;
    L_0x0019:
        r0 = r1.toByteArray();	 Catch:{ all -> 0x0023 }
        if (r5 == 0) goto L_0x0022;
    L_0x001f:
        r5.close();
    L_0x0022:
        return r0;
    L_0x0023:
        r0 = move-exception;
        goto L_0x0029;
    L_0x0025:
        r5 = move-exception;
        r4 = r0;
        r0 = r5;
        r5 = r4;
    L_0x0029:
        if (r5 == 0) goto L_0x002e;
    L_0x002b:
        r5.close();
    L_0x002e:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcfp.zzc(java.net.HttpURLConnection):byte[]");
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @WorkerThread
    public final void zza(String str, URL url, Map<String, String> map, zzcfr zzcfr) {
        super.zzjC();
        zzkD();
        zzbo.zzu(url);
        zzbo.zzu(zzcfr);
        super.zzwE().zzk(new zzcft(this, str, url, null, map, zzcfr));
    }

    @WorkerThread
    public final void zza(String str, URL url, byte[] bArr, Map<String, String> map, zzcfr zzcfr) {
        super.zzjC();
        zzkD();
        zzbo.zzu(url);
        zzbo.zzu(bArr);
        zzbo.zzu(zzcfr);
        super.zzwE().zzk(new zzcft(this, str, url, bArr, null, zzcfr));
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

    public final boolean zzlQ() {
        NetworkInfo activeNetworkInfo;
        zzkD();
        try {
            activeNetworkInfo = ((ConnectivityManager) super.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException unused) {
            activeNetworkInfo = null;
        }
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
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
