package roboguice.inject;

import android.content.Context;
import com.google.inject.Provider;

public class ContextScopedSystemServiceProvider<T> implements Provider<T> {
    protected Provider<Context> contextProvider;
    protected String serviceName;

    public ContextScopedSystemServiceProvider(Provider<Context> provider, String str) {
        this.contextProvider = provider;
        this.serviceName = str;
    }

    public T get() {
        return ((Context) this.contextProvider.get()).getSystemService(this.serviceName);
    }
}
