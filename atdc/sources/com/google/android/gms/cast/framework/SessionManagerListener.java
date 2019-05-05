package com.google.android.gms.cast.framework;

public interface SessionManagerListener<T extends Session> {
    void onSessionEnded(T t, int i);

    void onSessionEnding(T t);

    void onSessionResumeFailed(T t, int i);

    void onSessionResumed(T t, boolean z);

    void onSessionResuming(T t, String str);

    void onSessionStartFailed(T t, int i);

    void onSessionStarted(T t, String str);

    void onSessionStarting(T t);

    void onSessionSuspended(T t, int i);
}
