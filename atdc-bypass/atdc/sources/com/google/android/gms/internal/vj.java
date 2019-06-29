package com.google.android.gms.internal;

import com.google.firebase.database.DataSnapshot;

public final class vj implements vk {
    private final qi zzcgG;
    private final vl zzcgI;
    private final DataSnapshot zzcgM;
    private final String zzcgN;

    public vj(vl vlVar, qi qiVar, DataSnapshot dataSnapshot, String str) {
        this.zzcgI = vlVar;
        this.zzcgG = qiVar;
        this.zzcgM = dataSnapshot;
        this.zzcgN = str;
    }

    private final qr zzFq() {
        qr zzFq = this.zzcgM.getRef().zzFq();
        return this.zzcgI == vl.VALUE ? zzFq : zzFq.zzHe();
    }

    public final String toString() {
        String valueOf;
        String valueOf2;
        String valueOf3;
        if (this.zzcgI == vl.VALUE) {
            valueOf = String.valueOf(zzFq());
            valueOf2 = String.valueOf(this.zzcgI);
            valueOf3 = String.valueOf(this.zzcgM.getValue(true));
            StringBuilder stringBuilder = new StringBuilder(((String.valueOf(valueOf).length() + 4) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length());
            stringBuilder.append(valueOf);
            stringBuilder.append(": ");
            stringBuilder.append(valueOf2);
            stringBuilder.append(": ");
            stringBuilder.append(valueOf3);
            return stringBuilder.toString();
        }
        valueOf = String.valueOf(zzFq());
        valueOf2 = String.valueOf(this.zzcgI);
        String valueOf4 = String.valueOf(this.zzcgM.getKey());
        valueOf3 = String.valueOf(this.zzcgM.getValue(true));
        StringBuilder stringBuilder2 = new StringBuilder((((String.valueOf(valueOf).length() + 10) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf4).length()) + String.valueOf(valueOf3).length());
        stringBuilder2.append(valueOf);
        stringBuilder2.append(": ");
        stringBuilder2.append(valueOf2);
        stringBuilder2.append(": { ");
        stringBuilder2.append(valueOf4);
        stringBuilder2.append(": ");
        stringBuilder2.append(valueOf3);
        stringBuilder2.append(" }");
        return stringBuilder2.toString();
    }

    public final void zzHX() {
        this.zzcgG.zza(this);
    }

    public final vl zzHZ() {
        return this.zzcgI;
    }

    public final DataSnapshot zzIc() {
        return this.zzcgM;
    }

    public final String zzId() {
        return this.zzcgN;
    }
}
