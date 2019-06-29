package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;

public final class zzgg {
    private Context mContext;
    private GoogleAnalytics zzadB;
    private Tracker zzadz;

    public zzgg(Context context) {
        this.mContext = context;
    }

    private final synchronized void zzfw(String str) {
        if (this.zzadB == null) {
            this.zzadB = GoogleAnalytics.getInstance(this.mContext);
            this.zzadB.setLogger(new zzgh());
            this.zzadz = this.zzadB.newTracker(str);
        }
    }

    public final Tracker zzfv(String str) {
        zzfw(str);
        return this.zzadz;
    }
}
