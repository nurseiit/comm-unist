package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.analytics.Logger;

final class zzanl implements Logger {
    private boolean zzadH;
    private int zzagX = 2;

    zzanl() {
    }

    public final void error(Exception exception) {
    }

    public final void error(String str) {
    }

    public final int getLogLevel() {
        return this.zzagX;
    }

    public final void info(String str) {
    }

    public final void setLogLevel(int i) {
        this.zzagX = i;
        if (!this.zzadH) {
            String str = (String) zzans.zzahg.get();
            String str2 = (String) zzans.zzahg.get();
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str2).length() + 91);
            stringBuilder.append("Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.");
            stringBuilder.append(str2);
            stringBuilder.append(" DEBUG");
            Log.i(str, stringBuilder.toString());
            this.zzadH = true;
        }
    }

    public final void verbose(String str) {
    }

    public final void warn(String str) {
    }
}
