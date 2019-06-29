package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzbo;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class zzbau extends zzbba {
    private final SparseArray<zza> zzaBB = new SparseArray();

    class zza implements OnConnectionFailedListener {
        public final int zzaBC;
        public final GoogleApiClient zzaBD;
        public final OnConnectionFailedListener zzaBE;

        public zza(int i, GoogleApiClient googleApiClient, OnConnectionFailedListener onConnectionFailedListener) {
            this.zzaBC = i;
            this.zzaBD = googleApiClient;
            this.zzaBE = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 27);
            stringBuilder.append("beginFailureResolution for ");
            stringBuilder.append(valueOf);
            Log.d("AutoManageHelper", stringBuilder.toString());
            zzbau.this.zzb(connectionResult, this.zzaBC);
        }
    }

    private zzbau(zzbdt zzbdt) {
        super(zzbdt);
        this.zzaEG.zza("AutoManageHelper", (zzbds) this);
    }

    public static zzbau zza(zzbdr zzbdr) {
        zzbdt zzb = zzbds.zzb(zzbdr);
        zzbau zzbau = (zzbau) zzb.zza("AutoManageHelper", zzbau.class);
        return zzbau != null ? zzbau : new zzbau(zzb);
    }

    @Nullable
    private final zza zzam(int i) {
        return this.zzaBB.size() <= i ? null : (zza) this.zzaBB.get(this.zzaBB.keyAt(i));
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.zzaBB.size(); i++) {
            zza zzam = zzam(i);
            if (zzam != null) {
                printWriter.append(str).append("GoogleApiClient #").print(zzam.zzaBC);
                printWriter.println(":");
                zzam.zzaBD.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    public final void onStart() {
        super.onStart();
        boolean z = this.mStarted;
        String valueOf = String.valueOf(this.zzaBB);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 14);
        stringBuilder.append("onStart ");
        stringBuilder.append(z);
        stringBuilder.append(" ");
        stringBuilder.append(valueOf);
        Log.d("AutoManageHelper", stringBuilder.toString());
        if (this.zzaBN.get() == null) {
            for (int i = 0; i < this.zzaBB.size(); i++) {
                zza zzam = zzam(i);
                if (zzam != null) {
                    zzam.zzaBD.connect();
                }
            }
        }
    }

    public final void onStop() {
        super.onStop();
        for (int i = 0; i < this.zzaBB.size(); i++) {
            zza zzam = zzam(i);
            if (zzam != null) {
                zzam.zzaBD.disconnect();
            }
        }
    }

    public final void zza(int i, GoogleApiClient googleApiClient, OnConnectionFailedListener onConnectionFailedListener) {
        zzbo.zzb((Object) googleApiClient, (Object) "GoogleApiClient instance cannot be null");
        boolean z = this.zzaBB.indexOfKey(i) < 0;
        StringBuilder stringBuilder = new StringBuilder(54);
        stringBuilder.append("Already managing a GoogleApiClient with id ");
        stringBuilder.append(i);
        zzbo.zza(z, stringBuilder.toString());
        zzbbb zzbbb = (zzbbb) this.zzaBN.get();
        boolean z2 = this.mStarted;
        String valueOf = String.valueOf(zzbbb);
        StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 49);
        stringBuilder2.append("starting AutoManage for client ");
        stringBuilder2.append(i);
        stringBuilder2.append(" ");
        stringBuilder2.append(z2);
        stringBuilder2.append(" ");
        stringBuilder2.append(valueOf);
        Log.d("AutoManageHelper", stringBuilder2.toString());
        this.zzaBB.put(i, new zza(i, googleApiClient, onConnectionFailedListener));
        if (this.mStarted && zzbbb == null) {
            String valueOf2 = String.valueOf(googleApiClient);
            StringBuilder stringBuilder3 = new StringBuilder(String.valueOf(valueOf2).length() + 11);
            stringBuilder3.append("connecting ");
            stringBuilder3.append(valueOf2);
            Log.d("AutoManageHelper", stringBuilder3.toString());
            googleApiClient.connect();
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        zza zza = (zza) this.zzaBB.get(i);
        if (zza != null) {
            zzal(i);
            OnConnectionFailedListener onConnectionFailedListener = zza.zzaBE;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    public final void zzal(int i) {
        zza zza = (zza) this.zzaBB.get(i);
        this.zzaBB.remove(i);
        if (zza != null) {
            zza.zzaBD.unregisterConnectionFailedListener(zza);
            zza.zzaBD.disconnect();
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzps() {
        for (int i = 0; i < this.zzaBB.size(); i++) {
            zza zzam = zzam(i);
            if (zzam != null) {
                zzam.zzaBD.connect();
            }
        }
    }
}
