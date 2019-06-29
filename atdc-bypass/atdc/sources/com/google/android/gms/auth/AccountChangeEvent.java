package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public class AccountChangeEvent extends zza {
    public static final Creator<AccountChangeEvent> CREATOR = new zza();
    private int mVersion;
    private long zzakg;
    private String zzakh;
    private int zzaki;
    private int zzakj;
    private String zzakk;

    AccountChangeEvent(int i, long j, String str, int i2, int i3, String str2) {
        this.mVersion = i;
        this.zzakg = j;
        this.zzakh = (String) zzbo.zzu(str);
        this.zzaki = i2;
        this.zzakj = i3;
        this.zzakk = str2;
    }

    public AccountChangeEvent(long j, String str, int i, int i2, String str2) {
        this.mVersion = 1;
        this.zzakg = j;
        this.zzakh = (String) zzbo.zzu(str);
        this.zzaki = i;
        this.zzakj = i2;
        this.zzakk = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AccountChangeEvent) {
            AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
            return this.mVersion == accountChangeEvent.mVersion && this.zzakg == accountChangeEvent.zzakg && zzbe.equal(this.zzakh, accountChangeEvent.zzakh) && this.zzaki == accountChangeEvent.zzaki && this.zzakj == accountChangeEvent.zzakj && zzbe.equal(this.zzakk, accountChangeEvent.zzakk);
        }
    }

    public String getAccountName() {
        return this.zzakh;
    }

    public String getChangeData() {
        return this.zzakk;
    }

    public int getChangeType() {
        return this.zzaki;
    }

    public int getEventIndex() {
        return this.zzakj;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.mVersion), Long.valueOf(this.zzakg), this.zzakh, Integer.valueOf(this.zzaki), Integer.valueOf(this.zzakj), this.zzakk});
    }

    public String toString() {
        Object obj = "UNKNOWN";
        switch (this.zzaki) {
            case 1:
                obj = "ADDED";
                break;
            case 2:
                obj = "REMOVED";
                break;
            case 3:
                obj = "RENAMED_FROM";
                break;
            case 4:
                obj = "RENAMED_TO";
                break;
        }
        String str = this.zzakh;
        String str2 = this.zzakk;
        int i = this.zzakj;
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str).length() + 91) + String.valueOf(obj).length()) + String.valueOf(str2).length());
        stringBuilder.append("AccountChangeEvent {accountName = ");
        stringBuilder.append(str);
        stringBuilder.append(", changeType = ");
        stringBuilder.append(obj);
        stringBuilder.append(", changeData = ");
        stringBuilder.append(str2);
        stringBuilder.append(", eventIndex = ");
        stringBuilder.append(i);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.mVersion);
        zzd.zza(parcel, 2, this.zzakg);
        zzd.zza(parcel, 3, this.zzakh, false);
        zzd.zzc(parcel, 4, this.zzaki);
        zzd.zzc(parcel, 5, this.zzakj);
        zzd.zza(parcel, 6, this.zzakk, false);
        zzd.zzI(parcel, i);
    }
}
