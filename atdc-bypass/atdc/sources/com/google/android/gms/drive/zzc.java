package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public final class zzc extends zza {
    public static final Creator<zzc> CREATOR = new zzd();
    private ParcelFileDescriptor zzaGc;
    final int zzaLT;
    private int zzaLU;
    private DriveId zzaLV;
    private boolean zzaLW;
    private String zzyi;

    public zzc(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, DriveId driveId, boolean z, String str) {
        this.zzaGc = parcelFileDescriptor;
        this.zzaLT = i;
        this.zzaLU = i2;
        this.zzaLV = driveId;
        this.zzaLW = z;
        this.zzyi = str;
    }

    public final DriveId getDriveId() {
        return this.zzaLV;
    }

    public final InputStream getInputStream() {
        return new FileInputStream(this.zzaGc.getFileDescriptor());
    }

    public final int getMode() {
        return this.zzaLU;
    }

    public final OutputStream getOutputStream() {
        return new FileOutputStream(this.zzaGc.getFileDescriptor());
    }

    public final ParcelFileDescriptor getParcelFileDescriptor() {
        return this.zzaGc;
    }

    public final int getRequestId() {
        return this.zzaLT;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaGc, i, false);
        zzd.zzc(parcel, 3, this.zzaLT);
        zzd.zzc(parcel, 4, this.zzaLU);
        zzd.zza(parcel, 5, this.zzaLV, i, false);
        zzd.zza(parcel, 7, this.zzaLW);
        zzd.zza(parcel, 8, this.zzyi, false);
        zzd.zzI(parcel, zze);
    }

    public final boolean zzsK() {
        return this.zzaLW;
    }
}
