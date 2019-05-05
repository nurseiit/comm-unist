package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzrd;
import com.google.android.gms.internal.zzvc;
import com.google.android.gms.internal.zzvf;
import java.util.Map;

final class zzaw implements zzrd {
    private /* synthetic */ zzvc zzuC;
    private /* synthetic */ zzab zzuD;
    private /* synthetic */ zzvf zzuE;

    zzaw(zzvc zzvc, zzab zzab, zzvf zzvf) {
        this.zzuC = zzvc;
        this.zzuD = zzab;
        this.zzuE = zzvf;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        View view = zzaka.getView();
        if (view != null) {
            try {
                if (this.zzuC == null) {
                    if (this.zzuE != null) {
                        if (this.zzuE.getOverrideClickHandling()) {
                            zzar.zzb(zzaka);
                        } else {
                            this.zzuE.zzl(zzn.zzw(view));
                            this.zzuD.zztt.onAdClicked();
                        }
                    }
                } else if (this.zzuC.getOverrideClickHandling()) {
                    zzar.zzb(zzaka);
                } else {
                    this.zzuC.zzl(zzn.zzw(view));
                    this.zzuD.zztt.onAdClicked();
                }
            } catch (RemoteException e) {
                zzajc.zzc("Unable to call handleClick on mapper", e);
            }
        }
    }
}
