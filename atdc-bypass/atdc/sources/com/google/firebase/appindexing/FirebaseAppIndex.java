package com.google.firebase.appindexing;

import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.appindexing.internal.zzf;
import java.lang.ref.WeakReference;

public abstract class FirebaseAppIndex {
    public static final String ACTION_UPDATE_INDEX = "com.google.firebase.appindexing.UPDATE_INDEX";
    public static final String APP_INDEXING_API_TAG = "FirebaseAppIndex";
    public static final String EXTRA_UPDATE_INDEX_REASON = "com.google.firebase.appindexing.extra.REASON";
    public static final int EXTRA_UPDATE_INDEX_REASON_REBUILD = 1;
    public static final int EXTRA_UPDATE_INDEX_REASON_REFRESH = 2;
    private static WeakReference<FirebaseAppIndex> zzbVC;

    public static synchronized FirebaseAppIndex getInstance() {
        FirebaseAppIndex firebaseAppIndex;
        synchronized (FirebaseAppIndex.class) {
            firebaseAppIndex = zzbVC == null ? null : (FirebaseAppIndex) zzbVC.get();
            if (firebaseAppIndex == null) {
                FirebaseAppIndex zzf = new zzf(FirebaseApp.getInstance().getApplicationContext());
                zzbVC = new WeakReference(zzf);
                firebaseAppIndex = zzf;
            }
        }
        return firebaseAppIndex;
    }

    public abstract Task<Void> remove(String... strArr);

    public abstract Task<Void> removeAll();

    public abstract Task<Void> update(Indexable... indexableArr);
}
