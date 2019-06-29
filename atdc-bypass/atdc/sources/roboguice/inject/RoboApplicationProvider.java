package roboguice.inject;

import android.app.Application;
import com.google.inject.Inject;
import com.google.inject.Provider;
import com.google.inject.Singleton;

@Singleton
public class RoboApplicationProvider<T extends Application> implements Provider<T> {
    @Inject
    protected Application application;

    public T get() {
        return this.application;
    }
}
