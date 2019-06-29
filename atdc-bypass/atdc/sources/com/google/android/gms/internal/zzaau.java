package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.ParcelFileDescriptor.AutoCloseOutputStream;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.util.zzn;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;

@zzzn
public final class zzaau extends zza {
    public static final Creator<zzaau> CREATOR = new zzaaw();
    private ParcelFileDescriptor zzTP;
    private Parcelable zzTQ;
    private boolean zzTR;

    zzaau(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzTP = parcelFileDescriptor;
        this.zzTQ = null;
        this.zzTR = true;
    }

    public zzaau(SafeParcelable safeParcelable) {
        this.zzTP = null;
        this.zzTQ = safeParcelable;
        this.zzTR = false;
    }

    private final <T> ParcelFileDescriptor zzc(byte[] bArr) {
        Throwable e;
        Closeable autoCloseOutputStream;
        try {
            ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new AutoCloseOutputStream(createPipe[1]);
            try {
                new Thread(new zzaav(this, autoCloseOutputStream, bArr)).start();
                return createPipe[0];
            } catch (IOException e2) {
                e = e2;
                zzajc.zzb("Error transporting the ad response", e);
                zzbs.zzbD().zza(e, "LargeParcelTeleporter.pipeData.2");
                zzn.closeQuietly(autoCloseOutputStream);
                return null;
            }
        } catch (IOException e3) {
            e = e3;
            autoCloseOutputStream = null;
            zzajc.zzb("Error transporting the ad response", e);
            zzbs.zzbD().zza(e, "LargeParcelTeleporter.pipeData.2");
            zzn.closeQuietly(autoCloseOutputStream);
            return null;
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (this.zzTP == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.zzTQ.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                this.zzTP = zzc(marshall);
            } finally {
                obtain.recycle();
            }
        }
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzTP, i, false);
        zzd.zzI(parcel, zze);
    }

    public final <T extends SafeParcelable> T zza(Creator<T> creator) {
        if (this.zzTR) {
            if (this.zzTP == null) {
                zzajc.e("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new AutoCloseInputStream(this.zzTP));
            try {
                byte[] bArr = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr, 0, bArr.length);
                zzn.closeQuietly(dataInputStream);
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.unmarshall(bArr, 0, bArr.length);
                    obtain.setDataPosition(0);
                    this.zzTQ = (SafeParcelable) creator.createFromParcel(obtain);
                    this.zzTR = false;
                } finally {
                    obtain.recycle();
                }
            } catch (IOException e) {
                throw new IllegalStateException("Could not read from parcel file descriptor", e);
            } catch (Throwable th) {
                zzn.closeQuietly(dataInputStream);
            }
        }
        return (SafeParcelable) this.zzTQ;
    }
}
