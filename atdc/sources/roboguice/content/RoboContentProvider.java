package roboguice.content;

import android.content.ContentProvider;
import roboguice.RoboGuice;

public abstract class RoboContentProvider extends ContentProvider {
    public boolean onCreate() {
        RoboGuice.getInjector(getContext()).injectMembers(this);
        return true;
    }
}
