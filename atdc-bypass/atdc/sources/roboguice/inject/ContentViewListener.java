package roboguice.inject;

import android.app.Activity;
import android.content.Context;
import com.google.inject.Inject;
import roboguice.context.event.OnCreateEvent;
import roboguice.event.Observes;

@ContextSingleton
public class ContentViewListener {
    @Inject
    protected Activity activity;

    public void optionallySetContentView(@Observes OnCreateEvent<?> onCreateEvent) {
        for (Class cls = this.activity.getClass(); cls != Context.class; cls = cls.getSuperclass()) {
            ContentView contentView = (ContentView) cls.getAnnotation(ContentView.class);
            if (contentView != null) {
                this.activity.setContentView(contentView.value());
                return;
            }
        }
    }
}
