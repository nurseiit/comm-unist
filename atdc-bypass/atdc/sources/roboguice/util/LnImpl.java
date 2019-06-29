package roboguice.util;

import android.app.Application;
import android.util.Log;
import com.google.inject.Inject;
import java.util.Locale;

public class LnImpl implements LnInterface {
    protected int minimumLogLevel = 2;
    protected String packageName = "";
    protected String tag = "";

    public String logLevelToString(int i) {
        switch (i) {
            case 2:
                return "VERBOSE";
            case 3:
                return "DEBUG";
            case 4:
                return "INFO";
            case 5:
                return "WARN";
            case 6:
                return "ERROR";
            case 7:
                return "ASSERT";
            default:
                return "UNKNOWN";
        }
    }

    @Inject
    public LnImpl(Application application) {
        int i = 2;
        try {
            this.packageName = application.getPackageName();
            if ((application.getPackageManager().getApplicationInfo(this.packageName, 0).flags & 2) == 0) {
                i = 4;
            }
            this.minimumLogLevel = i;
            this.tag = this.packageName.toUpperCase(Locale.US);
            Ln.d("Configuring Logging, minimum log level is %s", Ln.logLevelToString(this.minimumLogLevel));
        } catch (Exception e) {
            try {
                Log.e(this.packageName, "Error configuring logger", e);
            } catch (RuntimeException unused) {
            }
        }
    }

    public int v(Throwable th) {
        return getLoggingLevel() <= 2 ? println(2, Log.getStackTraceString(th)) : 0;
    }

    public int v(Object obj, Object... objArr) {
        if (getLoggingLevel() > 2) {
            return 0;
        }
        return println(2, formatArgs(Strings.toString(obj), objArr));
    }

    public int v(Throwable th, Object obj, Object[] objArr) {
        if (getLoggingLevel() > 2) {
            return 0;
        }
        String strings = Strings.toString(obj);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(formatArgs(strings, objArr));
        stringBuilder.append(10);
        stringBuilder.append(Log.getStackTraceString(th));
        return println(2, stringBuilder.toString());
    }

    public int d(Throwable th) {
        return getLoggingLevel() <= 3 ? println(3, Log.getStackTraceString(th)) : 0;
    }

    public int d(Object obj, Object... objArr) {
        if (getLoggingLevel() > 3) {
            return 0;
        }
        return println(3, formatArgs(Strings.toString(obj), objArr));
    }

    public int d(Throwable th, Object obj, Object... objArr) {
        if (getLoggingLevel() > 3) {
            return 0;
        }
        String strings = Strings.toString(obj);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(formatArgs(strings, objArr));
        stringBuilder.append(10);
        stringBuilder.append(Log.getStackTraceString(th));
        return println(3, stringBuilder.toString());
    }

    public int i(Throwable th) {
        return getLoggingLevel() <= 4 ? println(4, Log.getStackTraceString(th)) : 0;
    }

    public int i(Throwable th, Object obj, Object... objArr) {
        if (getLoggingLevel() > 4) {
            return 0;
        }
        String strings = Strings.toString(obj);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(formatArgs(strings, objArr));
        stringBuilder.append(10);
        stringBuilder.append(Log.getStackTraceString(th));
        return println(4, stringBuilder.toString());
    }

    public int i(Object obj, Object... objArr) {
        if (getLoggingLevel() > 4) {
            return 0;
        }
        return println(4, formatArgs(Strings.toString(obj), objArr));
    }

    public int w(Throwable th) {
        return getLoggingLevel() <= 5 ? println(5, Log.getStackTraceString(th)) : 0;
    }

    public int w(Throwable th, Object obj, Object... objArr) {
        if (getLoggingLevel() > 5) {
            return 0;
        }
        String strings = Strings.toString(obj);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(formatArgs(strings, objArr));
        stringBuilder.append(10);
        stringBuilder.append(Log.getStackTraceString(th));
        return println(5, stringBuilder.toString());
    }

    public int w(Object obj, Object... objArr) {
        if (getLoggingLevel() > 5) {
            return 0;
        }
        return println(5, formatArgs(Strings.toString(obj), objArr));
    }

    public int e(Throwable th) {
        return getLoggingLevel() <= 6 ? println(6, Log.getStackTraceString(th)) : 0;
    }

    public int e(Throwable th, Object obj, Object... objArr) {
        if (getLoggingLevel() > 6) {
            return 0;
        }
        String strings = Strings.toString(obj);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(formatArgs(strings, objArr));
        stringBuilder.append(10);
        stringBuilder.append(Log.getStackTraceString(th));
        return println(6, stringBuilder.toString());
    }

    public int e(Object obj, Object... objArr) {
        if (getLoggingLevel() > 6) {
            return 0;
        }
        return println(6, formatArgs(Strings.toString(obj), objArr));
    }

    public boolean isDebugEnabled() {
        return getLoggingLevel() <= 3;
    }

    public boolean isVerboseEnabled() {
        return getLoggingLevel() <= 2;
    }

    public int getLoggingLevel() {
        return this.minimumLogLevel;
    }

    public void setLoggingLevel(int i) {
        this.minimumLogLevel = i;
    }

    public int println(int i, String str) {
        return Log.println(i, getTag(), processMessage(str));
    }

    /* Access modifiers changed, original: protected */
    public String processMessage(String str) {
        if (getLoggingLevel() > 3) {
            return str;
        }
        return String.format("%s %s", new Object[]{Thread.currentThread().getName(), str});
    }

    /* Access modifiers changed, original: protected */
    public String getTag() {
        if (getLoggingLevel() > 3) {
            return this.tag;
        }
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[6];
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.tag);
        stringBuilder.append("/");
        stringBuilder.append(stackTraceElement.getFileName());
        stringBuilder.append(":");
        stringBuilder.append(stackTraceElement.getLineNumber());
        return stringBuilder.toString();
    }

    /* Access modifiers changed, original: protected|varargs */
    public String formatArgs(String str, Object... objArr) {
        if (objArr == null || objArr.length != 0) {
            return String.format(str, objArr);
        }
        return str;
    }
}
