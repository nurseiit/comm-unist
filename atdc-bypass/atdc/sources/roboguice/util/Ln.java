package roboguice.util;

import com.google.inject.Inject;
import edu.umd.cs.findbugs.annotations.SuppressWarnings;

@SuppressWarnings({"ImplicitArrayToString"})
public final class Ln {
    @SuppressWarnings({"MS_SHOULD_BE_FINAL"})
    @Inject(optional = true)
    protected static LnInterface lnImpl = new LnImpl();

    private Ln() {
    }

    public static int v(Throwable th) {
        return lnImpl.v(th);
    }

    public static int v(Object obj, Object... objArr) {
        return lnImpl.v(obj, objArr);
    }

    public static int v(Throwable th, Object obj, Object... objArr) {
        return lnImpl.v(th, obj, objArr);
    }

    public static int d(Throwable th) {
        return lnImpl.d(th);
    }

    public static int d(Object obj, Object... objArr) {
        return lnImpl.d(obj, objArr);
    }

    public static int d(Throwable th, Object obj, Object... objArr) {
        return lnImpl.d(th, obj, objArr);
    }

    public static int i(Throwable th) {
        return lnImpl.i(th);
    }

    public static int i(Object obj, Object... objArr) {
        return lnImpl.i(obj, objArr);
    }

    public static int i(Throwable th, Object obj, Object... objArr) {
        return lnImpl.i(th, obj, objArr);
    }

    public static int w(Throwable th) {
        return lnImpl.w(th);
    }

    public static int w(Object obj, Object... objArr) {
        return lnImpl.w(obj, objArr);
    }

    public static int w(Throwable th, Object obj, Object... objArr) {
        return lnImpl.w(th, obj, objArr);
    }

    public static int e(Throwable th) {
        return lnImpl.e(th);
    }

    public static int e(Object obj, Object... objArr) {
        return lnImpl.e(obj, objArr);
    }

    public static int e(Throwable th, Object obj, Object... objArr) {
        return lnImpl.e(th, obj, objArr);
    }

    public static boolean isDebugEnabled() {
        return lnImpl.isDebugEnabled();
    }

    public static boolean isVerboseEnabled() {
        return lnImpl.isVerboseEnabled();
    }

    public static int getLoggingLevel() {
        return lnImpl.getLoggingLevel();
    }

    public static void setLoggingLevel(int i) {
        lnImpl.setLoggingLevel(i);
    }

    public static String logLevelToString(int i) {
        return lnImpl.logLevelToString(i);
    }
}
