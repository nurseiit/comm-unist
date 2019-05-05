package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public abstract class zza<T> implements MetadataField<T> {
    private final String zzaPB;
    private final Set<String> zzaPC;
    private final Set<String> zzaPD;
    private final int zzaPE;

    protected zza(String str, int i) {
        this.zzaPB = (String) zzbo.zzb((Object) str, (Object) "fieldName");
        this.zzaPC = Collections.singleton(str);
        this.zzaPD = Collections.emptySet();
        this.zzaPE = i;
    }

    protected zza(String str, Collection<String> collection, Collection<String> collection2, int i) {
        this.zzaPB = (String) zzbo.zzb((Object) str, (Object) "fieldName");
        this.zzaPC = Collections.unmodifiableSet(new HashSet(collection));
        this.zzaPD = Collections.unmodifiableSet(new HashSet(collection2));
        this.zzaPE = i;
    }

    public final String getName() {
        return this.zzaPB;
    }

    public String toString() {
        return this.zzaPB;
    }

    public final T zza(DataHolder dataHolder, int i, int i2) {
        return zzb(dataHolder, i, i2) ? zzc(dataHolder, i, i2) : null;
    }

    public abstract void zza(Bundle bundle, T t);

    public final void zza(DataHolder dataHolder, MetadataBundle metadataBundle, int i, int i2) {
        zzbo.zzb((Object) dataHolder, (Object) "dataHolder");
        zzbo.zzb((Object) metadataBundle, (Object) "bundle");
        if (zzb(dataHolder, i, i2)) {
            metadataBundle.zzc(this, zzc(dataHolder, i, i2));
        }
    }

    public final void zza(T t, Bundle bundle) {
        zzbo.zzb((Object) bundle, (Object) "bundle");
        if (t == null) {
            bundle.putString(this.zzaPB, null);
        } else {
            zza(bundle, (Object) t);
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean zzb(DataHolder dataHolder, int i, int i2) {
        for (String str : this.zzaPC) {
            if (dataHolder.zzcv(str)) {
                if (dataHolder.zzh(str, i, i2)) {
                }
            }
            return false;
        }
        return true;
    }

    public abstract T zzc(DataHolder dataHolder, int i, int i2);

    public final T zzp(Bundle bundle) {
        zzbo.zzb((Object) bundle, (Object) "bundle");
        return bundle.get(this.zzaPB) != null ? zzq(bundle) : null;
    }

    public abstract T zzq(Bundle bundle);

    public final Collection<String> zztk() {
        return this.zzaPC;
    }
}
