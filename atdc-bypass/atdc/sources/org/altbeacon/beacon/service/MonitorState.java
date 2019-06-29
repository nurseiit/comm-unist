package org.altbeacon.beacon.service;

import android.util.Log;
import java.util.Date;

public class MonitorState {
    public static long INSIDE_EXPIRATION_MILLIS = 10000;
    private static final String TAG = "MonitorState";
    private Callback callback;
    private boolean inside = false;
    private long lastSeenTime = 0;

    public MonitorState(Callback callback) {
        this.callback = callback;
    }

    public Callback getCallback() {
        return this.callback;
    }

    public boolean markInside() {
        this.lastSeenTime = new Date().getTime();
        if (this.inside) {
            return false;
        }
        this.inside = true;
        return true;
    }

    public boolean isNewlyOutside() {
        if (!this.inside || this.lastSeenTime <= 0 || new Date().getTime() - this.lastSeenTime <= INSIDE_EXPIRATION_MILLIS) {
            return false;
        }
        this.inside = false;
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("We are newly outside the region because the lastSeenTime of ");
        stringBuilder.append(this.lastSeenTime);
        stringBuilder.append(" was ");
        stringBuilder.append(new Date().getTime() - this.lastSeenTime);
        stringBuilder.append(" seconds ago, and that is over the expiration duration of  ");
        stringBuilder.append(INSIDE_EXPIRATION_MILLIS);
        Log.d(str, stringBuilder.toString());
        this.lastSeenTime = 0;
        return true;
    }

    public boolean isInside() {
        return this.inside && !isNewlyOutside();
    }
}
