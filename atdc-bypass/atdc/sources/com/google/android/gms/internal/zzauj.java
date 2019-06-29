package com.google.android.gms.internal;

import android.app.Service;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.IBinder;
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
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.zzc;
import com.google.android.gms.search.SearchAuth.StatusCodes;
import java.util.Map;

public final class zzauj {
    private static final zzayo zzarK = new zzayo("CastDynamiteModule");

    public static zzd zza(Service service, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, CastMediaOptions castMediaOptions) {
        try {
            return zzan(service.getApplicationContext()).zza(zzn.zzw(service), iObjectWrapper, iObjectWrapper2, castMediaOptions);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "newMediaNotificationServiceImpl", zzaum.class.getSimpleName());
            return null;
        }
    }

    public static zzk zza(Context context, CastOptions castOptions, zzauo zzauo, Map<String, IBinder> map) {
        try {
            return zzan(context).zza(zzn.zzw(context.getApplicationContext()), castOptions, zzauo, (Map) map);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "newCastContextImpl", zzaum.class.getSimpleName());
            return null;
        }
    }

    public static zzm zza(Context context, CastOptions castOptions, IObjectWrapper iObjectWrapper, zzi zzi) {
        try {
            return zzan(context).zza(castOptions, iObjectWrapper, zzi);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "newCastSessionImpl", zzaum.class.getSimpleName());
            return null;
        }
    }

    public static zzs zza(Service service, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        try {
            return zzan(service.getApplicationContext()).zza(zzn.zzw(service), iObjectWrapper, iObjectWrapper2);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "newReconnectionServiceImpl", zzaum.class.getSimpleName());
            return null;
        }
    }

    public static zzu zza(Context context, String str, String str2, zzac zzac) {
        try {
            return zzan(context).zza(str, str2, zzac);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "newSessionImpl", zzaum.class.getSimpleName());
            return null;
        }
    }

    public static zzavj zza(Context context, AsyncTask<Uri, Long, Bitmap> asyncTask, zzavl zzavl, int i, int i2, boolean z, long j, int i3, int i4, int i5) {
        try {
            return zzan(context.getApplicationContext()).zza(zzn.zzw(asyncTask), zzavl, i, i2, z, 2097152, 5, 333, StatusCodes.AUTH_DISABLED);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "newFetchBitmapTaskImpl", zzaum.class.getSimpleName());
            return null;
        }
    }

    private static zzaum zzan(Context context) {
        try {
            IBinder zzcV = DynamiteModule.zza(context, DynamiteModule.zzaSL, "com.google.android.gms.cast.framework.dynamite").zzcV("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl");
            if (zzcV == null) {
                return null;
            }
            IInterface queryLocalInterface = zzcV.queryLocalInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
            return queryLocalInterface instanceof zzaum ? (zzaum) queryLocalInterface : new zzaun(zzcV);
        } catch (zzc e) {
            throw new RuntimeException(e);
        }
    }
}
