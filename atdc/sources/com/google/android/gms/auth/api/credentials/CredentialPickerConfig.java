package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class CredentialPickerConfig extends zza implements ReflectedParcelable {
    public static final Creator<CredentialPickerConfig> CREATOR = new zzc();
    private final boolean mShowCancelButton;
    private final boolean zzakZ;
    private int zzaku;
    @Deprecated
    private final boolean zzala;
    private final int zzalb;

    public static class Builder {
        private boolean mShowCancelButton = true;
        private boolean zzakZ = false;
        private int zzalc = 1;

        public CredentialPickerConfig build() {
            return new CredentialPickerConfig(this);
        }

        @Deprecated
        public Builder setForNewAccount(boolean z) {
            this.zzalc = z ? 3 : 1;
            return this;
        }

        public Builder setPrompt(int i) {
            this.zzalc = i;
            return this;
        }

        public Builder setShowAddAccountButton(boolean z) {
            this.zzakZ = z;
            return this;
        }

        public Builder setShowCancelButton(boolean z) {
            this.mShowCancelButton = z;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Prompt {
        public static final int CONTINUE = 1;
        public static final int SIGN_IN = 2;
        public static final int SIGN_UP = 3;
    }

    CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3, int i2) {
        this.zzaku = i;
        this.zzakZ = z;
        this.mShowCancelButton = z2;
        z = true;
        if (i < 2) {
            int i3;
            this.zzala = z3;
            if (z3) {
                i3 = 3;
            }
            this.zzalb = i3;
            return;
        }
        if (i2 != 3) {
            z = false;
        }
        this.zzala = z;
        this.zzalb = i2;
    }

    private CredentialPickerConfig(Builder builder) {
        this(2, builder.zzakZ, builder.mShowCancelButton, false, builder.zzalc);
    }

    @Deprecated
    public final boolean isForNewAccount() {
        return this.zzalb == 3;
    }

    public final boolean shouldShowAddAccountButton() {
        return this.zzakZ;
    }

    public final boolean shouldShowCancelButton() {
        return this.mShowCancelButton;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, shouldShowAddAccountButton());
        zzd.zza(parcel, 2, shouldShowCancelButton());
        zzd.zza(parcel, 3, isForNewAccount());
        zzd.zzc(parcel, 4, this.zzalb);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
