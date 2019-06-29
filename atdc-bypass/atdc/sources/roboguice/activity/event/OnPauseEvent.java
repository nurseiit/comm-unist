package roboguice.activity.event;

import android.app.Activity;

public class OnPauseEvent {
    protected Activity activity;

    public OnPauseEvent(Activity activity) {
        this.activity = activity;
    }

    public Activity getActivity() {
        return this.activity;
    }
}
