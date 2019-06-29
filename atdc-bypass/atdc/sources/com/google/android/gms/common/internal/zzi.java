package com.google.android.gms.common.internal;

import android.util.Log;

public abstract class zzi<TListener> {
    private TListener mListener;
    private /* synthetic */ zzd zzaHe;
    private boolean zzaHf = false;

    public zzi(zzd zzd, TListener tListener) {
        this.zzaHe = zzd;
        this.mListener = tListener;
    }

    public final void removeListener() {
        synchronized (this) {
            this.mListener = null;
        }
    }

    public final void unregister() {
        removeListener();
        synchronized (this.zzaHe.zzaGS) {
            this.zzaHe.zzaGS.remove(this);
        }
    }

    public final void zzrk() {
        Object obj;
        synchronized (this) {
            obj = this.mListener;
            if (this.zzaHf) {
                String valueOf = String.valueOf(this);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 47);
                stringBuilder.append("Callback proxy ");
                stringBuilder.append(valueOf);
                stringBuilder.append(" being reused. This is not safe.");
                Log.w("GmsClient", stringBuilder.toString());
            }
        }
        if (obj != null) {
            try {
                zzs(obj);
            } catch (RuntimeException e) {
                throw e;
            }
        }
        synchronized (this) {
            this.zzaHf = true;
        }
        unregister();
    }

    public abstract void zzs(TListener tListener);
}
