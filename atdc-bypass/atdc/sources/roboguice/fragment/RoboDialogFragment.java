package roboguice.fragment;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.View;
import roboguice.RoboGuice;

public abstract class RoboDialogFragment extends DialogFragment {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RoboGuice.getInjector(getActivity()).injectMembersWithoutViews(this);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        RoboGuice.getInjector(getActivity()).injectViewMembers(this);
    }
}
