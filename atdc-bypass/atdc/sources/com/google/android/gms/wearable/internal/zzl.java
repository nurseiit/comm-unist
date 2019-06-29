package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzl extends zza {
    public static final Creator<zzl> CREATOR = new zzm();
    private final String mAppId;
    private int mId;
    private final String mPackageName;
    private final String zzalP;
    private final String zzaoy;
    private final String zzapS;
    private final String zzbRP;
    private final String zzbRQ;
    private final byte zzbRR;
    private final byte zzbRS;
    private final byte zzbRT;
    private final byte zzbRU;

    public zzl(int i, String str, String str2, String str3, String str4, String str5, String str6, byte b, byte b2, byte b3, byte b4, String str7) {
        this.mId = i;
        this.mAppId = str;
        this.zzbRP = str2;
        this.zzapS = str3;
        this.zzaoy = str4;
        this.zzbRQ = str5;
        this.zzalP = str6;
        this.zzbRR = b;
        this.zzbRS = b2;
        this.zzbRT = b3;
        this.zzbRU = b4;
        this.mPackageName = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzl zzl = (zzl) obj;
        if (this.mId != zzl.mId || this.zzbRR != zzl.zzbRR || this.zzbRS != zzl.zzbRS || this.zzbRT != zzl.zzbRT || this.zzbRU != zzl.zzbRU || !this.mAppId.equals(zzl.mAppId)) {
            return false;
        }
        if (this.zzbRP != null) {
            if (!this.zzbRP.equals(zzl.zzbRP)) {
                return false;
            }
        } else if (zzl.zzbRP != null) {
            return false;
        }
        if (!this.zzapS.equals(zzl.zzapS) || !this.zzaoy.equals(zzl.zzaoy) || !this.zzbRQ.equals(zzl.zzbRQ)) {
            return false;
        }
        if (this.zzalP != null) {
            if (!this.zzalP.equals(zzl.zzalP)) {
                return false;
            }
        } else if (zzl.zzalP != null) {
            return false;
        }
        return this.mPackageName != null ? this.mPackageName.equals(zzl.mPackageName) : zzl.mPackageName == null;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((((((((((this.mId + 31) * 31) + this.mAppId.hashCode()) * 31) + (this.zzbRP != null ? this.zzbRP.hashCode() : 0)) * 31) + this.zzapS.hashCode()) * 31) + this.zzaoy.hashCode()) * 31) + this.zzbRQ.hashCode()) * 31) + (this.zzalP != null ? this.zzalP.hashCode() : 0)) * 31) + this.zzbRR) * 31) + this.zzbRS) * 31) + this.zzbRT) * 31) + this.zzbRU) * 31;
        if (this.mPackageName != null) {
            i = this.mPackageName.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        int i = this.mId;
        String str = this.mAppId;
        String str2 = this.zzbRP;
        String str3 = this.zzapS;
        String str4 = this.zzaoy;
        String str5 = this.zzbRQ;
        String str6 = this.zzalP;
        byte b = this.zzbRR;
        byte b2 = this.zzbRS;
        byte b3 = this.zzbRT;
        byte b4 = this.zzbRU;
        String str7 = this.mPackageName;
        StringBuilder stringBuilder = new StringBuilder(((((((String.valueOf(str).length() + 211) + String.valueOf(str2).length()) + String.valueOf(str3).length()) + String.valueOf(str4).length()) + String.valueOf(str5).length()) + String.valueOf(str6).length()) + String.valueOf(str7).length());
        stringBuilder.append("AncsNotificationParcelable{, id=");
        stringBuilder.append(i);
        stringBuilder.append(", appId='");
        stringBuilder.append(str);
        stringBuilder.append("', dateTime='");
        stringBuilder.append(str2);
        stringBuilder.append("', notificationText='");
        stringBuilder.append(str3);
        stringBuilder.append("', title='");
        stringBuilder.append(str4);
        stringBuilder.append("', subtitle='");
        stringBuilder.append(str5);
        stringBuilder.append("', displayName='");
        stringBuilder.append(str6);
        stringBuilder.append("', eventId=");
        stringBuilder.append(b);
        stringBuilder.append(", eventFlags=");
        stringBuilder.append(b2);
        stringBuilder.append(", categoryId=");
        stringBuilder.append(b3);
        stringBuilder.append(", categoryCount=");
        stringBuilder.append(b4);
        stringBuilder.append(", packageName='");
        stringBuilder.append(str7);
        stringBuilder.append("'}");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.mId);
        zzd.zza(parcel, 3, this.mAppId, false);
        zzd.zza(parcel, 4, this.zzbRP, false);
        zzd.zza(parcel, 5, this.zzapS, false);
        zzd.zza(parcel, 6, this.zzaoy, false);
        zzd.zza(parcel, 7, this.zzbRQ, false);
        zzd.zza(parcel, 8, this.zzalP == null ? this.mAppId : this.zzalP, false);
        zzd.zza(parcel, 9, this.zzbRR);
        zzd.zza(parcel, 10, this.zzbRS);
        zzd.zza(parcel, 11, this.zzbRT);
        zzd.zza(parcel, 12, this.zzbRU);
        zzd.zza(parcel, 13, this.mPackageName, false);
        zzd.zzI(parcel, i);
    }
}
