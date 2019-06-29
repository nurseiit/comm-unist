package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.internal.zzaia;
import com.google.android.gms.internal.zzaic;
import com.google.android.gms.internal.zzaid;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zzmu;
import com.google.android.gms.internal.zzmz;
import com.google.android.gms.internal.zznb;
import com.google.android.gms.internal.zzzn;
import java.util.concurrent.TimeUnit;

@zzzn
public final class zzar {
    private final Context mContext;
    @Nullable
    private final zznb zzPs;
    private boolean zzPw;
    private final long[] zzQA;
    private final String[] zzQB;
    private boolean zzQC;
    private boolean zzQD;
    private boolean zzQE;
    private boolean zzQF;
    private zzy zzQG;
    private boolean zzQH;
    private boolean zzQI;
    private long zzQJ;
    private final String zzQx;
    @Nullable
    private final zzmz zzQy;
    private final zzaia zzQz = new zzaid().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzid();
    private final zzaje zzuK;

    public zzar(Context context, zzaje zzaje, String str, @Nullable zznb zznb, @Nullable zzmz zzmz) {
        int i = 0;
        this.zzQC = false;
        this.zzQD = false;
        this.zzQE = false;
        this.zzQF = false;
        this.zzQJ = -1;
        this.mContext = context;
        this.zzuK = zzaje;
        this.zzQx = str;
        this.zzPs = zznb;
        this.zzQy = zzmz;
        String str2 = (String) zzbs.zzbL().zzd(zzmo.zzCu);
        if (str2 == null) {
            this.zzQB = new String[0];
            this.zzQA = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.zzQB = new String[split.length];
        this.zzQA = new long[split.length];
        while (i < split.length) {
            try {
                this.zzQA[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzajc.zzc("Unable to parse frame hash target time number.", e);
                this.zzQA[i] = -1;
            }
            i++;
        }
    }

    public final void onStop() {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzCt)).booleanValue() && !this.zzQH) {
            String valueOf;
            String valueOf2;
            Bundle bundle = new Bundle();
            bundle.putString("type", "native-player-metrics");
            bundle.putString("request", this.zzQx);
            bundle.putString("player", this.zzQG.zzfD());
            for (zzaic zzaic : this.zzQz.getBuckets()) {
                valueOf = String.valueOf("fps_c_");
                valueOf2 = String.valueOf(zzaic.name);
                bundle.putString(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), Integer.toString(zzaic.count));
                valueOf = String.valueOf("fps_p_");
                valueOf2 = String.valueOf(zzaic.name);
                bundle.putString(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), Double.toString(zzaic.zzZZ));
            }
            for (int i = 0; i < this.zzQA.length; i++) {
                String str = this.zzQB[i];
                if (str != null) {
                    valueOf = String.valueOf("fh_");
                    valueOf2 = String.valueOf(Long.valueOf(this.zzQA[i]));
                    StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(valueOf2).length());
                    stringBuilder.append(valueOf);
                    stringBuilder.append(valueOf2);
                    bundle.putString(stringBuilder.toString(), str);
                }
            }
            zzbs.zzbz().zza(this.mContext, this.zzuK.zzaP, "gmob-apps", bundle, true);
            this.zzQH = true;
        }
    }

    public final void zza(zzy zzy) {
        zzmu.zza(this.zzPs, this.zzQy, "vpc2");
        this.zzQC = true;
        if (this.zzPs != null) {
            this.zzPs.zzh("vpn", zzy.zzfD());
        }
        this.zzQG = zzy;
    }

    public final void zzb(zzy zzy) {
        if (this.zzQE && !this.zzQF) {
            zzmu.zza(this.zzPs, this.zzQy, "vff2");
            this.zzQF = true;
        }
        long nanoTime = zzbs.zzbF().nanoTime();
        if (this.zzPw && this.zzQI && this.zzQJ != -1) {
            this.zzQz.zza(((double) TimeUnit.SECONDS.toNanos(1)) / ((double) (nanoTime - this.zzQJ)));
        }
        this.zzQI = this.zzPw;
        this.zzQJ = nanoTime;
        nanoTime = ((Long) zzbs.zzbL().zzd(zzmo.zzCv)).longValue();
        long currentPosition = (long) zzy.getCurrentPosition();
        int i = 0;
        while (i < this.zzQB.length) {
            if (this.zzQB[i] != null || nanoTime <= Math.abs(currentPosition - this.zzQA[i])) {
                zzy zzy2 = zzy;
                i++;
            } else {
                String[] strArr = this.zzQB;
                int i2 = 8;
                Bitmap bitmap = zzy.getBitmap(8, 8);
                long j = 63;
                int i3 = 0;
                long j2 = 0;
                while (i3 < i2) {
                    long j3 = j;
                    int i4 = 0;
                    while (i4 < i2) {
                        int pixel = bitmap.getPixel(i4, i3);
                        long j4 = j2 | (((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1 : 0) << ((int) j3));
                        i4++;
                        j3--;
                        j2 = j4;
                        i2 = 8;
                    }
                    i3++;
                    j = j3;
                    i2 = 8;
                }
                strArr[i] = String.format("%016X", new Object[]{Long.valueOf(j2)});
                return;
            }
        }
    }

    public final void zzfT() {
        if (this.zzQC && !this.zzQD) {
            zzmu.zza(this.zzPs, this.zzQy, "vfr2");
            this.zzQD = true;
        }
    }

    public final void zzgj() {
        this.zzPw = true;
        if (this.zzQD && !this.zzQE) {
            zzmu.zza(this.zzPs, this.zzQy, "vfp2");
            this.zzQE = true;
        }
    }

    public final void zzgk() {
        this.zzPw = false;
    }
}
