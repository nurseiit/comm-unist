package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

public final class zzaot extends zzamh {
    private boolean zzadF;
    private String zzaeH;
    private String zzaeI;
    private int zzagX;
    protected int zzahZ;
    protected boolean zzaiP;
    private boolean zzaiQ;

    public zzaot(zzamj zzamj) {
        super(zzamj);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
        ApplicationInfo applicationInfo;
        Context context = getContext();
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 129);
        } catch (NameNotFoundException e) {
            zzd("PackageManager doesn't know about the app package", e);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            zzbr("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle != null) {
            int i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource");
            if (i > 0) {
                zzanw zzanw = (zzanw) new zzanu(zzkp()).zzP(i);
                if (zzanw != null) {
                    String str;
                    int i2;
                    zzbo("Loading global XML config values");
                    boolean z = false;
                    if ((zzanw.zzaeH != null ? 1 : null) != null) {
                        str = zzanw.zzaeH;
                        this.zzaeH = str;
                        zzb("XML config - app name", str);
                    }
                    if ((zzanw.zzaeI != null ? 1 : null) != null) {
                        str = zzanw.zzaeI;
                        this.zzaeI = str;
                        zzb("XML config - app version", str);
                    }
                    if ((zzanw.zzahY != null ? 1 : null) != null) {
                        str = zzanw.zzahY.toLowerCase();
                        i2 = "verbose".equals(str) ? 0 : "info".equals(str) ? 1 : "warning".equals(str) ? 2 : MediaRouteProviderProtocol.SERVICE_DATA_ERROR.equals(str) ? 3 : -1;
                        if (i2 >= 0) {
                            this.zzagX = i2;
                            zza("XML config - log level", Integer.valueOf(i2));
                        }
                    }
                    if ((zzanw.zzahZ >= 0 ? 1 : null) != null) {
                        i2 = zzanw.zzahZ;
                        this.zzahZ = i2;
                        this.zzaiP = true;
                        zzb("XML config - dispatch period (sec)", Integer.valueOf(i2));
                    }
                    if (zzanw.zzaia != -1) {
                        if (zzanw.zzaia == 1) {
                            z = true;
                        }
                        this.zzadF = z;
                        this.zzaiQ = true;
                        zzb("XML config - dry run", Boolean.valueOf(z));
                    }
                }
            }
        }
    }

    public final String zzjG() {
        zzkD();
        return this.zzaeH;
    }

    public final String zzjH() {
        zzkD();
        return this.zzaeI;
    }

    public final boolean zzmg() {
        zzkD();
        return false;
    }

    public final boolean zzmh() {
        zzkD();
        return this.zzaiQ;
    }

    public final boolean zzmi() {
        zzkD();
        return this.zzadF;
    }
}
