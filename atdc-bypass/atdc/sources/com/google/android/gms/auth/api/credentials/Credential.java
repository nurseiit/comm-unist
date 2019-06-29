package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzare;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Credential extends zza implements ReflectedParcelable {
    public static final Creator<Credential> CREATOR = new zza();
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";
    @Nullable
    private final String mName;
    private final String zzIi;
    @Nullable
    private final Uri zzakR;
    private final List<IdToken> zzakS;
    @Nullable
    private final String zzakT;
    @Nullable
    private final String zzakU;
    @Nullable
    private final String zzakV;
    @Nullable
    private final String zzakW;
    @Nullable
    private final String zzakX;
    @Nullable
    private final String zzakY;
    private int zzaku;

    public static class Builder {
        private String mName;
        private final String zzIi;
        private Uri zzakR;
        private List<IdToken> zzakS;
        private String zzakT;
        private String zzakU;
        private String zzakV;
        private String zzakW;
        private String zzakX;
        private String zzakY;

        public Builder(Credential credential) {
            this.zzIi = credential.zzIi;
            this.mName = credential.mName;
            this.zzakR = credential.zzakR;
            this.zzakS = credential.zzakS;
            this.zzakT = credential.zzakT;
            this.zzakU = credential.zzakU;
            this.zzakV = credential.zzakV;
            this.zzakW = credential.zzakW;
            this.zzakX = credential.zzakX;
            this.zzakY = credential.zzakY;
        }

        public Builder(String str) {
            this.zzIi = str;
        }

        public Credential build() {
            return new Credential(4, this.zzIi, this.mName, this.zzakR, this.zzakS, this.zzakT, this.zzakU, this.zzakV, this.zzakW, this.zzakX, this.zzakY);
        }

        public Builder setAccountType(String str) {
            this.zzakU = str;
            return this;
        }

        public Builder setName(String str) {
            this.mName = str;
            return this;
        }

        public Builder setPassword(String str) {
            this.zzakT = str;
            return this;
        }

        public Builder setProfilePictureUri(Uri uri) {
            this.zzakR = uri;
            return this;
        }
    }

    Credential(int i, String str, String str2, Uri uri, List<IdToken> list, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.zzaku = i;
        String trim = ((String) zzbo.zzb((Object) str, (Object) "credential identifier cannot be null")).trim();
        zzbo.zzh(trim, "credential identifier cannot be empty");
        this.zzIi = trim;
        if (str2 != null && TextUtils.isEmpty(str2.trim())) {
            str2 = null;
        }
        this.mName = str2;
        this.zzakR = uri;
        this.zzakS = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zzakT = str3;
        if (str3 == null || !str3.isEmpty()) {
            if (!TextUtils.isEmpty(str4)) {
                zzare.zzbN(str4);
            }
            this.zzakU = str4;
            this.zzakV = str5;
            this.zzakW = str6;
            this.zzakX = str7;
            this.zzakY = str8;
            if (!TextUtils.isEmpty(this.zzakT) && !TextUtils.isEmpty(this.zzakU)) {
                throw new IllegalStateException("password and accountType cannot both be set");
            }
            return;
        }
        throw new IllegalArgumentException("password cannot be empty");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.zzIi, credential.zzIi) && TextUtils.equals(this.mName, credential.mName) && zzbe.equal(this.zzakR, credential.zzakR) && TextUtils.equals(this.zzakT, credential.zzakT) && TextUtils.equals(this.zzakU, credential.zzakU) && TextUtils.equals(this.zzakV, credential.zzakV);
    }

    @Nullable
    public String getAccountType() {
        return this.zzakU;
    }

    @Nullable
    public String getFamilyName() {
        return this.zzakY;
    }

    @Nullable
    public String getGeneratedPassword() {
        return this.zzakV;
    }

    @Nullable
    public String getGivenName() {
        return this.zzakX;
    }

    public String getId() {
        return this.zzIi;
    }

    public List<IdToken> getIdTokens() {
        return this.zzakS;
    }

    @Nullable
    public String getName() {
        return this.mName;
    }

    @Nullable
    public String getPassword() {
        return this.zzakT;
    }

    @Nullable
    public Uri getProfilePictureUri() {
        return this.zzakR;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzIi, this.mName, this.zzakR, this.zzakT, this.zzakU, this.zzakV});
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getId(), false);
        zzd.zza(parcel, 2, getName(), false);
        zzd.zza(parcel, 3, getProfilePictureUri(), i, false);
        zzd.zzc(parcel, 4, getIdTokens(), false);
        zzd.zza(parcel, 5, getPassword(), false);
        zzd.zza(parcel, 6, getAccountType(), false);
        zzd.zza(parcel, 7, getGeneratedPassword(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zza(parcel, 8, this.zzakW, false);
        zzd.zza(parcel, 9, getGivenName(), false);
        zzd.zza(parcel, 10, getFamilyName(), false);
        zzd.zzI(parcel, zze);
    }
}
