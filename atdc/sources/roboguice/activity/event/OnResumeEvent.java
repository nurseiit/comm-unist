package roboguice.activity.event;

import android.app.Activity;

public class OnResumeEvent {
    protected Activity activity;

    public OnResumeEvent(Activity activity) {
        this.activity = activity;
    }

    public Activity getActivity() {
        return this.activity;
    }
}
