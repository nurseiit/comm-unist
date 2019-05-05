package roboguice.activity.event;

import android.app.Activity;

public class OnStopEvent {
    protected Activity activity;

    public OnStopEvent(Activity activity) {
        this.activity = activity;
    }

    public Activity getActivity() {
        return this.activity;
    }
}
