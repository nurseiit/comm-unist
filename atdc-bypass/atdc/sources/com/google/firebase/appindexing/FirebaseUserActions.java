package com.google.firebase.appindexing;

import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.appindexing.internal.zzq;
import java.lang.ref.WeakReference;

public abstract class FirebaseUserActions {
    public static final String APP_INDEXING_API_TAG = "FirebaseUserActions";
    private static WeakReference<FirebaseUserActions> zzbVC;

    public static synchronized FirebaseUserActions getInstance() {
        FirebaseUserActions firebaseUserActions;
        synchronized (FirebaseUserActions.class) {
            firebaseUserActions = zzbVC == null ? null : (FirebaseUserActions) zzbVC.get();
            if (firebaseUserActions == null) {
                FirebaseUserActions zzq = new zzq(FirebaseApp.getInstance().getApplicationContext());
                zzbVC = new WeakReference(zzq);
                firebaseUserActions = zzq;
            }
        }
        return firebaseUserActions;
    }

    public abstract Task<Void> end(Action action);

    public abstract Task<Void> start(Action action);
}
