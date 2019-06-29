package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.awareness.fence.AwarenessFence;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.Collection;

public final class zzbiy extends AwarenessFence {
    public static final Creator<zzbiy> CREATOR = new zzbiz();
    private acn zzaKZ;
    private byte[] zzaLa;

    private zzbiy(acn acn) {
        this.zzaKZ = (acn) zzbo.zzu(acn);
        this.zzaLa = null;
        zzsA();
    }

    public zzbiy(byte[] bArr) {
        this.zzaKZ = null;
        this.zzaLa = bArr;
        zzsA();
    }

    public static zzbiy zza(zzbin zzbin) {
        zzbo.zzu(zzbin);
        acn zzaK = zzaK(7);
        zzaK.zzcqR = zzbin.zzsB();
        return new zzbiy(zzaK);
    }

    public static zzbiy zza(zzbio zzbio) {
        zzbo.zzu(zzbio);
        acn zzaK = zzaK(11);
        zzaK.zzcqV = zzbio.zzsE();
        return new zzbiy(zzaK);
    }

    public static zzbiy zza(zzbis zzbis) {
        zzbo.zzu(zzbis);
        acn zzaK = zzaK(12);
        zzaK.zzcqW = zzbis.zzsF();
        return new zzbiy(zzaK);
    }

    public static zzbiy zza(zzbiy zzbiy) {
        zzbo.zzu(zzbiy);
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzbiy);
        acn zzaK = zzaK(3);
        zzaK.zzcqN = zzg(arrayList);
        return new zzbiy(zzaK);
    }

    public static zzbiy zza(zzbjo zzbjo) {
        zzbo.zzu(zzbjo);
        acn zzaK = zzaK(5);
        zzaK.zzcqP = zzbjo.zzsG();
        return new zzbiy(zzaK);
    }

    public static zzbiy zza(zzbjq zzbjq) {
        zzbo.zzu(zzbjq);
        acn zzaK = zzaK(19);
        zzaK.zzcre = zzbjq.zzsH();
        return new zzbiy(zzaK);
    }

    public static zzbiy zza(zzbjr zzbjr) {
        acn zzaK;
        zzbo.zzu(zzbjr);
        if (zzbjr.zzsI().zzcrI) {
            zzaK = zzaK(20);
            zzaK.zzcrf = zzbjr.zzsI();
        } else {
            zzaK = zzaK(4);
            zzaK.zzcqO = zzbjr.zzsI();
        }
        return new zzbiy(zzaK);
    }

    public static zzbiy zza(zzbjs zzbjs) {
        zzbo.zzu(zzbjs);
        acn zzaK = zzaK(15);
        zzaK.zzcra = zzbjs.zzsJ();
        return new zzbiy(zzaK);
    }

    private static acn zzaK(int i) {
        acn acn = new acn();
        acn.type = i;
        return acn;
    }

    public static zzbiy zze(Collection<zzbiy> collection) {
        zzbo.zzu(collection);
        zzbo.zzaf(collection.isEmpty() ^ 1);
        acn zzaK = zzaK(1);
        zzaK.zzcqN = zzg(collection);
        return new zzbiy(zzaK);
    }

    public static zzbiy zzf(Collection<zzbiy> collection) {
        zzbo.zzu(collection);
        zzbo.zzaf(collection.isEmpty() ^ 1);
        acn zzaK = zzaK(2);
        zzaK.zzcqN = zzg(collection);
        return new zzbiy(zzaK);
    }

    private static acn[] zzg(Collection<zzbiy> collection) {
        acn[] acnArr = new acn[collection.size()];
        int i = 0;
        for (zzbiy zzbiy : collection) {
            int i2 = i + 1;
            zzbiy.zzsz();
            acnArr[i] = zzbiy.zzaKZ;
            i = i2;
        }
        return acnArr;
    }

    private final void zzsA() {
        if (this.zzaKZ == null && this.zzaLa != null) {
            return;
        }
        if (this.zzaKZ != null && this.zzaLa == null) {
            return;
        }
        if (this.zzaKZ != null && this.zzaLa != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        } else if (this.zzaKZ == null && this.zzaLa == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        } else {
            throw new IllegalStateException("Impossible");
        }
    }

    private final void zzsz() {
        if ((this.zzaKZ != null ? 1 : null) == null) {
            try {
                this.zzaKZ = (acn) adp.zza(new acn(), this.zzaLa);
                this.zzaLa = null;
            } catch (ado e) {
                zzeq.zza("ContextFenceStub", "Could not deserialize context fence bytes.", e);
                throw new IllegalStateException(e);
            }
        }
        zzsA();
    }

    public final String toString() {
        zzsz();
        return this.zzaKZ.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaLa != null ? this.zzaLa : adp.zzc(this.zzaKZ), false);
        zzd.zzI(parcel, i);
    }
}
