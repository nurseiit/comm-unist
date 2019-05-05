package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzayv;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class MediaMetadata extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Creator<MediaMetadata> CREATOR = new zzad();
    public static final String KEY_ALBUM_ARTIST = "com.google.android.gms.cast.metadata.ALBUM_ARTIST";
    public static final String KEY_ALBUM_TITLE = "com.google.android.gms.cast.metadata.ALBUM_TITLE";
    public static final String KEY_ARTIST = "com.google.android.gms.cast.metadata.ARTIST";
    public static final String KEY_BROADCAST_DATE = "com.google.android.gms.cast.metadata.BROADCAST_DATE";
    public static final String KEY_COMPOSER = "com.google.android.gms.cast.metadata.COMPOSER";
    public static final String KEY_CREATION_DATE = "com.google.android.gms.cast.metadata.CREATION_DATE";
    public static final String KEY_DISC_NUMBER = "com.google.android.gms.cast.metadata.DISC_NUMBER";
    public static final String KEY_EPISODE_NUMBER = "com.google.android.gms.cast.metadata.EPISODE_NUMBER";
    public static final String KEY_HEIGHT = "com.google.android.gms.cast.metadata.HEIGHT";
    public static final String KEY_LOCATION_LATITUDE = "com.google.android.gms.cast.metadata.LOCATION_LATITUDE";
    public static final String KEY_LOCATION_LONGITUDE = "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE";
    public static final String KEY_LOCATION_NAME = "com.google.android.gms.cast.metadata.LOCATION_NAME";
    public static final String KEY_RELEASE_DATE = "com.google.android.gms.cast.metadata.RELEASE_DATE";
    public static final String KEY_SEASON_NUMBER = "com.google.android.gms.cast.metadata.SEASON_NUMBER";
    public static final String KEY_SERIES_TITLE = "com.google.android.gms.cast.metadata.SERIES_TITLE";
    public static final String KEY_STUDIO = "com.google.android.gms.cast.metadata.STUDIO";
    public static final String KEY_SUBTITLE = "com.google.android.gms.cast.metadata.SUBTITLE";
    public static final String KEY_TITLE = "com.google.android.gms.cast.metadata.TITLE";
    public static final String KEY_TRACK_NUMBER = "com.google.android.gms.cast.metadata.TRACK_NUMBER";
    public static final String KEY_WIDTH = "com.google.android.gms.cast.metadata.WIDTH";
    public static final int MEDIA_TYPE_GENERIC = 0;
    public static final int MEDIA_TYPE_MOVIE = 1;
    public static final int MEDIA_TYPE_MUSIC_TRACK = 3;
    public static final int MEDIA_TYPE_PHOTO = 4;
    public static final int MEDIA_TYPE_TV_SHOW = 2;
    public static final int MEDIA_TYPE_USER = 100;
    private static final String[] zzaqh = new String[]{null, "String", "int", "double", "ISO-8601 date String"};
    private static final zza zzaqi = new zza().zzb(KEY_CREATION_DATE, "creationDateTime", 4).zzb(KEY_RELEASE_DATE, "releaseDate", 4).zzb(KEY_BROADCAST_DATE, "originalAirdate", 4).zzb(KEY_TITLE, "title", 1).zzb(KEY_SUBTITLE, "subtitle", 1).zzb(KEY_ARTIST, "artist", 1).zzb(KEY_ALBUM_ARTIST, "albumArtist", 1).zzb(KEY_ALBUM_TITLE, "albumName", 1).zzb(KEY_COMPOSER, "composer", 1).zzb(KEY_DISC_NUMBER, "discNumber", 2).zzb(KEY_TRACK_NUMBER, "trackNumber", 2).zzb(KEY_SEASON_NUMBER, "season", 2).zzb(KEY_EPISODE_NUMBER, "episode", 2).zzb(KEY_SERIES_TITLE, "seriesTitle", 1).zzb(KEY_STUDIO, "studio", 1).zzb(KEY_WIDTH, "width", 2).zzb(KEY_HEIGHT, "height", 2).zzb(KEY_LOCATION_NAME, Param.LOCATION, 1).zzb(KEY_LOCATION_LATITUDE, "latitude", 3).zzb(KEY_LOCATION_LONGITUDE, "longitude", 3);
    private final List<WebImage> zzHC;
    private Bundle zzaqj;
    private int zzaqk;

    static class zza {
        private final Map<String, String> zzaql = new HashMap();
        private final Map<String, String> zzaqm = new HashMap();
        private final Map<String, Integer> zzaqn = new HashMap();

        public final zza zzb(String str, String str2, int i) {
            this.zzaql.put(str, str2);
            this.zzaqm.put(str2, str);
            this.zzaqn.put(str, Integer.valueOf(i));
            return this;
        }

        public final String zzbY(String str) {
            return (String) this.zzaql.get(str);
        }

        public final String zzbZ(String str) {
            return (String) this.zzaqm.get(str);
        }

        public final int zzca(String str) {
            Integer num = (Integer) this.zzaqn.get(str);
            return num != null ? num.intValue() : 0;
        }
    }

    public MediaMetadata() {
        this(0);
    }

    public MediaMetadata(int i) {
        this(new ArrayList(), new Bundle(), i);
    }

    MediaMetadata(List<WebImage> list, Bundle bundle, int i) {
        this.zzHC = list;
        this.zzaqj = bundle;
        this.zzaqk = i;
    }

    private final void zza(JSONObject jSONObject, String... strArr) {
        try {
            for (String str : strArr) {
                if (this.zzaqj.containsKey(str)) {
                    switch (zzaqi.zzca(str)) {
                        case 1:
                        case 4:
                            jSONObject.put(zzaqi.zzbY(str), this.zzaqj.getString(str));
                            break;
                        case 2:
                            jSONObject.put(zzaqi.zzbY(str), this.zzaqj.getInt(str));
                            break;
                        case 3:
                            jSONObject.put(zzaqi.zzbY(str), this.zzaqj.getDouble(str));
                            break;
                        default:
                            break;
                    }
                }
            }
            for (String str2 : this.zzaqj.keySet()) {
                if (!str2.startsWith("com.google.")) {
                    Object obj = this.zzaqj.get(str2);
                    if (!(obj instanceof String)) {
                        if (!(obj instanceof Integer)) {
                            if (!(obj instanceof Double)) {
                            }
                        }
                    }
                    jSONObject.put(str2, obj);
                }
            }
        } catch (JSONException unused) {
        }
    }

    /* JADX WARNING: Missing block: B:24:0x004f, code skipped:
            r3.putString(r2, (java.lang.String) r1);
     */
    private final void zzb(org.json.JSONObject r7, java.lang.String... r8) {
        /*
        r6 = this;
        r0 = new java.util.HashSet;
        r8 = java.util.Arrays.asList(r8);
        r0.<init>(r8);
        r8 = r7.keys();	 Catch:{ JSONException -> 0x00ae }
    L_0x000d:
        r1 = r8.hasNext();	 Catch:{ JSONException -> 0x00ae }
        if (r1 == 0) goto L_0x00ae;
    L_0x0013:
        r1 = r8.next();	 Catch:{ JSONException -> 0x00ae }
        r1 = (java.lang.String) r1;	 Catch:{ JSONException -> 0x00ae }
        r2 = "metadataType";
        r2 = r2.equals(r1);	 Catch:{ JSONException -> 0x00ae }
        if (r2 != 0) goto L_0x000d;
    L_0x0021:
        r2 = zzaqi;	 Catch:{ JSONException -> 0x00ae }
        r2 = r2.zzbZ(r1);	 Catch:{ JSONException -> 0x00ae }
        if (r2 == 0) goto L_0x007c;
    L_0x0029:
        r3 = r0.contains(r2);	 Catch:{ JSONException -> 0x00ae }
        if (r3 == 0) goto L_0x000d;
    L_0x002f:
        r1 = r7.get(r1);	 Catch:{ JSONException -> 0x000d }
        if (r1 != 0) goto L_0x0036;
    L_0x0035:
        goto L_0x000d;
    L_0x0036:
        r3 = zzaqi;	 Catch:{ JSONException -> 0x000d }
        r3 = r3.zzca(r2);	 Catch:{ JSONException -> 0x000d }
        switch(r3) {
            case 1: goto L_0x0075;
            case 2: goto L_0x0065;
            case 3: goto L_0x0055;
            case 4: goto L_0x0040;
            default: goto L_0x003f;
        };	 Catch:{ JSONException -> 0x000d }
    L_0x003f:
        goto L_0x000d;
    L_0x0040:
        r3 = r1 instanceof java.lang.String;	 Catch:{ JSONException -> 0x000d }
        if (r3 == 0) goto L_0x000d;
    L_0x0044:
        r3 = r1;
        r3 = (java.lang.String) r3;	 Catch:{ JSONException -> 0x000d }
        r3 = com.google.android.gms.internal.zzayv.zzco(r3);	 Catch:{ JSONException -> 0x000d }
        if (r3 == 0) goto L_0x000d;
    L_0x004d:
        r3 = r6.zzaqj;	 Catch:{ JSONException -> 0x000d }
    L_0x004f:
        r1 = (java.lang.String) r1;	 Catch:{ JSONException -> 0x000d }
        r3.putString(r2, r1);	 Catch:{ JSONException -> 0x000d }
        goto L_0x000d;
    L_0x0055:
        r3 = r1 instanceof java.lang.Double;	 Catch:{ JSONException -> 0x000d }
        if (r3 == 0) goto L_0x000d;
    L_0x0059:
        r3 = r6.zzaqj;	 Catch:{ JSONException -> 0x000d }
        r1 = (java.lang.Double) r1;	 Catch:{ JSONException -> 0x000d }
        r4 = r1.doubleValue();	 Catch:{ JSONException -> 0x000d }
        r3.putDouble(r2, r4);	 Catch:{ JSONException -> 0x000d }
        goto L_0x000d;
    L_0x0065:
        r3 = r1 instanceof java.lang.Integer;	 Catch:{ JSONException -> 0x000d }
        if (r3 == 0) goto L_0x000d;
    L_0x0069:
        r3 = r6.zzaqj;	 Catch:{ JSONException -> 0x000d }
        r1 = (java.lang.Integer) r1;	 Catch:{ JSONException -> 0x000d }
        r1 = r1.intValue();	 Catch:{ JSONException -> 0x000d }
        r3.putInt(r2, r1);	 Catch:{ JSONException -> 0x000d }
        goto L_0x000d;
    L_0x0075:
        r3 = r1 instanceof java.lang.String;	 Catch:{ JSONException -> 0x000d }
        if (r3 == 0) goto L_0x000d;
    L_0x0079:
        r3 = r6.zzaqj;	 Catch:{ JSONException -> 0x000d }
        goto L_0x004f;
    L_0x007c:
        r2 = r7.get(r1);	 Catch:{ JSONException -> 0x00ae }
        r3 = r2 instanceof java.lang.String;	 Catch:{ JSONException -> 0x00ae }
        if (r3 == 0) goto L_0x008c;
    L_0x0084:
        r3 = r6.zzaqj;	 Catch:{ JSONException -> 0x00ae }
        r2 = (java.lang.String) r2;	 Catch:{ JSONException -> 0x00ae }
        r3.putString(r1, r2);	 Catch:{ JSONException -> 0x00ae }
        goto L_0x000d;
    L_0x008c:
        r3 = r2 instanceof java.lang.Integer;	 Catch:{ JSONException -> 0x00ae }
        if (r3 == 0) goto L_0x009d;
    L_0x0090:
        r3 = r6.zzaqj;	 Catch:{ JSONException -> 0x00ae }
        r2 = (java.lang.Integer) r2;	 Catch:{ JSONException -> 0x00ae }
        r2 = r2.intValue();	 Catch:{ JSONException -> 0x00ae }
        r3.putInt(r1, r2);	 Catch:{ JSONException -> 0x00ae }
        goto L_0x000d;
    L_0x009d:
        r3 = r2 instanceof java.lang.Double;	 Catch:{ JSONException -> 0x00ae }
        if (r3 == 0) goto L_0x000d;
    L_0x00a1:
        r3 = r6.zzaqj;	 Catch:{ JSONException -> 0x00ae }
        r2 = (java.lang.Double) r2;	 Catch:{ JSONException -> 0x00ae }
        r4 = r2.doubleValue();	 Catch:{ JSONException -> 0x00ae }
        r3.putDouble(r1, r4);	 Catch:{ JSONException -> 0x00ae }
        goto L_0x000d;
    L_0x00ae:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaMetadata.zzb(org.json.JSONObject, java.lang.String[]):void");
    }

    private final boolean zzb(Bundle bundle, Bundle bundle2) {
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle) && !zzb((Bundle) obj, (Bundle) obj2)) {
                return false;
            }
            if (obj == null) {
                if (obj2 != null || !bundle2.containsKey(str)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    private static void zzf(String str, int i) throws IllegalArgumentException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("null and empty keys are not allowed");
        }
        int zzca = zzaqi.zzca(str);
        if (zzca != i && zzca != 0) {
            String valueOf = String.valueOf(zzaqh[i]);
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 21) + String.valueOf(valueOf).length());
            stringBuilder.append("Value for ");
            stringBuilder.append(str);
            stringBuilder.append(" must be a ");
            stringBuilder.append(valueOf);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public void addImage(WebImage webImage) {
        this.zzHC.add(webImage);
    }

    public void clear() {
        this.zzaqj.clear();
        this.zzHC.clear();
    }

    public void clearImages() {
        this.zzHC.clear();
    }

    public boolean containsKey(String str) {
        return this.zzaqj.containsKey(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaMetadata)) {
            return false;
        }
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        return zzb(this.zzaqj, mediaMetadata.zzaqj) && this.zzHC.equals(mediaMetadata.zzHC);
    }

    public Calendar getDate(String str) {
        zzf(str, 4);
        str = this.zzaqj.getString(str);
        return str != null ? zzayv.zzco(str) : null;
    }

    public String getDateAsString(String str) {
        zzf(str, 4);
        return this.zzaqj.getString(str);
    }

    public double getDouble(String str) {
        zzf(str, 3);
        return this.zzaqj.getDouble(str);
    }

    public List<WebImage> getImages() {
        return this.zzHC;
    }

    public int getInt(String str) {
        zzf(str, 2);
        return this.zzaqj.getInt(str);
    }

    public int getMediaType() {
        return this.zzaqk;
    }

    public String getString(String str) {
        zzf(str, 1);
        return this.zzaqj.getString(str);
    }

    public boolean hasImages() {
        return (this.zzHC == null || this.zzHC.isEmpty()) ? false : true;
    }

    public int hashCode() {
        int i = 17;
        for (String str : this.zzaqj.keySet()) {
            i = (i * 31) + this.zzaqj.get(str).hashCode();
        }
        return (i * 31) + this.zzHC.hashCode();
    }

    public Set<String> keySet() {
        return this.zzaqj.keySet();
    }

    public void putDate(String str, Calendar calendar) {
        zzf(str, 4);
        this.zzaqj.putString(str, zzayv.zza(calendar));
    }

    public void putDouble(String str, double d) {
        zzf(str, 3);
        this.zzaqj.putDouble(str, d);
    }

    public void putInt(String str, int i) {
        zzf(str, 2);
        this.zzaqj.putInt(str, i);
    }

    public void putString(String str, String str2) {
        zzf(str, 1);
        this.zzaqj.putString(str, str2);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:14:0x00aa in {2, 4, 6, 8, 9, 10, 11, 12, 13} preds:[]
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.computeDominators(BlockProcessor.java:242)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:42)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:51)
        	at java.lang.Iterable.forEach(Iterable.java:75)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:51)
        	at jadx.core.ProcessClass.process(ProcessClass.java:37)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    public final org.json.JSONObject toJson() {
        /*
        r11 = this;
        r0 = new org.json.JSONObject;
        r0.<init>();
        r1 = "metadataType";	 Catch:{ JSONException -> 0x000c }
        r2 = r11.zzaqk;	 Catch:{ JSONException -> 0x000c }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x000c }
        r1 = r11.zzHC;
        com.google.android.gms.internal.zzayv.zza(r0, r1);
        r1 = r11.zzaqk;
        r2 = 7;
        r3 = 6;
        r4 = 8;
        r5 = 5;
        r6 = 4;
        r7 = 3;
        r8 = 2;
        r9 = 1;
        r10 = 0;
        switch(r1) {
            case 0: goto L_0x0096;
            case 1: goto L_0x0083;
            case 2: goto L_0x006c;
            case 3: goto L_0x0049;
            case 4: goto L_0x0026;
            default: goto L_0x0020;
        };
        r1 = new java.lang.String[r10];
        r11.zza(r0, r1);
        return r0;
        r1 = new java.lang.String[r4];
        r4 = "com.google.android.gms.cast.metadata.TITLE";
        r1[r10] = r4;
        r4 = "com.google.android.gms.cast.metadata.ARTIST";
        r1[r9] = r4;
        r4 = "com.google.android.gms.cast.metadata.LOCATION_NAME";
        r1[r8] = r4;
        r4 = "com.google.android.gms.cast.metadata.LOCATION_LATITUDE";
        r1[r7] = r4;
        r4 = "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE";
        r1[r6] = r4;
        r4 = "com.google.android.gms.cast.metadata.WIDTH";
        r1[r5] = r4;
        r4 = "com.google.android.gms.cast.metadata.HEIGHT";
        r1[r3] = r4;
        r3 = "com.google.android.gms.cast.metadata.CREATION_DATE";
        r1[r2] = r3;
        goto L_0x0022;
        r1 = new java.lang.String[r4];
        r4 = "com.google.android.gms.cast.metadata.TITLE";
        r1[r10] = r4;
        r4 = "com.google.android.gms.cast.metadata.ARTIST";
        r1[r9] = r4;
        r4 = "com.google.android.gms.cast.metadata.ALBUM_TITLE";
        r1[r8] = r4;
        r4 = "com.google.android.gms.cast.metadata.ALBUM_ARTIST";
        r1[r7] = r4;
        r4 = "com.google.android.gms.cast.metadata.COMPOSER";
        r1[r6] = r4;
        r4 = "com.google.android.gms.cast.metadata.TRACK_NUMBER";
        r1[r5] = r4;
        r4 = "com.google.android.gms.cast.metadata.DISC_NUMBER";
        r1[r3] = r4;
        r3 = "com.google.android.gms.cast.metadata.RELEASE_DATE";
        r1[r2] = r3;
        goto L_0x0022;
        r1 = new java.lang.String[r5];
        r2 = "com.google.android.gms.cast.metadata.TITLE";
        r1[r10] = r2;
        r2 = "com.google.android.gms.cast.metadata.SERIES_TITLE";
        r1[r9] = r2;
        r2 = "com.google.android.gms.cast.metadata.SEASON_NUMBER";
        r1[r8] = r2;
        r2 = "com.google.android.gms.cast.metadata.EPISODE_NUMBER";
        r1[r7] = r2;
        r2 = "com.google.android.gms.cast.metadata.BROADCAST_DATE";
        r1[r6] = r2;
        goto L_0x0022;
        r1 = new java.lang.String[r6];
        r2 = "com.google.android.gms.cast.metadata.TITLE";
        r1[r10] = r2;
        r2 = "com.google.android.gms.cast.metadata.STUDIO";
        r1[r9] = r2;
        r2 = "com.google.android.gms.cast.metadata.SUBTITLE";
        r1[r8] = r2;
        r2 = "com.google.android.gms.cast.metadata.RELEASE_DATE";
        r1[r7] = r2;
        goto L_0x0022;
        r1 = new java.lang.String[r6];
        r2 = "com.google.android.gms.cast.metadata.TITLE";
        r1[r10] = r2;
        r2 = "com.google.android.gms.cast.metadata.ARTIST";
        r1[r9] = r2;
        r2 = "com.google.android.gms.cast.metadata.SUBTITLE";
        r1[r8] = r2;
        r2 = "com.google.android.gms.cast.metadata.RELEASE_DATE";
        r1[r7] = r2;
        goto L_0x0022;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaMetadata.toJson():org.json.JSONObject");
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, getImages(), false);
        zzd.zza(parcel, 3, this.zzaqj, false);
        zzd.zzc(parcel, 4, getMediaType());
        zzd.zzI(parcel, i);
    }

    public final void zzl(JSONObject jSONObject) {
        clear();
        this.zzaqk = 0;
        try {
            this.zzaqk = jSONObject.getInt("metadataType");
        } catch (JSONException unused) {
        }
        zzayv.zza(this.zzHC, jSONObject);
        switch (this.zzaqk) {
            case 0:
                zzb(jSONObject, KEY_TITLE, KEY_ARTIST, KEY_SUBTITLE, KEY_RELEASE_DATE);
                return;
            case 1:
                zzb(jSONObject, KEY_TITLE, KEY_STUDIO, KEY_SUBTITLE, KEY_RELEASE_DATE);
                return;
            case 2:
                zzb(jSONObject, KEY_TITLE, KEY_SERIES_TITLE, KEY_SEASON_NUMBER, KEY_EPISODE_NUMBER, KEY_BROADCAST_DATE);
                return;
            case 3:
                zzb(jSONObject, KEY_TITLE, KEY_ALBUM_TITLE, KEY_ARTIST, KEY_ALBUM_ARTIST, KEY_COMPOSER, KEY_TRACK_NUMBER, KEY_DISC_NUMBER, KEY_RELEASE_DATE);
                return;
            case 4:
                zzb(jSONObject, KEY_TITLE, KEY_ARTIST, KEY_LOCATION_NAME, KEY_LOCATION_LATITUDE, KEY_LOCATION_LONGITUDE, KEY_WIDTH, KEY_HEIGHT, KEY_CREATION_DATE);
                return;
            default:
                zzb(jSONObject, new String[0]);
                return;
        }
    }
}
