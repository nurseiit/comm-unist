package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzauj;
import com.google.android.gms.internal.zzayo;

public abstract class Session {
    private static final zzayo zzarK = new zzayo("Session");
    private final zzu zzast;
    private final zza zzasu = new zza(this, null);

    class zza extends zzad {
        private zza() {
        }

        /* synthetic */ zza(Session session, zzae zzae) {
            this();
        }

        public final void end(boolean z) {
            Session.this.end(z);
        }

        public final long getSessionRemainingTimeMs() {
            return Session.this.getSessionRemainingTimeMs();
        }

        public final void resume(Bundle bundle) {
            Session.this.resume(bundle);
        }

        public final void start(Bundle bundle) {
            Session.this.start(bundle);
        }

        public final IObjectWrapper zznz() {
            return zzn.zzw(Session.this);
        }
    }

    protected Session(Context context, String str, String str2) {
        this.zzast = zzauj.zza(context, str, str2, this.zzasu);
    }

    public abstract void end(boolean z);

    public final String getCategory() {
        zzbo.zzcz("Must be called from the main thread.");
        try {
            return this.zzast.getCategory();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "getCategory", zzu.class.getSimpleName());
            return null;
        }
    }

    public final String getSessionId() {
        zzbo.zzcz("Must be called from the main thread.");
        try {
            return this.zzast.getSessionId();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "getSessionId", zzu.class.getSimpleName());
            return null;
        }
    }

    public long getSessionRemainingTimeMs() {
        zzbo.zzcz("Must be called from the main thread.");
        return 0;
    }

    public boolean isConnected() {
        zzbo.zzcz("Must be called from the main thread.");
        try {
            return this.zzast.isConnected();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "isConnected", zzu.class.getSimpleName());
            return false;
        }
    }

    public boolean isConnecting() {
        zzbo.zzcz("Must be called from the main thread.");
        try {
            return this.zzast.isConnecting();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "isConnecting", zzu.class.getSimpleName());
            return false;
        }
    }

    public boolean isDisconnected() {
        zzbo.zzcz("Must be called from the main thread.");
        try {
            return this.zzast.isDisconnected();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "isDisconnected", zzu.class.getSimpleName());
            return true;
        }
    }

    public boolean isDisconnecting() {
        zzbo.zzcz("Must be called from the main thread.");
        try {
            return this.zzast.isDisconnecting();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "isDisconnecting", zzu.class.getSimpleName());
            return false;
        }
    }

    public boolean isResuming() {
        zzbo.zzcz("Must be called from the main thread.");
        try {
            return this.zzast.isResuming();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "isResuming", zzu.class.getSimpleName());
            return false;
        }
    }

    public boolean isSuspended() {
        zzbo.zzcz("Must be called from the main thread.");
        try {
            return this.zzast.isSuspended();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "isSuspended", zzu.class.getSimpleName());
            return false;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void notifyFailedToResumeSession(int i) {
        try {
            this.zzast.notifyFailedToResumeSession(i);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "notifyFailedToResumeSession", zzu.class.getSimpleName());
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void notifyFailedToStartSession(int i) {
        try {
            this.zzast.notifyFailedToStartSession(i);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "notifyFailedToStartSession", zzu.class.getSimpleName());
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void notifySessionEnded(int i) {
        try {
            this.zzast.notifySessionEnded(i);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "notifySessionEnded", zzu.class.getSimpleName());
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void notifySessionResumed(boolean z) {
        try {
            this.zzast.notifySessionResumed(z);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "notifySessionResumed", zzu.class.getSimpleName());
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void notifySessionStarted(String str) {
        try {
            this.zzast.notifySessionStarted(str);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "notifySessionStarted", zzu.class.getSimpleName());
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void notifySessionSuspended(int i) {
        try {
            this.zzast.notifySessionSuspended(i);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "notifySessionSuspended", zzu.class.getSimpleName());
        }
    }

    public abstract void resume(Bundle bundle);

    public abstract void start(Bundle bundle);

    public final IObjectWrapper zznw() {
        try {
            return this.zzast.zznw();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "getWrappedObject", zzu.class.getSimpleName());
            return null;
        }
    }
}
