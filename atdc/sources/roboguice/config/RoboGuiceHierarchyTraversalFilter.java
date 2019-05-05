package roboguice.config;

import com.google.inject.HierarchyTraversalFilter;
import roboguice.RoboGuice;

public class RoboGuiceHierarchyTraversalFilter extends HierarchyTraversalFilter {
    private static final String ANDROID_PACKAGE = "android";
    protected static final String ROBOGUICE_PACKAGE = RoboGuice.class.getPackage().getName();
    private boolean isInRoboGuicePackage = false;

    public boolean isWorthScanning(Class<?> cls) {
        if (cls == null || cls == Object.class) {
            return false;
        }
        String name = cls.getName();
        if (name.startsWith("android")) {
            return false;
        }
        if (name.startsWith(ROBOGUICE_PACKAGE)) {
            this.isInRoboGuicePackage = true;
        } else if (this.isInRoboGuicePackage) {
            return false;
        }
        return true;
    }

    public void reset() {
        super.reset();
        this.isInRoboGuicePackage = false;
    }
}
