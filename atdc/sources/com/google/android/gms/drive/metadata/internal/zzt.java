package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.zza;

public class zzt extends zza<String> {
    public zzt(String str, int i) {
        super(str, i);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(Bundle bundle, Object obj) {
        bundle.putString(getName(), (String) obj);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzc(DataHolder dataHolder, int i, int i2) {
        return dataHolder.zzd(getName(), i, i2);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzq(Bundle bundle) {
        return bundle.getString(getName());
    }
}
