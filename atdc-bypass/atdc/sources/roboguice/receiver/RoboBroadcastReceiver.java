package roboguice.receiver;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import roboguice.RoboGuice;

public abstract class RoboBroadcastReceiver extends BroadcastReceiver {
    /* Access modifiers changed, original: protected */
    public void handleReceive(Context context, Intent intent) {
    }

    public final void onReceive(Context context, Intent intent) {
        RoboGuice.getOrCreateBaseApplicationInjector((Application) context.getApplicationContext()).injectMembers(this);
        handleReceive(context, intent);
    }
}
