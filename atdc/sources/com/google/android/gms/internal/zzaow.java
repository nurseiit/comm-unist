package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;
import java.util.BitSet;

public final class zzaow extends zza {
    public static final Creator<zzaow> CREATOR = new zzaoy();
    private Account account;
    private zzapb[] zzaiV;
    private String zzaiW;
    private boolean zzaiX;

    zzaow(String str, boolean z, Account account, zzapb... zzapbArr) {
        this(zzapbArr, str, z, account);
        if (zzapbArr != null) {
            BitSet bitSet = new BitSet(zzaph.zzmk());
            for (zzapb zzapb : zzapbArr) {
                int i = zzapb.zzaji;
                if (i != -1) {
                    if (bitSet.get(i)) {
                        String str2 = "Duplicate global search section type ";
                        String valueOf = String.valueOf(zzaph.zzQ(i));
                        throw new IllegalArgumentException(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                    }
                    bitSet.set(i);
                }
            }
        }
    }

    zzaow(zzapb[] zzapbArr, String str, boolean z, Account account) {
        this.zzaiV = zzapbArr;
        this.zzaiW = str;
        this.zzaiX = z;
        this.account = account;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzaow) {
            zzaow zzaow = (zzaow) obj;
            if (zzbe.equal(this.zzaiW, zzaow.zzaiW) && zzbe.equal(Boolean.valueOf(this.zzaiX), Boolean.valueOf(zzaow.zzaiX)) && zzbe.equal(this.account, zzaow.account) && Arrays.equals(this.zzaiV, zzaow.zzaiV)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaiW, Boolean.valueOf(this.zzaiX), this.account, Integer.valueOf(Arrays.hashCode(this.zzaiV))});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaiV, i, false);
        zzd.zza(parcel, 2, this.zzaiW, false);
        zzd.zza(parcel, 3, this.zzaiX);
        zzd.zza(parcel, 4, this.account, i, false);
        zzd.zzI(parcel, zze);
    }
}
