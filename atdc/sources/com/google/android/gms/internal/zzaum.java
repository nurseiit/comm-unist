package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.zzd;
import com.google.android.gms.cast.framework.zzac;
import com.google.android.gms.cast.framework.zzi;
import com.google.android.gms.cast.framework.zzk;
import com.google.android.gms.cast.framework.zzm;
import com.google.android.gms.cast.framework.zzs;
import com.google.android.gms.cast.framework.zzu;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

public interface zzaum extends IInterface {
    zzd zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, CastMediaOptions castMediaOptions) throws RemoteException;

    zzk zza(IObjectWrapper iObjectWrapper, CastOptions castOptions, zzauo zzauo, Map map) throws RemoteException;

    zzm zza(CastOptions castOptions, IObjectWrapper iObjectWrapper, zzi zzi) throws RemoteException;

    zzs zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException;

    zzu zza(String str, String str2, zzac zzac) throws RemoteException;

    zzavj zza(IObjectWrapper iObjectWrapper, zzavl zzavl, int i, int i2, boolean z, long j, int i3, int i4, int i5) throws RemoteException;
}
