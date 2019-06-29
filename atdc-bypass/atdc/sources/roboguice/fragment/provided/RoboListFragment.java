package roboguice.fragment.provided;

import android.annotation.TargetApi;
import android.app.ListFragment;
import android.os.Bundle;
import android.view.View;
import roboguice.RoboGuice;

@TargetApi(11)
public abstract class RoboListFragment extends ListFragment {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RoboGuice.getInjector(getActivity()).injectMembersWithoutViews(this);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        RoboGuice.getInjector(getActivity()).injectViewMembers(this);
    }
}
