package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.google.android.gms.ads.internal.zzbs;

final class zzahr implements OnClickListener {
    private /* synthetic */ int zzZF;
    private /* synthetic */ int zzZG;
    private /* synthetic */ int zzZH;
    private /* synthetic */ zzahq zzZI;

    zzahr(zzahq zzahq, int i, int i2, int i3) {
        this.zzZI = zzahq;
        this.zzZF = i;
        this.zzZG = i2;
        this.zzZH = i3;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == this.zzZF) {
            this.zzZI.zzhY();
            return;
        }
        if (i == this.zzZG) {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzGr)).booleanValue()) {
                this.zzZI.zzhZ();
                return;
            }
        }
        if (i == this.zzZH) {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzGs)).booleanValue()) {
                this.zzZI.zzia();
            }
        }
    }
}
