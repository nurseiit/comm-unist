package com.google.android.gms.internal;

import android.os.RemoteException;

public final class zzbzx extends zzbzu<Integer> {
    public zzbzx(int i, String str, Integer num) {
        super(0, str, num, null);
    }

    private final Integer zzc(zzcac zzcac) {
        try {
            return Integer.valueOf(zzcac.getIntFlagValue(getKey(), ((Integer) zzdI()).intValue(), getSource()));
        } catch (RemoteException unused) {
            return (Integer) zzdI();
        }
    }

    public final /* synthetic */ Object zza(zzcac zzcac) {
        return zzc(zzcac);
    }
}
