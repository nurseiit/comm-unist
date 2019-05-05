package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzc;
import com.google.android.gms.common.util.zzo;
import com.google.android.gms.common.util.zzp;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class zzbgt extends zzbgl {
    public static final Creator<zzbgt> CREATOR = new zzbgu();
    private final String mClassName;
    private final zzbgo zzaIP;
    private final Parcel zzaIW;
    private final int zzaIX = 2;
    private int zzaIY;
    private int zzaIZ;
    private final int zzaku;

    zzbgt(int i, Parcel parcel, zzbgo zzbgo) {
        this.zzaku = i;
        this.zzaIW = (Parcel) zzbo.zzu(parcel);
        this.zzaIP = zzbgo;
        this.mClassName = this.zzaIP == null ? null : this.zzaIP.zzrR();
        this.zzaIY = 2;
    }

    private static void zza(StringBuilder stringBuilder, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                stringBuilder.append(obj);
                return;
            case 7:
                stringBuilder.append("\"");
                stringBuilder.append(zzo.zzcK(obj.toString()));
                stringBuilder.append("\"");
                return;
            case 8:
                stringBuilder.append("\"");
                stringBuilder.append(zzc.encode((byte[]) obj));
                stringBuilder.append("\"");
                return;
            case 9:
                stringBuilder.append("\"");
                stringBuilder.append(zzc.zzg((byte[]) obj));
                stringBuilder.append("\"");
                return;
            case 10:
                zzp.zza(stringBuilder, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder stringBuilder2 = new StringBuilder(26);
                stringBuilder2.append("Unknown type = ");
                stringBuilder2.append(i);
                throw new IllegalArgumentException(stringBuilder2.toString());
        }
    }

    private final void zza(StringBuilder stringBuilder, zzbgj<?, ?> zzbgj, Parcel parcel, int i) {
        int i2 = 0;
        if (zzbgj.zzaIK) {
            stringBuilder.append("[");
            Object[] objArr = null;
            int zza;
            int readInt;
            switch (zzbgj.zzaIJ) {
                case 0:
                    int[] zzw = zzb.zzw(parcel, i);
                    int length = zzw.length;
                    while (i2 < length) {
                        if (i2 != 0) {
                            stringBuilder.append(",");
                        }
                        stringBuilder.append(Integer.toString(zzw[i2]));
                        i2++;
                    }
                    break;
                case 1:
                    zza = zzb.zza(parcel, i);
                    i = parcel.dataPosition();
                    if (zza != 0) {
                        readInt = parcel.readInt();
                        objArr = new BigInteger[readInt];
                        while (i2 < readInt) {
                            objArr[i2] = new BigInteger(parcel.createByteArray());
                            i2++;
                        }
                        parcel.setDataPosition(i + zza);
                    }
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, objArr);
                    break;
                case 2:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzx(parcel, i));
                    break;
                case 3:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzy(parcel, i));
                    break;
                case 4:
                    double[] createDoubleArray;
                    zza = zzb.zza(parcel, i);
                    i = parcel.dataPosition();
                    if (zza != 0) {
                        createDoubleArray = parcel.createDoubleArray();
                        parcel.setDataPosition(i + zza);
                    }
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, createDoubleArray);
                    break;
                case 5:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzz(parcel, i));
                    break;
                case 6:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzv(parcel, i));
                    break;
                case 7:
                    com.google.android.gms.common.util.zzb.zza(stringBuilder, zzb.zzA(parcel, i));
                    break;
                case 8:
                case 9:
                case 10:
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                case 11:
                    Parcel[] zzE = zzb.zzE(parcel, i);
                    i = zzE.length;
                    for (readInt = 0; readInt < i; readInt++) {
                        if (readInt > 0) {
                            stringBuilder.append(",");
                        }
                        zzE[readInt].setDataPosition(0);
                        zza(stringBuilder, zzbgj.zzrP(), zzE[readInt]);
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown field type out.");
            }
            stringBuilder.append("]");
            return;
        }
        byte[] zzt;
        switch (zzbgj.zzaIJ) {
            case 0:
                stringBuilder.append(zzb.zzg(parcel, i));
                return;
            case 1:
                stringBuilder.append(zzb.zzk(parcel, i));
                return;
            case 2:
                stringBuilder.append(zzb.zzi(parcel, i));
                return;
            case 3:
                stringBuilder.append(zzb.zzl(parcel, i));
                return;
            case 4:
                stringBuilder.append(zzb.zzn(parcel, i));
                return;
            case 5:
                stringBuilder.append(zzb.zzp(parcel, i));
                return;
            case 6:
                stringBuilder.append(zzb.zzc(parcel, i));
                return;
            case 7:
                String zzq = zzb.zzq(parcel, i);
                stringBuilder.append("\"");
                stringBuilder.append(zzo.zzcK(zzq));
                stringBuilder.append("\"");
                return;
            case 8:
                zzt = zzb.zzt(parcel, i);
                stringBuilder.append("\"");
                stringBuilder.append(zzc.encode(zzt));
                stringBuilder.append("\"");
                return;
            case 9:
                zzt = zzb.zzt(parcel, i);
                stringBuilder.append("\"");
                stringBuilder.append(zzc.zzg(zzt));
                stringBuilder.append("\"");
                return;
            case 10:
                Bundle zzs = zzb.zzs(parcel, i);
                Set<String> keySet = zzs.keySet();
                keySet.size();
                stringBuilder.append("{");
                Object obj = 1;
                for (String str : keySet) {
                    if (obj == null) {
                        stringBuilder.append(",");
                    }
                    stringBuilder.append("\"");
                    stringBuilder.append(str);
                    stringBuilder.append("\"");
                    stringBuilder.append(":");
                    stringBuilder.append("\"");
                    stringBuilder.append(zzo.zzcK(zzs.getString(str)));
                    stringBuilder.append("\"");
                    obj = null;
                }
                stringBuilder.append("}");
                return;
            case 11:
                parcel = zzb.zzD(parcel, i);
                parcel.setDataPosition(0);
                zza(stringBuilder, zzbgj.zzrP(), parcel);
                return;
            default:
                throw new IllegalStateException("Unknown field type out");
        }
    }

    private final void zza(StringBuilder stringBuilder, Map<String, zzbgj<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Entry entry : map.entrySet()) {
            sparseArray.put(((zzbgj) entry.getValue()).zzaIM, entry);
        }
        stringBuilder.append('{');
        int zzd = zzb.zzd(parcel);
        Object obj = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            Entry entry2 = (Entry) sparseArray.get(65535 & readInt);
            if (entry2 != null) {
                if (obj != null) {
                    stringBuilder.append(",");
                }
                String str = (String) entry2.getKey();
                zzbgj zzbgj = (zzbgj) entry2.getValue();
                stringBuilder.append("\"");
                stringBuilder.append(str);
                stringBuilder.append("\":");
                if (zzbgj.zzrO()) {
                    switch (zzbgj.zzaIJ) {
                        case 0:
                            obj = Integer.valueOf(zzb.zzg(parcel, readInt));
                            break;
                        case 1:
                            obj = zzb.zzk(parcel, readInt);
                            break;
                        case 2:
                            obj = Long.valueOf(zzb.zzi(parcel, readInt));
                            break;
                        case 3:
                            obj = Float.valueOf(zzb.zzl(parcel, readInt));
                            break;
                        case 4:
                            obj = Double.valueOf(zzb.zzn(parcel, readInt));
                            break;
                        case 5:
                            obj = zzb.zzp(parcel, readInt);
                            break;
                        case 6:
                            obj = Boolean.valueOf(zzb.zzc(parcel, readInt));
                            break;
                        case 7:
                            obj = zzb.zzq(parcel, readInt);
                            break;
                        case 8:
                        case 9:
                            obj = zzb.zzt(parcel, readInt);
                            break;
                        case 10:
                            obj = zzo(zzb.zzs(parcel, readInt));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            zzd = zzbgj.zzaIJ;
                            StringBuilder stringBuilder2 = new StringBuilder(36);
                            stringBuilder2.append("Unknown field out type = ");
                            stringBuilder2.append(zzd);
                            throw new IllegalArgumentException(stringBuilder2.toString());
                    }
                    zzb(stringBuilder, zzbgj, zzbgi.zza(zzbgj, obj));
                } else {
                    zza(stringBuilder, zzbgj, parcel, readInt);
                }
                obj = 1;
            }
        }
        if (parcel.dataPosition() != zzd) {
            StringBuilder stringBuilder3 = new StringBuilder(37);
            stringBuilder3.append("Overread allowed size end=");
            stringBuilder3.append(zzd);
            throw new com.google.android.gms.common.internal.safeparcel.zzc(stringBuilder3.toString(), parcel);
        }
        stringBuilder.append('}');
    }

    private final void zzb(StringBuilder stringBuilder, zzbgj<?, ?> zzbgj, Object obj) {
        if (zzbgj.zzaII) {
            ArrayList arrayList = (ArrayList) obj;
            stringBuilder.append("[");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    stringBuilder.append(",");
                }
                zza(stringBuilder, zzbgj.zzaIH, arrayList.get(i));
            }
            stringBuilder.append("]");
            return;
        }
        zza(stringBuilder, zzbgj.zzaIH, obj);
    }

    private static HashMap<String, String> zzo(Bundle bundle) {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    private Parcel zzrT() {
        switch (this.zzaIY) {
            case 0:
                this.zzaIZ = zzd.zze(this.zzaIW);
                break;
            case 1:
                break;
        }
        zzd.zzI(this.zzaIW, this.zzaIZ);
        this.zzaIY = 2;
        return this.zzaIW;
    }

    public String toString() {
        zzbo.zzb(this.zzaIP, (Object) "Cannot convert to JSON on client side.");
        Parcel zzrT = zzrT();
        zzrT.setDataPosition(0);
        StringBuilder stringBuilder = new StringBuilder(100);
        zza(stringBuilder, this.zzaIP.zzcJ(this.mClassName), zzrT);
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        Parcelable parcelable;
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zza(parcel, 2, zzrT(), false);
        switch (this.zzaIX) {
            case 0:
                parcelable = null;
                break;
            case 1:
            case 2:
                parcelable = this.zzaIP;
                break;
            default:
                i = this.zzaIX;
                StringBuilder stringBuilder = new StringBuilder(34);
                stringBuilder.append("Invalid creation type: ");
                stringBuilder.append(i);
                throw new IllegalStateException(stringBuilder.toString());
        }
        zzd.zza(parcel, 3, parcelable, i, false);
        zzd.zzI(parcel, zze);
    }

    public final Object zzcH(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public final boolean zzcI(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public final Map<String, zzbgj<?, ?>> zzrL() {
        return this.zzaIP == null ? null : this.zzaIP.zzcJ(this.mClassName);
    }
}
