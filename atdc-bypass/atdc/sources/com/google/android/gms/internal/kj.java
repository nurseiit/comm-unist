package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import android.support.annotation.MainThread;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider.OnVerificationStateChangedCallbacks;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

abstract class kj<SuccessT, CallbackT> {
    private boolean zzbMh;
    protected FirebaseApp zzbVZ;
    protected final int zzbWJ;
    protected final kl zzbWK = new kl(this);
    protected FirebaseUser zzbWL;
    protected kc zzbWM;
    protected CallbackT zzbWN;
    private lw zzbWO;
    protected ki<SuccessT> zzbWP;
    protected final List<OnVerificationStateChangedCallbacks> zzbWQ = new ArrayList();
    private Activity zzbWR;
    protected Executor zzbWS;
    protected kx zzbWT;
    protected kv zzbWU;
    protected kt zzbWV;
    protected ld zzbWW;
    protected String zzbWX;
    protected PhoneAuthCredential zzbWY;
    boolean zzbWZ;
    protected String zzbWn;
    private SuccessT zzbXa;
    private Status zzbXb;

    static class zza extends zzbds {
        private List<OnVerificationStateChangedCallbacks> zzbXc;

        private zza(zzbdt zzbdt, List<OnVerificationStateChangedCallbacks> list) {
            super(zzbdt);
            this.zzaEG.zza("PhoneAuthActivityStopCallback", (zzbds) this);
            this.zzbXc = list;
        }

        public static void zza(Activity activity, List<OnVerificationStateChangedCallbacks> list) {
            zzbdt zzn = zzbds.zzn(activity);
            if (((zza) zzn.zza("PhoneAuthActivityStopCallback", zza.class)) == null) {
                zza zza = new zza(zzn, list);
            }
        }

        @MainThread
        public final void onStop() {
            synchronized (this.zzbXc) {
                this.zzbXc.clear();
            }
        }
    }

    public kj(int i) {
        this.zzbWJ = i;
    }

    private final void zzEQ() {
        zzEL();
        zzbo.zza(this.zzbMh, (Object) "no success or failure set on method implementation");
    }

    private final void zzM(Status status) {
        if (this.zzbWO != null) {
            this.zzbWO.onError(status);
        }
    }

    public abstract void dispatch() throws RemoteException;

    public abstract void zzEL();

    public final void zzL(Status status) {
        this.zzbMh = true;
        this.zzbWZ = false;
        this.zzbXb = status;
        this.zzbWP.zza(null, status);
    }

    public final kj<SuccessT, CallbackT> zzU(CallbackT callbackT) {
        this.zzbWN = zzbo.zzb((Object) callbackT, (Object) "external callback cannot be null");
        return this;
    }

    public final void zzV(SuccessT successT) {
        this.zzbMh = true;
        this.zzbWZ = true;
        this.zzbXa = successT;
        this.zzbWP.zza(successT, null);
    }

    public final kj<SuccessT, CallbackT> zza(lw lwVar) {
        this.zzbWO = (lw) zzbo.zzb((Object) lwVar, (Object) "external failure callback cannot be null");
        return this;
    }

    public final kj<SuccessT, CallbackT> zza(OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Activity activity, Executor executor) {
        synchronized (this.zzbWQ) {
            this.zzbWQ.add((OnVerificationStateChangedCallbacks) zzbo.zzu(onVerificationStateChangedCallbacks));
        }
        this.zzbWR = activity;
        if (this.zzbWR != null) {
            zza.zza(activity, this.zzbWQ);
        }
        this.zzbWS = (Executor) zzbo.zzu(executor);
        return this;
    }

    public final kj<SuccessT, CallbackT> zzc(FirebaseApp firebaseApp) {
        this.zzbVZ = (FirebaseApp) zzbo.zzb((Object) firebaseApp, (Object) "firebaseApp cannot be null");
        return this;
    }

    public final kj<SuccessT, CallbackT> zzf(FirebaseUser firebaseUser) {
        this.zzbWL = (FirebaseUser) zzbo.zzb((Object) firebaseUser, (Object) "firebaseUser cannot be null");
        return this;
    }
}
