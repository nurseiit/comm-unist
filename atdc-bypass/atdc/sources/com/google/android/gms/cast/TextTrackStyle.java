package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.view.accessibility.CaptioningManager;
import android.view.accessibility.CaptioningManager.CaptionStyle;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.util.zzo;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.internal.zzaye;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

public final class TextTrackStyle extends zza {
    public static final int COLOR_UNSPECIFIED = 0;
    public static final Creator<TextTrackStyle> CREATOR = new zzbi();
    public static final float DEFAULT_FONT_SCALE = 1.0f;
    public static final int EDGE_TYPE_DEPRESSED = 4;
    public static final int EDGE_TYPE_DROP_SHADOW = 2;
    public static final int EDGE_TYPE_NONE = 0;
    public static final int EDGE_TYPE_OUTLINE = 1;
    public static final int EDGE_TYPE_RAISED = 3;
    public static final int EDGE_TYPE_UNSPECIFIED = -1;
    public static final int FONT_FAMILY_CASUAL = 4;
    public static final int FONT_FAMILY_CURSIVE = 5;
    public static final int FONT_FAMILY_MONOSPACED_SANS_SERIF = 1;
    public static final int FONT_FAMILY_MONOSPACED_SERIF = 3;
    public static final int FONT_FAMILY_SANS_SERIF = 0;
    public static final int FONT_FAMILY_SERIF = 2;
    public static final int FONT_FAMILY_SMALL_CAPITALS = 6;
    public static final int FONT_FAMILY_UNSPECIFIED = -1;
    public static final int FONT_STYLE_BOLD = 1;
    public static final int FONT_STYLE_BOLD_ITALIC = 3;
    public static final int FONT_STYLE_ITALIC = 2;
    public static final int FONT_STYLE_NORMAL = 0;
    public static final int FONT_STYLE_UNSPECIFIED = -1;
    public static final int WINDOW_TYPE_NONE = 0;
    public static final int WINDOW_TYPE_NORMAL = 1;
    public static final int WINDOW_TYPE_ROUNDED = 2;
    public static final int WINDOW_TYPE_UNSPECIFIED = -1;
    private int zzHs;
    private String zzaoC;
    private JSONObject zzaoD;
    private int zzarA;
    private int zzarB;
    private int zzarC;
    private int zzarD;
    private int zzarE;
    private String zzarF;
    private int zzarG;
    private int zzarH;
    private float zzary;
    private int zzarz;

    public TextTrackStyle() {
        this(1.0f, 0, 0, -1, 0, -1, 0, 0, null, -1, -1, null);
    }

    TextTrackStyle(float f, int i, int i2, int i3, int i4, int i5, int i6, int i7, String str, int i8, int i9, String str2) {
        this.zzary = f;
        this.zzarz = i;
        this.zzHs = i2;
        this.zzarA = i3;
        this.zzarB = i4;
        this.zzarC = i5;
        this.zzarD = i6;
        this.zzarE = i7;
        this.zzarF = str;
        this.zzarG = i8;
        this.zzarH = i9;
        this.zzaoC = str2;
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

    @TargetApi(19)
    public static TextTrackStyle fromSystemSettings(Context context) {
        TextTrackStyle textTrackStyle = new TextTrackStyle();
        if (!zzq.zzsc()) {
            return textTrackStyle;
        }
        CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
        textTrackStyle.setFontScale(captioningManager.getFontScale());
        CaptionStyle userStyle = captioningManager.getUserStyle();
        textTrackStyle.setBackgroundColor(userStyle.backgroundColor);
        textTrackStyle.setForegroundColor(userStyle.foregroundColor);
        switch (userStyle.edgeType) {
            case 1:
                textTrackStyle.setEdgeType(1);
                break;
            case 2:
                textTrackStyle.setEdgeType(2);
                break;
            default:
                textTrackStyle.setEdgeType(0);
                break;
        }
        textTrackStyle.setEdgeColor(userStyle.edgeColor);
        Typeface typeface = userStyle.getTypeface();
        if (typeface != null) {
            if (Typeface.MONOSPACE.equals(typeface)) {
                textTrackStyle.setFontGenericFamily(1);
            } else if (Typeface.SANS_SERIF.equals(typeface) || !Typeface.SERIF.equals(typeface)) {
                textTrackStyle.setFontGenericFamily(0);
            } else {
                textTrackStyle.setFontGenericFamily(2);
            }
            boolean isBold = typeface.isBold();
            boolean isItalic = typeface.isItalic();
            if (isBold && isItalic) {
                textTrackStyle.setFontStyle(3);
                return textTrackStyle;
            } else if (isBold) {
                textTrackStyle.setFontStyle(1);
                return textTrackStyle;
            } else if (isItalic) {
                textTrackStyle.setFontStyle(2);
                return textTrackStyle;
            } else {
                textTrackStyle.setFontStyle(0);
            }
        }
        return textTrackStyle;
    }

    private static int zzcb(String str) {
        if (str != null && str.length() == 9 && str.charAt(0) == '#') {
            try {
                return Color.argb(Integer.parseInt(str.substring(7, 9), 16), Integer.parseInt(str.substring(1, 3), 16), Integer.parseInt(str.substring(3, 5), 16), Integer.parseInt(str.substring(5, 7), 16));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    private static String zzu(int i) {
        return String.format("#%02X%02X%02X%02X", new Object[]{Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Integer.valueOf(Color.alpha(i))});
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTrackStyle)) {
            return false;
        }
        TextTrackStyle textTrackStyle = (TextTrackStyle) obj;
        return (this.zzaoD == null ? 1 : null) != (textTrackStyle.zzaoD == null ? 1 : null) ? false : (this.zzaoD == null || textTrackStyle.zzaoD == null || zzo.zzc(this.zzaoD, textTrackStyle.zzaoD)) && this.zzary == textTrackStyle.zzary && this.zzarz == textTrackStyle.zzarz && this.zzHs == textTrackStyle.zzHs && this.zzarA == textTrackStyle.zzarA && this.zzarB == textTrackStyle.zzarB && this.zzarC == textTrackStyle.zzarC && this.zzarE == textTrackStyle.zzarE && zzaye.zza(this.zzarF, textTrackStyle.zzarF) && this.zzarG == textTrackStyle.zzarG && this.zzarH == textTrackStyle.zzarH;
    }

    public final int getBackgroundColor() {
        return this.zzHs;
    }

    public final JSONObject getCustomData() {
        return this.zzaoD;
    }

    public final int getEdgeColor() {
        return this.zzarB;
    }

    public final int getEdgeType() {
        return this.zzarA;
    }

    public final String getFontFamily() {
        return this.zzarF;
    }

    public final int getFontGenericFamily() {
        return this.zzarG;
    }

    public final float getFontScale() {
        return this.zzary;
    }

    public final int getFontStyle() {
        return this.zzarH;
    }

    public final int getForegroundColor() {
        return this.zzarz;
    }

    public final int getWindowColor() {
        return this.zzarD;
    }

    public final int getWindowCornerRadius() {
        return this.zzarE;
    }

    public final int getWindowType() {
        return this.zzarC;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.zzary), Integer.valueOf(this.zzarz), Integer.valueOf(this.zzHs), Integer.valueOf(this.zzarA), Integer.valueOf(this.zzarB), Integer.valueOf(this.zzarC), Integer.valueOf(this.zzarD), Integer.valueOf(this.zzarE), this.zzarF, Integer.valueOf(this.zzarG), Integer.valueOf(this.zzarH), String.valueOf(this.zzaoD)});
    }

    public final void setBackgroundColor(int i) {
        this.zzHs = i;
    }

    public final void setCustomData(JSONObject jSONObject) {
        this.zzaoD = jSONObject;
    }

    public final void setEdgeColor(int i) {
        this.zzarB = i;
    }

    public final void setEdgeType(int i) {
        if (i < 0 || i > 4) {
            throw new IllegalArgumentException("invalid edgeType");
        }
        this.zzarA = i;
    }

    public final void setFontFamily(String str) {
        this.zzarF = str;
    }

    public final void setFontGenericFamily(int i) {
        if (i < 0 || i > 6) {
            throw new IllegalArgumentException("invalid fontGenericFamily");
        }
        this.zzarG = i;
    }

    public final void setFontScale(float f) {
        this.zzary = f;
    }

    public final void setFontStyle(int i) {
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("invalid fontStyle");
        }
        this.zzarH = i;
    }

    public final void setForegroundColor(int i) {
        this.zzarz = i;
    }

    public final void setWindowColor(int i) {
        this.zzarD = i;
    }

    public final void setWindowCornerRadius(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("invalid windowCornerRadius");
        }
        this.zzarE = i;
    }

    public final void setWindowType(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("invalid windowType");
        }
        this.zzarC = i;
    }

    /* JADX WARNING: Missing block: B:12:0x0035, code skipped:
            r0.put(r1, r2);
     */
    /* JADX WARNING: Missing block: B:18:0x004f, code skipped:
            if (r4.zzarB == 0) goto L_0x005c;
     */
    /* JADX WARNING: Missing block: B:19:0x0051, code skipped:
            r0.put("edgeColor", zzu(r4.zzarB));
     */
    /* JADX WARNING: Missing block: B:21:0x005e, code skipped:
            switch(r4.zzarC) {
                case 0: goto L_0x006f;
                case 1: goto L_0x006a;
                case 2: goto L_0x0062;
                default: goto L_0x0061;
            };
     */
    /* JADX WARNING: Missing block: B:23:0x0062, code skipped:
            r1 = "windowType";
            r2 = "ROUNDED_CORNERS";
     */
    /* JADX WARNING: Missing block: B:24:0x0066, code skipped:
            r0.put(r1, r2);
     */
    /* JADX WARNING: Missing block: B:25:0x006a, code skipped:
            r1 = "windowType";
            r2 = "NORMAL";
     */
    /* JADX WARNING: Missing block: B:26:0x006f, code skipped:
            r1 = "windowType";
            r2 = "NONE";
     */
    /* JADX WARNING: Missing block: B:28:0x0076, code skipped:
            if (r4.zzarD == 0) goto L_0x0083;
     */
    /* JADX WARNING: Missing block: B:29:0x0078, code skipped:
            r0.put("windowColor", zzu(r4.zzarD));
     */
    /* JADX WARNING: Missing block: B:31:0x0086, code skipped:
            if (r4.zzarC != 2) goto L_0x008f;
     */
    /* JADX WARNING: Missing block: B:32:0x0088, code skipped:
            r0.put("windowRoundedCornerRadius", r4.zzarE);
     */
    /* JADX WARNING: Missing block: B:34:0x0091, code skipped:
            if (r4.zzarF == null) goto L_0x009a;
     */
    /* JADX WARNING: Missing block: B:35:0x0093, code skipped:
            r0.put("fontFamily", r4.zzarF);
     */
    /* JADX WARNING: Missing block: B:37:0x009c, code skipped:
            switch(r4.zzarG) {
                case 0: goto L_0x00c1;
                case 1: goto L_0x00bc;
                case 2: goto L_0x00b7;
                case 3: goto L_0x00b2;
                case 4: goto L_0x00ad;
                case 5: goto L_0x00a8;
                case 6: goto L_0x00a0;
                default: goto L_0x009f;
            };
     */
    /* JADX WARNING: Missing block: B:39:0x00a0, code skipped:
            r1 = "fontGenericFamily";
            r2 = "SMALL_CAPITALS";
     */
    /* JADX WARNING: Missing block: B:40:0x00a4, code skipped:
            r0.put(r1, r2);
     */
    /* JADX WARNING: Missing block: B:41:0x00a8, code skipped:
            r1 = "fontGenericFamily";
            r2 = "CURSIVE";
     */
    /* JADX WARNING: Missing block: B:42:0x00ad, code skipped:
            r1 = "fontGenericFamily";
            r2 = "CASUAL";
     */
    /* JADX WARNING: Missing block: B:43:0x00b2, code skipped:
            r1 = "fontGenericFamily";
            r2 = "MONOSPACED_SERIF";
     */
    /* JADX WARNING: Missing block: B:44:0x00b7, code skipped:
            r1 = "fontGenericFamily";
            r2 = "SERIF";
     */
    /* JADX WARNING: Missing block: B:45:0x00bc, code skipped:
            r1 = "fontGenericFamily";
            r2 = "MONOSPACED_SANS_SERIF";
     */
    /* JADX WARNING: Missing block: B:46:0x00c1, code skipped:
            r1 = "fontGenericFamily";
            r2 = "SANS_SERIF";
     */
    /* JADX WARNING: Missing block: B:48:0x00c8, code skipped:
            switch(r4.zzarH) {
                case 0: goto L_0x00de;
                case 1: goto L_0x00d9;
                case 2: goto L_0x00d4;
                case 3: goto L_0x00cc;
                default: goto L_0x00cb;
            };
     */
    /* JADX WARNING: Missing block: B:50:0x00cc, code skipped:
            r1 = "fontStyle";
            r2 = "BOLD_ITALIC";
     */
    /* JADX WARNING: Missing block: B:51:0x00d0, code skipped:
            r0.put(r1, r2);
     */
    /* JADX WARNING: Missing block: B:52:0x00d4, code skipped:
            r1 = "fontStyle";
            r2 = "ITALIC";
     */
    /* JADX WARNING: Missing block: B:53:0x00d9, code skipped:
            r1 = "fontStyle";
            r2 = "BOLD";
     */
    /* JADX WARNING: Missing block: B:54:0x00de, code skipped:
            r1 = "fontStyle";
            r2 = "NORMAL";
     */
    /* JADX WARNING: Missing block: B:56:0x00e5, code skipped:
            if (r4.zzaoD == null) goto L_0x00ee;
     */
    /* JADX WARNING: Missing block: B:57:0x00e7, code skipped:
            r0.put("customData", r4.zzaoD);
     */
    public final org.json.JSONObject toJson() {
        /*
        r4 = this;
        r0 = new org.json.JSONObject;
        r0.<init>();
        r1 = "fontScale";
        r2 = r4.zzary;	 Catch:{ JSONException -> 0x00ee }
        r2 = (double) r2;	 Catch:{ JSONException -> 0x00ee }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
        r1 = r4.zzarz;	 Catch:{ JSONException -> 0x00ee }
        if (r1 == 0) goto L_0x001c;
    L_0x0011:
        r1 = "foregroundColor";
        r2 = r4.zzarz;	 Catch:{ JSONException -> 0x00ee }
        r2 = zzu(r2);	 Catch:{ JSONException -> 0x00ee }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
    L_0x001c:
        r1 = r4.zzHs;	 Catch:{ JSONException -> 0x00ee }
        if (r1 == 0) goto L_0x002b;
    L_0x0020:
        r1 = "backgroundColor";
        r2 = r4.zzHs;	 Catch:{ JSONException -> 0x00ee }
        r2 = zzu(r2);	 Catch:{ JSONException -> 0x00ee }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
    L_0x002b:
        r1 = r4.zzarA;	 Catch:{ JSONException -> 0x00ee }
        switch(r1) {
            case 0: goto L_0x0048;
            case 1: goto L_0x0043;
            case 2: goto L_0x003e;
            case 3: goto L_0x0039;
            case 4: goto L_0x0031;
            default: goto L_0x0030;
        };	 Catch:{ JSONException -> 0x00ee }
    L_0x0030:
        goto L_0x004d;
    L_0x0031:
        r1 = "edgeType";
        r2 = "DEPRESSED";
    L_0x0035:
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
        goto L_0x004d;
    L_0x0039:
        r1 = "edgeType";
        r2 = "RAISED";
        goto L_0x0035;
    L_0x003e:
        r1 = "edgeType";
        r2 = "DROP_SHADOW";
        goto L_0x0035;
    L_0x0043:
        r1 = "edgeType";
        r2 = "OUTLINE";
        goto L_0x0035;
    L_0x0048:
        r1 = "edgeType";
        r2 = "NONE";
        goto L_0x0035;
    L_0x004d:
        r1 = r4.zzarB;	 Catch:{ JSONException -> 0x00ee }
        if (r1 == 0) goto L_0x005c;
    L_0x0051:
        r1 = "edgeColor";
        r2 = r4.zzarB;	 Catch:{ JSONException -> 0x00ee }
        r2 = zzu(r2);	 Catch:{ JSONException -> 0x00ee }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
    L_0x005c:
        r1 = r4.zzarC;	 Catch:{ JSONException -> 0x00ee }
        switch(r1) {
            case 0: goto L_0x006f;
            case 1: goto L_0x006a;
            case 2: goto L_0x0062;
            default: goto L_0x0061;
        };	 Catch:{ JSONException -> 0x00ee }
    L_0x0061:
        goto L_0x0074;
    L_0x0062:
        r1 = "windowType";
        r2 = "ROUNDED_CORNERS";
    L_0x0066:
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
        goto L_0x0074;
    L_0x006a:
        r1 = "windowType";
        r2 = "NORMAL";
        goto L_0x0066;
    L_0x006f:
        r1 = "windowType";
        r2 = "NONE";
        goto L_0x0066;
    L_0x0074:
        r1 = r4.zzarD;	 Catch:{ JSONException -> 0x00ee }
        if (r1 == 0) goto L_0x0083;
    L_0x0078:
        r1 = "windowColor";
        r2 = r4.zzarD;	 Catch:{ JSONException -> 0x00ee }
        r2 = zzu(r2);	 Catch:{ JSONException -> 0x00ee }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
    L_0x0083:
        r1 = r4.zzarC;	 Catch:{ JSONException -> 0x00ee }
        r2 = 2;
        if (r1 != r2) goto L_0x008f;
    L_0x0088:
        r1 = "windowRoundedCornerRadius";
        r2 = r4.zzarE;	 Catch:{ JSONException -> 0x00ee }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
    L_0x008f:
        r1 = r4.zzarF;	 Catch:{ JSONException -> 0x00ee }
        if (r1 == 0) goto L_0x009a;
    L_0x0093:
        r1 = "fontFamily";
        r2 = r4.zzarF;	 Catch:{ JSONException -> 0x00ee }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
    L_0x009a:
        r1 = r4.zzarG;	 Catch:{ JSONException -> 0x00ee }
        switch(r1) {
            case 0: goto L_0x00c1;
            case 1: goto L_0x00bc;
            case 2: goto L_0x00b7;
            case 3: goto L_0x00b2;
            case 4: goto L_0x00ad;
            case 5: goto L_0x00a8;
            case 6: goto L_0x00a0;
            default: goto L_0x009f;
        };	 Catch:{ JSONException -> 0x00ee }
    L_0x009f:
        goto L_0x00c6;
    L_0x00a0:
        r1 = "fontGenericFamily";
        r2 = "SMALL_CAPITALS";
    L_0x00a4:
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
        goto L_0x00c6;
    L_0x00a8:
        r1 = "fontGenericFamily";
        r2 = "CURSIVE";
        goto L_0x00a4;
    L_0x00ad:
        r1 = "fontGenericFamily";
        r2 = "CASUAL";
        goto L_0x00a4;
    L_0x00b2:
        r1 = "fontGenericFamily";
        r2 = "MONOSPACED_SERIF";
        goto L_0x00a4;
    L_0x00b7:
        r1 = "fontGenericFamily";
        r2 = "SERIF";
        goto L_0x00a4;
    L_0x00bc:
        r1 = "fontGenericFamily";
        r2 = "MONOSPACED_SANS_SERIF";
        goto L_0x00a4;
    L_0x00c1:
        r1 = "fontGenericFamily";
        r2 = "SANS_SERIF";
        goto L_0x00a4;
    L_0x00c6:
        r1 = r4.zzarH;	 Catch:{ JSONException -> 0x00ee }
        switch(r1) {
            case 0: goto L_0x00de;
            case 1: goto L_0x00d9;
            case 2: goto L_0x00d4;
            case 3: goto L_0x00cc;
            default: goto L_0x00cb;
        };	 Catch:{ JSONException -> 0x00ee }
    L_0x00cb:
        goto L_0x00e3;
    L_0x00cc:
        r1 = "fontStyle";
        r2 = "BOLD_ITALIC";
    L_0x00d0:
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
        goto L_0x00e3;
    L_0x00d4:
        r1 = "fontStyle";
        r2 = "ITALIC";
        goto L_0x00d0;
    L_0x00d9:
        r1 = "fontStyle";
        r2 = "BOLD";
        goto L_0x00d0;
    L_0x00de:
        r1 = "fontStyle";
        r2 = "NORMAL";
        goto L_0x00d0;
    L_0x00e3:
        r1 = r4.zzaoD;	 Catch:{ JSONException -> 0x00ee }
        if (r1 == 0) goto L_0x00ee;
    L_0x00e7:
        r1 = "customData";
        r2 = r4.zzaoD;	 Catch:{ JSONException -> 0x00ee }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00ee }
    L_0x00ee:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.TextTrackStyle.toJson():org.json.JSONObject");
    }

    public final void writeToParcel(Parcel parcel, int i) {
        this.zzaoC = this.zzaoD == null ? null : this.zzaoD.toString();
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, getFontScale());
        zzd.zzc(parcel, 3, getForegroundColor());
        zzd.zzc(parcel, 4, getBackgroundColor());
        zzd.zzc(parcel, 5, getEdgeType());
        zzd.zzc(parcel, 6, getEdgeColor());
        zzd.zzc(parcel, 7, getWindowType());
        zzd.zzc(parcel, 8, getWindowColor());
        zzd.zzc(parcel, 9, getWindowCornerRadius());
        zzd.zza(parcel, 10, getFontFamily(), false);
        zzd.zzc(parcel, 11, getFontGenericFamily());
        zzd.zzc(parcel, 12, getFontStyle());
        zzd.zza(parcel, 13, this.zzaoC, false);
        zzd.zzI(parcel, i);
    }

    public final void zzl(JSONObject jSONObject) throws JSONException {
        String string;
        this.zzary = (float) jSONObject.optDouble("fontScale", 1.0d);
        this.zzarz = zzcb(jSONObject.optString("foregroundColor"));
        this.zzHs = zzcb(jSONObject.optString("backgroundColor"));
        if (jSONObject.has("edgeType")) {
            string = jSONObject.getString("edgeType");
            if ("NONE".equals(string)) {
                this.zzarA = 0;
            } else if ("OUTLINE".equals(string)) {
                this.zzarA = 1;
            } else if ("DROP_SHADOW".equals(string)) {
                this.zzarA = 2;
            } else if ("RAISED".equals(string)) {
                this.zzarA = 3;
            } else if ("DEPRESSED".equals(string)) {
                this.zzarA = 4;
            }
        }
        this.zzarB = zzcb(jSONObject.optString("edgeColor"));
        if (jSONObject.has("windowType")) {
            string = jSONObject.getString("windowType");
            if ("NONE".equals(string)) {
                this.zzarC = 0;
            } else if ("NORMAL".equals(string)) {
                this.zzarC = 1;
            } else if ("ROUNDED_CORNERS".equals(string)) {
                this.zzarC = 2;
            }
        }
        this.zzarD = zzcb(jSONObject.optString("windowColor"));
        if (this.zzarC == 2) {
            this.zzarE = jSONObject.optInt("windowRoundedCornerRadius", 0);
        }
        this.zzarF = jSONObject.optString("fontFamily", null);
        if (jSONObject.has("fontGenericFamily")) {
            string = jSONObject.getString("fontGenericFamily");
            if ("SANS_SERIF".equals(string)) {
                this.zzarG = 0;
            } else if ("MONOSPACED_SANS_SERIF".equals(string)) {
                this.zzarG = 1;
            } else if ("SERIF".equals(string)) {
                this.zzarG = 2;
            } else if ("MONOSPACED_SERIF".equals(string)) {
                this.zzarG = 3;
            } else if ("CASUAL".equals(string)) {
                this.zzarG = 4;
            } else {
                int i;
                if ("CURSIVE".equals(string)) {
                    i = 5;
                } else if ("SMALL_CAPITALS".equals(string)) {
                    i = 6;
                }
                this.zzarG = i;
            }
        }
        if (jSONObject.has("fontStyle")) {
            string = jSONObject.getString("fontStyle");
            if ("NORMAL".equals(string)) {
                this.zzarH = 0;
            } else if ("BOLD".equals(string)) {
                this.zzarH = 1;
            } else if ("ITALIC".equals(string)) {
                this.zzarH = 2;
            } else if ("BOLD_ITALIC".equals(string)) {
                this.zzarH = 3;
            }
        }
        this.zzaoD = jSONObject.optJSONObject("customData");
    }
}
