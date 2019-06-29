package roboguice.inject;

import android.content.Context;
import com.google.inject.Inject;
import com.google.inject.Provider;
import roboguice.RoboGuice;

public class ContextScopedProvider<T> {
    @Inject
    protected Provider<T> provider;

    public T get(Context context) {
        T t;
        ContextScope contextScope = (ContextScope) RoboGuice.getInjector(context).getInstance(ContextScope.class);
        synchronized (ContextScope.class) {
            contextScope.enter(context);
            try {
                t = this.provider.get();
            } finally {
                contextScope.exit(context);
            }
        }
        return t;
    }
}
