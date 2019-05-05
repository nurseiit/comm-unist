package com.google.android.gms.analytics;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class zzk<T extends zzk> {
    private final zzl zzaea;
    protected final zzi zzaeb;
    private final List<Object> zzaec = new ArrayList();

    protected zzk(zzl zzl, zze zze) {
        zzbo.zzu(zzl);
        this.zzaea = zzl;
        zzi zzi = new zzi(this, zze);
        zzi.zzjy();
        this.zzaeb = zzi;
    }

    /* Access modifiers changed, original: protected */
    public void zza(zzi zzi) {
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzd(zzi zzi) {
        Iterator it = this.zzaec.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public zzi zzjj() {
        zzi zzjp = this.zzaeb.zzjp();
        zzd(zzjp);
        return zzjp;
    }

    /* Access modifiers changed, original: protected|final */
    public final zzl zzjz() {
        return this.zzaea;
    }
}
