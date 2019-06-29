package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import java.util.List;

final class cf extends cc {
    private final int zzbKA;
    private /* synthetic */ cd zzbKB;
    private final ce zzbKy;
    private final List<Integer> zzbKz;

    cf(cd cdVar, int i, cl clVar, ch chVar, List<Integer> list, int i2, @Nullable ce ceVar, zzcuo zzcuo) {
        this.zzbKB = cdVar;
        super(i, clVar, chVar, zzcuo);
        this.zzbKy = ceVar;
        this.zzbKz = list;
        this.zzbKA = i2;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(cm cmVar) {
        String str;
        String valueOf;
        Object obj = null;
        if (cmVar.getStatus() == Status.zzaBm) {
            str = "Container resource successfully loaded from ";
            valueOf = String.valueOf(cmVar.zzCS());
            zzcvk.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            if (cmVar.getSource() == 0) {
                cn zzCQ = cmVar.zzCQ();
                if (!zzCQ.zzCU().zzCL()) {
                    this.zzbKB.zza(cmVar.getStatus(), zzCQ);
                    if (zzCQ.zzCT() != null && zzCQ.zzCT().length > 0) {
                        this.zzbKB.zzbKv.zzd(zzCQ.zzCU().zzCK(), zzCQ.zzCT());
                    }
                }
            }
            obj = 1;
        }
        if (obj != null) {
            this.zzbKy.zza(cmVar);
            return;
        }
        str = String.valueOf(cmVar.zzCS());
        Object obj2 = cmVar.getStatus().isSuccess() ? "SUCCESS" : "FAILURE";
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 54) + String.valueOf(obj2).length());
        stringBuilder.append("Cannot fetch a valid resource from ");
        stringBuilder.append(str);
        stringBuilder.append(". Response status: ");
        stringBuilder.append(obj2);
        zzcvk.v(stringBuilder.toString());
        if (cmVar.getStatus().isSuccess()) {
            str = "Response source: ";
            valueOf = String.valueOf(cmVar.zzCS());
            zzcvk.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            int length = cmVar.zzCQ().zzCT().length;
            StringBuilder stringBuilder2 = new StringBuilder(26);
            stringBuilder2.append("Response size: ");
            stringBuilder2.append(length);
            zzcvk.v(stringBuilder2.toString());
        }
        this.zzbKB.zza(this.zzbKt, this.zzbKz, this.zzbKA + 1, this.zzbKy, this.zzbHO);
    }
}
