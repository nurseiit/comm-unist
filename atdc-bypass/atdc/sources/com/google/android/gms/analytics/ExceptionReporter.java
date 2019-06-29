package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.HitBuilders.ExceptionBuilder;
import com.google.android.gms.internal.zzaob;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;

public class ExceptionReporter implements UncaughtExceptionHandler {
    private final Context mContext;
    private ExceptionParser zzadA;
    private GoogleAnalytics zzadB;
    private final UncaughtExceptionHandler zzady;
    private final Tracker zzadz;

    public ExceptionReporter(Tracker tracker, UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        if (tracker == null) {
            throw new NullPointerException("tracker cannot be null");
        } else if (context == null) {
            throw new NullPointerException("context cannot be null");
        } else {
            this.zzady = uncaughtExceptionHandler;
            this.zzadz = tracker;
            this.zzadA = new StandardExceptionParser(context, new ArrayList());
            this.mContext = context.getApplicationContext();
            String str = "ExceptionReporter created, original handler is ";
            String valueOf = String.valueOf(uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName());
            zzaob.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }

    public ExceptionParser getExceptionParser() {
        return this.zzadA;
    }

    public void setExceptionParser(ExceptionParser exceptionParser) {
        this.zzadA = exceptionParser;
    }

    public void uncaughtException(Thread thread, Throwable th) {
        Object obj = "UncaughtException";
        if (this.zzadA != null) {
            obj = this.zzadA.getDescription(thread != null ? thread.getName() : null, th);
        }
        String str = "Reporting uncaught exception: ";
        String valueOf = String.valueOf(obj);
        zzaob.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        this.zzadz.send(new ExceptionBuilder().setDescription(obj).setFatal(true).build());
        if (this.zzadB == null) {
            this.zzadB = GoogleAnalytics.getInstance(this.mContext);
        }
        GoogleAnalytics googleAnalytics = this.zzadB;
        googleAnalytics.dispatchLocalHits();
        googleAnalytics.zzji().zzkv().zzkm();
        if (this.zzady != null) {
            zzaob.v("Passing exception to the original handler");
            this.zzady.uncaughtException(thread, th);
        }
    }

    /* Access modifiers changed, original: final */
    public final UncaughtExceptionHandler zzjn() {
        return this.zzady;
    }
}
