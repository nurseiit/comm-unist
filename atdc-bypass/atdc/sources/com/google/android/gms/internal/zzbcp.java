package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzq;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

public final class zzbcp extends GoogleApiClient implements zzbdq {
    private final Context mContext;
    private final int zzaBb;
    private final GoogleApiAvailability zzaBd;
    private zza<? extends zzctk, zzctl> zzaBe;
    private boolean zzaBh;
    private zzq zzaCA;
    private Map<Api<?>, Boolean> zzaCD;
    final Queue<zzbay<?, ?>> zzaCJ = new LinkedList();
    private final Lock zzaCv;
    private volatile boolean zzaDA;
    private long zzaDB = 120000;
    private long zzaDC = 5000;
    private final zzbcu zzaDD;
    private zzbdk zzaDE;
    final Map<zzc<?>, zze> zzaDF;
    Set<Scope> zzaDG = new HashSet();
    private final zzbea zzaDH = new zzbea();
    private final ArrayList<zzbbi> zzaDI;
    private Integer zzaDJ = null;
    Set<zzbes> zzaDK = null;
    final zzbev zzaDL;
    private final zzad zzaDM = new zzbcq(this);
    private final zzac zzaDy;
    private zzbdp zzaDz = null;
    private final Looper zzrM;

    public zzbcp(Context context, Lock lock, Looper looper, zzq zzq, GoogleApiAvailability googleApiAvailability, zza<? extends zzctk, zzctl> zza, Map<Api<?>, Boolean> map, List<ConnectionCallbacks> list, List<OnConnectionFailedListener> list2, Map<zzc<?>, zze> map2, int i, int i2, ArrayList<zzbbi> arrayList, boolean z) {
        Looper looper2 = looper;
        this.mContext = context;
        this.zzaCv = lock;
        this.zzaBh = false;
        this.zzaDy = new zzac(looper2, this.zzaDM);
        this.zzrM = looper2;
        this.zzaDD = new zzbcu(this, looper2);
        this.zzaBd = googleApiAvailability;
        this.zzaBb = i;
        if (this.zzaBb >= 0) {
            this.zzaDJ = Integer.valueOf(i2);
        }
        this.zzaCD = map;
        this.zzaDF = map2;
        this.zzaDI = arrayList;
        this.zzaDL = new zzbev(this.zzaDF);
        for (ConnectionCallbacks registerConnectionCallbacks : list) {
            this.zzaDy.registerConnectionCallbacks(registerConnectionCallbacks);
        }
        for (OnConnectionFailedListener registerConnectionFailedListener : list2) {
            this.zzaDy.registerConnectionFailedListener(registerConnectionFailedListener);
        }
        this.zzaCA = zzq;
        this.zzaBe = zza;
    }

    private final void resume() {
        this.zzaCv.lock();
        try {
            if (this.zzaDA) {
                zzqc();
            }
            this.zzaCv.unlock();
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public static int zza(Iterable<zze> iterable, boolean z) {
        Object obj = null;
        Object obj2 = null;
        for (zze zze : iterable) {
            if (zze.zzmv()) {
                obj = 1;
            }
            if (zze.zzmG()) {
                obj2 = 1;
            }
        }
        return obj != null ? (obj2 == null || !z) ? 1 : 2 : 3;
    }

    private final void zza(GoogleApiClient googleApiClient, zzben zzben, boolean z) {
        zzbfo.zzaIy.zzd(googleApiClient).setResultCallback(new zzbct(this, zzben, z, googleApiClient));
    }

    private final void zzap(int i) {
        if (this.zzaDJ == null) {
            this.zzaDJ = Integer.valueOf(i);
        } else if (this.zzaDJ.intValue() != i) {
            String valueOf = String.valueOf(zzaq(i));
            String valueOf2 = String.valueOf(zzaq(this.zzaDJ.intValue()));
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 51) + String.valueOf(valueOf2).length());
            stringBuilder.append("Cannot use sign-in mode: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(". Mode was already set to ");
            stringBuilder.append(valueOf2);
            throw new IllegalStateException(stringBuilder.toString());
        }
        if (this.zzaDz == null) {
            Object obj = null;
            Object obj2 = null;
            for (zze zze : this.zzaDF.values()) {
                if (zze.zzmv()) {
                    obj = 1;
                }
                if (zze.zzmG()) {
                    obj2 = 1;
                }
            }
            switch (this.zzaDJ.intValue()) {
                case 1:
                    if (obj == null) {
                        throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                    } else if (obj2 != null) {
                        throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                    }
                    break;
                case 2:
                    if (obj != null) {
                        if (this.zzaBh) {
                            this.zzaDz = new zzbbp(this.mContext, this.zzaCv, this.zzrM, this.zzaBd, this.zzaDF, this.zzaCA, this.zzaCD, this.zzaBe, this.zzaDI, this, true);
                            return;
                        }
                        this.zzaDz = zzbbk.zza(this.mContext, this, this.zzaCv, this.zzrM, this.zzaBd, this.zzaDF, this.zzaCA, this.zzaCD, this.zzaBe, this.zzaDI);
                        return;
                    }
                    break;
            }
            if (this.zzaBh && obj2 == null) {
                this.zzaDz = new zzbbp(this.mContext, this.zzaCv, this.zzrM, this.zzaBd, this.zzaDF, this.zzaCA, this.zzaCD, this.zzaBe, this.zzaDI, this, false);
                return;
            }
            this.zzaDz = new zzbcx(this.mContext, this, this.zzaCv, this.zzrM, this.zzaBd, this.zzaDF, this.zzaCA, this.zzaCD, this.zzaBe, this.zzaDI, this);
        }
    }

    private static String zzaq(int i) {
        switch (i) {
            case 1:
                return "SIGN_IN_MODE_REQUIRED";
            case 2:
                return "SIGN_IN_MODE_OPTIONAL";
            case 3:
                return "SIGN_IN_MODE_NONE";
            default:
                return "UNKNOWN";
        }
    }

    private final void zzqc() {
        this.zzaDy.zzrA();
        this.zzaDz.connect();
    }

    private final void zzqd() {
        this.zzaCv.lock();
        try {
            if (zzqe()) {
                zzqc();
            }
            this.zzaCv.unlock();
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final ConnectionResult blockingConnect() {
        boolean z = true;
        zzbo.zza(Looper.myLooper() != Looper.getMainLooper(), (Object) "blockingConnect must not be called on the UI thread");
        this.zzaCv.lock();
        try {
            if (this.zzaBb >= 0) {
                if (this.zzaDJ == null) {
                    z = false;
                }
                zzbo.zza(z, (Object) "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.zzaDJ == null) {
                this.zzaDJ = Integer.valueOf(zza(this.zzaDF.values(), false));
            } else if (this.zzaDJ.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzap(this.zzaDJ.intValue());
            this.zzaDy.zzrA();
            ConnectionResult blockingConnect = this.zzaDz.blockingConnect();
            return blockingConnect;
        } finally {
            this.zzaCv.unlock();
        }
    }

    public final ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        zzbo.zza(Looper.myLooper() != Looper.getMainLooper(), (Object) "blockingConnect must not be called on the UI thread");
        zzbo.zzb((Object) timeUnit, (Object) "TimeUnit must not be null");
        this.zzaCv.lock();
        try {
            if (this.zzaDJ == null) {
                this.zzaDJ = Integer.valueOf(zza(this.zzaDF.values(), false));
            } else if (this.zzaDJ.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzap(this.zzaDJ.intValue());
            this.zzaDy.zzrA();
            ConnectionResult blockingConnect = this.zzaDz.blockingConnect(j, timeUnit);
            return blockingConnect;
        } finally {
            this.zzaCv.unlock();
        }
    }

    public final PendingResult<Status> clearDefaultAccountAndReconnect() {
        zzbo.zza(isConnected(), (Object) "GoogleApiClient is not connected yet.");
        zzbo.zza(this.zzaDJ.intValue() != 2, (Object) "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        zzben zzben = new zzben((GoogleApiClient) this);
        if (this.zzaDF.containsKey(zzbfo.zzajR)) {
            zza(this, zzben, false);
            return zzben;
        }
        AtomicReference atomicReference = new AtomicReference();
        GoogleApiClient build = new Builder(this.mContext).addApi(zzbfo.API).addConnectionCallbacks(new zzbcr(this, atomicReference, zzben)).addOnConnectionFailedListener(new zzbcs(this, zzben)).setHandler(this.zzaDD).build();
        atomicReference.set(build);
        build.connect();
        return zzben;
    }

    public final void connect() {
        this.zzaCv.lock();
        try {
            boolean z = false;
            if (this.zzaBb >= 0) {
                if (this.zzaDJ != null) {
                    z = true;
                }
                zzbo.zza(z, (Object) "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.zzaDJ == null) {
                this.zzaDJ = Integer.valueOf(zza(this.zzaDF.values(), false));
            } else if (this.zzaDJ.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            connect(this.zzaDJ.intValue());
        } finally {
            this.zzaCv.unlock();
        }
    }

    public final void connect(int i) {
        this.zzaCv.lock();
        boolean z = true;
        if (!(i == 3 || i == 1 || i == 2)) {
            z = false;
        }
        try {
            StringBuilder stringBuilder = new StringBuilder(33);
            stringBuilder.append("Illegal sign-in mode: ");
            stringBuilder.append(i);
            zzbo.zzb(z, stringBuilder.toString());
            zzap(i);
            zzqc();
        } finally {
            this.zzaCv.unlock();
        }
    }

    public final void disconnect() {
        this.zzaCv.lock();
        try {
            this.zzaDL.release();
            if (this.zzaDz != null) {
                this.zzaDz.disconnect();
            }
            this.zzaDH.release();
            for (zzbay zzbay : this.zzaCJ) {
                zzbay.zza(null);
                zzbay.cancel();
            }
            this.zzaCJ.clear();
            if (this.zzaDz != null) {
                zzqe();
                this.zzaDy.zzrz();
            }
            this.zzaCv.unlock();
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("mContext=").println(this.mContext);
        printWriter.append(str).append("mResuming=").print(this.zzaDA);
        printWriter.append(" mWorkQueue.size()=").print(this.zzaCJ.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.zzaDL.zzaFl.size());
        if (this.zzaDz != null) {
            this.zzaDz.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @NonNull
    public final ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        this.zzaCv.lock();
        try {
            if (!isConnected() && !this.zzaDA) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            } else if (this.zzaDF.containsKey(api.zzpd())) {
                ConnectionResult connectionResult = this.zzaDz.getConnectionResult(api);
                if (connectionResult == null) {
                    ConnectionResult connectionResult2;
                    if (this.zzaDA) {
                        connectionResult2 = ConnectionResult.zzazX;
                    } else {
                        Log.w("GoogleApiClientImpl", zzqg());
                        Log.wtf("GoogleApiClientImpl", String.valueOf(api.getName()).concat(" requested in getConnectionResult is not connected but is not present in the failed  connections map"), new Exception());
                        connectionResult2 = new ConnectionResult(8, null);
                    }
                    this.zzaCv.unlock();
                    return connectionResult2;
                }
                this.zzaCv.unlock();
                return connectionResult;
            } else {
                throw new IllegalArgumentException(String.valueOf(api.getName()).concat(" was never registered with GoogleApiClient"));
            }
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Looper getLooper() {
        return this.zzrM;
    }

    public final boolean hasConnectedApi(@NonNull Api<?> api) {
        if (!isConnected()) {
            return false;
        }
        zze zze = (zze) this.zzaDF.get(api.zzpd());
        return zze != null && zze.isConnected();
    }

    public final boolean isConnected() {
        return this.zzaDz != null && this.zzaDz.isConnected();
    }

    public final boolean isConnecting() {
        return this.zzaDz != null && this.zzaDz.isConnecting();
    }

    public final boolean isConnectionCallbacksRegistered(@NonNull ConnectionCallbacks connectionCallbacks) {
        return this.zzaDy.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    public final boolean isConnectionFailedListenerRegistered(@NonNull OnConnectionFailedListener onConnectionFailedListener) {
        return this.zzaDy.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    public final void reconnect() {
        disconnect();
        connect();
    }

    public final void registerConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks) {
        this.zzaDy.registerConnectionCallbacks(connectionCallbacks);
    }

    public final void registerConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener) {
        this.zzaDy.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public final void stopAutoManage(@NonNull FragmentActivity fragmentActivity) {
        zzbdr zzbdr = new zzbdr(fragmentActivity);
        if (this.zzaBb >= 0) {
            zzbau.zza(zzbdr).zzal(this.zzaBb);
            return;
        }
        throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
    }

    public final void unregisterConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks) {
        this.zzaDy.unregisterConnectionCallbacks(connectionCallbacks);
    }

    public final void unregisterConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener) {
        this.zzaDy.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @NonNull
    public final <C extends zze> C zza(@NonNull zzc<C> zzc) {
        Object obj = (zze) this.zzaDF.get(zzc);
        zzbo.zzb(obj, (Object) "Appropriate Api was not requested.");
        return obj;
    }

    public final void zza(zzbes zzbes) {
        this.zzaCv.lock();
        try {
            if (this.zzaDK == null) {
                this.zzaDK = new HashSet();
            }
            this.zzaDK.add(zzbes);
        } finally {
            this.zzaCv.unlock();
        }
    }

    public final boolean zza(@NonNull Api<?> api) {
        return this.zzaDF.containsKey(api.zzpd());
    }

    public final boolean zza(zzbei zzbei) {
        return this.zzaDz != null && this.zzaDz.zza(zzbei);
    }

    public final void zzb(zzbes zzbes) {
        this.zzaCv.lock();
        try {
            String str;
            String str2;
            Throwable exception;
            if (this.zzaDK == null) {
                str = "GoogleApiClientImpl";
                str2 = "Attempted to remove pending transform when no transforms are registered.";
                exception = new Exception();
            } else if (this.zzaDK.remove(zzbes)) {
                if (!zzqf()) {
                    this.zzaDz.zzpE();
                }
                this.zzaCv.unlock();
            } else {
                str = "GoogleApiClientImpl";
                str2 = "Failed to remove pending transform - this may lead to memory leaks!";
                exception = new Exception();
            }
            Log.wtf(str, str2, exception);
            this.zzaCv.unlock();
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final void zzc(ConnectionResult connectionResult) {
        if (!com.google.android.gms.common.zze.zze(this.mContext, connectionResult.getErrorCode())) {
            zzqe();
        }
        if (!this.zzaDA) {
            this.zzaDy.zzk(connectionResult);
            this.zzaDy.zzrz();
        }
    }

    public final <A extends zzb, R extends Result, T extends zzbay<R, A>> T zzd(@NonNull T t) {
        zzbo.zzb(t.zzpd() != null, (Object) "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean containsKey = this.zzaDF.containsKey(t.zzpd());
        Object name = t.zzpg() != null ? t.zzpg().getName() : "the API";
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(name).length() + 65);
        stringBuilder.append("GoogleApiClient is not configured to use ");
        stringBuilder.append(name);
        stringBuilder.append(" required for this call.");
        zzbo.zzb(containsKey, stringBuilder.toString());
        this.zzaCv.lock();
        try {
            if (this.zzaDz == null) {
                this.zzaCJ.add(t);
            } else {
                t = this.zzaDz.zzd(t);
            }
            this.zzaCv.unlock();
            return t;
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final <A extends zzb, T extends zzbay<? extends Result, A>> T zze(@NonNull T t) {
        zzbo.zzb(t.zzpd() != null, (Object) "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.zzaDF.containsKey(t.zzpd());
        Object name = t.zzpg() != null ? t.zzpg().getName() : "the API";
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(name).length() + 65);
        stringBuilder.append("GoogleApiClient is not configured to use ");
        stringBuilder.append(name);
        stringBuilder.append(" required for this call.");
        zzbo.zzb(containsKey, stringBuilder.toString());
        this.zzaCv.lock();
        try {
            if (this.zzaDz == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (this.zzaDA) {
                this.zzaCJ.add(t);
                while (!this.zzaCJ.isEmpty()) {
                    zzbay zzbay = (zzbay) this.zzaCJ.remove();
                    this.zzaDL.zzb(zzbay);
                    zzbay.zzr(Status.zzaBo);
                }
            } else {
                t = this.zzaDz.zze(t);
            }
            this.zzaCv.unlock();
            return t;
        } catch (Throwable th) {
            this.zzaCv.unlock();
        }
    }

    public final void zze(int i, boolean z) {
        if (!(i != 1 || z || this.zzaDA)) {
            this.zzaDA = true;
            if (this.zzaDE == null) {
                this.zzaDE = GoogleApiAvailability.zza(this.mContext.getApplicationContext(), new zzbcv(this));
            }
            this.zzaDD.sendMessageDelayed(this.zzaDD.obtainMessage(1), this.zzaDB);
            this.zzaDD.sendMessageDelayed(this.zzaDD.obtainMessage(2), this.zzaDC);
        }
        this.zzaDL.zzqM();
        this.zzaDy.zzaA(i);
        this.zzaDy.zzrz();
        if (i == 2) {
            zzqc();
        }
    }

    public final void zzm(Bundle bundle) {
        while (!this.zzaCJ.isEmpty()) {
            zze((zzbay) this.zzaCJ.remove());
        }
        this.zzaDy.zzn(bundle);
    }

    public final <L> zzbdw<L> zzp(@NonNull L l) {
        this.zzaCv.lock();
        try {
            zzbdw<L> zza = this.zzaDH.zza(l, this.zzrM, "NO_TYPE");
            return zza;
        } finally {
            this.zzaCv.unlock();
        }
    }

    public final void zzpl() {
        if (this.zzaDz != null) {
            this.zzaDz.zzpl();
        }
    }

    /* Access modifiers changed, original: final */
    public final boolean zzqe() {
        if (!this.zzaDA) {
            return false;
        }
        this.zzaDA = false;
        this.zzaDD.removeMessages(2);
        this.zzaDD.removeMessages(1);
        if (this.zzaDE != null) {
            this.zzaDE.unregister();
            this.zzaDE = null;
        }
        return true;
    }

    /* Access modifiers changed, original: final */
    public final boolean zzqf() {
        this.zzaCv.lock();
        try {
            if (this.zzaDK == null) {
                return false;
            }
            int isEmpty = this.zzaDK.isEmpty() ^ 1;
            this.zzaCv.unlock();
            return isEmpty;
        } finally {
            this.zzaCv.unlock();
        }
    }

    /* Access modifiers changed, original: final */
    public final String zzqg() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }
}
