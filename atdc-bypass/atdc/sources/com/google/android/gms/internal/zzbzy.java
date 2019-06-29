package com.google.android.gms.internal;

import android.os.RemoteException;

public final class zzbzy extends zzbzu<Long> {
    public zzbzy(int i, String str, Long l) {
        super(0, str, l, null);
    }

    private final Long zzd(zzcac zzcac) {
        try {
            return Long.valueOf(zzcac.getLongFlagValue(getKey(), ((Long) zzdI()).longValue(), getSource()));
        } catch (RemoteException unused) {
            return (Long) zzdI();
        }
    }

    public final /* synthetic */ Object zza(zzcac zzcac) {
        return zzd(zzcac);
    }
}
