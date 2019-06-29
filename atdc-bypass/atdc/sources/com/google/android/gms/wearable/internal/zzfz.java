package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.internal.zzbaz;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

final class zzfz implements Runnable {
    private /* synthetic */ String zzakq;
    private /* synthetic */ long zzbSm;
    private /* synthetic */ long zzbSn;
    private /* synthetic */ zzbaz zzbTq;
    private /* synthetic */ zzfw zzbTr;
    private /* synthetic */ Uri zzbzR;

    zzfz(zzfw zzfw, Uri uri, zzbaz zzbaz, String str, long j, long j2) {
        this.zzbTr = zzfw;
        this.zzbzR = uri;
        this.zzbTq = zzbaz;
        this.zzakq = str;
        this.zzbSm = j;
        this.zzbSn = j2;
    }

    public final void run() {
        if (Log.isLoggable("WearableClient", 2)) {
            Log.v("WearableClient", "Executing sendFileToChannelTask");
        }
        if ("file".equals(this.zzbzR.getScheme())) {
            File file = new File(this.zzbzR.getPath());
            try {
                ParcelFileDescriptor open = ParcelFileDescriptor.open(file, DriveFile.MODE_READ_ONLY);
                try {
                    ((zzdn) this.zzbTr.zzrf()).zza(new zzfs(this.zzbTq), this.zzakq, open, this.zzbSm, this.zzbSn);
                    try {
                        open.close();
                        return;
                    } catch (IOException e) {
                        Log.w("WearableClient", "Failed to close sourceFd", e);
                        return;
                    }
                } catch (RemoteException e2) {
                    Log.w("WearableClient", "Channel.sendFile failed.", e2);
                    this.zzbTq.zzr(new Status(8));
                    try {
                        open.close();
                        return;
                    } catch (IOException e3) {
                        Log.w("WearableClient", "Failed to close sourceFd", e3);
                        return;
                    }
                } catch (Throwable th) {
                    try {
                        open.close();
                    } catch (IOException e4) {
                        Log.w("WearableClient", "Failed to close sourceFd", e4);
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused) {
                String valueOf = String.valueOf(file);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 46);
                stringBuilder.append("File couldn't be opened for Channel.sendFile: ");
                stringBuilder.append(valueOf);
                Log.w("WearableClient", stringBuilder.toString());
                this.zzbTq.zzr(new Status(13));
                return;
            }
        }
        Log.w("WearableClient", "Channel.sendFile used with non-file URI");
        this.zzbTq.zzr(new Status(10, "Channel.sendFile used with non-file URI"));
    }
}
