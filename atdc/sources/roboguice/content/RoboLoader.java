package roboguice.content;

import android.content.Context;
import android.support.v4.content.Loader;
import roboguice.RoboGuice;

public abstract class RoboLoader<D> extends Loader<D> {
    public RoboLoader(Context context) {
        super(context);
        RoboGuice.injectMembers(context, this);
    }
}
