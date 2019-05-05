package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;

final class te extends qi {
    private vt zzccD;

    public te(vt vtVar) {
        this.zzccD = vtVar;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof te) && ((te) obj).zzccD.equals(this.zzccD);
    }

    public final int hashCode() {
        return this.zzccD.hashCode();
    }

    public final vt zzGH() {
        return this.zzccD;
    }

    public final qi zza(vt vtVar) {
        return new te(vtVar);
    }

    public final vj zza(vi viVar, vt vtVar) {
        return null;
    }

    public final void zza(vj vjVar) {
    }

    public final void zza(DatabaseError databaseError) {
    }

    public final boolean zza(vl vlVar) {
        return false;
    }

    public final boolean zzc(qi qiVar) {
        return qiVar instanceof te;
    }
}
