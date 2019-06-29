package com.google.android.gms.location.places.internal;

import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zze;
import com.google.android.gms.internal.ado;
import com.google.android.gms.internal.il;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class zzav extends zzc {
    public zzav(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    private final byte[] zzb(String str, byte[] bArr) {
        return (!zzcv(str) || zzcx(str)) ? null : getByteArray(str);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzD(String str, String str2) {
        return (!zzcv(str) || zzcx(str)) ? str2 : getString(str);
    }

    /* Access modifiers changed, original: protected|final */
    public final float zza(String str, float f) {
        return (!zzcv(str) || zzcx(str)) ? f : getFloat(str);
    }

    /* Access modifiers changed, original: protected|final */
    public final <E extends SafeParcelable> E zza(String str, Creator<E> creator) {
        byte[] zzb = zzb(str, null);
        return zzb == null ? null : zze.zza(zzb, creator);
    }

    /* Access modifiers changed, original: protected|final */
    public final <E extends SafeParcelable> List<E> zza(String str, Creator<E> creator, List<E> list) {
        byte[] zzb = zzb(str, null);
        if (zzb == null) {
            return list;
        }
        try {
            il zzz = il.zzz(zzb);
            if (zzz.zzbUU == null) {
                return list;
            }
            ArrayList arrayList = new ArrayList(zzz.zzbUU.length);
            for (byte[] zza : zzz.zzbUU) {
                arrayList.add(zze.zza(zza, creator));
            }
            return arrayList;
        } catch (ado e) {
            if (Log.isLoggable("SafeDataBufferRef", 6)) {
                Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            }
            return list;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final List<Integer> zza(String str, List<Integer> list) {
        byte[] zzb = zzb(str, null);
        if (zzb == null) {
            return list;
        }
        try {
            il zzz = il.zzz(zzb);
            if (zzz.zzbUT == null) {
                return list;
            }
            ArrayList arrayList = new ArrayList(zzz.zzbUT.length);
            for (int valueOf : zzz.zzbUT) {
                arrayList.add(Integer.valueOf(valueOf));
            }
            return arrayList;
        } catch (ado e) {
            if (Log.isLoggable("SafeDataBufferRef", 6)) {
                Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            }
            return list;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final List<String> zzb(String str, List<String> list) {
        byte[] zzb = zzb(str, null);
        if (zzb == null) {
            return list;
        }
        try {
            il zzz = il.zzz(zzb);
            return zzz.zzbUS == null ? list : Arrays.asList(zzz.zzbUS);
        } catch (ado e) {
            if (Log.isLoggable("SafeDataBufferRef", 6)) {
                Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            }
            return list;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzu(String str, int i) {
        return (!zzcv(str) || zzcx(str)) ? i : getInteger(str);
    }
}
