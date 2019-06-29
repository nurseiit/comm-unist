package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.util.zzn;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.zzbng;
import com.google.android.gms.internal.zzbot;
import com.google.android.gms.internal.zzbrc;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class CompletionEvent extends zza implements ResourceEvent {
    public static final Creator<CompletionEvent> CREATOR = new zzg();
    public static final int STATUS_CANCELED = 3;
    public static final int STATUS_CONFLICT = 2;
    public static final int STATUS_FAILURE = 1;
    public static final int STATUS_SUCCESS = 0;
    private int zzLe;
    private DriveId zzaLV;
    private ParcelFileDescriptor zzaMW;
    private ParcelFileDescriptor zzaMX;
    private MetadataBundle zzaMY;
    private List<String> zzaMZ;
    private IBinder zzaNa;
    private boolean zzaNb = false;
    private boolean zzaNc = false;
    private boolean zzaNd = false;
    private String zzakh;

    CompletionEvent(DriveId driveId, String str, ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, MetadataBundle metadataBundle, List<String> list, int i, IBinder iBinder) {
        this.zzaLV = driveId;
        this.zzakh = str;
        this.zzaMW = parcelFileDescriptor;
        this.zzaMX = parcelFileDescriptor2;
        this.zzaMY = metadataBundle;
        this.zzaMZ = list;
        this.zzLe = i;
        this.zzaNa = iBinder;
    }

    private final void zzq(boolean z) {
        zzsY();
        this.zzaNd = true;
        zzn.zza(this.zzaMW);
        zzn.zza(this.zzaMX);
        if (this.zzaMY != null && this.zzaMY.zzc(zzbrc.zzaQv)) {
            ((BitmapTeleporter) this.zzaMY.zza(zzbrc.zzaQv)).release();
        }
        String str;
        String str2;
        if (this.zzaNa == null) {
            str = "CompletionEvent";
            str2 = "No callback on ";
            String valueOf = String.valueOf(z ? "snooze" : "dismiss");
            zzbng.zzz(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            return;
        }
        try {
            zzbot.zzK(this.zzaNa).zzq(z);
        } catch (RemoteException e) {
            str2 = "CompletionEvent";
            Object obj = z ? "snooze" : "dismiss";
            str = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(obj).length() + 21) + String.valueOf(str).length());
            stringBuilder.append("RemoteException on ");
            stringBuilder.append(obj);
            stringBuilder.append(": ");
            stringBuilder.append(str);
            zzbng.zzz(str2, stringBuilder.toString());
        }
    }

    private final void zzsY() {
        if (this.zzaNd) {
            throw new IllegalStateException("Event has already been dismissed or snoozed.");
        }
    }

    public final void dismiss() {
        zzq(false);
    }

    public final String getAccountName() {
        zzsY();
        return this.zzakh;
    }

    public final InputStream getBaseContentsInputStream() {
        zzsY();
        if (this.zzaMW == null) {
            return null;
        }
        if (this.zzaNb) {
            throw new IllegalStateException("getBaseInputStream() can only be called once per CompletionEvent instance.");
        }
        this.zzaNb = true;
        return new FileInputStream(this.zzaMW.getFileDescriptor());
    }

    public final DriveId getDriveId() {
        zzsY();
        return this.zzaLV;
    }

    public final InputStream getModifiedContentsInputStream() {
        zzsY();
        if (this.zzaMX == null) {
            return null;
        }
        if (this.zzaNc) {
            throw new IllegalStateException("getModifiedInputStream() can only be called once per CompletionEvent instance.");
        }
        this.zzaNc = true;
        return new FileInputStream(this.zzaMX.getFileDescriptor());
    }

    public final MetadataChangeSet getModifiedMetadataChangeSet() {
        zzsY();
        return this.zzaMY != null ? new MetadataChangeSet(this.zzaMY) : null;
    }

    public final int getStatus() {
        zzsY();
        return this.zzLe;
    }

    public final List<String> getTrackingTags() {
        zzsY();
        return new ArrayList(this.zzaMZ);
    }

    public final int getType() {
        return 2;
    }

    public final void snooze() {
        zzq(true);
    }

    public final String toString() {
        String str;
        if (this.zzaMZ == null) {
            str = "<null>";
        } else {
            str = String.valueOf(TextUtils.join("','", this.zzaMZ));
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 2);
            stringBuilder.append("'");
            stringBuilder.append(str);
            stringBuilder.append("'");
            str = stringBuilder.toString();
        }
        return String.format(Locale.US, "CompletionEvent [id=%s, status=%s, trackingTag=%s]", new Object[]{this.zzaLV, Integer.valueOf(this.zzLe), str});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i |= 1;
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaLV, i, false);
        zzd.zza(parcel, 3, this.zzakh, false);
        zzd.zza(parcel, 4, this.zzaMW, i, false);
        zzd.zza(parcel, 5, this.zzaMX, i, false);
        zzd.zza(parcel, 6, this.zzaMY, i, false);
        zzd.zzb(parcel, 7, this.zzaMZ, false);
        zzd.zzc(parcel, 8, this.zzLe);
        zzd.zza(parcel, 9, this.zzaNa, false);
        zzd.zzI(parcel, zze);
    }
}
