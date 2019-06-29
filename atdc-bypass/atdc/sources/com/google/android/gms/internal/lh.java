package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class lh extends zza {
    public static final Creator<lh> CREATOR = new li();
    private int zzaku;
    private List<String> zzbXy;

    public lh() {
        this(null);
    }

    lh(int i, List<String> list) {
        List emptyList;
        this.zzaku = i;
        if (list == null || list.isEmpty()) {
            emptyList = Collections.emptyList();
        } else {
            for (i = 0; i < list.size(); i++) {
                Object obj = (String) list.get(i);
                if (TextUtils.isEmpty(obj)) {
                    obj = null;
                }
                list.set(i, obj);
            }
            emptyList = Collections.unmodifiableList(list);
        }
        this.zzbXy = emptyList;
    }

    private lh(@Nullable List<String> list) {
        this.zzaku = 1;
        this.zzbXy = new ArrayList();
        if (list != null && !list.isEmpty()) {
            this.zzbXy.addAll(list);
        }
    }

    public static lh zzEX() {
        return new lh(null);
    }

    public static lh zza(lh lhVar) {
        return new lh(lhVar != null ? lhVar.zzbXy : null);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zzb(parcel, 2, this.zzbXy, false);
        zzd.zzI(parcel, i);
    }

    public final List<String> zzEW() {
        return this.zzbXy;
    }
}
