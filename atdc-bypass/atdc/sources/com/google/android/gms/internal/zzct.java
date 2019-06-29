package com.google.android.gms.internal;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public final class zzct extends zzcs {
    private zzct(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static zzct zza(String str, Context context, boolean z) {
        zzcs.zza(context, z);
        return new zzct(context, str, z);
    }

    /* Access modifiers changed, original: protected|final */
    public final List<Callable<Void>> zzb(zzdb zzdb, zzax zzax, zzau zzau) {
        if (zzdb.zzC() == null || !this.zzqk) {
            return super.zzb(zzdb, zzax, zzau);
        }
        int zzy = zzdb.zzy();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.zzb(zzdb, zzax, zzau));
        arrayList.add(new zzdp(zzdb, "Ob9vkrYwqwLnJveTtaSWm/WWJCjo/9DRtOCY3btkKa6pJtjMu6sI0iK41HSh10io", "UrT94Dq3ubetC7rQ64nVjqMQ53po9X61geGgrP+ILCU=", zzax, zzy, 24));
        return arrayList;
    }
}
