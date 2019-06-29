package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.tagmanager.zzce;
import com.google.android.gms.tagmanager.zzcn;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public final class zzcxa extends zzcvh {
    private final Context mContext;
    private final ExecutorService zzbHL;
    private final zzcn zzbHN;
    private final Map<String, zzcuf> zzbJE;
    private final zzcun zzbJF;

    private zzcxa(Context context, zzcn zzcn, zzcun zzcun, ExecutorService executorService) {
        this.zzbJE = new HashMap(1);
        zzbo.zzu(zzcn);
        this.zzbHN = zzcn;
        this.zzbJF = zzcun;
        this.zzbHL = executorService;
        this.mContext = context;
    }

    public zzcxa(Context context, zzcn zzcn, zzce zzce) {
        this(context, zzcn, new zzcun(context, zzcn, zzce), zza.zzbx(context));
    }

    public final void dispatch() {
        this.zzbHL.execute(new zzcxd(this));
    }

    public final void zzCr() throws RemoteException {
        this.zzbJE.clear();
    }

    public final void zza(String str, Bundle bundle, String str2, long j, boolean z) throws RemoteException {
        this.zzbHL.execute(new zzcxc(this, new zzcut(str, bundle, str2, new Date(j), z, this.zzbHN)));
    }

    public final void zza(String str, @Nullable String str2, @Nullable String str3, @Nullable zzcvd zzcvd) throws RemoteException {
        this.zzbHL.execute(new zzcxb(this, str, str2, str3, zzcvd));
    }

    public final void zzn(String str, @Nullable String str2, @Nullable String str3) throws RemoteException {
        zza(str, str2, str3, null);
    }
}
