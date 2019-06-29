package com.google.android.gms.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.lotecs.util.ErrorCode;

@zzzn
public class zziv extends zza {
    public static final Creator<zziv> CREATOR = new zziw();
    public final int height;
    public final int heightPixels;
    public final int width;
    public final int widthPixels;
    public final String zzAs;
    public final boolean zzAt;
    public final zziv[] zzAu;
    public final boolean zzAv;
    public final boolean zzAw;
    public boolean zzAx;

    public zziv() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public zziv(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x007d  */
    public zziv(android.content.Context r13, com.google.android.gms.ads.AdSize[] r14) {
        /*
        r12 = this;
        r12.<init>();
        r0 = 0;
        r1 = r14[r0];
        r12.zzAt = r0;
        r2 = r1.isFluid();
        r12.zzAw = r2;
        r2 = r12.zzAw;
        if (r2 == 0) goto L_0x0023;
    L_0x0012:
        r2 = com.google.android.gms.ads.AdSize.BANNER;
        r2 = r2.getWidth();
        r12.width = r2;
        r2 = com.google.android.gms.ads.AdSize.BANNER;
        r2 = r2.getHeight();
    L_0x0020:
        r12.height = r2;
        goto L_0x002e;
    L_0x0023:
        r2 = r1.getWidth();
        r12.width = r2;
        r2 = r1.getHeight();
        goto L_0x0020;
    L_0x002e:
        r2 = r12.width;
        r3 = -1;
        r4 = 1;
        if (r2 != r3) goto L_0x0036;
    L_0x0034:
        r2 = 1;
        goto L_0x0037;
    L_0x0036:
        r2 = 0;
    L_0x0037:
        r3 = r12.height;
        r5 = -2;
        if (r3 != r5) goto L_0x003e;
    L_0x003c:
        r3 = 1;
        goto L_0x003f;
    L_0x003e:
        r3 = 0;
    L_0x003f:
        r5 = r13.getResources();
        r5 = r5.getDisplayMetrics();
        if (r2 == 0) goto L_0x0080;
    L_0x0049:
        com.google.android.gms.internal.zzji.zzds();
        r6 = com.google.android.gms.internal.zzaiy.zzZ(r13);
        if (r6 == 0) goto L_0x0066;
    L_0x0052:
        com.google.android.gms.internal.zzji.zzds();
        r6 = com.google.android.gms.internal.zzaiy.zzaa(r13);
        if (r6 == 0) goto L_0x0066;
    L_0x005b:
        r6 = r5.widthPixels;
        com.google.android.gms.internal.zzji.zzds();
        r7 = com.google.android.gms.internal.zzaiy.zzab(r13);
        r6 = r6 - r7;
        goto L_0x0068;
    L_0x0066:
        r6 = r5.widthPixels;
    L_0x0068:
        r12.widthPixels = r6;
        r6 = r12.widthPixels;
        r6 = (float) r6;
        r7 = r5.density;
        r6 = r6 / r7;
        r6 = (double) r6;
        r8 = (int) r6;
        r9 = (double) r8;
        r6 = r6 - r9;
        r9 = 4576918229304087675; // 0x3f847ae147ae147b float:89128.96 double:0.01;
        r11 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1));
        if (r11 < 0) goto L_0x008d;
    L_0x007d:
        r8 = r8 + 1;
        goto L_0x008d;
    L_0x0080:
        r8 = r12.width;
        com.google.android.gms.internal.zzji.zzds();
        r6 = r12.width;
        r6 = com.google.android.gms.internal.zzaiy.zza(r5, r6);
        r12.widthPixels = r6;
    L_0x008d:
        if (r3 == 0) goto L_0x0094;
    L_0x008f:
        r6 = zzc(r5);
        goto L_0x0096;
    L_0x0094:
        r6 = r12.height;
    L_0x0096:
        com.google.android.gms.internal.zzji.zzds();
        r5 = com.google.android.gms.internal.zzaiy.zza(r5, r6);
        r12.heightPixels = r5;
        if (r2 != 0) goto L_0x00b0;
    L_0x00a1:
        if (r3 == 0) goto L_0x00a4;
    L_0x00a3:
        goto L_0x00b0;
    L_0x00a4:
        r2 = r12.zzAw;
        if (r2 == 0) goto L_0x00ab;
    L_0x00a8:
        r1 = "320x50_mb";
        goto L_0x00cb;
    L_0x00ab:
        r1 = r1.toString();
        goto L_0x00cb;
    L_0x00b0:
        r1 = 26;
        r2 = new java.lang.StringBuilder;
        r2.<init>(r1);
        r2.append(r8);
        r1 = "x";
        r2.append(r1);
        r2.append(r6);
        r1 = "_as";
        r2.append(r1);
        r1 = r2.toString();
    L_0x00cb:
        r12.zzAs = r1;
        r1 = r14.length;
        if (r1 <= r4) goto L_0x00e7;
    L_0x00d0:
        r1 = r14.length;
        r1 = new com.google.android.gms.internal.zziv[r1];
        r12.zzAu = r1;
        r1 = 0;
    L_0x00d6:
        r2 = r14.length;
        if (r1 >= r2) goto L_0x00ea;
    L_0x00d9:
        r2 = r12.zzAu;
        r3 = new com.google.android.gms.internal.zziv;
        r4 = r14[r1];
        r3.<init>(r13, r4);
        r2[r1] = r3;
        r1 = r1 + 1;
        goto L_0x00d6;
    L_0x00e7:
        r13 = 0;
        r12.zzAu = r13;
    L_0x00ea:
        r12.zzAv = r0;
        r12.zzAx = r0;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zziv.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    public zziv(zziv zziv, zziv[] zzivArr) {
        this(zziv.zzAs, zziv.height, zziv.heightPixels, zziv.zzAt, zziv.width, zziv.widthPixels, zzivArr, zziv.zzAv, zziv.zzAw, zziv.zzAx);
    }

    zziv(String str, int i, int i2, boolean z, int i3, int i4, zziv[] zzivArr, boolean z2, boolean z3, boolean z4) {
        this.zzAs = str;
        this.height = i;
        this.heightPixels = i2;
        this.zzAt = z;
        this.width = i3;
        this.widthPixels = i4;
        this.zzAu = zzivArr;
        this.zzAv = z2;
        this.zzAw = z3;
        this.zzAx = z4;
    }

    public static int zza(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int zzb(DisplayMetrics displayMetrics) {
        return (int) (((float) zzc(displayMetrics)) * displayMetrics.density);
    }

    private static int zzc(DisplayMetrics displayMetrics) {
        int i = (int) (((float) displayMetrics.heightPixels) / displayMetrics.density);
        return i <= ErrorCode.ERROR_CODE_INVALID ? 32 : i <= 720 ? 50 : 90;
    }

    public static zziv zzdk() {
        return new zziv("reward_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public static zziv zzg(Context context) {
        return new zziv("320x50_mb", 0, 0, false, 0, 0, null, true, false, false);
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzAs, false);
        zzd.zzc(parcel, 3, this.height);
        zzd.zzc(parcel, 4, this.heightPixels);
        zzd.zza(parcel, 5, this.zzAt);
        zzd.zzc(parcel, 6, this.width);
        zzd.zzc(parcel, 7, this.widthPixels);
        zzd.zza(parcel, 8, this.zzAu, i, false);
        zzd.zza(parcel, 9, this.zzAv);
        zzd.zza(parcel, 10, this.zzAw);
        zzd.zza(parcel, 11, this.zzAx);
        zzd.zzI(parcel, zze);
    }

    public final AdSize zzdl() {
        return zzb.zza(this.width, this.height, this.zzAs);
    }
}
