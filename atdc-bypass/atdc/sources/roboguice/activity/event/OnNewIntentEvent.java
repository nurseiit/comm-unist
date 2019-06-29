package roboguice.activity.event;

import android.app.Activity;

public class OnNewIntentEvent {
    protected Activity activity;

    public OnNewIntentEvent(Activity activity) {
        this.activity = activity;
    }

    public Activity getActivity() {
        return this.activity;
    }
}
