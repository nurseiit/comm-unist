package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest.Gender;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

@Deprecated
public class MediationAdRequest {
    private final Date zzda;
    private final Gender zzdb;
    private final Set<String> zzdc;
    private final boolean zzdd;
    private final Location zzde;

    public MediationAdRequest(Date date, Gender gender, Set<String> set, boolean z, Location location) {
        this.zzda = date;
        this.zzdb = gender;
        this.zzdc = set;
        this.zzdd = z;
        this.zzde = location;
    }

    public Integer getAgeInYears() {
        if (this.zzda == null) {
            return null;
        }
        Calendar instance = Calendar.getInstance();
        Calendar instance2 = Calendar.getInstance();
        instance.setTime(this.zzda);
        Integer valueOf = Integer.valueOf(instance2.get(1) - instance.get(1));
        if (instance2.get(2) < instance.get(2) || (instance2.get(2) == instance.get(2) && instance2.get(5) < instance.get(5))) {
            valueOf = Integer.valueOf(valueOf.intValue() - 1);
        }
        return valueOf;
    }

    public Date getBirthday() {
        return this.zzda;
    }

    public Gender getGender() {
        return this.zzdb;
    }

    public Set<String> getKeywords() {
        return this.zzdc;
    }

    public Location getLocation() {
        return this.zzde;
    }

    public boolean isTesting() {
        return this.zzdd;
    }
}
