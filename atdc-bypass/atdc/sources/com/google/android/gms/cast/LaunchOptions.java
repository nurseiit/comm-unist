package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzaye;
import java.util.Arrays;
import java.util.Locale;

public class LaunchOptions extends zza {
    public static final Creator<LaunchOptions> CREATOR = new zzab();
    private String zzaeT;
    private boolean zzapV;

    public static final class Builder {
        private LaunchOptions zzapW = new LaunchOptions();

        public final LaunchOptions build() {
            return this.zzapW;
        }

        public final Builder setLocale(Locale locale) {
            this.zzapW.setLanguage(zzaye.zzb(locale));
            return this;
        }

        public final Builder setRelaunchIfRunning(boolean z) {
            this.zzapW.setRelaunchIfRunning(z);
            return this;
        }
    }

    public LaunchOptions() {
        this(false, zzaye.zzb(Locale.getDefault()));
    }

    LaunchOptions(boolean z, String str) {
        this.zzapV = z;
        this.zzaeT = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LaunchOptions)) {
            return false;
        }
        LaunchOptions launchOptions = (LaunchOptions) obj;
        return this.zzapV == launchOptions.zzapV && zzaye.zza(this.zzaeT, launchOptions.zzaeT);
    }

    public String getLanguage() {
        return this.zzaeT;
    }

    public boolean getRelaunchIfRunning() {
        return this.zzapV;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.zzapV), this.zzaeT});
    }

    public void setLanguage(String str) {
        this.zzaeT = str;
    }

    public void setRelaunchIfRunning(boolean z) {
        this.zzapV = z;
    }

    public String toString() {
        return String.format("LaunchOptions(relaunchIfRunning=%b, language=%s)", new Object[]{Boolean.valueOf(this.zzapV), this.zzaeT});
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, getRelaunchIfRunning());
        zzd.zza(parcel, 3, getLanguage(), false);
        zzd.zzI(parcel, i);
    }
}
