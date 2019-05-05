package com.google.android.gms.internal;

import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.zzbs;

final class zzwo implements OnClickListener {
    private /* synthetic */ String zzNO;
    private /* synthetic */ String zzNP;
    private /* synthetic */ zzwn zzNQ;

    zzwo(zzwn zzwn, String str, String str2) {
        this.zzNQ = zzwn;
        this.zzNO = str;
        this.zzNP = str2;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        DownloadManager downloadManager = (DownloadManager) this.zzNQ.mContext.getSystemService("download");
        try {
            String str = this.zzNO;
            String str2 = this.zzNP;
            Request request = new Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            zzbs.zzbB().zza(request);
            downloadManager.enqueue(request);
        } catch (IllegalStateException unused) {
            this.zzNQ.zzan("Could not store picture.");
        }
    }
}
