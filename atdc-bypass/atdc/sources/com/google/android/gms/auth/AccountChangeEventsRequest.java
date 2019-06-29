package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public class AccountChangeEventsRequest extends zza {
    public static final Creator<AccountChangeEventsRequest> CREATOR = new zzb();
    private int mVersion;
    private Account zzajb;
    @Deprecated
    private String zzakh;
    private int zzakj;

    public AccountChangeEventsRequest() {
        this.mVersion = 1;
    }

    AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.mVersion = i;
        this.zzakj = i2;
        this.zzakh = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.zzajb = account;
        } else {
            this.zzajb = new Account(str, "com.google");
        }
    }

    public Account getAccount() {
        return this.zzajb;
    }

    @Deprecated
    public String getAccountName() {
        return this.zzakh;
    }

    public int getEventIndex() {
        return this.zzakj;
    }

    public AccountChangeEventsRequest setAccount(Account account) {
        this.zzajb = account;
        return this;
    }

    @Deprecated
    public AccountChangeEventsRequest setAccountName(String str) {
        this.zzakh = str;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i) {
        this.zzakj = i;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.mVersion);
        zzd.zzc(parcel, 2, this.zzakj);
        zzd.zza(parcel, 3, this.zzakh, false);
        zzd.zza(parcel, 4, this.zzajb, i, false);
        zzd.zzI(parcel, zze);
    }
}
