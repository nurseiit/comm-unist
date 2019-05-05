package com.google.firebase.appindexing.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.appindexing.FirebaseAppIndex;
import com.google.firebase.appindexing.FirebaseAppIndexingInvalidArgumentException;
import com.google.firebase.appindexing.Indexable;

public final class zzf extends FirebaseAppIndex {
    private zzm zzbVK;

    public zzf(@NonNull Context context) {
        this(context, new zzj(context));
    }

    private zzf(@NonNull Context context, @NonNull GoogleApi<NoOptions> googleApi) {
        this.zzbVK = new zzm(googleApi);
    }

    public final Task<Void> remove(String... strArr) {
        return this.zzbVK.zzb(new zzh(this, strArr));
    }

    public final Task<Void> removeAll() {
        return this.zzbVK.zzb(new zzi(this));
    }

    public final Task<Void> update(Indexable... indexableArr) {
        Thing[] thingArr;
        if (indexableArr == null) {
            thingArr = null;
        } else {
            Thing[] thingArr2 = new Thing[indexableArr.length];
            try {
                System.arraycopy(indexableArr, 0, thingArr2, 0, indexableArr.length);
                thingArr = thingArr2;
            } catch (ArrayStoreException unused) {
                return Tasks.forException(new FirebaseAppIndexingInvalidArgumentException("Custom Indexable-objects are not allowed. Please use the 'Indexables'-class for creating the objects."));
            }
        }
        return this.zzbVK.zzb(new zzg(this, thingArr));
    }
}
