package roboguice.activity.event;

import android.app.Activity;

public class OnContentChangedEvent {
    protected Activity activity;

    public OnContentChangedEvent(Activity activity) {
        this.activity = activity;
    }

    public Activity getActivity() {
        return this.activity;
    }
}
