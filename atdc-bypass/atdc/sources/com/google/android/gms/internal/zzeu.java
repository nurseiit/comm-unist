package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;

@zzzn
public final class zzeu {
    private final zzey zzsh;

    public zzeu(String str, Context context, boolean z) {
        this.zzsh = zzex.zzb(str, context, false);
    }

    public final void zza(MotionEvent motionEvent) throws RemoteException {
        this.zzsh.zzd(zzn.zzw(motionEvent));
    }

    public final Uri zzb(Uri uri, Context context) throws zzev, RemoteException {
        IObjectWrapper zza = this.zzsh.zza(zzn.zzw(uri), zzn.zzw(context));
        if (zza != null) {
            return (Uri) zzn.zzE(zza);
        }
        throw new zzev();
    }

    public final Uri zzc(Uri uri, Context context) throws zzev, RemoteException {
        IObjectWrapper zzb = this.zzsh.zzb(zzn.zzw(uri), zzn.zzw(context));
        if (zzb != null) {
            return (Uri) zzn.zzE(zzb);
        }
        throw new zzev();
    }
}
