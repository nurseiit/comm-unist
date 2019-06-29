package org.altbeacon.beacon.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;

public class Callback {
    private String TAG = "Callback";
    private Intent intent;
    private Messenger messenger;

    public Callback(String str) {
        if (str != null) {
            this.intent = new Intent();
            this.intent.setComponent(new ComponentName(str, "org.altbeacon.beacon.BeaconIntentProcessor"));
        }
    }

    public Intent getIntent() {
        return this.intent;
    }

    public void setIntent(Intent intent) {
        this.intent = intent;
    }

    public boolean call(Context context, String str, Parcelable parcelable) {
        if (this.intent == null) {
            return false;
        }
        String str2 = this.TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("attempting callback via intent: ");
        stringBuilder.append(this.intent.getComponent());
        Log.d(str2, stringBuilder.toString());
        this.intent.putExtra(str, parcelable);
        context.startService(this.intent);
        return true;
    }
}
