package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.util.zzo;
import com.google.android.gms.internal.zzaye;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public final class MediaTrack extends zza implements ReflectedParcelable {
    public static final Creator<MediaTrack> CREATOR = new zzah();
    public static final int SUBTYPE_CAPTIONS = 2;
    public static final int SUBTYPE_CHAPTERS = 4;
    public static final int SUBTYPE_DESCRIPTIONS = 3;
    public static final int SUBTYPE_METADATA = 5;
    public static final int SUBTYPE_NONE = 0;
    public static final int SUBTYPE_SUBTITLES = 1;
    public static final int SUBTYPE_UNKNOWN = -1;
    public static final int TYPE_AUDIO = 2;
    public static final int TYPE_TEXT = 1;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_VIDEO = 3;
    private String mName;
    private String zzaeT;
    private long zzakg;
    private int zzamr;
    private String zzaoC;
    private JSONObject zzaoD;
    private String zzapX;
    private String zzapZ;
    private int zzaqN;

    public static class Builder {
        private final MediaTrack zzaqO;

        public Builder(long j, int i) throws IllegalArgumentException {
            this.zzaqO = new MediaTrack(j, i);
        }

        public MediaTrack build() {
            return this.zzaqO;
        }

        public Builder setContentId(String str) {
            this.zzaqO.setContentId(str);
            return this;
        }

        public Builder setContentType(String str) {
            this.zzaqO.setContentType(str);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzaqO.setCustomData(jSONObject);
            return this;
        }

        public Builder setLanguage(String str) {
            this.zzaqO.setLanguage(str);
            return this;
        }

        public Builder setLanguage(Locale locale) {
            this.zzaqO.setLanguage(zzaye.zzb(locale));
            return this;
        }

        public Builder setName(String str) {
            this.zzaqO.setName(str);
            return this;
        }

        public Builder setSubtype(int i) throws IllegalArgumentException {
            this.zzaqO.zzW(i);
            return this;
        }
    }

    MediaTrack(long j, int i) throws IllegalArgumentException {
        this(0, 0, null, null, null, null, -1, null);
        this.zzakg = j;
        if (i <= 0 || i > 3) {
            StringBuilder stringBuilder = new StringBuilder(24);
            stringBuilder.append("invalid type ");
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        this.zzamr = i;
    }

    MediaTrack(long j, int i, String str, String str2, String str3, String str4, int i2, String str5) {
        this.zzakg = j;
        this.zzamr = i;
        this.zzapX = str;
        this.zzapZ = str2;
        this.mName = str3;
        this.zzaeT = str4;
        this.zzaqN = i2;
        this.zzaoC = str5;
        if (this.zzaoC != null) {
            try {
                this.zzaoD = new JSONObject(this.zzaoC);
                return;
            } catch (JSONException unused) {
                this.zzaoD = null;
                this.zzaoC = null;
                return;
            }
        }
        this.zzaoD = null;
    }

    MediaTrack(JSONObject jSONObject) throws JSONException {
        String str;
        int i;
        this(0, 0, null, null, null, null, -1, null);
        this.zzakg = jSONObject.getLong("trackId");
        String string = jSONObject.getString("type");
        if ("TEXT".equals(string)) {
            this.zzamr = 1;
        } else if ("AUDIO".equals(string)) {
            this.zzamr = 2;
        } else if ("VIDEO".equals(string)) {
            this.zzamr = 3;
        } else {
            str = "invalid type: ";
            string = String.valueOf(string);
            throw new JSONException(string.length() != 0 ? str.concat(string) : new String(str));
        }
        this.zzapX = jSONObject.optString("trackContentId", null);
        this.zzapZ = jSONObject.optString("trackContentType", null);
        this.mName = jSONObject.optString("name", null);
        this.zzaeT = jSONObject.optString("language", null);
        if (jSONObject.has("subtype")) {
            string = jSONObject.getString("subtype");
            if ("SUBTITLES".equals(string)) {
                this.zzaqN = 1;
            } else if ("CAPTIONS".equals(string)) {
                this.zzaqN = 2;
            } else if ("DESCRIPTIONS".equals(string)) {
                this.zzaqN = 3;
            } else if ("CHAPTERS".equals(string)) {
                i = 4;
            } else if ("METADATA".equals(string)) {
                i = 5;
            } else {
                str = "invalid subtype: ";
                string = String.valueOf(string);
                throw new JSONException(string.length() != 0 ? str.concat(string) : new String(str));
            }
            this.zzaoD = jSONObject.optJSONObject("customData");
        }
        i = 0;
        this.zzaqN = i;
        this.zzaoD = jSONObject.optJSONObject("customData");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaTrack)) {
            return false;
        }
        MediaTrack mediaTrack = (MediaTrack) obj;
        return (this.zzaoD == null ? 1 : null) != (mediaTrack.zzaoD == null ? 1 : null) ? false : (this.zzaoD == null || mediaTrack.zzaoD == null || zzo.zzc(this.zzaoD, mediaTrack.zzaoD)) && this.zzakg == mediaTrack.zzakg && this.zzamr == mediaTrack.zzamr && zzaye.zza(this.zzapX, mediaTrack.zzapX) && zzaye.zza(this.zzapZ, mediaTrack.zzapZ) && zzaye.zza(this.mName, mediaTrack.mName) && zzaye.zza(this.zzaeT, mediaTrack.zzaeT) && this.zzaqN == mediaTrack.zzaqN;
    }

    public final String getContentId() {
        return this.zzapX;
    }

    public final String getContentType() {
        return this.zzapZ;
    }

    public final JSONObject getCustomData() {
        return this.zzaoD;
    }

    public final long getId() {
        return this.zzakg;
    }

    public final String getLanguage() {
        return this.zzaeT;
    }

    public final String getName() {
        return this.mName;
    }

    public final int getSubtype() {
        return this.zzaqN;
    }

    public final int getType() {
        return this.zzamr;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzakg), Integer.valueOf(this.zzamr), this.zzapX, this.zzapZ, this.mName, this.zzaeT, Integer.valueOf(this.zzaqN), String.valueOf(this.zzaoD)});
    }

    public final void setContentId(String str) {
        this.zzapX = str;
    }

    public final void setContentType(String str) {
        this.zzapZ = str;
    }

    /* Access modifiers changed, original: final */
    public final void setCustomData(JSONObject jSONObject) {
        this.zzaoD = jSONObject;
    }

    /* Access modifiers changed, original: final */
    public final void setLanguage(String str) {
        this.zzaeT = str;
    }

    /* Access modifiers changed, original: final */
    public final void setName(String str) {
        this.mName = str;
    }

    /* JADX WARNING: Missing block: B:6:0x0016, code skipped:
            r0.put(r1, r2);
     */
    /* JADX WARNING: Missing block: B:10:0x0026, code skipped:
            if (r4.zzapX == null) goto L_0x002f;
     */
    /* JADX WARNING: Missing block: B:11:0x0028, code skipped:
            r0.put("trackContentId", r4.zzapX);
     */
    /* JADX WARNING: Missing block: B:13:0x0031, code skipped:
            if (r4.zzapZ == null) goto L_0x003a;
     */
    /* JADX WARNING: Missing block: B:14:0x0033, code skipped:
            r0.put("trackContentType", r4.zzapZ);
     */
    /* JADX WARNING: Missing block: B:16:0x003c, code skipped:
            if (r4.mName == null) goto L_0x0045;
     */
    /* JADX WARNING: Missing block: B:17:0x003e, code skipped:
            r0.put("name", r4.mName);
     */
    /* JADX WARNING: Missing block: B:19:0x004b, code skipped:
            if (android.text.TextUtils.isEmpty(r4.zzaeT) != false) goto L_0x0054;
     */
    /* JADX WARNING: Missing block: B:20:0x004d, code skipped:
            r0.put("language", r4.zzaeT);
     */
    /* JADX WARNING: Missing block: B:22:0x0056, code skipped:
            switch(r4.zzaqN) {
                case 1: goto L_0x0071;
                case 2: goto L_0x006c;
                case 3: goto L_0x0067;
                case 4: goto L_0x0062;
                case 5: goto L_0x005a;
                default: goto L_0x0059;
            };
     */
    /* JADX WARNING: Missing block: B:24:0x005a, code skipped:
            r1 = "subtype";
            r2 = "METADATA";
     */
    /* JADX WARNING: Missing block: B:25:0x005e, code skipped:
            r0.put(r1, r2);
     */
    /* JADX WARNING: Missing block: B:26:0x0062, code skipped:
            r1 = "subtype";
            r2 = "CHAPTERS";
     */
    /* JADX WARNING: Missing block: B:27:0x0067, code skipped:
            r1 = "subtype";
            r2 = "DESCRIPTIONS";
     */
    /* JADX WARNING: Missing block: B:28:0x006c, code skipped:
            r1 = "subtype";
            r2 = "CAPTIONS";
     */
    /* JADX WARNING: Missing block: B:29:0x0071, code skipped:
            r1 = "subtype";
            r2 = "SUBTITLES";
     */
    /* JADX WARNING: Missing block: B:31:0x0078, code skipped:
            if (r4.zzaoD == null) goto L_0x0081;
     */
    /* JADX WARNING: Missing block: B:32:0x007a, code skipped:
            r0.put("customData", r4.zzaoD);
     */
    public final org.json.JSONObject toJson() {
        /*
        r4 = this;
        r0 = new org.json.JSONObject;
        r0.<init>();
        r1 = "trackId";
        r2 = r4.zzakg;	 Catch:{ JSONException -> 0x0081 }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x0081 }
        r1 = r4.zzamr;	 Catch:{ JSONException -> 0x0081 }
        switch(r1) {
            case 1: goto L_0x001f;
            case 2: goto L_0x001a;
            case 3: goto L_0x0012;
            default: goto L_0x0011;
        };	 Catch:{ JSONException -> 0x0081 }
    L_0x0011:
        goto L_0x0024;
    L_0x0012:
        r1 = "type";
        r2 = "VIDEO";
    L_0x0016:
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x0081 }
        goto L_0x0024;
    L_0x001a:
        r1 = "type";
        r2 = "AUDIO";
        goto L_0x0016;
    L_0x001f:
        r1 = "type";
        r2 = "TEXT";
        goto L_0x0016;
    L_0x0024:
        r1 = r4.zzapX;	 Catch:{ JSONException -> 0x0081 }
        if (r1 == 0) goto L_0x002f;
    L_0x0028:
        r1 = "trackContentId";
        r2 = r4.zzapX;	 Catch:{ JSONException -> 0x0081 }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x0081 }
    L_0x002f:
        r1 = r4.zzapZ;	 Catch:{ JSONException -> 0x0081 }
        if (r1 == 0) goto L_0x003a;
    L_0x0033:
        r1 = "trackContentType";
        r2 = r4.zzapZ;	 Catch:{ JSONException -> 0x0081 }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x0081 }
    L_0x003a:
        r1 = r4.mName;	 Catch:{ JSONException -> 0x0081 }
        if (r1 == 0) goto L_0x0045;
    L_0x003e:
        r1 = "name";
        r2 = r4.mName;	 Catch:{ JSONException -> 0x0081 }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x0081 }
    L_0x0045:
        r1 = r4.zzaeT;	 Catch:{ JSONException -> 0x0081 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ JSONException -> 0x0081 }
        if (r1 != 0) goto L_0x0054;
    L_0x004d:
        r1 = "language";
        r2 = r4.zzaeT;	 Catch:{ JSONException -> 0x0081 }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x0081 }
    L_0x0054:
        r1 = r4.zzaqN;	 Catch:{ JSONException -> 0x0081 }
        switch(r1) {
            case 1: goto L_0x0071;
            case 2: goto L_0x006c;
            case 3: goto L_0x0067;
            case 4: goto L_0x0062;
            case 5: goto L_0x005a;
            default: goto L_0x0059;
        };	 Catch:{ JSONException -> 0x0081 }
    L_0x0059:
        goto L_0x0076;
    L_0x005a:
        r1 = "subtype";
        r2 = "METADATA";
    L_0x005e:
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x0081 }
        goto L_0x0076;
    L_0x0062:
        r1 = "subtype";
        r2 = "CHAPTERS";
        goto L_0x005e;
    L_0x0067:
        r1 = "subtype";
        r2 = "DESCRIPTIONS";
        goto L_0x005e;
    L_0x006c:
        r1 = "subtype";
        r2 = "CAPTIONS";
        goto L_0x005e;
    L_0x0071:
        r1 = "subtype";
        r2 = "SUBTITLES";
        goto L_0x005e;
    L_0x0076:
        r1 = r4.zzaoD;	 Catch:{ JSONException -> 0x0081 }
        if (r1 == 0) goto L_0x0081;
    L_0x007a:
        r1 = "customData";
        r2 = r4.zzaoD;	 Catch:{ JSONException -> 0x0081 }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x0081 }
    L_0x0081:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaTrack.toJson():org.json.JSONObject");
    }

    public final void writeToParcel(Parcel parcel, int i) {
        this.zzaoC = this.zzaoD == null ? null : this.zzaoD.toString();
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, getId());
        zzd.zzc(parcel, 3, getType());
        zzd.zza(parcel, 4, getContentId(), false);
        zzd.zza(parcel, 5, getContentType(), false);
        zzd.zza(parcel, 6, getName(), false);
        zzd.zza(parcel, 7, getLanguage(), false);
        zzd.zzc(parcel, 8, getSubtype());
        zzd.zza(parcel, 9, this.zzaoC, false);
        zzd.zzI(parcel, i);
    }

    /* Access modifiers changed, original: final */
    public final void zzW(int i) throws IllegalArgumentException {
        if (i < 0 || i > 5) {
            StringBuilder stringBuilder = new StringBuilder(27);
            stringBuilder.append("invalid subtype ");
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (i == 0 || this.zzamr == 1) {
            this.zzaqN = i;
        } else {
            throw new IllegalArgumentException("subtypes are only valid for text tracks");
        }
    }
}
