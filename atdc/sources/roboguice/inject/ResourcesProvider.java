package roboguice.inject;

import android.app.Application;
import android.content.res.Resources;
import com.google.inject.Inject;
import com.google.inject.Provider;
import com.google.inject.Singleton;

@Singleton
public class ResourcesProvider implements Provider<Resources> {
    protected Resources resources;

    @Inject
    public ResourcesProvider(Application application) {
        this.resources = application.getResources();
    }

    public Resources get() {
        return this.resources;
    }
}
