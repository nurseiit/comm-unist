package roboguice.activity;

import android.annotation.TargetApi;
import android.app.TabActivity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import com.google.inject.Inject;
import com.google.inject.Key;
import java.util.HashMap;
import java.util.Map;
import roboguice.RoboGuice;
import roboguice.activity.event.OnActivityResultEvent;
import roboguice.activity.event.OnContentChangedEvent;
import roboguice.activity.event.OnNewIntentEvent;
import roboguice.activity.event.OnPauseEvent;
import roboguice.activity.event.OnRestartEvent;
import roboguice.activity.event.OnResumeEvent;
import roboguice.activity.event.OnSaveInstanceStateEvent;
import roboguice.activity.event.OnStopEvent;
import roboguice.context.event.OnConfigurationChangedEvent;
import roboguice.context.event.OnCreateEvent;
import roboguice.context.event.OnDestroyEvent;
import roboguice.context.event.OnStartEvent;
import roboguice.event.EventManager;
import roboguice.inject.ContentViewListener;
import roboguice.inject.RoboInjector;
import roboguice.util.RoboContext;

@Deprecated
public class RoboTabActivity extends TabActivity implements RoboContext {
    protected EventManager eventManager;
    @Inject
    ContentViewListener ignored;
    protected HashMap<Key<?>, Object> scopedObjects = new HashMap();

    /* Access modifiers changed, original: protected */
    @Deprecated
    public void onCreate(Bundle bundle) {
        RoboInjector injector = RoboGuice.getInjector(this);
        this.eventManager = (EventManager) injector.getInstance(EventManager.class);
        injector.injectMembersWithoutViews(this);
        super.onCreate(bundle);
        this.eventManager.fire(new OnCreateEvent(this, bundle));
    }

    /* Access modifiers changed, original: protected */
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.eventManager.fire(new OnSaveInstanceStateEvent(this, bundle));
    }

    /* Access modifiers changed, original: protected */
    @Deprecated
    public void onRestart() {
        super.onRestart();
        this.eventManager.fire(new OnRestartEvent(this));
    }

    /* Access modifiers changed, original: protected */
    @Deprecated
    public void onStart() {
        super.onStart();
        this.eventManager.fire(new OnStartEvent(this));
    }

    /* Access modifiers changed, original: protected */
    @Deprecated
    public void onResume() {
        super.onResume();
        this.eventManager.fire(new OnResumeEvent(this));
    }

    /* Access modifiers changed, original: protected */
    @Deprecated
    public void onPause() {
        super.onPause();
        this.eventManager.fire(new OnPauseEvent(this));
    }

    /* Access modifiers changed, original: protected */
    @Deprecated
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.eventManager.fire(new OnNewIntentEvent(this));
    }

    /* Access modifiers changed, original: protected */
    @Deprecated
    public void onStop() {
        try {
            this.eventManager.fire(new OnStopEvent(this));
        } finally {
            super.onStop();
        }
    }

    /* Access modifiers changed, original: protected */
    @Deprecated
    public void onDestroy() {
        try {
            this.eventManager.fire(new OnDestroyEvent(this));
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

    @Deprecated
    public void onConfigurationChanged(Configuration configuration) {
        Configuration configuration2 = getResources().getConfiguration();
        super.onConfigurationChanged(configuration);
        this.eventManager.fire(new OnConfigurationChangedEvent(this, configuration2, configuration));
    }

    @Deprecated
    public void onContentChanged() {
        super.onContentChanged();
        RoboGuice.getInjector(this).injectViewMembers(this);
        this.eventManager.fire(new OnContentChangedEvent(this));
    }

    /* Access modifiers changed, original: protected */
    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.eventManager.fire(new OnActivityResultEvent(this, i, i2, intent));
    }

    public Map<Key<?>, Object> getScopedObjectMap() {
        return this.scopedObjects;
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        if (RoboActivity.shouldInjectOnCreateView(str)) {
            return RoboActivity.injectOnCreateView(str, context, attributeSet);
        }
        return super.onCreateView(str, context, attributeSet);
    }

    @TargetApi(11)
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (RoboActivity.shouldInjectOnCreateView(str)) {
            return RoboActivity.injectOnCreateView(str, context, attributeSet);
        }
        return super.onCreateView(view, str, context, attributeSet);
    }
}
