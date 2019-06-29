package roboguice.content;

import android.content.Context;
import android.support.v4.content.AsyncTaskLoader;
import roboguice.RoboGuice;

public abstract class RoboAsyncTaskLoader<D> extends AsyncTaskLoader<D> {
    public RoboAsyncTaskLoader(Context context) {
        super(context);
        RoboGuice.injectMembers(context, this);
    }
}
