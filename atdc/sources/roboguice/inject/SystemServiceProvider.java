package roboguice.inject;

import android.app.Application;
import com.google.inject.Provider;

public class SystemServiceProvider<T> implements Provider<T> {
    protected Application application;
    protected String serviceName;

    public SystemServiceProvider(Application application, String str) {
        this.serviceName = str;
        this.application = application;
    }

    public T get() {
        return this.application.getSystemService(this.serviceName);
    }
}
