package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.zzc;
import com.google.android.gms.common.zze;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class zzd<T extends IInterface> {
    private static String[] zzaHc = new String[]{"service_esmobile", "service_googleme"};
    private final Context mContext;
    final Handler mHandler;
    private final Object mLock;
    private final zze zzaCF;
    private int zzaGH;
    private long zzaGI;
    private long zzaGJ;
    private int zzaGK;
    private long zzaGL;
    private zzak zzaGM;
    private final zzae zzaGN;
    private final Object zzaGO;
    private zzaw zzaGP;
    protected zzj zzaGQ;
    private T zzaGR;
    private final ArrayList<zzi<?>> zzaGS;
    private zzl zzaGT;
    private int zzaGU;
    private final zzf zzaGV;
    private final zzg zzaGW;
    private final int zzaGX;
    private final String zzaGY;
    private ConnectionResult zzaGZ;
    private boolean zzaHa;
    protected AtomicInteger zzaHb;
    private final Looper zzrM;

    protected zzd(Context context, Looper looper, int i, zzf zzf, zzg zzg, String str) {
        this(context, looper, zzae.zzaC(context), zze.zzoW(), i, (zzf) zzbo.zzu(zzf), (zzg) zzbo.zzu(zzg), null);
    }

    protected zzd(Context context, Looper looper, zzae zzae, zze zze, int i, zzf zzf, zzg zzg, String str) {
        this.mLock = new Object();
        this.zzaGO = new Object();
        this.zzaGS = new ArrayList();
        this.zzaGU = 1;
        this.zzaGZ = null;
        this.zzaHa = false;
        this.zzaHb = new AtomicInteger(0);
        this.mContext = (Context) zzbo.zzb((Object) context, (Object) "Context must not be null");
        this.zzrM = (Looper) zzbo.zzb((Object) looper, (Object) "Looper must not be null");
        this.zzaGN = (zzae) zzbo.zzb((Object) zzae, (Object) "Supervisor must not be null");
        this.zzaCF = (zze) zzbo.zzb((Object) zze, (Object) "API availability must not be null");
        this.mHandler = new zzh(this, looper);
        this.zzaGX = i;
        this.zzaGV = zzf;
        this.zzaGW = zzg;
        this.zzaGY = str;
    }

    private final void zza(int i, T t) {
        boolean z = true;
        if ((i == 4 ? 1 : null) != (t != null ? 1 : null)) {
            z = false;
        }
        zzbo.zzaf(z);
        synchronized (this.mLock) {
            this.zzaGU = i;
            this.zzaGR = t;
            switch (i) {
                case 1:
                    if (this.zzaGT != null) {
                        this.zzaGN.zza(zzdb(), zzqZ(), this.zzaGT, zzra());
                        this.zzaGT = null;
                        break;
                    }
                    break;
                case 2:
                case 3:
                    String valueOf;
                    if (!(this.zzaGT == null || this.zzaGM == null)) {
                        valueOf = String.valueOf(this.zzaGM.zzrE());
                        String valueOf2 = String.valueOf(this.zzaGM.getPackageName());
                        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 70) + String.valueOf(valueOf2).length());
                        stringBuilder.append("Calling connect() while still connected, missing disconnect() for ");
                        stringBuilder.append(valueOf);
                        stringBuilder.append(" on ");
                        stringBuilder.append(valueOf2);
                        Log.e("GmsClient", stringBuilder.toString());
                        this.zzaGN.zza(this.zzaGM.zzrE(), this.zzaGM.getPackageName(), this.zzaGT, zzra());
                        this.zzaHb.incrementAndGet();
                    }
                    this.zzaGT = new zzl(this, this.zzaHb.get());
                    this.zzaGM = new zzak(zzqZ(), zzdb(), false);
                    if (!this.zzaGN.zza(new zzaf(this.zzaGM.zzrE(), this.zzaGM.getPackageName()), this.zzaGT, zzra())) {
                        valueOf = String.valueOf(this.zzaGM.zzrE());
                        String valueOf3 = String.valueOf(this.zzaGM.getPackageName());
                        StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf).length() + 34) + String.valueOf(valueOf3).length());
                        stringBuilder2.append("unable to connect to service: ");
                        stringBuilder2.append(valueOf);
                        stringBuilder2.append(" on ");
                        stringBuilder2.append(valueOf3);
                        Log.e("GmsClient", stringBuilder2.toString());
                        zza(16, null, this.zzaHb.get());
                        break;
                    }
                    break;
                case 4:
                    zza((IInterface) t);
                    break;
                default:
                    break;
            }
        }
    }

    private final boolean zza(int i, int i2, T t) {
        synchronized (this.mLock) {
            if (this.zzaGU != i) {
                return false;
            }
            zza(i2, (IInterface) t);
            return true;
        }
    }

    private final void zzaz(int i) {
        if (zzrc()) {
            i = 5;
            this.zzaHa = true;
        } else {
            i = 4;
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(i, this.zzaHb.get(), 16));
    }

    @Nullable
    private final String zzra() {
        return this.zzaGY == null ? this.mContext.getClass().getName() : this.zzaGY;
    }

    private final boolean zzrc() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzaGU == 3;
        }
        return z;
    }

    private final boolean zzri() {
        if (this.zzaHa || TextUtils.isEmpty(zzdc()) || TextUtils.isEmpty(null)) {
            return false;
        }
        try {
            Class.forName(zzdc());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public void disconnect() {
        this.zzaHb.incrementAndGet();
        synchronized (this.zzaGS) {
            int size = this.zzaGS.size();
            for (int i = 0; i < size; i++) {
                ((zzi) this.zzaGS.get(i)).removeListener();
            }
            this.zzaGS.clear();
        }
        synchronized (this.zzaGO) {
            this.zzaGP = null;
        }
        zza(1, null);
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        IInterface iInterface;
        zzaw zzaw;
        String str2;
        PrintWriter append;
        long j;
        String valueOf;
        StringBuilder stringBuilder;
        synchronized (this.mLock) {
            i = this.zzaGU;
            iInterface = this.zzaGR;
        }
        synchronized (this.zzaGO) {
            zzaw = this.zzaGP;
        }
        printWriter.append(str).append("mConnectState=");
        switch (i) {
            case 1:
                str2 = "DISCONNECTED";
                break;
            case 2:
                str2 = "REMOTE_CONNECTING";
                break;
            case 3:
                str2 = "LOCAL_CONNECTING";
                break;
            case 4:
                str2 = "CONNECTED";
                break;
            case 5:
                str2 = "DISCONNECTING";
                break;
            default:
                str2 = "UNKNOWN";
                break;
        }
        printWriter.print(str2);
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.append("null");
        } else {
            printWriter.append(zzdc()).append("@").append(Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (zzaw == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(zzaw.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.zzaGJ > 0) {
            append = printWriter.append(str).append("lastConnectedTime=");
            j = this.zzaGJ;
            valueOf = String.valueOf(simpleDateFormat.format(new Date(this.zzaGJ)));
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 21);
            stringBuilder.append(j);
            stringBuilder.append(" ");
            stringBuilder.append(valueOf);
            append.println(stringBuilder.toString());
        }
        if (this.zzaGI > 0) {
            CharSequence charSequence;
            printWriter.append(str).append("lastSuspendedCause=");
            switch (this.zzaGH) {
                case 1:
                    charSequence = "CAUSE_SERVICE_DISCONNECTED";
                    break;
                case 2:
                    charSequence = "CAUSE_NETWORK_LOST";
                    break;
                default:
                    charSequence = String.valueOf(this.zzaGH);
                    break;
            }
            printWriter.append(charSequence);
            append = printWriter.append(" lastSuspendedTime=");
            j = this.zzaGI;
            valueOf = String.valueOf(simpleDateFormat.format(new Date(this.zzaGI)));
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 21);
            stringBuilder.append(j);
            stringBuilder.append(" ");
            stringBuilder.append(valueOf);
            append.println(stringBuilder.toString());
        }
        if (this.zzaGL > 0) {
            printWriter.append(str).append("lastFailedStatus=").append(CommonStatusCodes.getStatusCodeString(this.zzaGK));
            PrintWriter append2 = printWriter.append(" lastFailedTime=");
            long j2 = this.zzaGL;
            String valueOf2 = String.valueOf(simpleDateFormat.format(new Date(this.zzaGL)));
            StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf2).length() + 21);
            stringBuilder2.append(j2);
            stringBuilder2.append(" ");
            stringBuilder2.append(valueOf2);
            append2.println(stringBuilder2.toString());
        }
    }

    public Account getAccount() {
        return null;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Looper getLooper() {
        return this.zzrM;
    }

    public final boolean isConnected() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzaGU == 4;
        }
        return z;
    }

    public final boolean isConnecting() {
        boolean z;
        synchronized (this.mLock) {
            if (this.zzaGU != 2) {
                if (this.zzaGU != 3) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    /* Access modifiers changed, original: protected */
    @CallSuper
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzaGK = connectionResult.getErrorCode();
        this.zzaGL = System.currentTimeMillis();
    }

    /* Access modifiers changed, original: protected|final */
    @CallSuper
    public final void onConnectionSuspended(int i) {
        this.zzaGH = i;
        this.zzaGI = System.currentTimeMillis();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(int i, @Nullable Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(7, i2, -1, new zzo(this, i, null)));
    }

    /* Access modifiers changed, original: protected */
    public void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, i2, -1, new zzn(this, i, iBinder, bundle)));
    }

    /* Access modifiers changed, original: protected */
    @CallSuper
    public void zza(@NonNull T t) {
        this.zzaGJ = System.currentTimeMillis();
    }

    @WorkerThread
    public final void zza(zzal zzal, Set<Scope> set) {
        Bundle zzmo = zzmo();
        zzx zzx = new zzx(this.zzaGX);
        zzx.zzaHw = this.mContext.getPackageName();
        zzx.zzaHz = zzmo;
        if (set != null) {
            zzx.zzaHy = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (zzmv()) {
            zzx.zzaHA = getAccount() != null ? getAccount() : new Account("<<default account>>", "com.google");
            if (zzal != null) {
                zzx.zzaHx = zzal.asBinder();
            }
        } else if (zzrg()) {
            zzx.zzaHA = getAccount();
        }
        zzx.zzaHB = zzrd();
        try {
            synchronized (this.zzaGO) {
                if (this.zzaGP != null) {
                    this.zzaGP.zza(new zzk(this, this.zzaHb.get()), zzx);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            zzay(1);
        } catch (SecurityException e2) {
            throw e2;
        } catch (RemoteException | RuntimeException e3) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e3);
            zza(8, null, null, this.zzaHb.get());
        }
    }

    public void zza(@NonNull zzj zzj) {
        this.zzaGQ = (zzj) zzbo.zzb((Object) zzj, (Object) "Connection progress callbacks cannot be null.");
        zza(2, null);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(@NonNull zzj zzj, int i, @Nullable PendingIntent pendingIntent) {
        this.zzaGQ = (zzj) zzbo.zzb((Object) zzj, (Object) "Connection progress callbacks cannot be null.");
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.zzaHb.get(), i, pendingIntent));
    }

    public final void zzay(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6, this.zzaHb.get(), i));
    }

    @Nullable
    public abstract T zzd(IBinder iBinder);

    @NonNull
    public abstract String zzdb();

    @NonNull
    public abstract String zzdc();

    public boolean zzmG() {
        return false;
    }

    public Intent zzmH() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    /* Access modifiers changed, original: protected */
    public Bundle zzmo() {
        return new Bundle();
    }

    public boolean zzmv() {
        return false;
    }

    public Bundle zzoC() {
        return null;
    }

    public boolean zzpe() {
        return true;
    }

    /* Access modifiers changed, original: protected */
    public String zzqZ() {
        return "com.google.android.gms";
    }

    public final void zzrb() {
        int isGooglePlayServicesAvailable = this.zzaCF.isGooglePlayServicesAvailable(this.mContext);
        if (isGooglePlayServicesAvailable != 0) {
            zza(1, null);
            zza(new zzm(this), isGooglePlayServicesAvailable, null);
            return;
        }
        zza(new zzm(this));
    }

    public zzc[] zzrd() {
        return new zzc[0];
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzre() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final T zzrf() throws DeadObjectException {
        IInterface iInterface;
        synchronized (this.mLock) {
            if (this.zzaGU == 5) {
                throw new DeadObjectException();
            }
            zzre();
            zzbo.zza(this.zzaGR != null, (Object) "Client is connected but service is null");
            iInterface = this.zzaGR;
        }
        return iInterface;
    }

    public boolean zzrg() {
        return false;
    }

    /* Access modifiers changed, original: protected */
    public Set<Scope> zzrh() {
        return Collections.EMPTY_SET;
    }
}
