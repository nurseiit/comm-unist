package com.google.android.gms.instantapps;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;

public interface PackageManagerCompat {
    ApplicationInfo getApplicationInfo(String str, int i) throws NameNotFoundException;

    CharSequence getApplicationLabel(ApplicationInfo applicationInfo);

    PackageInfo getPackageInfo(String str, int i) throws NameNotFoundException;

    String[] getPackagesForUid(int i);

    boolean isInstantApp();

    boolean isInstantApp(String str);
}
