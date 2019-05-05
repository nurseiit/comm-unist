package com.google.android.gms.games.snapshot;

import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.drive.zzc;
import java.io.IOException;

public interface SnapshotContents extends Parcelable {
    void close();

    ParcelFileDescriptor getParcelFileDescriptor();

    boolean isClosed();

    boolean modifyBytes(int i, byte[] bArr, int i2, int i3);

    byte[] readFully() throws IOException;

    boolean writeBytes(byte[] bArr);

    zzc zzsM();
}
