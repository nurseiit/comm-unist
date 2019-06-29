package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.WorkerThread;

final class zzcui implements Runnable {
    private /* synthetic */ zzcuf zzbHS;

    private zzcui(zzcuf zzcuf) {
        this.zzbHS = zzcuf;
    }

    /* synthetic */ zzcui(zzcuf zzcuf, zzcug zzcug) {
        this(zzcuf);
    }

    @WorkerThread
    public final void run() {
        this.zzbHS.mState = 3;
        String zzd = this.zzbHS.zzbDw;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(zzd).length() + 26);
        stringBuilder.append("Container ");
        stringBuilder.append(zzd);
        stringBuilder.append(" loading failed.");
        zzcvk.zzaT(stringBuilder.toString());
        if (this.zzbHS.zzbHQ != null) {
            for (zzcut zzcut : this.zzbHS.zzbHQ) {
                String valueOf;
                StringBuilder stringBuilder2;
                if (zzcut.zzCn()) {
                    try {
                        this.zzbHS.zzbHN.logEventInternalNoInterceptor("app", zzcut.zzCk(), zzcut.zzCl(), zzcut.currentTimeMillis());
                        valueOf = String.valueOf(zzcut.zzCk());
                        stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 50);
                        stringBuilder2.append("Logged event ");
                        stringBuilder2.append(valueOf);
                        stringBuilder2.append(" to Firebase (marked as passthrough).");
                        zzcvk.v(stringBuilder2.toString());
                    } catch (RemoteException e) {
                        zzcup.zza("Error logging event with measurement proxy:", e, this.zzbHS.mContext);
                    }
                } else {
                    valueOf = String.valueOf(zzcut.zzCk());
                    stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 45);
                    stringBuilder2.append("Discarded event ");
                    stringBuilder2.append(valueOf);
                    stringBuilder2.append(" (marked as non-passthrough).");
                    zzcvk.v(stringBuilder2.toString());
                }
            }
            this.zzbHS.zzbHQ = null;
        }
    }
}
