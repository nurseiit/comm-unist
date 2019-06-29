package com.google.firebase.dynamiclinks;

import android.content.Intent;
import android.net.Uri;
import android.support.annotation.NonNull;
import com.google.android.gms.internal.zn;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.dynamiclinks.DynamicLink.Builder;
import java.lang.ref.WeakReference;

public abstract class FirebaseDynamicLinks {
    private static WeakReference<FirebaseDynamicLinks> zzbVC;

    public static synchronized FirebaseDynamicLinks getInstance() {
        FirebaseDynamicLinks firebaseDynamicLinks;
        synchronized (FirebaseDynamicLinks.class) {
            firebaseDynamicLinks = zzbVC == null ? null : (FirebaseDynamicLinks) zzbVC.get();
            if (firebaseDynamicLinks == null) {
                firebaseDynamicLinks = new zn(FirebaseApp.getInstance().getApplicationContext());
                zzbVC = new WeakReference(firebaseDynamicLinks);
            }
        }
        return firebaseDynamicLinks;
    }

    public abstract Builder createDynamicLink();

    public abstract Task<PendingDynamicLinkData> getDynamicLink(@NonNull Intent intent);

    public abstract Task<PendingDynamicLinkData> getDynamicLink(@NonNull Uri uri);
}
