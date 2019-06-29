package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.games.internal.zzc;
import java.util.Arrays;

public final class zzb extends zzc implements zza {
    public static final Creator<zzb> CREATOR = new zzc();
    private final String zzbbU;
    private final String zzbbV;
    private final long zzbbW;
    private final Uri zzbbX;
    private final Uri zzbbY;
    private final Uri zzbbZ;

    public zzb(zza zza) {
        this.zzbbU = zza.zzvf();
        this.zzbbV = zza.zzvg();
        this.zzbbW = zza.zzvh();
        this.zzbbX = zza.zzvi();
        this.zzbbY = zza.zzvj();
        this.zzbbZ = zza.zzvk();
    }

    zzb(String str, String str2, long j, Uri uri, Uri uri2, Uri uri3) {
        this.zzbbU = str;
        this.zzbbV = str2;
        this.zzbbW = j;
        this.zzbbX = uri;
        this.zzbbY = uri2;
        this.zzbbZ = uri3;
    }

    static int zza(zza zza) {
        return Arrays.hashCode(new Object[]{zza.zzvf(), zza.zzvg(), Long.valueOf(zza.zzvh()), zza.zzvi(), zza.zzvj(), zza.zzvk()});
    }

    static boolean zza(zza zza, Object obj) {
        if (!(obj instanceof zza)) {
            return false;
        }
        if (zza == obj) {
            return true;
        }
        zza zza2 = (zza) obj;
        return zzbe.equal(zza2.zzvf(), zza.zzvf()) && zzbe.equal(zza2.zzvg(), zza.zzvg()) && zzbe.equal(Long.valueOf(zza2.zzvh()), Long.valueOf(zza.zzvh())) && zzbe.equal(zza2.zzvi(), zza.zzvi()) && zzbe.equal(zza2.zzvj(), zza.zzvj()) && zzbe.equal(zza2.zzvk(), zza.zzvk());
    }

    static String zzb(zza zza) {
        return zzbe.zzt(zza).zzg("GameId", zza.zzvf()).zzg("GameName", zza.zzvg()).zzg("ActivityTimestampMillis", Long.valueOf(zza.zzvh())).zzg("GameIconUri", zza.zzvi()).zzg("GameHiResUri", zza.zzvj()).zzg("GameFeaturedUri", zza.zzvk()).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final int hashCode() {
        return zza(this);
    }

    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbbU, false);
        zzd.zza(parcel, 2, this.zzbbV, false);
        zzd.zza(parcel, 3, this.zzbbW);
        zzd.zza(parcel, 4, this.zzbbX, i, false);
        zzd.zza(parcel, 5, this.zzbbY, i, false);
        zzd.zza(parcel, 6, this.zzbbZ, i, false);
        zzd.zzI(parcel, zze);
    }

    public final String zzvf() {
        return this.zzbbU;
    }

    public final String zzvg() {
        return this.zzbbV;
    }

    public final long zzvh() {
        return this.zzbbW;
    }

    public final Uri zzvi() {
        return this.zzbbX;
    }

    public final Uri zzvj() {
        return this.zzbbY;
    }

    public final Uri zzvk() {
        return this.zzbbZ;
    }
}
