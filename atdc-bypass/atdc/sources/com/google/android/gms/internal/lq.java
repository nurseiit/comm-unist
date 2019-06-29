package com.google.android.gms.internal;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.UserInfo;
import org.json.JSONException;
import org.json.JSONObject;

public final class lq implements UserInfo {
    @NonNull
    private String zzafe;
    @Nullable
    private String zzalO;
    @Nullable
    private String zzalP;
    @NonNull
    private String zzbVY;
    @Nullable
    private String zzbWs;
    @Nullable
    private Uri zzbWv;
    private boolean zzbXm;
    @Nullable
    private String zzbXs;
    @Nullable
    private String zzbjk;

    public lq(@NonNull kv kvVar, @NonNull String str) {
        zzbo.zzu(kvVar);
        zzbo.zzcF(str);
        this.zzafe = zzbo.zzcF(kvVar.getLocalId());
        this.zzbVY = str;
        this.zzalO = kvVar.getEmail();
        this.zzalP = kvVar.getDisplayName();
        Uri photoUri = kvVar.getPhotoUri();
        if (photoUri != null) {
            this.zzbWs = photoUri.toString();
            this.zzbWv = photoUri;
        }
        this.zzbXm = kvVar.isEmailVerified();
        this.zzbXs = null;
        this.zzbjk = kvVar.getPhoneNumber();
    }

    public lq(@NonNull kz kzVar) {
        zzbo.zzu(kzVar);
        this.zzafe = kzVar.zzET();
        this.zzbVY = zzbo.zzcF(kzVar.getProviderId());
        this.zzalP = kzVar.getDisplayName();
        Uri photoUri = kzVar.getPhotoUri();
        if (photoUri != null) {
            this.zzbWs = photoUri.toString();
            this.zzbWv = photoUri;
        }
        this.zzalO = null;
        this.zzbjk = kzVar.getPhoneNumber();
        this.zzbXm = false;
        this.zzbXs = kzVar.getRawUserInfo();
    }

    private lq(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, boolean z, @Nullable String str7) {
        this.zzafe = str;
        this.zzbVY = str2;
        this.zzalO = str3;
        this.zzbjk = str4;
        this.zzalP = str5;
        this.zzbWs = str6;
        this.zzbXm = z;
        this.zzbXs = str7;
    }

    @Nullable
    public static lq zzgv(@NonNull String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new lq(jSONObject.optString("userId"), jSONObject.optString("providerId"), jSONObject.optString("email"), jSONObject.optString("phoneNumber"), jSONObject.optString("displayName"), jSONObject.optString("photoUrl"), jSONObject.optBoolean("isEmailVerified"), jSONObject.optString("rawUserInfo"));
        } catch (JSONException e) {
            Log.d("DefaultAuthUserInfo", "Failed to unpack UserInfo from JSON");
            throw new ip(e);
        }
    }

    @Nullable
    public final String getDisplayName() {
        return this.zzalP;
    }

    @Nullable
    public final String getEmail() {
        return this.zzalO;
    }

    @Nullable
    public final String getPhoneNumber() {
        return this.zzbjk;
    }

    @Nullable
    public final Uri getPhotoUrl() {
        if (!TextUtils.isEmpty(this.zzbWs) && this.zzbWv == null) {
            this.zzbWv = Uri.parse(this.zzbWs);
        }
        return this.zzbWv;
    }

    @NonNull
    public final String getProviderId() {
        return this.zzbVY;
    }

    @Nullable
    public final String getRawUserInfo() {
        return this.zzbXs;
    }

    @NonNull
    public final String getUid() {
        return this.zzafe;
    }

    public final boolean isEmailVerified() {
        return this.zzbXm;
    }

    @Nullable
    public final String zzmC() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("userId", this.zzafe);
            jSONObject.putOpt("providerId", this.zzbVY);
            jSONObject.putOpt("displayName", this.zzalP);
            jSONObject.putOpt("photoUrl", this.zzbWs);
            jSONObject.putOpt("email", this.zzalO);
            jSONObject.putOpt("phoneNumber", this.zzbjk);
            jSONObject.putOpt("isEmailVerified", Boolean.valueOf(this.zzbXm));
            jSONObject.putOpt("rawUserInfo", this.zzbXs);
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.d("DefaultAuthUserInfo", "Failed to jsonify this object");
            throw new ip(e);
        }
    }
}
