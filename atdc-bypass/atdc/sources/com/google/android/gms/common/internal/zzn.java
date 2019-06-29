package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.annotation.BinderThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

public final class zzn extends zze {
    private /* synthetic */ zzd zzaHe;
    private IBinder zzaHi;

    @BinderThread
    public zzn(zzd zzd, int i, IBinder iBinder, Bundle bundle) {
        this.zzaHe = zzd;
        super(zzd, i, bundle);
        this.zzaHi = iBinder;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzj(ConnectionResult connectionResult) {
        if (this.zzaHe.zzaGW != null) {
            this.zzaHe.zzaGW.onConnectionFailed(connectionResult);
        }
        this.zzaHe.onConnectionFailed(connectionResult);
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zzrj() {
        boolean z = false;
        try {
            String interfaceDescriptor = this.zzaHi.getInterfaceDescriptor();
            if (this.zzaHe.zzdc().equals(interfaceDescriptor)) {
                IInterface zzd = this.zzaHe.zzd(this.zzaHi);
                if (zzd != null && (this.zzaHe.zza(2, 4, zzd) || this.zzaHe.zza(3, 4, zzd))) {
                    this.zzaHe.zzaGZ = null;
                    Bundle zzoC = this.zzaHe.zzoC();
                    if (this.zzaHe.zzaGV != null) {
                        this.zzaHe.zzaGV.onConnected(zzoC);
                    }
                    z = true;
                }
                return z;
            }
            String valueOf = String.valueOf(this.zzaHe.zzdc());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 34) + String.valueOf(interfaceDescriptor).length());
            stringBuilder.append("service descriptor mismatch: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" vs. ");
            stringBuilder.append(interfaceDescriptor);
            Log.e("GmsClient", stringBuilder.toString());
            return false;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
