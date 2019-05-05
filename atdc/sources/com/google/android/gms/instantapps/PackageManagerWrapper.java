package com.google.android.gms.instantapps;

import android.app.Activity;
import android.content.ComponentName;

@Deprecated
public interface PackageManagerWrapper extends PackageManagerCompat {
    @Deprecated
    ComponentName getCallingActivity(Activity activity);

    @Deprecated
    String getCallingPackage(Activity activity);

    @Deprecated
    boolean isInstantApp(int i);
}
