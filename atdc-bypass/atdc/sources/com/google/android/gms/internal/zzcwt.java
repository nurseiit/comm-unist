package com.google.android.gms.internal;

final class zzcwt implements Runnable {
    private /* synthetic */ zzcwn zzbJp;
    private /* synthetic */ String zzbJw;
    private /* synthetic */ String zzbJx;
    private /* synthetic */ String zzbJy = null;

    zzcwt(zzcwn zzcwn, String str, String str2, String str3) {
        this.zzbJp = zzcwn;
        this.zzbJw = str;
        this.zzbJx = str2;
    }

    public final void run() {
        String str = this.zzbJw;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 28);
        stringBuilder.append("Starting to load container ");
        stringBuilder.append(str);
        stringBuilder.append(".");
        zzcvk.v(stringBuilder.toString());
        if (this.zzbJp.zzbJl != 1) {
            zzcup.zzd("Unexpected state - container loading already initiated.", this.zzbJp.mContext);
            return;
        }
        this.zzbJp.zzbJl = 2;
        this.zzbJp.zzbJg.zzb(this.zzbJw, this.zzbJx, this.zzbJy, new zzb(this.zzbJp, null));
    }
}
