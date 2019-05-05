package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzalt;
import com.google.android.gms.internal.zzalx;
import com.google.android.gms.internal.zzamj;
import java.util.ListIterator;

public class zza extends zzk<zza> {
    private final zzamj zzadj;
    private boolean zzadk;

    public zza(zzamj zzamj) {
        super(zzamj.zzkt(), zzamj.zzkq());
        this.zzadj = zzamj;
    }

    public final void enableAdvertisingIdCollection(boolean z) {
        this.zzadk = z;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(zzi zzi) {
        zzalt zzalt = (zzalt) zzi.zzb(zzalt.class);
        if (TextUtils.isEmpty(zzalt.zzjX())) {
            zzalt.setClientId(this.zzadj.zzkJ().zzli());
        }
        if (this.zzadk && TextUtils.isEmpty(zzalt.zzjY())) {
            zzalx zzkI = this.zzadj.zzkI();
            zzalt.zzbk(zzkI.zzkg());
            zzalt.zzG(zzkI.zzjZ());
        }
    }

    public final void zzaY(String str) {
        zzbo.zzcF(str);
        Uri zzaZ = zzb.zzaZ(str);
        ListIterator listIterator = this.zzaeb.zzjr().listIterator();
        while (listIterator.hasNext()) {
            if (zzaZ.equals(((zzo) listIterator.next()).zzjl())) {
                listIterator.remove();
            }
        }
        this.zzaeb.zzjr().add(new zzb(this.zzadj, str));
    }

    /* Access modifiers changed, original: final */
    public final zzamj zzji() {
        return this.zzadj;
    }

    public final zzi zzjj() {
        zzi zzjp = this.zzaeb.zzjp();
        zzjp.zza(this.zzadj.zzkB().zzkW());
        zzjp.zza(this.zzadj.zzkC().zzlA());
        zzd(zzjp);
        return zzjp;
    }
}
