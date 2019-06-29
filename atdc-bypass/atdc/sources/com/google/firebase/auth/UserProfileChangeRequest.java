package com.google.firebase.auth;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public class UserProfileChangeRequest extends zza {
    public static final Creator<UserProfileChangeRequest> CREATOR = new zzq();
    private String zzalP;
    private String zzbWs;
    private boolean zzbWt;
    private boolean zzbWu;
    private Uri zzbWv;

    public static class Builder {
        private String zzalP;
        private boolean zzbWt;
        private boolean zzbWu;
        private Uri zzbWv;

        public UserProfileChangeRequest build() {
            return new UserProfileChangeRequest(this.zzalP, this.zzbWv == null ? null : this.zzbWv.toString(), this.zzbWt, this.zzbWu);
        }

        public Builder setDisplayName(@Nullable String str) {
            if (str == null) {
                this.zzbWt = true;
                return this;
            }
            this.zzalP = str;
            return this;
        }

        public Builder setPhotoUri(@Nullable Uri uri) {
            if (uri == null) {
                this.zzbWu = true;
                return this;
            }
            this.zzbWv = uri;
            return this;
        }
    }

    UserProfileChangeRequest(String str, String str2, boolean z, boolean z2) {
        this.zzalP = str;
        this.zzbWs = str2;
        this.zzbWt = z;
        this.zzbWu = z2;
        this.zzbWv = TextUtils.isEmpty(str2) ? null : Uri.parse(str2);
    }

    @Nullable
    public String getDisplayName() {
        return this.zzalP;
    }

    @Nullable
    public Uri getPhotoUri() {
        return this.zzbWv;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, getDisplayName(), false);
        zzd.zza(parcel, 3, this.zzbWs, false);
        zzd.zza(parcel, 4, this.zzbWt);
        zzd.zza(parcel, 5, this.zzbWu);
        zzd.zzI(parcel, i);
    }
}
