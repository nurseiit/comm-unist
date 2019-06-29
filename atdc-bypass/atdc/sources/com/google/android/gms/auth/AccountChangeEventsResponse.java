package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.List;

public class AccountChangeEventsResponse extends zza {
    public static final Creator<AccountChangeEventsResponse> CREATOR = new zzc();
    private int mVersion;
    private List<AccountChangeEvent> zztH;

    AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.mVersion = i;
        this.zztH = (List) zzbo.zzu(list);
    }

    public AccountChangeEventsResponse(List<AccountChangeEvent> list) {
        this.mVersion = 1;
        this.zztH = (List) zzbo.zzu(list);
    }

    public List<AccountChangeEvent> getEvents() {
        return this.zztH;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.mVersion);
        zzd.zzc(parcel, 2, this.zztH, false);
        zzd.zzI(parcel, i);
    }
}
