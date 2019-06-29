package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.zze;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public final class zzbbp implements zzbdp {
    private final zzbdb zzaAN;
    private final zzq zzaCA;
    private final Map<zzc<?>, zzbbo<?>> zzaCB = new HashMap();
    private final Map<zzc<?>, zzbbo<?>> zzaCC = new HashMap();
    private final Map<Api<?>, Boolean> zzaCD;
    private final zzbcp zzaCE;
    private final zze zzaCF;
    private final Condition zzaCG;
    private final boolean zzaCH;
    private final boolean zzaCI;
    private final Queue<zzbay<?, ?>> zzaCJ = new LinkedList();
    private boolean zzaCK;
    private Map<zzbat<?>, ConnectionResult> zzaCL;
    private Map<zzbat<?>, ConnectionResult> zzaCM;
    private zzbbs zzaCN;
    private ConnectionResult zzaCO;
    private final Lock zzaCv;
    private final Looper zzrM;

    public zzbbp(Context context, Lock lock, Looper looper, zze zze, Map<zzc<?>, Api.zze> map, zzq zzq, Map<Api<?>, Boolean> map2, zza<? extends zzctk, zzctl> zza, ArrayList<zzbbi> arrayList, zzbcp zzbcp, boolean z) {
        this.zzaCv = lock;
        Looper looper2 = looper;
        this.zzrM = looper2;
        this.zzaCG = lock.newCondition();
        this.zzaCF = zze;
        this.zzaCE = zzbcp;
        this.zzaCD = map2;
        zzq zzq2 = zzq;
        this.zzaCA = zzq2;
        this.zzaCH = z;
        HashMap hashMap = new HashMap();
        for (Api api : map2.keySet()) {
            hashMap.put(api.zzpd(), api);
        }
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            zzbbi zzbbi = (zzbbi) obj;
            hashMap2.put(zzbbi.zzayW, zzbbi);
        }
        Object obj2 = null;
        Object obj3 = 1;
        Object obj4 = null;
        for (Entry entry : map.entrySet()) {
            Object obj5;
            Object obj6;
            Object obj7;
            Api api2 = (Api) hashMap.get(entry.getKey());
            Api.zze zze2 = (Api.zze) entry.getValue();
            if (zze2.zzpe()) {
                if (((Boolean) this.zzaCD.get(api2)).booleanValue()) {
                    obj5 = obj3;
                    obj6 = obj4;
                } else {
                    obj5 = obj3;
                    obj6 = 1;
                }
                obj7 = 1;
            } else {
                obj7 = obj2;
                obj6 = obj4;
                obj5 = null;
            }
            zzbbo zzbbo = r1;
            Api.zze zze3 = zze2;
            Entry entry2 = entry;
            zzbbo zzbbo2 = new zzbbo(context, api2, looper2, zze2, (zzbbi) hashMap2.get(api2), zzq2, zza);
            this.zzaCB.put((zzc) entry2.getKey(), zzbbo);
            if (zze3.zzmv()) {
                this.zzaCC.put((zzc) entry2.getKey(), zzbbo);
            }
            obj4 = obj6;
            obj3 = obj5;
            obj2 = obj7;
            looper2 = looper;
        }
        boolean z2 = obj2 != null && obj3 == null && obj4 == null;
        this.zzaCI = z2;
        this.zzaAN = zzbdb.zzqk();
    }

    private final boolean zza(zzbbo<?> zzbbo, ConnectionResult connectionResult) {
        return !connectionResult.isSuccess() && !connectionResult.hasResolution() && ((Boolean) this.zzaCD.get(zzbbo.zzpg())).booleanValue() && zzbbo.zzpJ().zzpe() && this.zzaCF.isUserResolvableError(connectionResult.getErrorCode());
    }

    @Nullable
    private final ConnectionResult zzb(@NonNull zzc<?> zzc) {
        this.zzaCv.lock();
        try {
            zzbbo zzbbo = (zzbbo) this.zzaCB.get(zzc);
            if (this.zzaCL == null || zzbbo == null) {
                this.zzaCv.unlock();
                return null;
            }
            ConnectionResult connectionResult = (ConnectionResult) this.zzaCL.get(zzbbo.zzph());
            return connectionResult;
        } finally {
            this.zzaCv.unlock();
        }
    }

    private final <T extends zzbay<? extends Result, ? extends zzb>> boolean zzg(@NonNull T t) {
        zzc zzpd = t.zzpd();
        ConnectionResult zzb = zzb(zzpd);
        if (zzb == null || zzb.getErrorCode() != 4) {
            return false;
        }
        t.zzr(new Status(4, null, this.zzaAN.zza(((zzbbo) this.zzaCB.get(zzpd)).zzph(), System.identityHashCode(this.zzaCE))));
        return true;
    }

    private final boolean zzpK() {
        this.zzaCv.lock();
        try {
            if (this.zzaCK) {
                if (this.zzaCH) {
                    for (zzc zzb : this.zzaCC.keySet()) {
                        ConnectionResult zzb2 = zzb(zzb);
                        if (zzb2 != null) {
                            if (!zzb2.isSuccess()) {
                            }
                        }
                    }
                    this.zzaCv.unlock();
                    return true;
                }
            }
            this.zzaCv.unlock();
            return false;
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    private final void zzpL() {
        if (this.zzaCA == null) {
            this.zzaCE.zzaDG = Collections.emptySet();
            return;
        }
        HashSet hashSet = new HashSet(this.zzaCA.zzrn());
        Map zzrp = this.zzaCA.zzrp();
        for (Api api : zzrp.keySet()) {
            ConnectionResult connectionResult = getConnectionResult(api);
            if (connectionResult != null && connectionResult.isSuccess()) {
                hashSet.addAll(((zzr) zzrp.get(api)).zzame);
            }
        }
        this.zzaCE.zzaDG = hashSet;
    }

    private final void zzpM() {
        while (!this.zzaCJ.isEmpty()) {
            zze((zzbay) this.zzaCJ.remove());
        }
        this.zzaCE.zzm(null);
    }

    @Nullable
    private final ConnectionResult zzpN() {
        ConnectionResult connectionResult = null;
        ConnectionResult connectionResult2 = null;
        int i = 0;
        int i2 = 0;
        for (zzbbo zzbbo : this.zzaCB.values()) {
            Api zzpg = zzbbo.zzpg();
            ConnectionResult connectionResult3 = (ConnectionResult) this.zzaCL.get(zzbbo.zzph());
            if (!connectionResult3.isSuccess() && (!((Boolean) this.zzaCD.get(zzpg)).booleanValue() || connectionResult3.hasResolution() || this.zzaCF.isUserResolvableError(connectionResult3.getErrorCode()))) {
                int priority;
                if (connectionResult3.getErrorCode() == 4 && this.zzaCH) {
                    priority = zzpg.zzpb().getPriority();
                    if (connectionResult2 == null || i2 > priority) {
                        connectionResult2 = connectionResult3;
                        i2 = priority;
                    }
                } else {
                    priority = zzpg.zzpb().getPriority();
                    if (connectionResult == null || i > priority) {
                        connectionResult = connectionResult3;
                        i = priority;
                    }
                }
            }
        }
        return (connectionResult == null || connectionResult2 == null || i <= i2) ? connectionResult : connectionResult2;
    }

    public final ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.zzaCG.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        return isConnected() ? ConnectionResult.zzazX : this.zzaCO != null ? this.zzaCO : new ConnectionResult(13, null);
    }

    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        connect();
        j = timeUnit.toNanos(j);
        while (isConnecting()) {
            if (j <= 0) {
                try {
                    disconnect();
                    return new ConnectionResult(14, null);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return new ConnectionResult(15, null);
                }
            }
            j = this.zzaCG.awaitNanos(j);
        }
        return isConnected() ? ConnectionResult.zzazX : this.zzaCO != null ? this.zzaCO : new ConnectionResult(13, null);
    }

    public final void connect() {
        this.zzaCv.lock();
        try {
            if (!this.zzaCK) {
                this.zzaCK = true;
                this.zzaCL = null;
                this.zzaCM = null;
                this.zzaCN = null;
                this.zzaCO = null;
                this.zzaAN.zzps();
                this.zzaAN.zza(this.zzaCB.values()).addOnCompleteListener(new zzbgv(this.zzrM), new zzbbr(this));
            }
            this.zzaCv.unlock();
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final void disconnect() {
        this.zzaCv.lock();
        try {
            this.zzaCK = false;
            this.zzaCL = null;
            this.zzaCM = null;
            if (this.zzaCN != null) {
                this.zzaCN.cancel();
                this.zzaCN = null;
            }
            this.zzaCO = null;
            while (!this.zzaCJ.isEmpty()) {
                zzbay zzbay = (zzbay) this.zzaCJ.remove();
                zzbay.zza(null);
                zzbay.cancel();
            }
            this.zzaCG.signalAll();
        } finally {
            this.zzaCv.unlock();
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Nullable
    public final ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        return zzb(api.zzpd());
    }

    public final boolean isConnected() {
        this.zzaCv.lock();
        try {
            boolean z = this.zzaCL != null && this.zzaCO == null;
            this.zzaCv.unlock();
            return z;
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final boolean isConnecting() {
        this.zzaCv.lock();
        try {
            boolean z = this.zzaCL == null && this.zzaCK;
            this.zzaCv.unlock();
            return z;
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final boolean zza(zzbei zzbei) {
        this.zzaCv.lock();
        try {
            if (!this.zzaCK || zzpK()) {
                this.zzaCv.unlock();
                return false;
            }
            this.zzaAN.zzps();
            this.zzaCN = new zzbbs(this, zzbei);
            this.zzaAN.zza(this.zzaCC.values()).addOnCompleteListener(new zzbgv(this.zzrM), this.zzaCN);
            return true;
        } finally {
            this.zzaCv.unlock();
        }
    }

    public final <A extends zzb, R extends Result, T extends zzbay<R, A>> T zzd(@NonNull T t) {
        if (this.zzaCH && zzg((zzbay) t)) {
            return t;
        }
        if (isConnected()) {
            this.zzaCE.zzaDL.zzb(t);
            return ((zzbbo) this.zzaCB.get(t.zzpd())).zza((zzbay) t);
        }
        this.zzaCJ.add(t);
        return t;
    }

    public final <A extends zzb, T extends zzbay<? extends Result, A>> T zze(@NonNull T t) {
        zzc zzpd = t.zzpd();
        if (this.zzaCH && zzg((zzbay) t)) {
            return t;
        }
        this.zzaCE.zzaDL.zzb(t);
        return ((zzbbo) this.zzaCB.get(zzpd)).zzb((zzbay) t);
    }

    public final void zzpE() {
    }

    public final void zzpl() {
        this.zzaCv.lock();
        try {
            this.zzaAN.zzpl();
            if (this.zzaCN != null) {
                this.zzaCN.cancel();
                this.zzaCN = null;
            }
            if (this.zzaCM == null) {
                this.zzaCM = new ArrayMap(this.zzaCC.size());
            }
            ConnectionResult connectionResult = new ConnectionResult(4);
            for (zzbbo zzph : this.zzaCC.values()) {
                this.zzaCM.put(zzph.zzph(), connectionResult);
            }
            if (this.zzaCL != null) {
                this.zzaCL.putAll(this.zzaCM);
            }
            this.zzaCv.unlock();
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }
}
