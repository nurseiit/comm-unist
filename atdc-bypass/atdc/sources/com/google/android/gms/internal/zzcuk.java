package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.WorkerThread;

final class zzcuk implements Runnable {
    private /* synthetic */ zzcuf zzbHS;
    private final zzcut zzbHT;

    public zzcuk(zzcuf zzcuf, zzcut zzcut) {
        this.zzbHS = zzcuf;
        this.zzbHT = zzcut;
    }

    @WorkerThread
    public final void run() {
        String str;
        String valueOf;
        StringBuilder stringBuilder;
        if (this.zzbHS.mState == 2) {
            str = "Evaluating tags for event ";
            valueOf = String.valueOf(this.zzbHT.zzCk());
            zzcvk.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            this.zzbHS.zzbHP.zzb(this.zzbHT);
        } else if (this.zzbHS.mState == 1) {
            this.zzbHS.zzbHQ.add(this.zzbHT);
            str = String.valueOf(this.zzbHT.zzCk());
            stringBuilder = new StringBuilder(String.valueOf(str).length() + 30);
            stringBuilder.append("Added event ");
            stringBuilder.append(str);
            stringBuilder.append(" to pending queue.");
            zzcvk.v(stringBuilder.toString());
        } else {
            if (this.zzbHS.mState == 3) {
                str = String.valueOf(this.zzbHT.zzCk());
                stringBuilder = new StringBuilder(String.valueOf(str).length() + 61);
                stringBuilder.append("Failed to evaluate tags for event ");
                stringBuilder.append(str);
                stringBuilder.append(" (container failed to load)");
                zzcvk.v(stringBuilder.toString());
                if (this.zzbHT.zzCn()) {
                    try {
                        this.zzbHS.zzbHN.logEventInternalNoInterceptor("app", this.zzbHT.zzCk(), this.zzbHT.zzCl(), this.zzbHT.currentTimeMillis());
                        str = String.valueOf(this.zzbHT.zzCk());
                        stringBuilder = new StringBuilder(String.valueOf(str).length() + 38);
                        stringBuilder.append("Logged passthrough event ");
                        stringBuilder.append(str);
                        stringBuilder.append(" to Firebase.");
                        zzcvk.v(stringBuilder.toString());
                        return;
                    } catch (RemoteException e) {
                        zzcup.zza("Error logging event with measurement proxy:", e, this.zzbHS.mContext);
                        return;
                    }
                }
                str = "Discarded non-passthrough event ";
                valueOf = String.valueOf(this.zzbHT.zzCk());
                zzcvk.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        }
    }
}
