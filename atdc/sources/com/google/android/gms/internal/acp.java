package com.google.android.gms.internal;

import java.io.IOException;

public final class acp extends adj<acp> {
    private int day;
    private int hour;
    private int minutes;
    private int month;
    private int seconds;
    private int year;

    public acp() {
        this.year = 0;
        this.month = 0;
        this.day = 0;
        this.hour = 0;
        this.minutes = 0;
        this.seconds = 0;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acp)) {
            return false;
        }
        acp acp = (acp) obj;
        return (this.year == acp.year && this.month == acp.month && this.day == acp.day && this.hour == acp.hour && this.minutes == acp.minutes && this.seconds == acp.seconds) ? (this.zzcso == null || this.zzcso.isEmpty()) ? acp.zzcso == null || acp.zzcso.isEmpty() : this.zzcso.equals(acp.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((((((((getClass().getName().hashCode() + 527) * 31) + this.year) * 31) + this.month) * 31) + this.day) * 31) + this.hour) * 31) + this.minutes) * 31) + this.seconds) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.year != 0) {
            adh.zzr(1, this.year);
        }
        if (this.month != 0) {
            adh.zzr(2, this.month);
        }
        if (this.day != 0) {
            adh.zzr(3, this.day);
        }
        if (this.hour != 0) {
            adh.zzr(4, this.hour);
        }
        if (this.minutes != 0) {
            adh.zzr(5, this.minutes);
        }
        if (this.seconds != 0) {
            adh.zzr(6, this.seconds);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.year != 0) {
            zzn += adh.zzs(1, this.year);
        }
        if (this.month != 0) {
            zzn += adh.zzs(2, this.month);
        }
        if (this.day != 0) {
            zzn += adh.zzs(3, this.day);
        }
        if (this.hour != 0) {
            zzn += adh.zzs(4, this.hour);
        }
        if (this.minutes != 0) {
            zzn += adh.zzs(5, this.minutes);
        }
        return this.seconds != 0 ? zzn + adh.zzs(6, this.seconds) : zzn;
    }
}
