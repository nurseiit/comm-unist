package roboguice.fragment.provided;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.view.View;
import com.google.inject.Inject;
import com.google.inject.Provider;
import roboguice.fragment.FragmentUtil.f;
import roboguice.inject.ContextSingleton;

@TargetApi(11)
public class NativeFragmentUtil implements f<Fragment, FragmentManager> {

    @ContextSingleton
    public static class FragmentManagerProvider implements Provider<FragmentManager> {
        @Inject
        protected Activity activity;

        public FragmentManager get() {
            return this.activity.getFragmentManager();
        }
    }

    public NativeFragmentUtil() throws ClassNotFoundException {
        Class.forName(Fragment.class.getName());
        Class.forName(FragmentManager.class.getName());
    }

    public View getView(Fragment fragment) {
        return fragment.getView();
    }

    public Fragment findFragmentById(FragmentManager fragmentManager, int i) {
        return fragmentManager.findFragmentById(i);
    }

    public Fragment findFragmentByTag(FragmentManager fragmentManager, String str) {
        return fragmentManager.findFragmentByTag(str);
    }

    public Class<Fragment> fragmentType() {
        return Fragment.class;
    }

    public Class<FragmentManager> fragmentManagerType() {
        return FragmentManager.class;
    }

    public Class fragmentManagerProviderType() {
        return FragmentManagerProvider.class;
    }
}
