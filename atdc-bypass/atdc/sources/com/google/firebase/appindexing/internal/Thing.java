package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.firebase.appindexing.Indexable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Set;

public final class Thing extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable, Indexable {
    public static final Creator<Thing> CREATOR = new zzz();
    private final String zzIi;
    private final String zzVB;
    private final Bundle zzajQ;
    private int zzaku;
    private final zza zzbVH;

    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Creator<zza> CREATOR = new zzx();
        private final Bundle zzajQ;
        private final boolean zzbVF;
        private String zzbVG;
        private int zzyh;

        public zza(boolean z, int i, String str, Bundle bundle) {
            this.zzbVF = z;
            this.zzyh = i;
            this.zzbVG = str;
            this.zzajQ = bundle;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("worksOffline: ");
            stringBuilder.append(this.zzbVF);
            stringBuilder.append(", score: ");
            stringBuilder.append(this.zzyh);
            if (!this.zzbVG.isEmpty()) {
                stringBuilder.append(", accountEmail: ");
                stringBuilder.append(this.zzbVG);
            }
            if (!(this.zzajQ == null || this.zzajQ.isEmpty())) {
                stringBuilder.append(", Properties { ");
                Thing.zza(this.zzajQ, stringBuilder);
                stringBuilder.append("}");
            }
            return stringBuilder.toString();
        }

        public final void writeToParcel(Parcel parcel, int i) {
            i = zzd.zze(parcel);
            zzd.zza(parcel, 1, this.zzbVF);
            zzd.zzc(parcel, 2, this.zzyh);
            zzd.zza(parcel, 3, this.zzbVG, false);
            zzd.zza(parcel, 4, this.zzajQ, false);
            zzd.zzI(parcel, i);
        }
    }

    public Thing(int i, Bundle bundle, zza zza, String str, String str2) {
        this.zzaku = i;
        this.zzajQ = bundle;
        this.zzbVH = zza;
        this.zzIi = str;
        this.zzVB = str2;
        this.zzajQ.setClassLoader(getClass().getClassLoader());
    }

    public Thing(@NonNull Bundle bundle, @NonNull zza zza, String str, @NonNull String str2) {
        this.zzaku = 10;
        this.zzajQ = bundle;
        this.zzbVH = zza;
        this.zzIi = str;
        this.zzVB = str2;
    }

    private static void zza(@NonNull Bundle bundle, @NonNull StringBuilder stringBuilder) {
        Set keySet = bundle.keySet();
        String[] strArr = (String[]) keySet.toArray(new String[keySet.size()]);
        Arrays.sort(strArr);
        for (String str : strArr) {
            String str2;
            stringBuilder.append("{ key: '");
            stringBuilder.append(str2);
            stringBuilder.append("' value: ");
            Object obj = bundle.get(str2);
            if (obj == null) {
                str2 = "<null>";
            } else if (obj.getClass().isArray()) {
                stringBuilder.append("[ ");
                for (int i = 0; i < Array.getLength(obj); i++) {
                    stringBuilder.append("'");
                    stringBuilder.append(Array.get(obj, i));
                    stringBuilder.append("' ");
                }
                str2 = "]";
            } else {
                str2 = obj.toString();
            }
            stringBuilder.append(str2);
            stringBuilder.append(" } ");
        }
    }

    public final String toString() {
        String str;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.zzVB.equals("Thing") ? "Indexable" : this.zzVB);
        stringBuilder.append(" { { id: ");
        if (this.zzIi == null) {
            str = "<null>";
        } else {
            stringBuilder.append("'");
            stringBuilder.append(this.zzIi);
            str = "'";
        }
        stringBuilder.append(str);
        stringBuilder.append(" } Properties { ");
        zza(this.zzajQ, stringBuilder);
        stringBuilder.append("} ");
        stringBuilder.append("Metadata { ");
        stringBuilder.append(this.zzbVH.toString());
        stringBuilder.append(" } ");
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzajQ, false);
        zzd.zza(parcel, 2, this.zzbVH, i, false);
        zzd.zza(parcel, 3, this.zzIi, false);
        zzd.zza(parcel, 4, this.zzVB, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
