package roboguice.util;

public interface LnInterface {
    int d(Object obj, Object... objArr);

    int d(Throwable th);

    int d(Throwable th, Object obj, Object... objArr);

    int e(Object obj, Object... objArr);

    int e(Throwable th);

    int e(Throwable th, Object obj, Object... objArr);

    int getLoggingLevel();

    int i(Object obj, Object... objArr);

    int i(Throwable th);

    int i(Throwable th, Object obj, Object... objArr);

    boolean isDebugEnabled();

    boolean isVerboseEnabled();

    String logLevelToString(int i);

    void setLoggingLevel(int i);

    int v(Object obj, Object... objArr);

    int v(Throwable th);

    int v(Throwable th, Object obj, Object[] objArr);

    int w(Object obj, Object... objArr);

    int w(Throwable th);

    int w(Throwable th, Object obj, Object... objArr);
}
