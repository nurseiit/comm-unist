package com.google.android.gms.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzal;
import java.util.Set;

@WorkerThread
public interface zzbel {
    void zzb(zzal zzal, Set<Scope> set);

    void zzh(ConnectionResult connectionResult);
}
