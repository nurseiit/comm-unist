package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbha;

public class zzp {
    private static zzp zzaAu;
    private final Context mContext;

    private zzp(Context context) {
        this.mContext = context.getApplicationContext();
    }

    static zzg zza(PackageInfo packageInfo, zzg... zzgArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        int i = 0;
        zzh zzh = new zzh(packageInfo.signatures[0].toByteArray());
        while (i < zzgArr.length) {
            if (zzgArr[i].equals(zzh)) {
                return zzgArr[i];
            }
            i++;
        }
        return null;
    }

    private static boolean zza(PackageInfo packageInfo, boolean z) {
        if (!(packageInfo == null || packageInfo.signatures == null)) {
            if (zza(packageInfo, z ? zzj.zzaAk : new zzg[]{zzj.zzaAk[0]}) != null) {
                return true;
            }
        }
        return false;
    }

    public static zzp zzax(Context context) {
        zzbo.zzu(context);
        synchronized (zzp.class) {
            if (zzaAu == null) {
                zzf.zzav(context);
                zzaAu = new zzp(context);
            }
        }
        return zzaAu;
    }

    private static boolean zzb(PackageInfo packageInfo, boolean z) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return false;
        }
        zzh zzh = new zzh(packageInfo.signatures[0].toByteArray());
        String str = packageInfo.packageName;
        boolean zzb = z ? zzf.zzb(str, zzh) : zzf.zza(str, zzh);
        if (!zzb) {
            StringBuilder stringBuilder = new StringBuilder(27);
            stringBuilder.append("Cert not in list. atk=");
            stringBuilder.append(z);
            Log.d("GoogleSignatureVerifier", stringBuilder.toString());
        }
        return zzb;
    }

    private final boolean zzct(String str) {
        try {
            PackageInfo packageInfo = zzbha.zzaP(this.mContext).getPackageInfo(str, 64);
            if (packageInfo == null) {
                return false;
            }
            if (zzo.zzaw(this.mContext)) {
                return zzb(packageInfo, true);
            }
            boolean zzb = zzb(packageInfo, false);
            if (!zzb && zzb(packageInfo, true)) {
                Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
            }
            return zzb;
        } catch (NameNotFoundException unused) {
            return false;
        }
    }

    @Deprecated
    public final boolean zza(PackageManager packageManager, int i) {
        String[] packagesForUid = zzbha.zzaP(this.mContext).getPackagesForUid(i);
        if (packagesForUid == null || packagesForUid.length == 0) {
            return false;
        }
        for (String zzct : packagesForUid) {
            if (zzct(zzct)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public final boolean zza(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo != null) {
            if (zza(packageInfo, false)) {
                return true;
            }
            if (zza(packageInfo, true)) {
                if (zzo.zzaw(this.mContext)) {
                    return true;
                }
                Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
            }
        }
        return false;
    }
}
