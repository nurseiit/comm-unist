package roboguice.fragment;

import android.os.Bundle;
import android.view.View;
import com.actionbarsherlock.app.SherlockFragment;
import roboguice.RoboGuice;

public abstract class RoboSherlockFragment extends SherlockFragment {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RoboGuice.getInjector(getActivity()).injectMembersWithoutViews(this);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        RoboGuice.getInjector(getActivity()).injectViewMembers(this);
    }
}
