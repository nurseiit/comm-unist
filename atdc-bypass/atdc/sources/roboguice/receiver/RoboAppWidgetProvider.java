package roboguice.receiver;

import android.app.Application;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import roboguice.RoboGuice;

public abstract class RoboAppWidgetProvider extends AppWidgetProvider {
    public void onHandleUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
    }

    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        RoboGuice.getOrCreateBaseApplicationInjector((Application) context.getApplicationContext()).injectMembers(this);
        onHandleUpdate(context, appWidgetManager, iArr);
    }
}
