package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.games.internal.zzc;
import java.util.Arrays;

public final class zza extends zzc implements PlayerStats {
    public static final Creator<zza> CREATOR = new zzb();
    private final float zzbeP;
    private final float zzbeQ;
    private final int zzbeR;
    private final int zzbeS;
    private final int zzbeT;
    private final float zzbeU;
    private final float zzbeV;
    private final Bundle zzbeW;
    private final float zzbeX;
    private final float zzbeY;
    private final float zzbeZ;

    zza(float f, float f2, int i, int i2, int i3, float f3, float f4, Bundle bundle, float f5, float f6, float f7) {
        this.zzbeP = f;
        this.zzbeQ = f2;
        this.zzbeR = i;
        this.zzbeS = i2;
        this.zzbeT = i3;
        this.zzbeU = f3;
        this.zzbeV = f4;
        this.zzbeW = bundle;
        this.zzbeX = f5;
        this.zzbeY = f6;
        this.zzbeZ = f7;
    }

    public zza(PlayerStats playerStats) {
        this.zzbeP = playerStats.getAverageSessionLength();
        this.zzbeQ = playerStats.getChurnProbability();
        this.zzbeR = playerStats.getDaysSinceLastPlayed();
        this.zzbeS = playerStats.getNumberOfPurchases();
        this.zzbeT = playerStats.getNumberOfSessions();
        this.zzbeU = playerStats.getSessionPercentile();
        this.zzbeV = playerStats.getSpendPercentile();
        this.zzbeX = playerStats.getSpendProbability();
        this.zzbeY = playerStats.getHighSpenderProbability();
        this.zzbeZ = playerStats.getTotalSpendNext28Days();
        this.zzbeW = playerStats.zzvw();
    }

    static int zza(PlayerStats playerStats) {
        return Arrays.hashCode(new Object[]{Float.valueOf(playerStats.getAverageSessionLength()), Float.valueOf(playerStats.getChurnProbability()), Integer.valueOf(playerStats.getDaysSinceLastPlayed()), Integer.valueOf(playerStats.getNumberOfPurchases()), Integer.valueOf(playerStats.getNumberOfSessions()), Float.valueOf(playerStats.getSessionPercentile()), Float.valueOf(playerStats.getSpendPercentile()), Float.valueOf(playerStats.getSpendProbability()), Float.valueOf(playerStats.getHighSpenderProbability()), Float.valueOf(playerStats.getTotalSpendNext28Days())});
    }

    static boolean zza(PlayerStats playerStats, Object obj) {
        if (!(obj instanceof PlayerStats)) {
            return false;
        }
        if (playerStats == obj) {
            return true;
        }
        PlayerStats playerStats2 = (PlayerStats) obj;
        return zzbe.equal(Float.valueOf(playerStats2.getAverageSessionLength()), Float.valueOf(playerStats.getAverageSessionLength())) && zzbe.equal(Float.valueOf(playerStats2.getChurnProbability()), Float.valueOf(playerStats.getChurnProbability())) && zzbe.equal(Integer.valueOf(playerStats2.getDaysSinceLastPlayed()), Integer.valueOf(playerStats.getDaysSinceLastPlayed())) && zzbe.equal(Integer.valueOf(playerStats2.getNumberOfPurchases()), Integer.valueOf(playerStats.getNumberOfPurchases())) && zzbe.equal(Integer.valueOf(playerStats2.getNumberOfSessions()), Integer.valueOf(playerStats.getNumberOfSessions())) && zzbe.equal(Float.valueOf(playerStats2.getSessionPercentile()), Float.valueOf(playerStats.getSessionPercentile())) && zzbe.equal(Float.valueOf(playerStats2.getSpendPercentile()), Float.valueOf(playerStats.getSpendPercentile())) && zzbe.equal(Float.valueOf(playerStats2.getSpendProbability()), Float.valueOf(playerStats.getSpendProbability())) && zzbe.equal(Float.valueOf(playerStats2.getHighSpenderProbability()), Float.valueOf(playerStats.getHighSpenderProbability())) && zzbe.equal(Float.valueOf(playerStats2.getTotalSpendNext28Days()), Float.valueOf(playerStats.getTotalSpendNext28Days()));
    }

    static String zzb(PlayerStats playerStats) {
        return zzbe.zzt(playerStats).zzg("AverageSessionLength", Float.valueOf(playerStats.getAverageSessionLength())).zzg("ChurnProbability", Float.valueOf(playerStats.getChurnProbability())).zzg("DaysSinceLastPlayed", Integer.valueOf(playerStats.getDaysSinceLastPlayed())).zzg("NumberOfPurchases", Integer.valueOf(playerStats.getNumberOfPurchases())).zzg("NumberOfSessions", Integer.valueOf(playerStats.getNumberOfSessions())).zzg("SessionPercentile", Float.valueOf(playerStats.getSessionPercentile())).zzg("SpendPercentile", Float.valueOf(playerStats.getSpendPercentile())).zzg("SpendProbability", Float.valueOf(playerStats.getSpendProbability())).zzg("HighSpenderProbability", Float.valueOf(playerStats.getHighSpenderProbability())).zzg("TotalSpendNext28Days", Float.valueOf(playerStats.getTotalSpendNext28Days())).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final float getAverageSessionLength() {
        return this.zzbeP;
    }

    public final float getChurnProbability() {
        return this.zzbeQ;
    }

    public final int getDaysSinceLastPlayed() {
        return this.zzbeR;
    }

    public final float getHighSpenderProbability() {
        return this.zzbeY;
    }

    public final int getNumberOfPurchases() {
        return this.zzbeS;
    }

    public final int getNumberOfSessions() {
        return this.zzbeT;
    }

    public final float getSessionPercentile() {
        return this.zzbeU;
    }

    public final float getSpendPercentile() {
        return this.zzbeV;
    }

    public final float getSpendProbability() {
        return this.zzbeX;
    }

    public final float getTotalSpendNext28Days() {
        return this.zzbeZ;
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
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getAverageSessionLength());
        zzd.zza(parcel, 2, getChurnProbability());
        zzd.zzc(parcel, 3, getDaysSinceLastPlayed());
        zzd.zzc(parcel, 4, getNumberOfPurchases());
        zzd.zzc(parcel, 5, getNumberOfSessions());
        zzd.zza(parcel, 6, getSessionPercentile());
        zzd.zza(parcel, 7, getSpendPercentile());
        zzd.zza(parcel, 8, this.zzbeW, false);
        zzd.zza(parcel, 9, getSpendProbability());
        zzd.zza(parcel, 10, getHighSpenderProbability());
        zzd.zza(parcel, 11, getTotalSpendNext28Days());
        zzd.zzI(parcel, i);
    }

    public final Bundle zzvw() {
        return this.zzbeW;
    }
}
