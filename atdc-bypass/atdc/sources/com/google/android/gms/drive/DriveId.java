package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Base64;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.ado;
import com.google.android.gms.internal.adp;
import com.google.android.gms.internal.zzbms;
import com.google.android.gms.internal.zzbmx;
import com.google.android.gms.internal.zzbng;
import com.google.android.gms.internal.zzbnn;
import com.google.android.gms.internal.zzbra;
import com.google.android.gms.internal.zzbrb;

public class DriveId extends zza implements ReflectedParcelable {
    public static final Creator<DriveId> CREATOR = new zzj();
    public static final int RESOURCE_TYPE_FILE = 0;
    public static final int RESOURCE_TYPE_FOLDER = 1;
    public static final int RESOURCE_TYPE_UNKNOWN = -1;
    private long zzaLQ;
    private volatile String zzaLS = null;
    private String zzaMh;
    private long zzaMi;
    private int zzaMj;
    private volatile String zzaMk = null;

    public DriveId(String str, long j, long j2, int i) {
        this.zzaMh = str;
        boolean z = true;
        zzbo.zzaf("".equals(str) ^ 1);
        if (str == null && j == -1) {
            z = false;
        }
        zzbo.zzaf(z);
        this.zzaMi = j;
        this.zzaLQ = j2;
        this.zzaMj = i;
    }

    public static DriveId decodeFromString(String str) {
        boolean startsWith = str.startsWith("DriveId:");
        String str2 = "Invalid DriveId: ";
        String valueOf = String.valueOf(str);
        zzbo.zzb(startsWith, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        return zzi(Base64.decode(str.substring(8), 10));
    }

    public static DriveId zzcO(String str) {
        zzbo.zzu(str);
        return new DriveId(str, -1, -1, -1);
    }

    private static DriveId zzi(byte[] bArr) {
        try {
            zzbra zzbra = (zzbra) adp.zza(new zzbra(), bArr);
            return new DriveId("".equals(zzbra.zzaPy) ? null : zzbra.zzaPy, zzbra.zzaPz, zzbra.zzaPw, zzbra.zzaPA);
        } catch (ado unused) {
            throw new IllegalArgumentException();
        }
    }

    public DriveFile asDriveFile() {
        if (this.zzaMj != 1) {
            return new zzbms(this);
        }
        throw new IllegalStateException("This DriveId corresponds to a folder. Call asDriveFolder instead.");
    }

    public DriveFolder asDriveFolder() {
        if (this.zzaMj != 0) {
            return new zzbmx(this);
        }
        throw new IllegalStateException("This DriveId corresponds to a file. Call asDriveFile instead.");
    }

    public DriveResource asDriveResource() {
        return this.zzaMj == 1 ? asDriveFolder() : this.zzaMj == 0 ? asDriveFile() : new zzbnn(this);
    }

    public final String encodeToString() {
        if (this.zzaLS == null) {
            zzbra zzbra = new zzbra();
            zzbra.versionCode = 1;
            zzbra.zzaPy = this.zzaMh == null ? "" : this.zzaMh;
            zzbra.zzaPz = this.zzaMi;
            zzbra.zzaPw = this.zzaLQ;
            zzbra.zzaPA = this.zzaMj;
            String encodeToString = Base64.encodeToString(adp.zzc(zzbra), 10);
            String valueOf = String.valueOf("DriveId:");
            encodeToString = String.valueOf(encodeToString);
            this.zzaLS = encodeToString.length() != 0 ? valueOf.concat(encodeToString) : new String(valueOf);
        }
        return this.zzaLS;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DriveId)) {
            return false;
        }
        DriveId driveId = (DriveId) obj;
        if (driveId.zzaLQ != this.zzaLQ) {
            return false;
        }
        if (driveId.zzaMi == -1 && this.zzaMi == -1) {
            return driveId.zzaMh.equals(this.zzaMh);
        }
        if (this.zzaMh == null || driveId.zzaMh == null) {
            return driveId.zzaMi == this.zzaMi;
        } else {
            if (driveId.zzaMi == this.zzaMi) {
                if (driveId.zzaMh.equals(this.zzaMh)) {
                    return true;
                }
                zzbng.zzy("DriveId", "Unexpected unequal resourceId for same DriveId object.");
            }
            return false;
        }
    }

    public String getResourceId() {
        return this.zzaMh;
    }

    public int getResourceType() {
        return this.zzaMj;
    }

    public int hashCode() {
        if (this.zzaMi == -1) {
            return this.zzaMh.hashCode();
        }
        String valueOf = String.valueOf(String.valueOf(this.zzaLQ));
        String valueOf2 = String.valueOf(String.valueOf(this.zzaMi));
        return (valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).hashCode();
    }

    public final String toInvariantString() {
        if (this.zzaMk == null) {
            zzbrb zzbrb = new zzbrb();
            zzbrb.zzaPz = this.zzaMi;
            zzbrb.zzaPw = this.zzaLQ;
            this.zzaMk = Base64.encodeToString(adp.zzc(zzbrb), 10);
        }
        return this.zzaMk;
    }

    public String toString() {
        return encodeToString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaMh, false);
        zzd.zza(parcel, 3, this.zzaMi);
        zzd.zza(parcel, 4, this.zzaLQ);
        zzd.zzc(parcel, 5, this.zzaMj);
        zzd.zzI(parcel, i);
    }
}
