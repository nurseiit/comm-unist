package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzq;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

final class zzbbk implements zzbdp {
    private final Context mContext;
    private final zzbcp zzaCl;
    private final zzbcx zzaCm;
    private final zzbcx zzaCn;
    private final Map<zzc<?>, zzbcx> zzaCo;
    private final Set<zzbei> zzaCp = Collections.newSetFromMap(new WeakHashMap());
    private final zze zzaCq;
    private Bundle zzaCr;
    private ConnectionResult zzaCs = null;
    private ConnectionResult zzaCt = null;
    private boolean zzaCu = false;
    private final Lock zzaCv;
    private int zzaCw = 0;
    private final Looper zzrM;

    private zzbbk(Context context, zzbcp zzbcp, Lock lock, Looper looper, com.google.android.gms.common.zze zze, Map<zzc<?>, zze> map, Map<zzc<?>, zze> map2, zzq zzq, zza<? extends zzctk, zzctl> zza, zze zze2, ArrayList<zzbbi> arrayList, ArrayList<zzbbi> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        Context context2 = context;
        this.mContext = context2;
        this.zzaCl = zzbcp;
        Lock lock2 = lock;
        this.zzaCv = lock2;
        Looper looper2 = looper;
        this.zzrM = looper2;
        this.zzaCq = zze2;
        Context context3 = context2;
        Lock lock3 = lock2;
        com.google.android.gms.common.zze zze3 = zze;
        zzbcx zzbcx = r3;
        zzbcx zzbcx2 = new zzbcx(context3, this.zzaCl, lock3, looper2, zze3, map2, null, map4, null, arrayList2, new zzbbm(this, null));
        this.zzaCm = zzbcx;
        this.zzaCn = new zzbcx(context3, this.zzaCl, lock3, looper, zze3, map, zzq, map3, zza, arrayList, new zzbbn(this, null));
        ArrayMap arrayMap = new ArrayMap();
        for (zzc put : map2.keySet()) {
            arrayMap.put(put, this.zzaCm);
        }
        for (zzc put2 : map.keySet()) {
            arrayMap.put(put2, this.zzaCn);
        }
        this.zzaCo = Collections.unmodifiableMap(arrayMap);
    }

    public static zzbbk zza(Context context, zzbcp zzbcp, Lock lock, Looper looper, com.google.android.gms.common.zze zze, Map<zzc<?>, zze> map, zzq zzq, Map<Api<?>, Boolean> map2, zza<? extends zzctk, zzctl> zza, ArrayList<zzbbi> arrayList) {
        Map<Api<?>, Boolean> map3 = map2;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        zze zze2 = null;
        for (Entry entry : map.entrySet()) {
            zze zze3 = (zze) entry.getValue();
            if (zze3.zzmG()) {
                zze2 = zze3;
            }
            if (zze3.zzmv()) {
                arrayMap.put((zzc) entry.getKey(), zze3);
            } else {
                arrayMap2.put((zzc) entry.getKey(), zze3);
            }
        }
        zzbo.zza(arrayMap.isEmpty() ^ 1, (Object) "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api api : map2.keySet()) {
            zzc zzpd = api.zzpd();
            if (arrayMap.containsKey(zzpd)) {
                arrayMap3.put(api, (Boolean) map3.get(api));
            } else if (arrayMap2.containsKey(zzpd)) {
                arrayMap4.put(api, (Boolean) map3.get(api));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = arrayList;
        int size = arrayList4.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList4.get(i);
            i++;
            zzbbi zzbbi = (zzbbi) obj;
            if (arrayMap3.containsKey(zzbbi.zzayW)) {
                arrayList2.add(zzbbi);
            } else if (arrayMap4.containsKey(zzbbi.zzayW)) {
                arrayList3.add(zzbbi);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        return new zzbbk(context, zzbcp, lock, looper, zze, arrayMap, arrayMap2, zzq, zza, zze2, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    private final void zza(ConnectionResult connectionResult) {
        switch (this.zzaCw) {
            case 1:
                break;
            case 2:
                this.zzaCl.zzc(connectionResult);
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                break;
        }
        zzpG();
        this.zzaCw = 0;
    }

    private static boolean zzb(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    private final void zzd(int i, boolean z) {
        this.zzaCl.zze(i, z);
        this.zzaCt = null;
        this.zzaCs = null;
    }

    private final boolean zzf(zzbay<? extends Result, ? extends zzb> zzbay) {
        zzc zzpd = zzbay.zzpd();
        zzbo.zzb(this.zzaCo.containsKey(zzpd), (Object) "GoogleApiClient is not configured to use the API required for this call.");
        return ((zzbcx) this.zzaCo.get(zzpd)).equals(this.zzaCn);
    }

    private final void zzl(Bundle bundle) {
        if (this.zzaCr == null) {
            this.zzaCr = bundle;
            return;
        }
        if (bundle != null) {
            this.zzaCr.putAll(bundle);
        }
    }

    private final void zzpF() {
        if (zzb(this.zzaCs)) {
            if (zzb(this.zzaCt) || zzpH()) {
                switch (this.zzaCw) {
                    case 1:
                        break;
                    case 2:
                        this.zzaCl.zzm(this.zzaCr);
                        break;
                    default:
                        Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                        break;
                }
                zzpG();
                this.zzaCw = 0;
            } else if (this.zzaCt != null) {
                if (this.zzaCw == 1) {
                    zzpG();
                    return;
                }
                zza(this.zzaCt);
                this.zzaCm.disconnect();
            }
        } else if (this.zzaCs != null && zzb(this.zzaCt)) {
            this.zzaCn.disconnect();
            zza(this.zzaCs);
        } else if (!(this.zzaCs == null || this.zzaCt == null)) {
            ConnectionResult connectionResult = this.zzaCs;
            if (this.zzaCn.zzaDX < this.zzaCm.zzaDX) {
                connectionResult = this.zzaCt;
            }
            zza(connectionResult);
        }
    }

    private final void zzpG() {
        for (zzbei zzmF : this.zzaCp) {
            zzmF.zzmF();
        }
        this.zzaCp.clear();
    }

    private final boolean zzpH() {
        return this.zzaCt != null && this.zzaCt.getErrorCode() == 4;
    }

    @Nullable
    private final PendingIntent zzpI() {
        return this.zzaCq == null ? null : PendingIntent.getActivity(this.mContext, System.identityHashCode(this.zzaCl), this.zzaCq.zzmH(), 134217728);
    }

    public final ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    public final ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    public final void connect() {
        this.zzaCw = 2;
        this.zzaCu = false;
        this.zzaCt = null;
        this.zzaCs = null;
        this.zzaCm.connect();
        this.zzaCn.connect();
    }

    public final void disconnect() {
        this.zzaCt = null;
        this.zzaCs = null;
        this.zzaCw = 0;
        this.zzaCm.disconnect();
        this.zzaCn.disconnect();
        zzpG();
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("authClient").println(":");
        this.zzaCn.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append(str).append("anonClient").println(":");
        this.zzaCm.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Nullable
    public final ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        return ((zzbcx) this.zzaCo.get(api.zzpd())).equals(this.zzaCn) ? zzpH() ? new ConnectionResult(4, zzpI()) : this.zzaCn.getConnectionResult(api) : this.zzaCm.getConnectionResult(api);
    }

    public final boolean isConnected() {
        this.zzaCv.lock();
        try {
            boolean z = true;
            if (!(this.zzaCm.isConnected() && (this.zzaCn.isConnected() || zzpH() || this.zzaCw == 1))) {
                z = false;
            }
            this.zzaCv.unlock();
            return z;
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final boolean isConnecting() {
        this.zzaCv.lock();
        try {
            boolean z = this.zzaCw == 2;
            this.zzaCv.unlock();
            return z;
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final boolean zza(zzbei zzbei) {
        this.zzaCv.lock();
        boolean z;
        try {
            if ((isConnecting() || isConnected()) && !this.zzaCn.isConnected()) {
                this.zzaCp.add(zzbei);
                z = true;
                if (this.zzaCw == 0) {
                    this.zzaCw = 1;
                }
                this.zzaCt = null;
                this.zzaCn.connect();
                return z;
            }
            this.zzaCv.unlock();
            return false;
        } finally {
            z = this.zzaCv;
            z.unlock();
        }
    }

    public final <A extends zzb, R extends Result, T extends zzbay<R, A>> T zzd(@NonNull T t) {
        if (!zzf((zzbay) t)) {
            return this.zzaCm.zzd(t);
        }
        if (!zzpH()) {
            return this.zzaCn.zzd(t);
        }
        t.zzr(new Status(4, null, zzpI()));
        return t;
    }

    public final <A extends zzb, T extends zzbay<? extends Result, A>> T zze(@NonNull T t) {
        if (!zzf((zzbay) t)) {
            return this.zzaCm.zze(t);
        }
        if (!zzpH()) {
            return this.zzaCn.zze(t);
        }
        t.zzr(new Status(4, null, zzpI()));
        return t;
    }

    public final void zzpE() {
        this.zzaCm.zzpE();
        this.zzaCn.zzpE();
    }

    public final void zzpl() {
        this.zzaCv.lock();
        try {
            boolean isConnecting = isConnecting();
            this.zzaCn.disconnect();
            this.zzaCt = new ConnectionResult(4);
            if (isConnecting) {
                new Handler(this.zzrM).post(new zzbbl(this));
            } else {
                zzpG();
            }
            this.zzaCv.unlock();
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }
}
