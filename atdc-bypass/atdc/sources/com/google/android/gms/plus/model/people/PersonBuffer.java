package com.google.android.gms.plus.model.people;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzcri;
import com.google.android.gms.internal.zzcrt;

public final class PersonBuffer extends AbstractDataBuffer<Person> {
    private final zzd<zzcri> zzbBE;

    public PersonBuffer(DataHolder dataHolder) {
        super(dataHolder);
        if (dataHolder.zzqN() == null || !dataHolder.zzqN().getBoolean("com.google.android.gms.plus.IsSafeParcelable", false)) {
            this.zzbBE = null;
        } else {
            this.zzbBE = new zzd(dataHolder, zzcri.CREATOR);
        }
    }

    public final Person get(int i) {
        return this.zzbBE != null ? (Person) ((SafeParcelable) this.zzbBE.get(i)) : new zzcrt(this.zzaCX, i);
    }
}
