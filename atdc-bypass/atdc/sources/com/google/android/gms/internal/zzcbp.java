package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.util.Log;

public final class zzcbp {
    private static zzcbp zzbhq;
    private final Context mContext;

    private zzcbp(Context context) {
        this.mContext = context;
    }

    @Nullable
    public static synchronized zzcbp zzbf(Context context) {
        zzcbp zzcbp;
        synchronized (zzcbp.class) {
            if (zzbhq == null) {
                context = context.getApplicationContext();
                zzcbp zzcbp2 = null;
                if ((VERSION.SDK_INT >= 16 ? 1 : null) != null) {
                    if (zzcbs.zzbg(context)) {
                        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(zzcbq.zzbhr.getAuthority(), 0);
                        if (resolveContentProvider != null) {
                            if (resolveContentProvider.packageName.equals("com.google.android.gms")) {
                                zzcbp2 = new zzcbp(context);
                            } else {
                                String valueOf = String.valueOf(resolveContentProvider.packageName);
                                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 85);
                                stringBuilder.append("Package ");
                                stringBuilder.append(valueOf);
                                stringBuilder.append(" is invalid for instant apps content provider; instant apps will be disabled.");
                                Log.e("IAMetadataClient", stringBuilder.toString());
                            }
                        }
                    }
                }
                zzbhq = zzcbp2;
            }
            zzcbp = zzbhq;
        }
        return zzcbp;
    }

    @TargetApi(16)
    private final Bundle zzg(String str, Bundle bundle) throws RemoteException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Bundle call = this.mContext.getContentResolver().call(zzcbq.zzbhr, str, null, bundle);
            if (call != null) {
                return call;
            }
            throw new RemoteException();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final ApplicationInfo getApplicationInfo(String str, int i) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("packageName", str);
        bundle.putInt("flags", i);
        return (ApplicationInfo) zzg("getWHApplicationInfo", bundle).getParcelable("result");
    }

    public final PackageInfo getPackageInfo(String str, int i) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("packageName", str);
        bundle.putInt("flags", i);
        return (PackageInfo) zzg("getWHPackageInfo", bundle).getParcelable("result");
    }

    public final boolean isInstantApp(String str) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("packageName", str);
        return zzg("isInstantApp", bundle).getBoolean("result");
    }

    public final String zzbi(int i) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putInt("uid", i);
        return zzg("getAppPackageForUid", bundle).getString("result");
    }

    public final String zzdt(String str) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("packageName", str);
        return zzg("getApplicationLabel", bundle).getString("result");
    }

    public final ComponentName zzdu(String str) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("shadowActivity", str);
        return (ComponentName) zzg("getCallingActivity", bundle).getParcelable("result");
    }
}
