package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;
import java.util.List;

public final class zzcsn extends zzz<zzcry> {
    private final Context mContext;

    public zzcsn(Context context, Looper looper, zzq zzq, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 45, zzq, connectionCallbacks, onConnectionFailedListener);
        this.mContext = context;
    }

    private final String zzeH(String str) {
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(this.mContext.getPackageName(), 128);
            if (applicationInfo == null) {
                return null;
            }
            Bundle bundle = applicationInfo.metaData;
            return bundle == null ? null : (String) bundle.get(str);
        } catch (NameNotFoundException unused) {
            return null;
        }
    }

    public final void zza(zzcrw zzcrw, List<Integer> list, int i, String str, String str2) throws RemoteException {
        if (str2 == null) {
            str2 = zzeH("com.google.android.safetynet.API_KEY");
        }
        String str3 = str2;
        int[] iArr = new int[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            iArr[i2] = ((Integer) list.get(i2)).intValue();
        }
        ((zzcry) zzrf()).zza(zzcrw, str3, iArr, i, str);
    }

    public final void zzb(zzcrw zzcrw, byte[] bArr, String str) throws RemoteException {
        if (TextUtils.isEmpty(str)) {
            str = zzeH("com.google.android.safetynet.ATTEST_API_KEY");
        }
        ((zzcry) zzrf()).zza(zzcrw, bArr, str);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.safetynet.internal.ISafetyNetService");
        return queryLocalInterface instanceof zzcry ? (zzcry) queryLocalInterface : new zzcrz(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.safetynet.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.safetynet.internal.ISafetyNetService";
    }
}
