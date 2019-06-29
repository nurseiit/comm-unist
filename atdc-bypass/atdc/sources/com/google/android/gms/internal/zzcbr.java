package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.instantapps.PackageManagerWrapper;

public final class zzcbr implements PackageManagerWrapper {
    private static zzcbr zzbhs;
    private final boolean zzbht;
    private final Context zzqD;

    private zzcbr(Context context, boolean z) {
        this.zzqD = context;
        this.zzbht = z;
    }

    public static synchronized zzcbr zzi(Context context, boolean z) {
        zzcbr zzcbr;
        synchronized (zzcbr.class) {
            context = context.getApplicationContext();
            if (!(zzbhs != null && zzbhs.zzqD == context && zzbhs.zzbht == z)) {
                zzbhs = new zzcbr(context, z);
            }
            zzcbr = zzbhs;
        }
        return zzcbr;
    }

    public final ApplicationInfo getApplicationInfo(String str, int i) throws NameNotFoundException {
        if (this.zzbht) {
            try {
                return this.zzqD.getPackageManager().getApplicationInfo(str, i);
            } catch (NameNotFoundException unused) {
            }
        }
        zzcbp zzbf = zzcbp.zzbf(this.zzqD);
        if (zzbf != null) {
            try {
                ApplicationInfo applicationInfo = zzbf.getApplicationInfo(str, i);
                if (applicationInfo != null) {
                    return applicationInfo;
                }
            } catch (RemoteException e) {
                Log.e("InstantAppsPMW", "Error getting application info", e);
            }
        }
        throw new NameNotFoundException();
    }

    public final CharSequence getApplicationLabel(ApplicationInfo applicationInfo) {
        if (this.zzbht && this.zzqD.getPackageManager().getPackagesForUid(applicationInfo.uid) != null) {
            return this.zzqD.getPackageManager().getApplicationLabel(applicationInfo);
        }
        zzcbp zzbf = zzcbp.zzbf(this.zzqD);
        if (zzbf != null) {
            try {
                return zzbf.zzdt(applicationInfo.packageName);
            } catch (RemoteException e) {
                Log.e("InstantAppsPMW", "Error getting application label", e);
            }
        }
        return null;
    }

    public final ComponentName getCallingActivity(Activity activity) {
        return new zzcbk(activity).getCallingActivity();
    }

    public final String getCallingPackage(Activity activity) {
        return new zzcbk(activity).getCallingPackage();
    }

    public final PackageInfo getPackageInfo(String str, int i) throws NameNotFoundException {
        if (this.zzbht) {
            try {
                return this.zzqD.getPackageManager().getPackageInfo(str, i);
            } catch (NameNotFoundException unused) {
            }
        }
        zzcbp zzbf = zzcbp.zzbf(this.zzqD);
        if (zzbf != null) {
            try {
                PackageInfo packageInfo = zzbf.getPackageInfo(str, i);
                if (packageInfo != null) {
                    return packageInfo;
                }
            } catch (RemoteException e) {
                Log.e("InstantAppsPMW", "Error getting package info", e);
            }
        }
        throw new NameNotFoundException();
    }

    public final String[] getPackagesForUid(int i) {
        if (this.zzbht) {
            String[] packagesForUid = this.zzqD.getPackageManager().getPackagesForUid(i);
            if (packagesForUid != null) {
                return packagesForUid;
            }
        }
        zzcbp zzbf = zzcbp.zzbf(this.zzqD);
        if (zzbf != null) {
            try {
                if (zzbf.zzbi(i) == null) {
                    return null;
                }
                return new String[]{zzbf.zzbi(i)};
            } catch (RemoteException e) {
                Log.e("InstantAppsPMW", "Error getting app package for UID", e);
            }
        }
        return null;
    }

    public final boolean isInstantApp() {
        return isInstantApp(this.zzqD.getPackageName());
    }

    public final boolean isInstantApp(int i) {
        if (Process.myUid() == i) {
            return zzbgy.zzaN(this.zzqD);
        }
        zzcbp zzbf = zzcbp.zzbf(this.zzqD);
        if (zzbf != null) {
            try {
                return zzbf.zzbi(i) != null;
            } catch (RemoteException e) {
                Log.e("InstantAppsPMW", "Error checking if app is instant app", e);
            }
        }
        return false;
    }

    public final boolean isInstantApp(String str) {
        zzcbp zzbf = zzcbp.zzbf(this.zzqD);
        if (zzbf != null) {
            try {
                return zzbf.isInstantApp(str);
            } catch (RemoteException e) {
                Log.e("InstantAppsPMW", "Error checking if app is instant app", e);
            }
        }
        return false;
    }
}
