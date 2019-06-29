package roboguice.activity.event;

import android.app.Activity;
import android.content.Intent;

public class OnActivityResultEvent {
    protected Activity activity;
    protected Intent data;
    protected int requestCode;
    protected int resultCode;

    public OnActivityResultEvent(Activity activity, int i, int i2, Intent intent) {
        this.activity = activity;
        this.requestCode = i;
        this.resultCode = i2;
        this.data = intent;
    }

    public int getRequestCode() {
        return this.requestCode;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public Intent getData() {
        return this.data;
    }

    public Activity getActivity() {
        return this.activity;
    }
}
