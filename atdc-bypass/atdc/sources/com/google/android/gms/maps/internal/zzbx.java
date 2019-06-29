package com.google.android.gms.maps.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class zzbx {
    private static Context zzbmZ;
    private static zze zzbna;

    private static <T> T zza(ClassLoader classLoader, String str) {
        try {
            return zzd(((ClassLoader) zzbo.zzu(classLoader)).loadClass(str));
        } catch (ClassNotFoundException unused) {
            String str2 = "Unable to find dynamic class ";
            str = String.valueOf(str);
            throw new IllegalStateException(str.length() != 0 ? str2.concat(str) : new String(str2));
        }
    }

    public static zze zzbh(Context context) throws GooglePlayServicesNotAvailableException {
        zzbo.zzu(context);
        if (zzbna != null) {
            return zzbna;
        }
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        if (isGooglePlayServicesAvailable != 0) {
            throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
        }
        zze zze;
        Log.i(zzbx.class.getSimpleName(), "Making Creator dynamically");
        IBinder iBinder = (IBinder) zza(zzbi(context).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl");
        if (iBinder == null) {
            zze = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
            zze = queryLocalInterface instanceof zze ? (zze) queryLocalInterface : new zzf(iBinder);
        }
        zzbna = zze;
        try {
            zzbna.zzi(zzn.zzw(zzbi(context).getResources()), GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            return zzbna;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    private static Context zzbi(Context context) {
        if (zzbmZ != null) {
            return zzbmZ;
        }
        context = GooglePlayServicesUtil.getRemoteContext(context);
        zzbmZ = context;
        return context;
    }

    private static <T> T zzd(Class<?> cls) {
        String str;
        String valueOf;
        try {
            return cls.newInstance();
        } catch (InstantiationException unused) {
            str = "Unable to instantiate the dynamic class ";
            valueOf = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        } catch (IllegalAccessException unused2) {
            str = "Unable to call the default constructor of ";
            valueOf = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }
}
