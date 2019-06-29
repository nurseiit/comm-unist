package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.zzc;

public abstract class fb<T> {
    private final Context mContext;
    private final Object mLock = new Object();
    private final String mTag;
    private boolean zzbNL = false;
    private T zzbNM;

    public fb(Context context, String str) {
        this.mContext = context;
        this.mTag = str;
    }

    public final boolean isOperational() {
        return zzDR() != null;
    }

    public abstract void zzDO() throws RemoteException;

    public final void zzDQ() {
        synchronized (this.mLock) {
            if (this.zzbNM == null) {
                return;
            }
            try {
                zzDO();
            } catch (RemoteException e) {
                Log.e(this.mTag, "Could not finalize native handle", e);
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final T zzDR() {
        synchronized (this.mLock) {
            Object obj;
            if (this.zzbNM != null) {
                obj = this.zzbNM;
                return obj;
            }
            try {
                this.zzbNM = zza(DynamiteModule.zza(this.mContext, DynamiteModule.zzaSO, "com.google.android.gms.vision.dynamite"), this.mContext);
            } catch (RemoteException | zzc e) {
                Log.e(this.mTag, "Error creating remote native handle", e);
            }
            if (!this.zzbNL && this.zzbNM == null) {
                Log.w(this.mTag, "Native handle not yet available. Reverting to no-op handle.");
                this.zzbNL = true;
            } else if (this.zzbNL && this.zzbNM != null) {
                Log.w(this.mTag, "Native handle is now available.");
            }
            obj = this.zzbNM;
            return obj;
        }
    }

    public abstract T zza(DynamiteModule dynamiteModule, Context context) throws RemoteException, zzc;
}
