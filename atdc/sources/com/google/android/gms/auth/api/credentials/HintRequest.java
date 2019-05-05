package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public final class HintRequest extends zza implements ReflectedParcelable {
    public static final Creator<HintRequest> CREATOR = new zzg();
    private int zzaku;
    private final String[] zzale;
    private final boolean zzalh;
    private final String zzali;
    private final String zzalj;
    private final CredentialPickerConfig zzalk;
    private final boolean zzall;
    private final boolean zzalm;

    public static final class Builder {
        private String[] zzale;
        private boolean zzalh = false;
        private String zzali;
        private String zzalj;
        private CredentialPickerConfig zzalk = new com.google.android.gms.auth.api.credentials.CredentialPickerConfig.Builder().build();
        private boolean zzall;
        private boolean zzalm;

        public final HintRequest build() {
            if (this.zzale == null) {
                this.zzale = new String[0];
            }
            if (this.zzall || this.zzalm || this.zzale.length != 0) {
                return new HintRequest(this);
            }
            throw new IllegalStateException("At least one authentication method must be specified");
        }

        public final Builder setAccountTypes(String... strArr) {
            if (strArr == null) {
                strArr = new String[0];
            }
            this.zzale = strArr;
            return this;
        }

        public final Builder setEmailAddressIdentifierSupported(boolean z) {
            this.zzall = z;
            return this;
        }

        public final Builder setHintPickerConfig(@NonNull CredentialPickerConfig credentialPickerConfig) {
            this.zzalk = (CredentialPickerConfig) zzbo.zzu(credentialPickerConfig);
            return this;
        }

        public final Builder setIdTokenNonce(@Nullable String str) {
            this.zzalj = str;
            return this;
        }

        public final Builder setIdTokenRequested(boolean z) {
            this.zzalh = z;
            return this;
        }

        public final Builder setPhoneNumberIdentifierSupported(boolean z) {
            this.zzalm = z;
            return this;
        }

        public final Builder setServerClientId(@Nullable String str) {
            this.zzali = str;
            return this;
        }
    }

    HintRequest(int i, CredentialPickerConfig credentialPickerConfig, boolean z, boolean z2, String[] strArr, boolean z3, String str, String str2) {
        this.zzaku = i;
        this.zzalk = (CredentialPickerConfig) zzbo.zzu(credentialPickerConfig);
        this.zzall = z;
        this.zzalm = z2;
        this.zzale = (String[]) zzbo.zzu(strArr);
        if (this.zzaku < 2) {
            this.zzalh = true;
            this.zzali = null;
            this.zzalj = null;
            return;
        }
        this.zzalh = z3;
        this.zzali = str;
        this.zzalj = str2;
    }

    private HintRequest(Builder builder) {
        this(2, builder.zzalk, builder.zzall, builder.zzalm, builder.zzale, builder.zzalh, builder.zzali, builder.zzalj);
    }

    @NonNull
    public final String[] getAccountTypes() {
        return this.zzale;
    }

    @NonNull
    public final CredentialPickerConfig getHintPickerConfig() {
        return this.zzalk;
    }

    @Nullable
    public final String getIdTokenNonce() {
        return this.zzalj;
    }

    @Nullable
    public final String getServerClientId() {
        return this.zzali;
    }

    public final boolean isEmailAddressIdentifierSupported() {
        return this.zzall;
    }

    public final boolean isIdTokenRequested() {
        return this.zzalh;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getHintPickerConfig(), i, false);
        zzd.zza(parcel, 2, isEmailAddressIdentifierSupported());
        zzd.zza(parcel, 3, this.zzalm);
        zzd.zza(parcel, 4, getAccountTypes(), false);
        zzd.zza(parcel, 5, isIdTokenRequested());
        zzd.zza(parcel, 6, getServerClientId(), false);
        zzd.zza(parcel, 7, getIdTokenNonce(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
