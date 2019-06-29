package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;

public final class zzaf<T extends Session> extends zzz {
    private final SessionManagerListener<T> zzasx;
    private final Class<T> zzasy;

    public zzaf(@NonNull SessionManagerListener<T> sessionManagerListener, @NonNull Class<T> cls) {
        this.zzasx = sessionManagerListener;
        this.zzasy = cls;
    }

    public final void zzA(@NonNull IObjectWrapper iObjectWrapper) throws RemoteException {
        Session session = (Session) zzn.zzE(iObjectWrapper);
        if (this.zzasy.isInstance(session)) {
            this.zzasx.onSessionEnding((Session) this.zzasy.cast(session));
        }
    }

    public final void zza(@NonNull IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        Session session = (Session) zzn.zzE(iObjectWrapper);
        if (this.zzasy.isInstance(session)) {
            this.zzasx.onSessionResumed((Session) this.zzasy.cast(session), z);
        }
    }

    public final void zzc(@NonNull IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Session session = (Session) zzn.zzE(iObjectWrapper);
        if (this.zzasy.isInstance(session)) {
            this.zzasx.onSessionStarted((Session) this.zzasy.cast(session), str);
        }
    }

    public final void zzd(@NonNull IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Session session = (Session) zzn.zzE(iObjectWrapper);
        if (this.zzasy.isInstance(session)) {
            this.zzasx.onSessionResuming((Session) this.zzasy.cast(session), str);
        }
    }

    public final void zze(@NonNull IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) zzn.zzE(iObjectWrapper);
        if (this.zzasy.isInstance(session)) {
            this.zzasx.onSessionStartFailed((Session) this.zzasy.cast(session), i);
        }
    }

    public final void zzf(@NonNull IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) zzn.zzE(iObjectWrapper);
        if (this.zzasy.isInstance(session)) {
            this.zzasx.onSessionEnded((Session) this.zzasy.cast(session), i);
        }
    }

    public final void zzg(@NonNull IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) zzn.zzE(iObjectWrapper);
        if (this.zzasy.isInstance(session)) {
            this.zzasx.onSessionResumeFailed((Session) this.zzasy.cast(session), i);
        }
    }

    public final void zzh(@NonNull IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) zzn.zzE(iObjectWrapper);
        if (this.zzasy.isInstance(session)) {
            this.zzasx.onSessionSuspended((Session) this.zzasy.cast(session), i);
        }
    }

    public final IObjectWrapper zznn() {
        return zzn.zzw(this.zzasx);
    }

    public final void zzz(@NonNull IObjectWrapper iObjectWrapper) throws RemoteException {
        Session session = (Session) zzn.zzE(iObjectWrapper);
        if (this.zzasy.isInstance(session)) {
            this.zzasx.onSessionStarting((Session) this.zzasy.cast(session));
        }
    }
}
