package roboguice.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import roboguice.RoboGuice;

public abstract class RoboFragment extends Fragment {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RoboGuice.getInjector(getActivity()).injectMembersWithoutViews(this);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        RoboGuice.getInjector(getActivity()).injectViewMembers(this);
    }
}
