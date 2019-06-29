package com.google.android.gms.analytics;

import android.content.Context;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeSet;

public class StandardExceptionParser implements ExceptionParser {
    private final TreeSet<String> zzaen = new TreeSet();

    public StandardExceptionParser(Context context, Collection<String> collection) {
        setIncludedPackages(context, collection);
    }

    /* Access modifiers changed, original: protected */
    public StackTraceElement getBestStackTraceElement(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace == null || stackTrace.length == 0) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            Iterator it = this.zzaen.iterator();
            while (it.hasNext()) {
                if (className.startsWith((String) it.next())) {
                    return stackTraceElement;
                }
            }
        }
        return stackTrace[0];
    }

    /* Access modifiers changed, original: protected */
    public Throwable getCause(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    public String getDescription(String str, Throwable th) {
        return getDescription(getCause(th), getBestStackTraceElement(getCause(th)), str);
    }

    /* Access modifiers changed, original: protected */
    public String getDescription(Throwable th, StackTraceElement stackTraceElement, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(th.getClass().getSimpleName());
        if (stackTraceElement != null) {
            String[] split = stackTraceElement.getClassName().split("\\.");
            String str2 = "unknown";
            if (split != null && split.length > 0) {
                str2 = split[split.length - 1];
            }
            stringBuilder.append(String.format(" (@%s:%s:%s)", new Object[]{str2, stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber())}));
        }
        if (str != null) {
            stringBuilder.append(String.format(" {%s}", new Object[]{str}));
        }
        return stringBuilder.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0020 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0055  */
    public void setIncludedPackages(android.content.Context r5, java.util.Collection<java.lang.String> r6) {
        /*
        r4 = this;
        r0 = r4.zzaen;
        r0.clear();
        r0 = new java.util.HashSet;
        r0.<init>();
        if (r6 == 0) goto L_0x000f;
    L_0x000c:
        r0.addAll(r6);
    L_0x000f:
        if (r5 == 0) goto L_0x001c;
    L_0x0011:
        r5 = r5.getApplicationContext();
        r5 = r5.getPackageName();
        r0.add(r5);
    L_0x001c:
        r5 = r0.iterator();
    L_0x0020:
        r6 = r5.hasNext();
        if (r6 == 0) goto L_0x005b;
    L_0x0026:
        r6 = r5.next();
        r6 = (java.lang.String) r6;
        r0 = 1;
        r1 = r4.zzaen;
        r1 = r1.iterator();
    L_0x0033:
        r2 = r1.hasNext();
        if (r2 == 0) goto L_0x0053;
    L_0x0039:
        r2 = r1.next();
        r2 = (java.lang.String) r2;
        r3 = r6.startsWith(r2);
        if (r3 != 0) goto L_0x0051;
    L_0x0045:
        r1 = r2.startsWith(r6);
        if (r1 == 0) goto L_0x0053;
    L_0x004b:
        r1 = r4.zzaen;
        r1.remove(r2);
        goto L_0x0053;
    L_0x0051:
        r0 = 0;
        goto L_0x0033;
    L_0x0053:
        if (r0 == 0) goto L_0x0020;
    L_0x0055:
        r0 = r4.zzaen;
        r0.add(r6);
        goto L_0x0020;
    L_0x005b:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.StandardExceptionParser.setIncludedPackages(android.content.Context, java.util.Collection):void");
    }
}
