package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.events.zzi;
import java.util.ArrayList;
import java.util.List;

public final class zzboc extends zzbor {
    private final int zzaJo = 1;
    private final zzi zzaOH;
    private final zzboe zzaOI;
    private final List<Integer> zzaOJ = new ArrayList();

    public zzboc(Looper looper, Context context, int i, zzi zzi) {
        this.zzaOH = zzi;
        this.zzaOI = new zzboe(looper, context);
    }

    public final void zzaN(int i) {
        this.zzaOJ.add(Integer.valueOf(1));
    }

    public final boolean zzaO(int i) {
        return this.zzaOJ.contains(Integer.valueOf(1));
    }

    public final void zzc(zzbph zzbph) throws RemoteException {
        DriveEvent zztj = zzbph.zztj();
        zzbo.zzae(this.zzaJo == zztj.getType());
        zzbo.zzae(this.zzaOJ.contains(Integer.valueOf(zztj.getType())));
        zzboe zzboe = this.zzaOI;
        zzboe.sendMessage(zzboe.obtainMessage(1, new Pair(this.zzaOH, zztj)));
    }
}
