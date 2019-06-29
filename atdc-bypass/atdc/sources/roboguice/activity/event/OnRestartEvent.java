package roboguice.activity.event;

import android.app.Activity;

public class OnRestartEvent {
    protected Activity activity;

    public OnRestartEvent(Activity activity) {
        this.activity = activity;
    }

    public Activity getActivity() {
        return this.activity;
    }
}
