package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import java.util.Iterator;
import java.util.LinkedList;

@zzzn
final class zztn {
    private final LinkedList<zzto> zzKr = new LinkedList();
    private zzir zzKs;
    private final int zzKt;
    private boolean zzKu;
    private final String zztV;

    zztn(zzir zzir, String str, int i) {
        zzbo.zzu(zzir);
        zzbo.zzu(str);
        this.zzKs = zzir;
        this.zztV = str;
        this.zzKt = i;
    }

    /* Access modifiers changed, original: final */
    public final String getAdUnitId() {
        return this.zztV;
    }

    /* Access modifiers changed, original: final */
    public final int getNetworkType() {
        return this.zzKt;
    }

    /* Access modifiers changed, original: final */
    public final int size() {
        return this.zzKr.size();
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzsi zzsi, zzir zzir) {
        this.zzKr.add(new zzto(this, zzsi, zzir));
    }

    /* Access modifiers changed, original: final */
    public final boolean zzb(zzsi zzsi) {
        zzto zzto = new zzto(this, zzsi);
        this.zzKr.add(zzto);
        return zzto.load();
    }

    /* Access modifiers changed, original: final */
    public final zzir zzeI() {
        return this.zzKs;
    }

    /* Access modifiers changed, original: final */
    public final int zzeJ() {
        Iterator it = this.zzKr.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (((zzto) it.next()).zzKz) {
                i++;
            }
        }
        return i;
    }

    /* Access modifiers changed, original: final */
    public final int zzeK() {
        Iterator it = this.zzKr.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (((zzto) it.next()).load()) {
                i++;
            }
        }
        return i;
    }

    /* Access modifiers changed, original: final */
    public final void zzeL() {
        this.zzKu = true;
    }

    /* Access modifiers changed, original: final */
    public final boolean zzeM() {
        return this.zzKu;
    }

    /* Access modifiers changed, original: final */
    public final zzto zzm(@Nullable zzir zzir) {
        if (zzir != null) {
            this.zzKs = zzir;
        }
        return (zzto) this.zzKr.remove();
    }
}
