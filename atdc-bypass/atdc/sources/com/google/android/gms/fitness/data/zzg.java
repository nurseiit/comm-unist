package com.google.android.gms.fitness.data;

import com.google.android.gms.internal.zzbuh;

final class zzg implements zzbuh<DataType> {
    public static final zzg zzaTu = new zzg();

    private zzg() {
    }

    private static Field zza(DataType dataType, int i) {
        return (Field) dataType.getFields().get(i);
    }

    public final /* synthetic */ String zzA(Object obj) {
        return ((DataType) obj).getName();
    }

    public final boolean zzcY(String str) {
        return zzm.zzcZ(str) != null;
    }

    public final /* synthetic */ int zze(Object obj, int i) {
        return zza((DataType) obj, i).getFormat();
    }

    public final /* synthetic */ boolean zzf(Object obj, int i) {
        return Boolean.TRUE.equals(zza((DataType) obj, i).isOptional());
    }

    public final /* synthetic */ String zzg(Object obj, int i) {
        return zza((DataType) obj, i).getName();
    }

    public final /* synthetic */ int zzz(Object obj) {
        return ((DataType) obj).getFields().size();
    }
}
