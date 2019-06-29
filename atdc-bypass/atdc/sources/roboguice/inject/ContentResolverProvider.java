package roboguice.inject;

import android.content.ContentResolver;
import android.content.Context;
import com.google.inject.Inject;
import com.google.inject.Provider;

@ContextSingleton
public class ContentResolverProvider implements Provider<ContentResolver> {
    @Inject
    protected Context context;

    public ContentResolver get() {
        return this.context.getContentResolver();
    }
}
