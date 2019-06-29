package roboguice.inject;

import com.google.inject.Injector;

public interface RoboInjector extends Injector {
    void injectMembersWithoutViews(Object obj);

    void injectViewMembers(Object obj);
}
