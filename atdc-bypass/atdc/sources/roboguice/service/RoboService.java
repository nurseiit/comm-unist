package roboguice.service;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import com.google.inject.Key;
import java.util.HashMap;
import java.util.Map;
import roboguice.RoboGuice;
import roboguice.context.event.OnConfigurationChangedEvent;
import roboguice.context.event.OnCreateEvent;
import roboguice.context.event.OnDestroyEvent;
import roboguice.context.event.OnStartEvent;
import roboguice.event.EventManager;
import roboguice.inject.RoboInjector;
import roboguice.util.RoboContext;

public abstract class RoboService extends Service implements RoboContext {
    protected EventManager eventManager;
    protected HashMap<Key<?>, Object> scopedObjects = new HashMap();

    public void onCreate() {
        RoboInjector injector = RoboGuice.getInjector(this);
        this.eventManager = (EventManager) injector.getInstance(EventManager.class);
        injector.injectMembers(this);
        super.onCreate();
        this.eventManager.fire(new OnCreateEvent(this, null));
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        int onStartCommand = super.onStartCommand(intent, i, i2);
        this.eventManager.fire(new OnStartEvent(this));
        return onStartCommand;
    }

    public void onDestroy() {
        try {
            if (this.eventManager != null) {
                this.eventManager.fire(new OnDestroyEvent(this));
            }
            try {
                RoboGuice.destroyInjector(this);
            } finally {
                super.onDestroy();
            }
        } catch (Throwable th) {
            RoboGuice.destroyInjector(this);
        } finally {
            super.onDestroy();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        Configuration configuration2 = getResources().getConfiguration();
        super.onConfigurationChanged(configuration);
        this.eventManager.fire(new OnConfigurationChangedEvent(this, configuration2, configuration));
    }

    public Map<Key<?>, Object> getScopedObjectMap() {
        return this.scopedObjects;
    }
}
