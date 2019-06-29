package roboguice.activity.event;

import android.app.Activity;
import android.os.Bundle;

public class OnSaveInstanceStateEvent {
    protected Activity activity;
    protected Bundle savedInstanceState;

    public OnSaveInstanceStateEvent(Activity activity, Bundle bundle) {
        this.activity = activity;
        this.savedInstanceState = bundle;
    }

    public Bundle getSavedInstanceState() {
        return this.savedInstanceState;
    }

    public Activity getActivity() {
        return this.activity;
    }
}
