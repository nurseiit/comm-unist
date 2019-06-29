package com.google.android.gms.tagmanager;

import com.google.android.gms.analytics.Logger;

final class zzgh implements Logger {
    zzgh() {
    }

    public final void error(Exception exception) {
        zzdj.zzb("", exception);
    }

    public final void error(String str) {
        zzdj.e(str);
    }

    public final int getLogLevel() {
        switch (zzdj.zzbFq) {
            case 2:
                return 0;
            case 3:
            case 4:
                return 1;
            case 5:
                return 2;
            default:
                return 3;
        }
    }

    public final void info(String str) {
        zzdj.zzaS(str);
    }

    public final void setLogLevel(int i) {
        zzdj.zzaT("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
    }

    public final void verbose(String str) {
        zzdj.v(str);
    }

    public final void warn(String str) {
        zzdj.zzaT(str);
    }
}
