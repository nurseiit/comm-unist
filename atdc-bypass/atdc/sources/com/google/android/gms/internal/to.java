package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.ValueEventListener;
import com.google.firebase.database.zzh;

public final class to extends qi {
    private final qu zzbYY;
    private final vt zzccD;
    private final ValueEventListener zzcfr;

    public to(qu quVar, ValueEventListener valueEventListener, vt vtVar) {
        this.zzbYY = quVar;
        this.zzcfr = valueEventListener;
        this.zzccD = vtVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof to) {
            to toVar = (to) obj;
            if (toVar.zzcfr.equals(this.zzcfr) && toVar.zzbYY.equals(this.zzbYY) && toVar.zzccD.equals(this.zzccD)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.zzcfr.hashCode() * 31) + this.zzbYY.hashCode()) * 31) + this.zzccD.hashCode();
    }

    public final String toString() {
        return "ValueEventRegistration";
    }

    public final vt zzGH() {
        return this.zzccD;
    }

    public final qi zza(vt vtVar) {
        return new to(this.zzbYY, this.zzcfr, vtVar);
    }

    public final vj zza(vi viVar, vt vtVar) {
        return new vj(vl.VALUE, this, zzh.zza(zzh.zza(this.zzbYY, vtVar.zzFq()), viVar.zzHW()), null);
    }

    public final void zza(vj vjVar) {
        if (!zzGW()) {
            this.zzcfr.onDataChange(vjVar.zzIc());
        }
    }

    public final void zza(DatabaseError databaseError) {
        this.zzcfr.onCancelled(databaseError);
    }

    public final boolean zza(vl vlVar) {
        return vlVar == vl.VALUE;
    }

    public final boolean zzc(qi qiVar) {
        return (qiVar instanceof to) && ((to) qiVar).zzcfr.equals(this.zzcfr);
    }
}
