package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzn;
import com.google.android.gms.games.internal.zzc;
import com.google.android.gms.games.internal.zze;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

public final class zza extends zzc implements SnapshotContents {
    public static final Creator<zza> CREATOR = new zzb();
    private static final Object zzbew = new Object();
    private com.google.android.gms.drive.zzc zzaOg;

    public zza(com.google.android.gms.drive.zzc zzc) {
        this.zzaOg = zzc;
    }

    private final boolean zza(int i, byte[] bArr, int i2, int i3, boolean z) {
        zzbo.zza(isClosed() ^ 1, (Object) "Must provide a previously opened SnapshotContents");
        synchronized (zzbew) {
            FileOutputStream fileOutputStream = new FileOutputStream(this.zzaOg.getParcelFileDescriptor().getFileDescriptor());
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            try {
                FileChannel channel = fileOutputStream.getChannel();
                channel.position((long) i);
                bufferedOutputStream.write(bArr, i2, i3);
                if (z) {
                    channel.truncate((long) bArr.length);
                }
                bufferedOutputStream.flush();
            } catch (IOException e) {
                zze.zzb("SnapshotContentsEntity", "Failed to write snapshot data", e);
                return false;
            }
        }
        return true;
    }

    public final void close() {
        this.zzaOg = null;
    }

    public final ParcelFileDescriptor getParcelFileDescriptor() {
        zzbo.zza(isClosed() ^ 1, (Object) "Cannot mutate closed contents!");
        return this.zzaOg.getParcelFileDescriptor();
    }

    public final boolean isClosed() {
        return this.zzaOg == null;
    }

    public final boolean modifyBytes(int i, byte[] bArr, int i2, int i3) {
        return zza(i, bArr, i2, bArr.length, false);
    }

    public final byte[] readFully() throws IOException {
        byte[] zza;
        zzbo.zza(isClosed() ^ 1, (Object) "Must provide a previously opened Snapshot");
        synchronized (zzbew) {
            FileInputStream fileInputStream = new FileInputStream(this.zzaOg.getParcelFileDescriptor().getFileDescriptor());
            BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
            try {
                fileInputStream.getChannel().position(0);
                zza = zzn.zza(bufferedInputStream, false);
                fileInputStream.getChannel().position(0);
            } catch (IOException e) {
                zze.zzc("SnapshotContentsEntity", "Failed to read snapshot data", e);
                throw e;
            }
        }
        return zza;
    }

    public final boolean writeBytes(byte[] bArr) {
        return zza(0, bArr, 0, bArr.length, true);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaOg, i, false);
        zzd.zzI(parcel, zze);
    }

    public final com.google.android.gms.drive.zzc zzsM() {
        return this.zzaOg;
    }
}
