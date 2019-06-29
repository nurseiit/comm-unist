package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.Transaction.Handler;
import com.google.firebase.database.ValueEventListener;

final class rv implements Comparable<rv> {
    private int retryCount;
    private qr zzbZf;
    private Handler zzcdZ;
    private ValueEventListener zzcea;
    private int zzceb;
    private long zzcec;
    private boolean zzced;
    private DatabaseError zzcee;
    private long zzcef;
    private xm zzceg;
    private xm zzceh;
    private xm zzcei;

    private rv(qr qrVar, Handler handler, ValueEventListener valueEventListener, int i, boolean z, long j) {
        this.zzbZf = qrVar;
        this.zzcdZ = handler;
        this.zzcea = valueEventListener;
        this.zzceb = i;
        this.retryCount = 0;
        this.zzced = z;
        this.zzcec = j;
        this.zzcee = null;
        this.zzceg = null;
        this.zzceh = null;
        this.zzcei = null;
    }

    /* synthetic */ rv(qr qrVar, Handler handler, ValueEventListener valueEventListener, int i, boolean z, long j, qv qvVar) {
        this(qrVar, handler, valueEventListener, i, z, j);
    }

    public final /* synthetic */ int compareTo(Object obj) {
        rv rvVar = (rv) obj;
        return this.zzcec < rvVar.zzcec ? -1 : this.zzcec == rvVar.zzcec ? 0 : 1;
    }
}
