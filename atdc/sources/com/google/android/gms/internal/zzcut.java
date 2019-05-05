package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.tagmanager.zzcn;
import java.util.Date;
import java.util.Map;

public final class zzcut implements zze {
    private final zzcn zzbHN;
    private final Bundle zzbIc;
    private final String zzbId;
    private final Date zzbIe;
    private final String zzbIf;
    private Map<String, Object> zzbIg;
    private boolean zzbIh;

    public zzcut(@Nullable String str, @Nullable Bundle bundle, String str2, Date date, boolean z, zzcn zzcn) {
        this.zzbId = str;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zzbIc = bundle;
        this.zzbIe = date;
        this.zzbIf = str2;
        this.zzbIh = z;
        this.zzbHN = zzcn;
    }

    public final long currentTimeMillis() {
        return this.zzbIe.getTime();
    }

    public final long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    public final long nanoTime() {
        return System.nanoTime();
    }

    @WorkerThread
    public final Map<String, Object> zzBh() {
        if (this.zzbIg == null) {
            try {
                this.zzbIg = this.zzbHN.zzBh();
            } catch (RemoteException e) {
                String str = "Error calling measurement proxy:";
                String valueOf = String.valueOf(e.getMessage());
                zzcvk.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        }
        return this.zzbIg;
    }

    public final String zzCk() {
        return this.zzbId;
    }

    public final Bundle zzCl() {
        return this.zzbIc;
    }

    public final String zzCm() {
        return this.zzbIf;
    }

    public final boolean zzCn() {
        return this.zzbIh;
    }

    public final void zzat(boolean z) {
        this.zzbIh = false;
    }
}
