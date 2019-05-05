package com.google.android.gms.internal;

import com.google.firebase.database.ChildEventListener;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.zzh;

public final class px extends qi {
    private final qu zzbYY;
    private final ChildEventListener zzccC;
    private final vt zzccD;

    public px(qu quVar, ChildEventListener childEventListener, vt vtVar) {
        this.zzbYY = quVar;
        this.zzccC = childEventListener;
        this.zzccD = vtVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof px) {
            px pxVar = (px) obj;
            if (pxVar.zzccC.equals(this.zzccC) && pxVar.zzbYY.equals(this.zzbYY) && pxVar.zzccD.equals(this.zzccD)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.zzccC.hashCode() * 31) + this.zzbYY.hashCode()) * 31) + this.zzccD.hashCode();
    }

    public final String toString() {
        return "ChildEventRegistration";
    }

    public final vt zzGH() {
        return this.zzccD;
    }

    public final qi zza(vt vtVar) {
        return new px(this.zzbYY, this.zzccC, vtVar);
    }

    public final vj zza(vi viVar, vt vtVar) {
        return new vj(viVar.zzHZ(), this, zzh.zza(zzh.zza(this.zzbYY, vtVar.zzFq().zza(viVar.zzHY())), viVar.zzHW()), viVar.zzIa() != null ? viVar.zzIa().asString() : null);
    }

    public final void zza(vj vjVar) {
        if (!zzGW()) {
            switch (vjVar.zzHZ()) {
                case CHILD_ADDED:
                    this.zzccC.onChildAdded(vjVar.zzIc(), vjVar.zzId());
                    return;
                case CHILD_CHANGED:
                    this.zzccC.onChildChanged(vjVar.zzIc(), vjVar.zzId());
                    return;
                case CHILD_MOVED:
                    this.zzccC.onChildMoved(vjVar.zzIc(), vjVar.zzId());
                    return;
                case CHILD_REMOVED:
                    this.zzccC.onChildRemoved(vjVar.zzIc());
                    return;
                default:
                    return;
            }
        }
    }

    public final void zza(DatabaseError databaseError) {
        this.zzccC.onCancelled(databaseError);
    }

    public final boolean zza(vl vlVar) {
        return vlVar != vl.VALUE;
    }

    public final boolean zzc(qi qiVar) {
        return (qiVar instanceof px) && ((px) qiVar).zzccC.equals(this.zzccC);
    }
}
