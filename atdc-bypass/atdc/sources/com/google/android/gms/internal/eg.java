package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbh.zza;
import com.google.android.gms.tagmanager.zzdj;
import com.google.android.gms.tagmanager.zzgk;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class eg {
    private static ei zza(zzbj zzbj, zzbn zzbn, zzbr[] zzbrArr, int i) throws eo {
        ej zzDx = ei.zzDx();
        for (int valueOf : zzbj.zzkA) {
            zzbm zzbm = (zzbm) zza(zzbn.zzkQ, Integer.valueOf(valueOf).intValue(), "properties");
            String str = (String) zza(zzbn.zzkO, zzbm.key, "keys");
            zzbr zzbr = (zzbr) zza(zzbrArr, zzbm.value, "values");
            if (zzbg.PUSH_AFTER_EVALUATE.toString().equals(str)) {
                zzDx.zzl(zzbr);
            } else {
                zzDx.zzb(str, zzbr);
            }
        }
        return zzDx.zzDy();
    }

    public static ek zza(zzbn zzbn) throws eo {
        int i;
        zzbr[] zzbrArr = new zzbr[zzbn.zzkP.length];
        int i2 = 0;
        for (int i3 = 0; i3 < zzbn.zzkP.length; i3++) {
            zza(i3, zzbn, zzbrArr, new HashSet(0));
        }
        el zzDz = ek.zzDz();
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < zzbn.zzkS.length; i4++) {
            arrayList.add(zza(zzbn.zzkS[i4], zzbn, zzbrArr, i4));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i5 = 0; i5 < zzbn.zzkT.length; i5++) {
            arrayList2.add(zza(zzbn.zzkT[i5], zzbn, zzbrArr, i5));
        }
        ArrayList arrayList3 = new ArrayList();
        for (i = 0; i < zzbn.zzkR.length; i++) {
            ei zza = zza(zzbn.zzkR[i], zzbn, zzbrArr, i);
            zzDz.zzc(zza);
            arrayList3.add(zza);
        }
        zzbo[] zzboArr = zzbn.zzkU;
        i = zzboArr.length;
        while (i2 < i) {
            zzDz.zzb(zza(zzboArr[i2], arrayList, arrayList3, arrayList2, zzbn));
            i2++;
        }
        zzDz.zzgd(zzbn.version);
        zzDz.zzbJ(zzbn.zzlc);
        return zzDz.zzDB();
    }

    private static em zza(zzbo zzbo, List<ei> list, List<ei> list2, List<ei> list3, zzbn zzbn) {
        en enVar = new en();
        for (int valueOf : zzbo.zzle) {
            enVar.zzd((ei) list3.get(Integer.valueOf(valueOf).intValue()));
        }
        for (int valueOf2 : zzbo.zzlf) {
            enVar.zze((ei) list3.get(Integer.valueOf(valueOf2).intValue()));
        }
        for (int valueOf3 : zzbo.zzlg) {
            enVar.zzf((ei) list.get(Integer.valueOf(valueOf3).intValue()));
        }
        for (int valueOf32 : zzbo.zzli) {
            enVar.zzge(zzbn.zzkP[Integer.valueOf(valueOf32).intValue()].string);
        }
        for (int valueOf322 : zzbo.zzlh) {
            enVar.zzg((ei) list.get(Integer.valueOf(valueOf322).intValue()));
        }
        for (int valueOf4 : zzbo.zzlj) {
            enVar.zzgf(zzbn.zzkP[Integer.valueOf(valueOf4).intValue()].string);
        }
        for (int valueOf42 : zzbo.zzlk) {
            enVar.zzh((ei) list2.get(Integer.valueOf(valueOf42).intValue()));
        }
        for (int valueOf422 : zzbo.zzlm) {
            enVar.zzgg(zzbn.zzkP[Integer.valueOf(valueOf422).intValue()].string);
        }
        for (int valueOf4222 : zzbo.zzll) {
            enVar.zzi((ei) list2.get(Integer.valueOf(valueOf4222).intValue()));
        }
        for (int valueOf5 : zzbo.zzln) {
            enVar.zzgh(zzbn.zzkP[Integer.valueOf(valueOf5).intValue()].string);
        }
        return enVar.zzDE();
    }

    private static zzbr zza(int i, zzbn zzbn, zzbr[] zzbrArr, Set<Integer> set) throws eo {
        StringBuilder stringBuilder;
        if (set.contains(Integer.valueOf(i))) {
            String valueOf = String.valueOf(set);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 90);
            stringBuilder.append("Value cycle detected.  Current value reference: ");
            stringBuilder.append(i);
            stringBuilder.append(".  Previous value references: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(".");
            zzfQ(stringBuilder.toString());
        }
        zzbr zzbr = (zzbr) zza(zzbn.zzkP, i, "values");
        if (zzbrArr[i] != null) {
            return zzbrArr[i];
        }
        zzbr zzbr2 = null;
        set.add(Integer.valueOf(i));
        int i2 = 0;
        int length;
        int i3;
        int i4;
        zza zzk;
        int[] iArr;
        switch (zzbr.type) {
            case 1:
            case 5:
            case 6:
            case 8:
                zzbr2 = zzbr;
                break;
            case 2:
                zza zzk2 = zzk(zzbr);
                zzbr zzj = zzj(zzbr);
                zzj.zzlE = new zzbr[zzk2.zzlq.length];
                int[] iArr2 = zzk2.zzlq;
                length = iArr2.length;
                i3 = 0;
                while (i2 < length) {
                    i4 = i3 + 1;
                    zzj.zzlE[i3] = zza(iArr2[i2], zzbn, zzbrArr, (Set) set);
                    i2++;
                    i3 = i4;
                }
                zzbr2 = zzj;
                break;
            case 3:
                zzbr2 = zzj(zzbr);
                zzk = zzk(zzbr);
                if (zzk.zzlr.length != zzk.zzls.length) {
                    length = zzk.zzlr.length;
                    i3 = zzk.zzls.length;
                    StringBuilder stringBuilder2 = new StringBuilder(58);
                    stringBuilder2.append("Uneven map keys (");
                    stringBuilder2.append(length);
                    stringBuilder2.append(") and map values (");
                    stringBuilder2.append(i3);
                    stringBuilder2.append(")");
                    zzfQ(stringBuilder2.toString());
                }
                zzbr2.zzlF = new zzbr[zzk.zzlr.length];
                zzbr2.zzlG = new zzbr[zzk.zzlr.length];
                int[] iArr3 = zzk.zzlr;
                i3 = iArr3.length;
                int i5 = 0;
                int i6 = 0;
                while (i5 < i3) {
                    int i7 = i6 + 1;
                    zzbr2.zzlF[i6] = zza(iArr3[i5], zzbn, zzbrArr, (Set) set);
                    i5++;
                    i6 = i7;
                }
                iArr = zzk.zzls;
                length = iArr.length;
                i3 = 0;
                while (i2 < length) {
                    i4 = i3 + 1;
                    zzbr2.zzlG[i3] = zza(iArr[i2], zzbn, zzbrArr, (Set) set);
                    i2++;
                    i3 = i4;
                }
                break;
            case 4:
                zzbr2 = zzj(zzbr);
                zzbr2.zzlH = zzgk.zzb(zza(zzk(zzbr).zzlv, zzbn, zzbrArr, (Set) set));
                break;
            case 7:
                zzbr2 = zzj(zzbr);
                zzk = zzk(zzbr);
                zzbr2.zzlL = new zzbr[zzk.zzlu.length];
                iArr = zzk.zzlu;
                length = iArr.length;
                i3 = 0;
                while (i2 < length) {
                    i4 = i3 + 1;
                    zzbr2.zzlL[i3] = zza(iArr[i2], zzbn, zzbrArr, (Set) set);
                    i2++;
                    i3 = i4;
                }
                break;
        }
        if (zzbr2 == null) {
            String valueOf2 = String.valueOf(zzbr);
            stringBuilder = new StringBuilder(String.valueOf(valueOf2).length() + 15);
            stringBuilder.append("Invalid value: ");
            stringBuilder.append(valueOf2);
            zzfQ(stringBuilder.toString());
        }
        zzbrArr[i] = zzbr2;
        set.remove(Integer.valueOf(i));
        return zzbr2;
    }

    private static <T> T zza(T[] tArr, int i, String str) throws eo {
        if (i < 0 || i >= tArr.length) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 45);
            stringBuilder.append("Index out of bounds detected: ");
            stringBuilder.append(i);
            stringBuilder.append(" in ");
            stringBuilder.append(str);
            zzfQ(stringBuilder.toString());
        }
        return tArr[i];
    }

    public static void zzb(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static void zzfQ(String str) throws eo {
        zzdj.e(str);
        throw new eo(str);
    }

    public static zzbr zzj(zzbr zzbr) {
        zzbr zzbr2 = new zzbr();
        zzbr2.type = zzbr.type;
        zzbr2.zzlM = (int[]) zzbr.zzlM.clone();
        if (zzbr.zzlN) {
            zzbr2.zzlN = zzbr.zzlN;
        }
        return zzbr2;
    }

    private static zza zzk(zzbr zzbr) throws eo {
        if (((zza) zzbr.zza(zza.zzlo)) == null) {
            String valueOf = String.valueOf(zzbr);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 54);
            stringBuilder.append("Expected a ServingValue and didn't get one. Value is: ");
            stringBuilder.append(valueOf);
            zzfQ(stringBuilder.toString());
        }
        return (zza) zzbr.zza(zza.zzlo);
    }
}
