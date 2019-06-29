package roboguice.context.event;

import android.content.Context;
import android.content.res.Configuration;

public class OnConfigurationChangedEvent<T extends Context> {
    protected T context;
    protected Configuration newConfig;
    protected Configuration oldConfig;

    public OnConfigurationChangedEvent(T t, Configuration configuration, Configuration configuration2) {
        this.oldConfig = configuration;
        this.newConfig = configuration2;
        this.context = t;
    }

    public Configuration getOldConfig() {
        return this.oldConfig;
    }

    public Configuration getNewConfig() {
        return this.newConfig;
    }

    public T getContext() {
        return this.context;
    }
}
