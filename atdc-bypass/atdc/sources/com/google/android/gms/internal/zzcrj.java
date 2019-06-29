package com.google.android.gms.internal;

import android.os.Parcelable.Creator;

public final class zzcrj implements Creator<zzcri> {
    /* JADX WARNING: Missing block: B:17:0x00be, code skipped:
            r3.add(java.lang.Integer.valueOf(r2));
            r15 = r30;
     */
    /* JADX WARNING: Missing block: B:32:0x014f, code skipped:
            r3.add(java.lang.Integer.valueOf(r2));
     */
    public final /* synthetic */ java.lang.Object createFromParcel(android.os.Parcel r32) {
        /*
        r31 = this;
        r0 = r32;
        r1 = com.google.android.gms.common.internal.safeparcel.zzb.zzd(r32);
        r3 = new java.util.HashSet;
        r3.<init>();
        r2 = 0;
        r4 = 0;
        r5 = r4;
        r6 = r5;
        r7 = r6;
        r8 = r7;
        r10 = r8;
        r11 = r10;
        r12 = r11;
        r14 = r12;
        r15 = r14;
        r17 = r15;
        r18 = r17;
        r19 = r18;
        r21 = r19;
        r22 = r21;
        r25 = r22;
        r26 = r25;
        r27 = r26;
        r4 = 0;
        r9 = 0;
        r13 = 0;
        r16 = 0;
        r20 = 0;
        r23 = 0;
        r24 = 0;
        r28 = 0;
    L_0x0033:
        r2 = r32.dataPosition();
        if (r2 >= r1) goto L_0x0158;
    L_0x0039:
        r2 = r32.readInt();
        r29 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
        r29 = r2 & r29;
        switch(r29) {
            case 1: goto L_0x0148;
            case 2: goto L_0x0140;
            case 3: goto L_0x0133;
            case 4: goto L_0x012b;
            case 5: goto L_0x0123;
            case 6: goto L_0x011b;
            case 7: goto L_0x010e;
            case 8: goto L_0x0105;
            case 9: goto L_0x00fc;
            case 10: goto L_0x0045;
            case 11: goto L_0x0045;
            case 12: goto L_0x00f3;
            case 13: goto L_0x0045;
            case 14: goto L_0x00ea;
            case 15: goto L_0x00dd;
            case 16: goto L_0x00d3;
            case 17: goto L_0x0045;
            case 18: goto L_0x00c9;
            case 19: goto L_0x00b0;
            case 20: goto L_0x00a6;
            case 21: goto L_0x009c;
            case 22: goto L_0x0091;
            case 23: goto L_0x0086;
            case 24: goto L_0x007c;
            case 25: goto L_0x0072;
            case 26: goto L_0x0068;
            case 27: goto L_0x005e;
            case 28: goto L_0x0053;
            case 29: goto L_0x004b;
            default: goto L_0x0045;
        };
    L_0x0045:
        r30 = r15;
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(r0, r2);
        goto L_0x0033;
    L_0x004b:
        r28 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(r0, r2);
        r2 = 29;
        goto L_0x014f;
    L_0x0053:
        r30 = r15;
        r15 = com.google.android.gms.internal.zzcri.zzg.CREATOR;
        r27 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(r0, r2, r15);
        r2 = 28;
        goto L_0x00be;
    L_0x005e:
        r30 = r15;
        r26 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(r0, r2);
        r2 = 27;
        goto L_0x014f;
    L_0x0068:
        r30 = r15;
        r25 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(r0, r2);
        r2 = 26;
        goto L_0x014f;
    L_0x0072:
        r30 = r15;
        r24 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(r0, r2);
        r2 = 25;
        goto L_0x014f;
    L_0x007c:
        r30 = r15;
        r23 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(r0, r2);
        r2 = 24;
        goto L_0x014f;
    L_0x0086:
        r30 = r15;
        r15 = com.google.android.gms.internal.zzcri.zzf.CREATOR;
        r22 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(r0, r2, r15);
        r2 = 23;
        goto L_0x00be;
    L_0x0091:
        r30 = r15;
        r15 = com.google.android.gms.internal.zzcri.zze.CREATOR;
        r21 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(r0, r2, r15);
        r2 = 22;
        goto L_0x00be;
    L_0x009c:
        r30 = r15;
        r20 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(r0, r2);
        r2 = 21;
        goto L_0x014f;
    L_0x00a6:
        r30 = r15;
        r19 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(r0, r2);
        r2 = 20;
        goto L_0x014f;
    L_0x00b0:
        r30 = r15;
        r15 = com.google.android.gms.internal.zzcri.zzd.CREATOR;
        r2 = com.google.android.gms.common.internal.safeparcel.zzb.zza(r0, r2, r15);
        r18 = r2;
        r18 = (com.google.android.gms.internal.zzcri.zzd) r18;
        r2 = 19;
    L_0x00be:
        r2 = java.lang.Integer.valueOf(r2);
        r3.add(r2);
        r15 = r30;
        goto L_0x0033;
    L_0x00c9:
        r30 = r15;
        r17 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(r0, r2);
        r2 = 18;
        goto L_0x014f;
    L_0x00d3:
        r30 = r15;
        r16 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(r0, r2);
        r2 = 16;
        goto L_0x014f;
    L_0x00dd:
        r15 = com.google.android.gms.internal.zzcri.zzc.CREATOR;
        r2 = com.google.android.gms.common.internal.safeparcel.zzb.zza(r0, r2, r15);
        r15 = r2;
        r15 = (com.google.android.gms.internal.zzcri.zzc) r15;
        r2 = 15;
        goto L_0x014f;
    L_0x00ea:
        r30 = r15;
        r14 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(r0, r2);
        r2 = 14;
        goto L_0x014f;
    L_0x00f3:
        r30 = r15;
        r13 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(r0, r2);
        r2 = 12;
        goto L_0x014f;
    L_0x00fc:
        r30 = r15;
        r12 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(r0, r2);
        r2 = 9;
        goto L_0x014f;
    L_0x0105:
        r30 = r15;
        r11 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(r0, r2);
        r2 = 8;
        goto L_0x014f;
    L_0x010e:
        r30 = r15;
        r10 = com.google.android.gms.internal.zzcri.zzb.CREATOR;
        r2 = com.google.android.gms.common.internal.safeparcel.zzb.zza(r0, r2, r10);
        r10 = r2;
        r10 = (com.google.android.gms.internal.zzcri.zzb) r10;
        r2 = 7;
        goto L_0x014f;
    L_0x011b:
        r30 = r15;
        r9 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(r0, r2);
        r2 = 6;
        goto L_0x014f;
    L_0x0123:
        r30 = r15;
        r8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(r0, r2);
        r2 = 5;
        goto L_0x014f;
    L_0x012b:
        r30 = r15;
        r7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(r0, r2);
        r2 = 4;
        goto L_0x014f;
    L_0x0133:
        r30 = r15;
        r6 = com.google.android.gms.internal.zzcri.zza.CREATOR;
        r2 = com.google.android.gms.common.internal.safeparcel.zzb.zza(r0, r2, r6);
        r6 = r2;
        r6 = (com.google.android.gms.internal.zzcri.zza) r6;
        r2 = 3;
        goto L_0x014f;
    L_0x0140:
        r30 = r15;
        r5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(r0, r2);
        r2 = 2;
        goto L_0x014f;
    L_0x0148:
        r30 = r15;
        r4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(r0, r2);
        r2 = 1;
    L_0x014f:
        r2 = java.lang.Integer.valueOf(r2);
        r3.add(r2);
        goto L_0x0033;
    L_0x0158:
        r30 = r15;
        r2 = r32.dataPosition();
        if (r2 == r1) goto L_0x0179;
    L_0x0160:
        r2 = new com.google.android.gms.common.internal.safeparcel.zzc;
        r3 = 37;
        r4 = new java.lang.StringBuilder;
        r4.<init>(r3);
        r3 = "Overread allowed size end=";
        r4.append(r3);
        r4.append(r1);
        r1 = r4.toString();
        r2.<init>(r1, r0);
        throw r2;
    L_0x0179:
        r0 = new com.google.android.gms.internal.zzcri;
        r2 = r0;
        r15 = r30;
        r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcrj.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcri[i];
    }
}
