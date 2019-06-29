package com.google.android.gms.drive.metadata;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

public class CustomPropertyKey extends zza {
    public static final Creator<CustomPropertyKey> CREATOR = new zzc();
    public static final int PRIVATE = 1;
    public static final int PUBLIC = 0;
    private static final Pattern zzaPF = Pattern.compile("[\\w.!@$%^&*()/-]+");
    private int mVisibility;
    private String zzBN;

    public CustomPropertyKey(String str, int i) {
        zzbo.zzb((Object) str, (Object) "key");
        zzbo.zzb(zzaPF.matcher(str).matches(), (Object) "key name characters must be alphanumeric or one of .!@$%^&*()-_/");
        boolean z = true;
        if (!(i == 0 || i == 1)) {
            z = false;
        }
        zzbo.zzb(z, (Object) "visibility must be either PUBLIC or PRIVATE");
        this.zzBN = str;
        this.mVisibility = i;
    }

    public static CustomPropertyKey fromJson(JSONObject jSONObject) throws JSONException {
        return new CustomPropertyKey(jSONObject.getString("key"), jSONObject.getInt("visibility"));
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CustomPropertyKey)) {
            return false;
        }
        CustomPropertyKey customPropertyKey = (CustomPropertyKey) obj;
        return customPropertyKey.getKey().equals(this.zzBN) && customPropertyKey.getVisibility() == this.mVisibility;
    }

    public String getKey() {
        return this.zzBN;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public int hashCode() {
        String str = this.zzBN;
        int i = this.mVisibility;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 11);
        stringBuilder.append(str);
        stringBuilder.append(i);
        return stringBuilder.toString().hashCode();
    }

    public JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", getKey());
        jSONObject.put("visibility", getVisibility());
        return jSONObject;
    }

    public String toString() {
        String str = this.zzBN;
        int i = this.mVisibility;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 31);
        stringBuilder.append("CustomPropertyKey(");
        stringBuilder.append(str);
        stringBuilder.append(",");
        stringBuilder.append(i);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzBN, false);
        zzd.zzc(parcel, 3, this.mVisibility);
        zzd.zzI(parcel, i);
    }
}
