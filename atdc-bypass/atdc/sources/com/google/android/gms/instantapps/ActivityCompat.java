package com.google.android.gms.instantapps;

import android.content.ComponentName;

public interface ActivityCompat {
    ComponentName getCallingActivity();

    String getCallingPackage();
}
