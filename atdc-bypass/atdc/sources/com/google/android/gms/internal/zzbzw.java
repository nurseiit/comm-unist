package com.google.android.gms.internal;

import android.os.RemoteException;

public final class zzbzw extends zzbzu<Boolean> {
    public zzbzw(int i, String str, Boolean bool) {
        super(0, str, bool, null);
    }

    private final Boolean zzb(zzcac zzcac) {
        try {
            return Boolean.valueOf(zzcac.getBooleanFlagValue(getKey(), ((Boolean) zzdI()).booleanValue(), getSource()));
        } catch (RemoteException unused) {
            return (Boolean) zzdI();
        }
    }

    public final /* synthetic */ Object zza(zzcac zzcac) {
        return zzb(zzcac);
    }
}
