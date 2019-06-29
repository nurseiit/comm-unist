package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class zzcvr implements OnClickListener {
    private /* synthetic */ zzcvq zzbIC;

    zzcvr(zzcvq zzcvq) {
        this.zzbIC = zzcvq;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        String packageName = this.zzbIC.zzapC.getPackageName();
        Intent launchIntentForPackage = this.zzbIC.zzapC.getPackageManager().getLaunchIntentForPackage(packageName);
        if (launchIntentForPackage != null) {
            String str = "Invoke the launch activity for package name: ";
            packageName = String.valueOf(packageName);
            zzcvk.zzaS(packageName.length() != 0 ? str.concat(packageName) : new String(str));
            this.zzbIC.zzapC.startActivity(launchIntentForPackage);
            return;
        }
        String str2 = "No launch activity found for package name: ";
        packageName = String.valueOf(packageName);
        zzcvk.zzaT(packageName.length() != 0 ? str2.concat(packageName) : new String(str2));
    }
}
