package com.google.android.gms.internal;

import com.google.android.gms.analytics.Logger;

final class zzcxk implements Logger {
    zzcxk() {
    }

    public final void error(Exception exception) {
        zzcvk.zzb("", exception);
    }

    public final void error(String str) {
        zzcvk.e(str);
    }

    public final int getLogLevel() {
        zzcvk.getLogLevel();
        return 3;
    }

    public final void info(String str) {
        zzcvk.zzaS(str);
    }

    public final void setLogLevel(int i) {
        zzcvk.zzaT("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
    }

    public final void verbose(String str) {
        zzcvk.v(str);
    }

    public final void warn(String str) {
        zzcvk.zzaT(str);
    }
}
