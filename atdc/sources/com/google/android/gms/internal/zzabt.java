package com.google.android.gms.internal;

import android.location.Location;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;

@zzzn
public final class zzabt {
    private static final SimpleDateFormat zzUK = new SimpleDateFormat("yyyyMMdd", Locale.US);

    /* JADX WARNING: Removed duplicated region for block: B:64:0x0140 A:{Catch:{ JSONException -> 0x022b }} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0137 A:{Catch:{ JSONException -> 0x022b }} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00d4 A:{Catch:{ JSONException -> 0x022b }} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ce A:{Catch:{ JSONException -> 0x022b }} */
    public static com.google.android.gms.internal.zzaai zza(android.content.Context r50, com.google.android.gms.internal.zzaae r51, java.lang.String r52) {
        /*
        r9 = r51;
        r15 = 0;
        r10 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x022b }
        r1 = r52;
        r10.<init>(r1);	 Catch:{ JSONException -> 0x022b }
        r1 = "ad_base_url";
        r11 = 0;
        r1 = r10.optString(r1, r11);	 Catch:{ JSONException -> 0x022b }
        r2 = "ad_url";
        r4 = r10.optString(r2, r11);	 Catch:{ JSONException -> 0x022b }
        r2 = "ad_size";
        r13 = r10.optString(r2, r11);	 Catch:{ JSONException -> 0x022b }
        r2 = "ad_slot_size";
        r40 = r10.optString(r2, r13);	 Catch:{ JSONException -> 0x022b }
        r12 = 1;
        if (r9 == 0) goto L_0x002d;
    L_0x0026:
        r2 = r9.zzSF;	 Catch:{ JSONException -> 0x022b }
        if (r2 == 0) goto L_0x002d;
    L_0x002a:
        r24 = 1;
        goto L_0x002f;
    L_0x002d:
        r24 = 0;
    L_0x002f:
        r2 = "ad_json";
        r2 = r10.optString(r2, r11);	 Catch:{ JSONException -> 0x022b }
        if (r2 != 0) goto L_0x003d;
    L_0x0037:
        r2 = "ad_html";
        r2 = r10.optString(r2, r11);	 Catch:{ JSONException -> 0x022b }
    L_0x003d:
        if (r2 != 0) goto L_0x0045;
    L_0x003f:
        r2 = "body";
        r2 = r10.optString(r2, r11);	 Catch:{ JSONException -> 0x022b }
    L_0x0045:
        r3 = "debug_dialog";
        r19 = r10.optString(r3, r11);	 Catch:{ JSONException -> 0x022b }
        r3 = "debug_signals";
        r42 = r10.optString(r3, r11);	 Catch:{ JSONException -> 0x022b }
        r3 = "interstitial_timeout";
        r3 = r10.has(r3);	 Catch:{ JSONException -> 0x022b }
        r7 = -1;
        if (r3 == 0) goto L_0x006c;
    L_0x005b:
        r3 = "interstitial_timeout";
        r5 = r10.getDouble(r3);	 Catch:{ JSONException -> 0x022b }
        r16 = 4652007308841189376; // 0x408f400000000000 float:0.0 double:1000.0;
        r5 = r5 * r16;
        r5 = (long) r5;	 Catch:{ JSONException -> 0x022b }
        r16 = r5;
        goto L_0x006e;
    L_0x006c:
        r16 = r7;
    L_0x006e:
        r3 = "orientation";
        r3 = r10.optString(r3, r11);	 Catch:{ JSONException -> 0x022b }
        r5 = "portrait";
        r5 = r5.equals(r3);	 Catch:{ JSONException -> 0x022b }
        r14 = -1;
        if (r5 == 0) goto L_0x0088;
    L_0x007d:
        r3 = com.google.android.gms.ads.internal.zzbs.zzbB();	 Catch:{ JSONException -> 0x022b }
        r3 = r3.zzhU();	 Catch:{ JSONException -> 0x022b }
    L_0x0085:
        r18 = r3;
        goto L_0x009b;
    L_0x0088:
        r5 = "landscape";
        r3 = r5.equals(r3);	 Catch:{ JSONException -> 0x022b }
        if (r3 == 0) goto L_0x0099;
    L_0x0090:
        r3 = com.google.android.gms.ads.internal.zzbs.zzbB();	 Catch:{ JSONException -> 0x022b }
        r3 = r3.zzhT();	 Catch:{ JSONException -> 0x022b }
        goto L_0x0085;
    L_0x0099:
        r18 = -1;
    L_0x009b:
        r3 = android.text.TextUtils.isEmpty(r2);	 Catch:{ JSONException -> 0x022b }
        if (r3 == 0) goto L_0x00c7;
    L_0x00a1:
        r3 = android.text.TextUtils.isEmpty(r4);	 Catch:{ JSONException -> 0x022b }
        if (r3 != 0) goto L_0x00c7;
    L_0x00a7:
        r1 = r9.zzvT;	 Catch:{ JSONException -> 0x022b }
        r3 = r1.zzaP;	 Catch:{ JSONException -> 0x022b }
        r5 = 0;
        r6 = 0;
        r20 = 0;
        r21 = 0;
        r1 = r9;
        r2 = r50;
        r7 = r20;
        r8 = r21;
        r1 = com.google.android.gms.internal.zzabm.zza(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ JSONException -> 0x022b }
        r2 = r1.zzPi;	 Catch:{ JSONException -> 0x022b }
        r3 = r1.body;	 Catch:{ JSONException -> 0x022b }
        r4 = r1.zzTs;	 Catch:{ JSONException -> 0x022b }
        r20 = r4;
        r4 = r3;
        r3 = r2;
        goto L_0x00cc;
    L_0x00c7:
        r3 = r1;
        r4 = r2;
        r1 = r11;
        r20 = -1;
    L_0x00cc:
        if (r4 != 0) goto L_0x00d4;
    L_0x00ce:
        r1 = new com.google.android.gms.internal.zzaai;	 Catch:{ JSONException -> 0x022b }
        r1.<init>(r15);	 Catch:{ JSONException -> 0x022b }
        return r1;
    L_0x00d4:
        r2 = "click_urls";
        r2 = r10.optJSONArray(r2);	 Catch:{ JSONException -> 0x022b }
        if (r1 != 0) goto L_0x00de;
    L_0x00dc:
        r5 = r11;
        goto L_0x00e0;
    L_0x00de:
        r5 = r1.zzMa;	 Catch:{ JSONException -> 0x022b }
    L_0x00e0:
        if (r2 == 0) goto L_0x00e7;
    L_0x00e2:
        r2 = zza(r2, r5);	 Catch:{ JSONException -> 0x022b }
        r5 = r2;
    L_0x00e7:
        r2 = "impression_urls";
        r2 = r10.optJSONArray(r2);	 Catch:{ JSONException -> 0x022b }
        if (r1 != 0) goto L_0x00f1;
    L_0x00ef:
        r6 = r11;
        goto L_0x00f3;
    L_0x00f1:
        r6 = r1.zzMb;	 Catch:{ JSONException -> 0x022b }
    L_0x00f3:
        if (r2 == 0) goto L_0x00fa;
    L_0x00f5:
        r2 = zza(r2, r6);	 Catch:{ JSONException -> 0x022b }
        r6 = r2;
    L_0x00fa:
        r2 = "manual_impression_urls";
        r2 = r10.optJSONArray(r2);	 Catch:{ JSONException -> 0x022b }
        if (r1 != 0) goto L_0x0104;
    L_0x0102:
        r7 = r11;
        goto L_0x0106;
    L_0x0104:
        r7 = r1.zzTq;	 Catch:{ JSONException -> 0x022b }
    L_0x0106:
        if (r2 == 0) goto L_0x010f;
    L_0x0108:
        r2 = zza(r2, r7);	 Catch:{ JSONException -> 0x022b }
        r22 = r2;
        goto L_0x0111;
    L_0x010f:
        r22 = r7;
    L_0x0111:
        if (r1 == 0) goto L_0x0127;
    L_0x0113:
        r2 = r1.orientation;	 Catch:{ JSONException -> 0x022b }
        if (r2 == r14) goto L_0x011b;
    L_0x0117:
        r2 = r1.orientation;	 Catch:{ JSONException -> 0x022b }
        r18 = r2;
    L_0x011b:
        r7 = r1.zzTn;	 Catch:{ JSONException -> 0x022b }
        r25 = 0;
        r2 = (r7 > r25 ? 1 : (r7 == r25 ? 0 : -1));
        if (r2 <= 0) goto L_0x0127;
    L_0x0123:
        r1 = r1.zzTn;	 Catch:{ JSONException -> 0x022b }
        r7 = r1;
        goto L_0x0129;
    L_0x0127:
        r7 = r16;
    L_0x0129:
        r1 = "active_view";
        r23 = r10.optString(r1);	 Catch:{ JSONException -> 0x022b }
        r1 = "ad_is_javascript";
        r25 = r10.optBoolean(r1, r15);	 Catch:{ JSONException -> 0x022b }
        if (r25 == 0) goto L_0x0140;
    L_0x0137:
        r1 = "ad_passback_url";
        r1 = r10.optString(r1, r11);	 Catch:{ JSONException -> 0x022b }
        r26 = r1;
        goto L_0x0142;
    L_0x0140:
        r26 = r11;
    L_0x0142:
        r1 = "mediation";
        r14 = r10.optBoolean(r1, r15);	 Catch:{ JSONException -> 0x022b }
        r1 = "custom_render_allowed";
        r27 = r10.optBoolean(r1, r15);	 Catch:{ JSONException -> 0x022b }
        r1 = "content_url_opted_out";
        r28 = r10.optBoolean(r1, r12);	 Catch:{ JSONException -> 0x022b }
        r1 = "content_vertical_opted_out";
        r43 = r10.optBoolean(r1, r12);	 Catch:{ JSONException -> 0x022b }
        r1 = "prefetch";
        r29 = r10.optBoolean(r1, r15);	 Catch:{ JSONException -> 0x022b }
        r1 = "refresh_interval_milliseconds";
        r11 = -1;
        r16 = r10.optLong(r1, r11);	 Catch:{ JSONException -> 0x022b }
        r1 = "mediation_config_cache_time_milliseconds";
        r11 = r10.optLong(r1, r11);	 Catch:{ JSONException -> 0x022b }
        r1 = "gws_query_id";
        r2 = "";
        r30 = r10.optString(r1, r2);	 Catch:{ JSONException -> 0x022b }
        r1 = "height";
        r2 = "fluid";
        r15 = "";
        r2 = r10.optString(r2, r15);	 Catch:{ JSONException -> 0x022b }
        r31 = r1.equals(r2);	 Catch:{ JSONException -> 0x022b }
        r1 = "native_express";
        r2 = 0;
        r32 = r10.optBoolean(r1, r2);	 Catch:{ JSONException -> 0x022b }
        r1 = "video_start_urls";
        r1 = r10.optJSONArray(r1);	 Catch:{ JSONException -> 0x022b }
        r2 = 0;
        r33 = zza(r1, r2);	 Catch:{ JSONException -> 0x022b }
        r1 = "video_complete_urls";
        r1 = r10.optJSONArray(r1);	 Catch:{ JSONException -> 0x022b }
        r34 = zza(r1, r2);	 Catch:{ JSONException -> 0x022b }
        r1 = "rewards";
        r1 = r10.optJSONArray(r1);	 Catch:{ JSONException -> 0x022b }
        r35 = com.google.android.gms.internal.zzaee.zza(r1);	 Catch:{ JSONException -> 0x022b }
        r1 = "use_displayed_impression";
        r15 = 0;
        r36 = r10.optBoolean(r1, r15);	 Catch:{ JSONException -> 0x022b }
        r1 = "auto_protection_configuration";
        r1 = r10.optJSONObject(r1);	 Catch:{ JSONException -> 0x022b }
        r37 = com.google.android.gms.internal.zzaak.zze(r1);	 Catch:{ JSONException -> 0x022b }
        r1 = "set_cookie";
        r2 = "";
        r38 = r10.optString(r1, r2);	 Catch:{ JSONException -> 0x022b }
        r1 = "remote_ping_urls";
        r1 = r10.optJSONArray(r1);	 Catch:{ JSONException -> 0x022b }
        r2 = 0;
        r39 = zza(r1, r2);	 Catch:{ JSONException -> 0x022b }
        r1 = "safe_browsing";
        r1 = r10.optJSONObject(r1);	 Catch:{ JSONException -> 0x022b }
        r41 = com.google.android.gms.internal.zzaeq.zzf(r1);	 Catch:{ JSONException -> 0x022b }
        r1 = "render_in_browser";
        r2 = r9.zzMe;	 Catch:{ JSONException -> 0x022b }
        r44 = r10.optBoolean(r1, r2);	 Catch:{ JSONException -> 0x022b }
        r45 = new com.google.android.gms.internal.zzaai;	 Catch:{ JSONException -> 0x022b }
        r10 = r9.zzSH;	 Catch:{ JSONException -> 0x022b }
        r2 = r9.zzSV;	 Catch:{ JSONException -> 0x022b }
        r1 = r9.zzTh;	 Catch:{ JSONException -> 0x022b }
        r46 = r1;
        r1 = r45;
        r47 = r2;
        r2 = r9;
        r9 = r14;
        r48 = r10;
        r10 = r11;
        r12 = r22;
        r22 = r13;
        r13 = r16;
        r15 = r18;
        r16 = r22;
        r17 = r20;
        r20 = r25;
        r21 = r26;
        r22 = r23;
        r23 = r27;
        r25 = r48;
        r26 = r28;
        r27 = r29;
        r28 = r30;
        r29 = r31;
        r30 = r32;
        r31 = r35;
        r32 = r33;
        r33 = r34;
        r34 = r36;
        r35 = r37;
        r36 = r47;
        r37 = r38;
        r38 = r39;
        r39 = r44;
        r44 = r46;
        r1.<init>(r2, r3, r4, r5, r6, r7, r9, r10, r12, r13, r15, r16, r17, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44);	 Catch:{ JSONException -> 0x022b }
        return r45;
    L_0x022b:
        r0 = move-exception;
        r1 = r0;
        r2 = "Could not parse the inline ad response: ";
        r1 = r1.getMessage();
        r1 = java.lang.String.valueOf(r1);
        r3 = r1.length();
        if (r3 == 0) goto L_0x0242;
    L_0x023d:
        r1 = r2.concat(r1);
        goto L_0x0247;
    L_0x0242:
        r1 = new java.lang.String;
        r1.<init>(r2);
    L_0x0247:
        com.google.android.gms.internal.zzajc.zzaT(r1);
        r1 = new com.google.android.gms.internal.zzaai;
        r2 = 0;
        r1.<init>(r2);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzabt.zza(android.content.Context, com.google.android.gms.internal.zzaae, java.lang.String):com.google.android.gms.internal.zzaai");
    }

    @Nullable
    private static List<String> zza(@Nullable JSONArray jSONArray, @Nullable List<String> list) throws JSONException {
        if (jSONArray == null) {
            return null;
        }
        List list2;
        if (list2 == null) {
            list2 = new LinkedList();
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            list2.add(jSONArray.getString(i));
        }
        return list2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:342:0x08a4 A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:341:0x08a1 A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:255:0x069e A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:262:0x06bb A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:267:0x06e9 A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:265:0x06c7 A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:270:0x070d A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:281:0x0739 A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:289:0x075b A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:292:0x076c A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:300:0x0792 A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:307:0x07aa A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:310:0x07b9 A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:321:0x07e4 A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:324:0x085b A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:332:0x0885 A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:354:0x08ec A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:352:0x08dc A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:365:0x0929 A:{Catch:{ JSONException -> 0x097d }} */
    /* JADX WARNING: Removed duplicated region for block: B:371:0x094f A:{Catch:{ JSONException -> 0x097d }} */
    @android.support.annotation.Nullable
    public static org.json.JSONObject zza(android.content.Context r21, com.google.android.gms.internal.zzabk r22) {
        /*
        r1 = r22;
        r2 = r1.zzUj;
        r3 = r1.zzzV;
        r4 = r1.zzUk;
        r5 = r1.zzSG;
        r6 = r1.zzUl;
        r8 = new java.util.HashMap;	 Catch:{ JSONException -> 0x097d }
        r8.<init>();	 Catch:{ JSONException -> 0x097d }
        r9 = "extra_caps";
        r10 = com.google.android.gms.internal.zzmo.zzFl;	 Catch:{ JSONException -> 0x097d }
        r11 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ JSONException -> 0x097d }
        r10 = r11.zzd(r10);	 Catch:{ JSONException -> 0x097d }
        r8.put(r9, r10);	 Catch:{ JSONException -> 0x097d }
        r9 = r1.zzSN;	 Catch:{ JSONException -> 0x097d }
        r9 = r9.size();	 Catch:{ JSONException -> 0x097d }
        if (r9 <= 0) goto L_0x0035;
    L_0x0028:
        r9 = "eid";
        r10 = ",";
        r11 = r1.zzSN;	 Catch:{ JSONException -> 0x097d }
        r10 = android.text.TextUtils.join(r10, r11);	 Catch:{ JSONException -> 0x097d }
        r8.put(r9, r10);	 Catch:{ JSONException -> 0x097d }
    L_0x0035:
        r9 = r2.zzSy;	 Catch:{ JSONException -> 0x097d }
        if (r9 == 0) goto L_0x0040;
    L_0x0039:
        r9 = "ad_pos";
        r10 = r2.zzSy;	 Catch:{ JSONException -> 0x097d }
        r8.put(r9, r10);	 Catch:{ JSONException -> 0x097d }
    L_0x0040:
        r9 = r2.zzSz;	 Catch:{ JSONException -> 0x097d }
        r10 = com.google.android.gms.internal.zzafo.zzhK();	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x004d;
    L_0x0048:
        r11 = "abf";
        r8.put(r11, r10);	 Catch:{ JSONException -> 0x097d }
    L_0x004d:
        r10 = r9.zzzN;	 Catch:{ JSONException -> 0x097d }
        r12 = -1;
        r14 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r14 == 0) goto L_0x0067;
    L_0x0055:
        r10 = "cust_age";
        r11 = zzUK;	 Catch:{ JSONException -> 0x097d }
        r14 = new java.util.Date;	 Catch:{ JSONException -> 0x097d }
        r12 = r9.zzzN;	 Catch:{ JSONException -> 0x097d }
        r14.<init>(r12);	 Catch:{ JSONException -> 0x097d }
        r11 = r11.format(r14);	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r11);	 Catch:{ JSONException -> 0x097d }
    L_0x0067:
        r10 = r9.extras;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x0072;
    L_0x006b:
        r10 = "extras";
        r11 = r9.extras;	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r11);	 Catch:{ JSONException -> 0x097d }
    L_0x0072:
        r10 = r9.zzzO;	 Catch:{ JSONException -> 0x097d }
        r11 = -1;
        if (r10 == r11) goto L_0x0082;
    L_0x0077:
        r10 = "cust_gender";
        r12 = r9.zzzO;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.valueOf(r12);	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r12);	 Catch:{ JSONException -> 0x097d }
    L_0x0082:
        r10 = r9.zzzP;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x008d;
    L_0x0086:
        r10 = "kw";
        r12 = r9.zzzP;	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r12);	 Catch:{ JSONException -> 0x097d }
    L_0x008d:
        r10 = r9.zzzR;	 Catch:{ JSONException -> 0x097d }
        if (r10 == r11) goto L_0x009c;
    L_0x0091:
        r10 = "tag_for_child_directed_treatment";
        r12 = r9.zzzR;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.valueOf(r12);	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r12);	 Catch:{ JSONException -> 0x097d }
    L_0x009c:
        r10 = r9.zzzQ;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x00a7;
    L_0x00a0:
        r10 = "adtest";
        r12 = "on";
        r8.put(r10, r12);	 Catch:{ JSONException -> 0x097d }
    L_0x00a7:
        r10 = r9.versionCode;	 Catch:{ JSONException -> 0x097d }
        r12 = 2;
        r13 = 1;
        if (r10 < r12) goto L_0x01ba;
    L_0x00ad:
        r10 = r9.zzzS;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x00ba;
    L_0x00b1:
        r10 = "d_imp_hdr";
        r14 = java.lang.Integer.valueOf(r13);	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r14);	 Catch:{ JSONException -> 0x097d }
    L_0x00ba:
        r10 = r9.zzzT;	 Catch:{ JSONException -> 0x097d }
        r10 = android.text.TextUtils.isEmpty(r10);	 Catch:{ JSONException -> 0x097d }
        if (r10 != 0) goto L_0x00c9;
    L_0x00c2:
        r10 = "ppid";
        r14 = r9.zzzT;	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r14);	 Catch:{ JSONException -> 0x097d }
    L_0x00c9:
        r10 = r9.zzzU;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x01ba;
    L_0x00cd:
        r10 = r9.zzzU;	 Catch:{ JSONException -> 0x097d }
        r14 = r10.zzBw;	 Catch:{ JSONException -> 0x097d }
        r14 = android.graphics.Color.alpha(r14);	 Catch:{ JSONException -> 0x097d }
        if (r14 == 0) goto L_0x00e2;
    L_0x00d7:
        r14 = "acolor";
        r15 = r10.zzBw;	 Catch:{ JSONException -> 0x097d }
        r15 = zzu(r15);	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x00e2:
        r14 = r10.backgroundColor;	 Catch:{ JSONException -> 0x097d }
        r14 = android.graphics.Color.alpha(r14);	 Catch:{ JSONException -> 0x097d }
        if (r14 == 0) goto L_0x00f5;
    L_0x00ea:
        r14 = "bgcolor";
        r15 = r10.backgroundColor;	 Catch:{ JSONException -> 0x097d }
        r15 = zzu(r15);	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x00f5:
        r14 = r10.zzBx;	 Catch:{ JSONException -> 0x097d }
        r14 = android.graphics.Color.alpha(r14);	 Catch:{ JSONException -> 0x097d }
        if (r14 == 0) goto L_0x011b;
    L_0x00fd:
        r14 = r10.zzBy;	 Catch:{ JSONException -> 0x097d }
        r14 = android.graphics.Color.alpha(r14);	 Catch:{ JSONException -> 0x097d }
        if (r14 == 0) goto L_0x011b;
    L_0x0105:
        r14 = "gradientto";
        r15 = r10.zzBx;	 Catch:{ JSONException -> 0x097d }
        r15 = zzu(r15);	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
        r14 = "gradientfrom";
        r15 = r10.zzBy;	 Catch:{ JSONException -> 0x097d }
        r15 = zzu(r15);	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x011b:
        r14 = r10.zzBz;	 Catch:{ JSONException -> 0x097d }
        r14 = android.graphics.Color.alpha(r14);	 Catch:{ JSONException -> 0x097d }
        if (r14 == 0) goto L_0x012e;
    L_0x0123:
        r14 = "bcolor";
        r15 = r10.zzBz;	 Catch:{ JSONException -> 0x097d }
        r15 = zzu(r15);	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x012e:
        r14 = "bthick";
        r15 = r10.zzBA;	 Catch:{ JSONException -> 0x097d }
        r15 = java.lang.Integer.toString(r15);	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
        r14 = r10.zzBB;	 Catch:{ JSONException -> 0x097d }
        switch(r14) {
            case 0: goto L_0x0149;
            case 1: goto L_0x0146;
            case 2: goto L_0x0143;
            case 3: goto L_0x0140;
            default: goto L_0x013e;
        };	 Catch:{ JSONException -> 0x097d }
    L_0x013e:
        r14 = 0;
        goto L_0x014b;
    L_0x0140:
        r14 = "solid";
        goto L_0x014b;
    L_0x0143:
        r14 = "dotted";
        goto L_0x014b;
    L_0x0146:
        r14 = "dashed";
        goto L_0x014b;
    L_0x0149:
        r14 = "none";
    L_0x014b:
        if (r14 == 0) goto L_0x0152;
    L_0x014d:
        r15 = "btype";
        r8.put(r15, r14);	 Catch:{ JSONException -> 0x097d }
    L_0x0152:
        r14 = r10.zzBC;	 Catch:{ JSONException -> 0x097d }
        switch(r14) {
            case 0: goto L_0x015f;
            case 1: goto L_0x015c;
            case 2: goto L_0x0159;
            default: goto L_0x0157;
        };	 Catch:{ JSONException -> 0x097d }
    L_0x0157:
        r14 = 0;
        goto L_0x0161;
    L_0x0159:
        r14 = "dark";
        goto L_0x0161;
    L_0x015c:
        r14 = "medium";
        goto L_0x0161;
    L_0x015f:
        r14 = "light";
    L_0x0161:
        if (r14 == 0) goto L_0x0168;
    L_0x0163:
        r15 = "callbuttoncolor";
        r8.put(r15, r14);	 Catch:{ JSONException -> 0x097d }
    L_0x0168:
        r14 = r10.zzBD;	 Catch:{ JSONException -> 0x097d }
        if (r14 == 0) goto L_0x0173;
    L_0x016c:
        r14 = "channel";
        r15 = r10.zzBD;	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x0173:
        r14 = r10.zzBE;	 Catch:{ JSONException -> 0x097d }
        r14 = android.graphics.Color.alpha(r14);	 Catch:{ JSONException -> 0x097d }
        if (r14 == 0) goto L_0x0186;
    L_0x017b:
        r14 = "dcolor";
        r15 = r10.zzBE;	 Catch:{ JSONException -> 0x097d }
        r15 = zzu(r15);	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x0186:
        r14 = r10.zzBF;	 Catch:{ JSONException -> 0x097d }
        if (r14 == 0) goto L_0x0191;
    L_0x018a:
        r14 = "font";
        r15 = r10.zzBF;	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x0191:
        r14 = r10.zzBG;	 Catch:{ JSONException -> 0x097d }
        r14 = android.graphics.Color.alpha(r14);	 Catch:{ JSONException -> 0x097d }
        if (r14 == 0) goto L_0x01a4;
    L_0x0199:
        r14 = "hcolor";
        r15 = r10.zzBG;	 Catch:{ JSONException -> 0x097d }
        r15 = zzu(r15);	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x01a4:
        r14 = "headersize";
        r15 = r10.zzBH;	 Catch:{ JSONException -> 0x097d }
        r15 = java.lang.Integer.toString(r15);	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r15);	 Catch:{ JSONException -> 0x097d }
        r14 = r10.zzBI;	 Catch:{ JSONException -> 0x097d }
        if (r14 == 0) goto L_0x01ba;
    L_0x01b3:
        r14 = "q";
        r10 = r10.zzBI;	 Catch:{ JSONException -> 0x097d }
        r8.put(r14, r10);	 Catch:{ JSONException -> 0x097d }
    L_0x01ba:
        r10 = r9.versionCode;	 Catch:{ JSONException -> 0x097d }
        r14 = 3;
        if (r10 < r14) goto L_0x01ca;
    L_0x01bf:
        r10 = r9.zzzW;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x01ca;
    L_0x01c3:
        r10 = "url";
        r14 = r9.zzzW;	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r14);	 Catch:{ JSONException -> 0x097d }
    L_0x01ca:
        r10 = r9.versionCode;	 Catch:{ JSONException -> 0x097d }
        r14 = 5;
        if (r10 < r14) goto L_0x01f0;
    L_0x01cf:
        r10 = r9.zzzY;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x01da;
    L_0x01d3:
        r10 = "custom_targeting";
        r15 = r9.zzzY;	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x01da:
        r10 = r9.zzzZ;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x01e5;
    L_0x01de:
        r10 = "category_exclusions";
        r15 = r9.zzzZ;	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x01e5:
        r10 = r9.zzAa;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x01f0;
    L_0x01e9:
        r10 = "request_agent";
        r15 = r9.zzAa;	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r15);	 Catch:{ JSONException -> 0x097d }
    L_0x01f0:
        r10 = r9.versionCode;	 Catch:{ JSONException -> 0x097d }
        r15 = 6;
        if (r10 < r15) goto L_0x0200;
    L_0x01f5:
        r10 = r9.zzAb;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x0200;
    L_0x01f9:
        r10 = "request_pkg";
        r7 = r9.zzAb;	 Catch:{ JSONException -> 0x097d }
        r8.put(r10, r7);	 Catch:{ JSONException -> 0x097d }
    L_0x0200:
        r7 = r9.versionCode;	 Catch:{ JSONException -> 0x097d }
        r10 = 7;
        if (r7 < r10) goto L_0x0210;
    L_0x0205:
        r7 = "is_designed_for_families";
        r9 = r9.zzAc;	 Catch:{ JSONException -> 0x097d }
        r9 = java.lang.Boolean.valueOf(r9);	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
    L_0x0210:
        r7 = r2.zzvX;	 Catch:{ JSONException -> 0x097d }
        r7 = r7.zzAu;	 Catch:{ JSONException -> 0x097d }
        if (r7 != 0) goto L_0x022d;
    L_0x0216:
        r7 = "format";
        r10 = r2.zzvX;	 Catch:{ JSONException -> 0x097d }
        r10 = r10.zzAs;	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r10);	 Catch:{ JSONException -> 0x097d }
        r7 = r2.zzvX;	 Catch:{ JSONException -> 0x097d }
        r7 = r7.zzAw;	 Catch:{ JSONException -> 0x097d }
        if (r7 == 0) goto L_0x0263;
    L_0x0225:
        r7 = "fluid";
        r10 = "height";
        r8.put(r7, r10);	 Catch:{ JSONException -> 0x097d }
        goto L_0x0263;
    L_0x022d:
        r7 = r2.zzvX;	 Catch:{ JSONException -> 0x097d }
        r7 = r7.zzAu;	 Catch:{ JSONException -> 0x097d }
        r10 = r7.length;	 Catch:{ JSONException -> 0x097d }
        r15 = 0;
        r16 = 0;
        r17 = 0;
    L_0x0237:
        if (r15 >= r10) goto L_0x0263;
    L_0x0239:
        r14 = r7[r15];	 Catch:{ JSONException -> 0x097d }
        r13 = r14.zzAw;	 Catch:{ JSONException -> 0x097d }
        if (r13 != 0) goto L_0x024a;
    L_0x023f:
        if (r16 != 0) goto L_0x024a;
    L_0x0241:
        r13 = "format";
        r12 = r14.zzAs;	 Catch:{ JSONException -> 0x097d }
        r8.put(r13, r12);	 Catch:{ JSONException -> 0x097d }
        r16 = 1;
    L_0x024a:
        r12 = r14.zzAw;	 Catch:{ JSONException -> 0x097d }
        if (r12 == 0) goto L_0x0259;
    L_0x024e:
        if (r17 != 0) goto L_0x0259;
    L_0x0250:
        r12 = "fluid";
        r13 = "height";
        r8.put(r12, r13);	 Catch:{ JSONException -> 0x097d }
        r17 = 1;
    L_0x0259:
        if (r16 == 0) goto L_0x025d;
    L_0x025b:
        if (r17 != 0) goto L_0x0263;
    L_0x025d:
        r15 = r15 + 1;
        r12 = 2;
        r13 = 1;
        r14 = 5;
        goto L_0x0237;
    L_0x0263:
        r7 = r2.zzvX;	 Catch:{ JSONException -> 0x097d }
        r7 = r7.width;	 Catch:{ JSONException -> 0x097d }
        if (r7 != r11) goto L_0x0270;
    L_0x0269:
        r7 = "smart_w";
        r10 = "full";
        r8.put(r7, r10);	 Catch:{ JSONException -> 0x097d }
    L_0x0270:
        r7 = r2.zzvX;	 Catch:{ JSONException -> 0x097d }
        r7 = r7.height;	 Catch:{ JSONException -> 0x097d }
        r10 = -2;
        if (r7 != r10) goto L_0x027e;
    L_0x0277:
        r7 = "smart_h";
        r12 = "auto";
        r8.put(r7, r12);	 Catch:{ JSONException -> 0x097d }
    L_0x027e:
        r7 = r2.zzvX;	 Catch:{ JSONException -> 0x097d }
        r7 = r7.zzAu;	 Catch:{ JSONException -> 0x097d }
        if (r7 == 0) goto L_0x02ec;
    L_0x0284:
        r7 = new java.lang.StringBuilder;	 Catch:{ JSONException -> 0x097d }
        r7.<init>();	 Catch:{ JSONException -> 0x097d }
        r12 = r2.zzvX;	 Catch:{ JSONException -> 0x097d }
        r12 = r12.zzAu;	 Catch:{ JSONException -> 0x097d }
        r13 = r12.length;	 Catch:{ JSONException -> 0x097d }
        r14 = 0;
        r15 = 0;
    L_0x0290:
        if (r14 >= r13) goto L_0x02d2;
    L_0x0292:
        r9 = r12[r14];	 Catch:{ JSONException -> 0x097d }
        r10 = r9.zzAw;	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x029a;
    L_0x0298:
        r15 = 1;
        goto L_0x02cd;
    L_0x029a:
        r10 = r7.length();	 Catch:{ JSONException -> 0x097d }
        if (r10 == 0) goto L_0x02a5;
    L_0x02a0:
        r10 = "|";
        r7.append(r10);	 Catch:{ JSONException -> 0x097d }
    L_0x02a5:
        r10 = r9.width;	 Catch:{ JSONException -> 0x097d }
        if (r10 != r11) goto L_0x02b1;
    L_0x02a9:
        r10 = r9.widthPixels;	 Catch:{ JSONException -> 0x097d }
        r10 = (float) r10;	 Catch:{ JSONException -> 0x097d }
        r11 = r4.zzxR;	 Catch:{ JSONException -> 0x097d }
        r10 = r10 / r11;
        r10 = (int) r10;	 Catch:{ JSONException -> 0x097d }
        goto L_0x02b3;
    L_0x02b1:
        r10 = r9.width;	 Catch:{ JSONException -> 0x097d }
    L_0x02b3:
        r7.append(r10);	 Catch:{ JSONException -> 0x097d }
        r10 = "x";
        r7.append(r10);	 Catch:{ JSONException -> 0x097d }
        r10 = r9.height;	 Catch:{ JSONException -> 0x097d }
        r11 = -2;
        if (r10 != r11) goto L_0x02c8;
    L_0x02c0:
        r9 = r9.heightPixels;	 Catch:{ JSONException -> 0x097d }
        r9 = (float) r9;	 Catch:{ JSONException -> 0x097d }
        r10 = r4.zzxR;	 Catch:{ JSONException -> 0x097d }
        r9 = r9 / r10;
        r9 = (int) r9;	 Catch:{ JSONException -> 0x097d }
        goto L_0x02ca;
    L_0x02c8:
        r9 = r9.height;	 Catch:{ JSONException -> 0x097d }
    L_0x02ca:
        r7.append(r9);	 Catch:{ JSONException -> 0x097d }
    L_0x02cd:
        r14 = r14 + 1;
        r10 = -2;
        r11 = -1;
        goto L_0x0290;
    L_0x02d2:
        if (r15 == 0) goto L_0x02e7;
    L_0x02d4:
        r9 = r7.length();	 Catch:{ JSONException -> 0x097d }
        if (r9 == 0) goto L_0x02e1;
    L_0x02da:
        r9 = "|";
        r10 = 0;
        r7.insert(r10, r9);	 Catch:{ JSONException -> 0x097d }
        goto L_0x02e2;
    L_0x02e1:
        r10 = 0;
    L_0x02e2:
        r9 = "320x50";
        r7.insert(r10, r9);	 Catch:{ JSONException -> 0x097d }
    L_0x02e7:
        r9 = "sz";
        r8.put(r9, r7);	 Catch:{ JSONException -> 0x097d }
    L_0x02ec:
        r7 = r2.zzSF;	 Catch:{ JSONException -> 0x097d }
        if (r7 == 0) goto L_0x0348;
    L_0x02f0:
        r7 = "native_version";
        r9 = r2.zzSF;	 Catch:{ JSONException -> 0x097d }
        r9 = java.lang.Integer.valueOf(r9);	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
        r7 = "native_templates";
        r9 = r2.zzwq;	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
        r7 = "native_image_orientation";
        r9 = r2.zzwj;	 Catch:{ JSONException -> 0x097d }
        if (r9 == 0) goto L_0x030b;
    L_0x0308:
        r9 = r9.zzIo;	 Catch:{ JSONException -> 0x097d }
        goto L_0x030c;
    L_0x030b:
        r9 = 0;
    L_0x030c:
        switch(r9) {
            case 0: goto L_0x0318;
            case 1: goto L_0x0315;
            case 2: goto L_0x0312;
            default: goto L_0x030f;
        };	 Catch:{ JSONException -> 0x097d }
    L_0x030f:
        r9 = "not_set";
        goto L_0x031a;
    L_0x0312:
        r9 = "landscape";
        goto L_0x031a;
    L_0x0315:
        r9 = "portrait";
        goto L_0x031a;
    L_0x0318:
        r9 = "any";
    L_0x031a:
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
        r7 = r2.zzSO;	 Catch:{ JSONException -> 0x097d }
        r7 = r7.isEmpty();	 Catch:{ JSONException -> 0x097d }
        if (r7 != 0) goto L_0x032c;
    L_0x0325:
        r7 = "native_custom_templates";
        r9 = r2.zzSO;	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
    L_0x032c:
        r7 = r2.zzTi;	 Catch:{ JSONException -> 0x097d }
        r7 = android.text.TextUtils.isEmpty(r7);	 Catch:{ JSONException -> 0x097d }
        if (r7 != 0) goto L_0x0348;
    L_0x0334:
        r7 = "native_advanced_settings";
        r9 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x0341 }
        r10 = r2.zzTi;	 Catch:{ JSONException -> 0x0341 }
        r9.<init>(r10);	 Catch:{ JSONException -> 0x0341 }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x0341 }
        goto L_0x0348;
    L_0x0341:
        r0 = move-exception;
        r7 = r0;
        r9 = "Problem creating json from native advanced settings";
        com.google.android.gms.internal.zzajc.zzc(r9, r7);	 Catch:{ JSONException -> 0x097d }
    L_0x0348:
        r7 = r2.zzwn;	 Catch:{ JSONException -> 0x097d }
        if (r7 == 0) goto L_0x0386;
    L_0x034c:
        r7 = r2.zzwn;	 Catch:{ JSONException -> 0x097d }
        r7 = r7.size();	 Catch:{ JSONException -> 0x097d }
        if (r7 <= 0) goto L_0x0386;
    L_0x0354:
        r7 = r2.zzwn;	 Catch:{ JSONException -> 0x097d }
        r7 = r7.iterator();	 Catch:{ JSONException -> 0x097d }
    L_0x035a:
        r9 = r7.hasNext();	 Catch:{ JSONException -> 0x097d }
        if (r9 == 0) goto L_0x0386;
    L_0x0360:
        r9 = r7.next();	 Catch:{ JSONException -> 0x097d }
        r9 = (java.lang.Integer) r9;	 Catch:{ JSONException -> 0x097d }
        r10 = r9.intValue();	 Catch:{ JSONException -> 0x097d }
        r11 = 2;
        if (r10 != r11) goto L_0x0378;
    L_0x036d:
        r9 = "iba";
        r10 = 1;
        r11 = java.lang.Boolean.valueOf(r10);	 Catch:{ JSONException -> 0x097d }
    L_0x0374:
        r8.put(r9, r11);	 Catch:{ JSONException -> 0x097d }
        goto L_0x035a;
    L_0x0378:
        r9 = r9.intValue();	 Catch:{ JSONException -> 0x097d }
        r10 = 1;
        if (r9 != r10) goto L_0x035a;
    L_0x037f:
        r9 = "ina";
        r11 = java.lang.Boolean.valueOf(r10);	 Catch:{ JSONException -> 0x097d }
        goto L_0x0374;
    L_0x0386:
        r7 = r2.zzvX;	 Catch:{ JSONException -> 0x097d }
        r7 = r7.zzAx;	 Catch:{ JSONException -> 0x097d }
        if (r7 == 0) goto L_0x0396;
    L_0x038c:
        r7 = "ene";
        r9 = 1;
        r10 = java.lang.Boolean.valueOf(r9);	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r10);	 Catch:{ JSONException -> 0x097d }
    L_0x0396:
        r7 = r2.zzwl;	 Catch:{ JSONException -> 0x097d }
        if (r7 == 0) goto L_0x03b1;
    L_0x039a:
        r7 = "is_icon_ad";
        r9 = 1;
        r10 = java.lang.Boolean.valueOf(r9);	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r10);	 Catch:{ JSONException -> 0x097d }
        r7 = "icon_ad_expansion_behavior";
        r9 = r2.zzwl;	 Catch:{ JSONException -> 0x097d }
        r9 = r9.zzAR;	 Catch:{ JSONException -> 0x097d }
        r9 = java.lang.Integer.valueOf(r9);	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
    L_0x03b1:
        r7 = "slotname";
        r9 = r2.zzvR;	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
        r7 = "pn";
        r9 = r2.applicationInfo;	 Catch:{ JSONException -> 0x097d }
        r9 = r9.packageName;	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
        r7 = r2.zzSA;	 Catch:{ JSONException -> 0x097d }
        if (r7 == 0) goto L_0x03d2;
    L_0x03c5:
        r7 = "vc";
        r9 = r2.zzSA;	 Catch:{ JSONException -> 0x097d }
        r9 = r9.versionCode;	 Catch:{ JSONException -> 0x097d }
        r9 = java.lang.Integer.valueOf(r9);	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
    L_0x03d2:
        r7 = "ms";
        r9 = r1.zzSB;	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
        r7 = "seq_num";
        r9 = r2.zzSC;	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
        r7 = "session_id";
        r9 = r2.zzSD;	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
        r7 = "js";
        r9 = r2.zzvT;	 Catch:{ JSONException -> 0x097d }
        r9 = r9.zzaP;	 Catch:{ JSONException -> 0x097d }
        r8.put(r7, r9);	 Catch:{ JSONException -> 0x097d }
        r7 = r1.zzUh;	 Catch:{ JSONException -> 0x097d }
        r9 = r2.zzTa;	 Catch:{ JSONException -> 0x097d }
        r10 = r1.zzUg;	 Catch:{ JSONException -> 0x097d }
        r11 = "am";
        r12 = r4.zzVF;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.valueOf(r12);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r12);	 Catch:{ JSONException -> 0x097d }
        r11 = "cog";
        r12 = r4.zzVG;	 Catch:{ JSONException -> 0x097d }
        r12 = zzt(r12);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r12);	 Catch:{ JSONException -> 0x097d }
        r11 = "coh";
        r12 = r4.zzVH;	 Catch:{ JSONException -> 0x097d }
        r12 = zzt(r12);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r12);	 Catch:{ JSONException -> 0x097d }
        r11 = r4.zzVI;	 Catch:{ JSONException -> 0x097d }
        r11 = android.text.TextUtils.isEmpty(r11);	 Catch:{ JSONException -> 0x097d }
        if (r11 != 0) goto L_0x0426;
    L_0x041f:
        r11 = "carrier";
        r12 = r4.zzVI;	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r12);	 Catch:{ JSONException -> 0x097d }
    L_0x0426:
        r11 = "gl";
        r12 = r4.zzVJ;	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r12);	 Catch:{ JSONException -> 0x097d }
        r11 = r4.zzVK;	 Catch:{ JSONException -> 0x097d }
        if (r11 == 0) goto L_0x043b;
    L_0x0431:
        r11 = "simulator";
        r12 = 1;
        r13 = java.lang.Integer.valueOf(r12);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
    L_0x043b:
        r11 = r4.zzVL;	 Catch:{ JSONException -> 0x097d }
        if (r11 == 0) goto L_0x044a;
    L_0x043f:
        r11 = "is_sidewinder";
        r12 = 1;
        r13 = java.lang.Integer.valueOf(r12);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
        goto L_0x044b;
    L_0x044a:
        r12 = 1;
    L_0x044b:
        r11 = "ma";
        r13 = r4.zzVM;	 Catch:{ JSONException -> 0x097d }
        r13 = zzt(r13);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
        r11 = "sp";
        r13 = r4.zzVN;	 Catch:{ JSONException -> 0x097d }
        r13 = zzt(r13);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
        r11 = "hl";
        r13 = r4.zzVO;	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
        r11 = r4.zzVP;	 Catch:{ JSONException -> 0x097d }
        r11 = android.text.TextUtils.isEmpty(r11);	 Catch:{ JSONException -> 0x097d }
        if (r11 != 0) goto L_0x0477;
    L_0x0470:
        r11 = "mv";
        r13 = r4.zzVP;	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
    L_0x0477:
        r11 = "muv";
        r13 = r4.zzVR;	 Catch:{ JSONException -> 0x097d }
        r13 = java.lang.Integer.valueOf(r13);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
        r11 = r4.zzVS;	 Catch:{ JSONException -> 0x097d }
        r13 = -2;
        if (r11 == r13) goto L_0x0492;
    L_0x0487:
        r11 = "cnt";
        r13 = r4.zzVS;	 Catch:{ JSONException -> 0x097d }
        r13 = java.lang.Integer.valueOf(r13);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
    L_0x0492:
        r11 = "gnt";
        r13 = r4.zzVT;	 Catch:{ JSONException -> 0x097d }
        r13 = java.lang.Integer.valueOf(r13);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
        r11 = "pt";
        r13 = r4.zzVU;	 Catch:{ JSONException -> 0x097d }
        r13 = java.lang.Integer.valueOf(r13);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
        r11 = "rm";
        r13 = r4.zzVV;	 Catch:{ JSONException -> 0x097d }
        r13 = java.lang.Integer.valueOf(r13);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
        r11 = "riv";
        r13 = r4.zzVW;	 Catch:{ JSONException -> 0x097d }
        r13 = java.lang.Integer.valueOf(r13);	 Catch:{ JSONException -> 0x097d }
        r8.put(r11, r13);	 Catch:{ JSONException -> 0x097d }
        r11 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r11.<init>();	 Catch:{ JSONException -> 0x097d }
        r13 = "build_build";
        r14 = r4.zzWb;	 Catch:{ JSONException -> 0x097d }
        r11.putString(r13, r14);	 Catch:{ JSONException -> 0x097d }
        r13 = "build_device";
        r14 = r4.zzWc;	 Catch:{ JSONException -> 0x097d }
        r11.putString(r13, r14);	 Catch:{ JSONException -> 0x097d }
        r13 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r13.<init>();	 Catch:{ JSONException -> 0x097d }
        r14 = "is_charging";
        r15 = r4.zzVY;	 Catch:{ JSONException -> 0x097d }
        r13.putBoolean(r14, r15);	 Catch:{ JSONException -> 0x097d }
        r14 = "battery_level";
        r18 = r5;
        r19 = r6;
        r5 = r4.zzVX;	 Catch:{ JSONException -> 0x097d }
        r13.putDouble(r14, r5);	 Catch:{ JSONException -> 0x097d }
        r5 = "battery";
        r11.putBundle(r5, r13);	 Catch:{ JSONException -> 0x097d }
        r5 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r5.<init>();	 Catch:{ JSONException -> 0x097d }
        r6 = "active_network_state";
        r13 = r4.zzWa;	 Catch:{ JSONException -> 0x097d }
        r5.putInt(r6, r13);	 Catch:{ JSONException -> 0x097d }
        r6 = "active_network_metered";
        r13 = r4.zzVZ;	 Catch:{ JSONException -> 0x097d }
        r5.putBoolean(r6, r13);	 Catch:{ JSONException -> 0x097d }
        if (r7 == 0) goto L_0x0521;
    L_0x0502:
        r6 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r6.<init>();	 Catch:{ JSONException -> 0x097d }
        r13 = "predicted_latency_micros";
        r14 = r7.zzWm;	 Catch:{ JSONException -> 0x097d }
        r6.putInt(r13, r14);	 Catch:{ JSONException -> 0x097d }
        r13 = "predicted_down_throughput_bps";
        r14 = r7.zzWn;	 Catch:{ JSONException -> 0x097d }
        r6.putLong(r13, r14);	 Catch:{ JSONException -> 0x097d }
        r13 = "predicted_up_throughput_bps";
        r14 = r7.zzWo;	 Catch:{ JSONException -> 0x097d }
        r6.putLong(r13, r14);	 Catch:{ JSONException -> 0x097d }
        r7 = "predictions";
        r5.putBundle(r7, r6);	 Catch:{ JSONException -> 0x097d }
    L_0x0521:
        r6 = "network";
        r11.putBundle(r6, r5);	 Catch:{ JSONException -> 0x097d }
        r5 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r5.<init>();	 Catch:{ JSONException -> 0x097d }
        r6 = "is_browser_custom_tabs_capable";
        r7 = r4.zzWd;	 Catch:{ JSONException -> 0x097d }
        r5.putBoolean(r6, r7);	 Catch:{ JSONException -> 0x097d }
        r6 = "browser";
        r11.putBundle(r6, r5);	 Catch:{ JSONException -> 0x097d }
        if (r9 == 0) goto L_0x05f0;
    L_0x0539:
        r5 = "android_mem_info";
        r6 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r6.<init>();	 Catch:{ JSONException -> 0x097d }
        r7 = "runtime_free";
        r13 = "runtime_free_memory";
        r14 = -1;
        r12 = r9.getLong(r13, r14);	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Long.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r7, r12);	 Catch:{ JSONException -> 0x097d }
        r7 = "runtime_max";
        r12 = "runtime_max_memory";
        r12 = r9.getLong(r12, r14);	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Long.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r7, r12);	 Catch:{ JSONException -> 0x097d }
        r7 = "runtime_total";
        r12 = "runtime_total_memory";
        r12 = r9.getLong(r12, r14);	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Long.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r7, r12);	 Catch:{ JSONException -> 0x097d }
        r7 = "web_view_count";
        r12 = "web_view_count";
        r13 = 0;
        r12 = r9.getInt(r12, r13);	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r7, r12);	 Catch:{ JSONException -> 0x097d }
        r7 = "debug_memory_info";
        r7 = r9.getParcelable(r7);	 Catch:{ JSONException -> 0x097d }
        r7 = (android.os.Debug.MemoryInfo) r7;	 Catch:{ JSONException -> 0x097d }
        if (r7 == 0) goto L_0x05ec;
    L_0x0589:
        r9 = "debug_info_dalvik_private_dirty";
        r12 = r7.dalvikPrivateDirty;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r9, r12);	 Catch:{ JSONException -> 0x097d }
        r9 = "debug_info_dalvik_pss";
        r12 = r7.dalvikPss;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r9, r12);	 Catch:{ JSONException -> 0x097d }
        r9 = "debug_info_dalvik_shared_dirty";
        r12 = r7.dalvikSharedDirty;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r9, r12);	 Catch:{ JSONException -> 0x097d }
        r9 = "debug_info_native_private_dirty";
        r12 = r7.nativePrivateDirty;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r9, r12);	 Catch:{ JSONException -> 0x097d }
        r9 = "debug_info_native_pss";
        r12 = r7.nativePss;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r9, r12);	 Catch:{ JSONException -> 0x097d }
        r9 = "debug_info_native_shared_dirty";
        r12 = r7.nativeSharedDirty;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r9, r12);	 Catch:{ JSONException -> 0x097d }
        r9 = "debug_info_other_private_dirty";
        r12 = r7.otherPrivateDirty;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r9, r12);	 Catch:{ JSONException -> 0x097d }
        r9 = "debug_info_other_pss";
        r12 = r7.otherPss;	 Catch:{ JSONException -> 0x097d }
        r12 = java.lang.Integer.toString(r12);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r9, r12);	 Catch:{ JSONException -> 0x097d }
        r9 = "debug_info_other_shared_dirty";
        r7 = r7.otherSharedDirty;	 Catch:{ JSONException -> 0x097d }
        r7 = java.lang.Integer.toString(r7);	 Catch:{ JSONException -> 0x097d }
        r6.putString(r9, r7);	 Catch:{ JSONException -> 0x097d }
    L_0x05ec:
        r11.putBundle(r5, r6);	 Catch:{ JSONException -> 0x097d }
        goto L_0x05f1;
    L_0x05f0:
        r13 = 0;
    L_0x05f1:
        r5 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r5.<init>();	 Catch:{ JSONException -> 0x097d }
        r6 = "parental_controls";
        r5.putBundle(r6, r10);	 Catch:{ JSONException -> 0x097d }
        r6 = r4.zzVQ;	 Catch:{ JSONException -> 0x097d }
        r6 = android.text.TextUtils.isEmpty(r6);	 Catch:{ JSONException -> 0x097d }
        if (r6 != 0) goto L_0x060a;
    L_0x0603:
        r6 = "package_version";
        r7 = r4.zzVQ;	 Catch:{ JSONException -> 0x097d }
        r5.putString(r6, r7);	 Catch:{ JSONException -> 0x097d }
    L_0x060a:
        r6 = "play_store";
        r11.putBundle(r6, r5);	 Catch:{ JSONException -> 0x097d }
        r5 = "device";
        r8.put(r5, r11);	 Catch:{ JSONException -> 0x097d }
        r5 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r5.<init>();	 Catch:{ JSONException -> 0x097d }
        r6 = "doritos";
        r7 = r1.zzUi;	 Catch:{ JSONException -> 0x097d }
        r5.putString(r6, r7);	 Catch:{ JSONException -> 0x097d }
        r6 = com.google.android.gms.internal.zzmo.zzDM;	 Catch:{ JSONException -> 0x097d }
        r7 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ JSONException -> 0x097d }
        r6 = r7.zzd(r6);	 Catch:{ JSONException -> 0x097d }
        r6 = (java.lang.Boolean) r6;	 Catch:{ JSONException -> 0x097d }
        r6 = r6.booleanValue();	 Catch:{ JSONException -> 0x097d }
        if (r6 == 0) goto L_0x066e;
    L_0x0632:
        r6 = r1.zzqi;	 Catch:{ JSONException -> 0x097d }
        if (r6 == 0) goto L_0x0643;
    L_0x0636:
        r6 = r1.zzqi;	 Catch:{ JSONException -> 0x097d }
        r7 = r6.getId();	 Catch:{ JSONException -> 0x097d }
        r6 = r1.zzqi;	 Catch:{ JSONException -> 0x097d }
        r9 = r6.isLimitAdTrackingEnabled();	 Catch:{ JSONException -> 0x097d }
        goto L_0x0645;
    L_0x0643:
        r7 = 0;
        r9 = 0;
    L_0x0645:
        r6 = android.text.TextUtils.isEmpty(r7);	 Catch:{ JSONException -> 0x097d }
        if (r6 != 0) goto L_0x065d;
    L_0x064b:
        r6 = "rdid";
        r5.putString(r6, r7);	 Catch:{ JSONException -> 0x097d }
        r6 = "is_lat";
        r5.putBoolean(r6, r9);	 Catch:{ JSONException -> 0x097d }
        r6 = "idtype";
        r7 = "adid";
    L_0x0659:
        r5.putString(r6, r7);	 Catch:{ JSONException -> 0x097d }
        goto L_0x066e;
    L_0x065d:
        com.google.android.gms.internal.zzji.zzds();	 Catch:{ JSONException -> 0x097d }
        r6 = com.google.android.gms.internal.zzaiy.zzW(r21);	 Catch:{ JSONException -> 0x097d }
        r7 = "pdid";
        r5.putString(r7, r6);	 Catch:{ JSONException -> 0x097d }
        r6 = "pdidtype";
        r7 = "ssaid";
        goto L_0x0659;
    L_0x066e:
        r6 = "pii";
        r8.put(r6, r5);	 Catch:{ JSONException -> 0x097d }
        r5 = "platform";
        r6 = android.os.Build.MANUFACTURER;	 Catch:{ JSONException -> 0x097d }
        r8.put(r5, r6);	 Catch:{ JSONException -> 0x097d }
        r5 = "submodel";
        r6 = android.os.Build.MODEL;	 Catch:{ JSONException -> 0x097d }
        r8.put(r5, r6);	 Catch:{ JSONException -> 0x097d }
        if (r3 == 0) goto L_0x0687;
    L_0x0683:
        zza(r8, r3);	 Catch:{ JSONException -> 0x097d }
        goto L_0x0699;
    L_0x0687:
        r3 = r2.zzSz;	 Catch:{ JSONException -> 0x097d }
        r3 = r3.versionCode;	 Catch:{ JSONException -> 0x097d }
        r5 = 2;
        if (r3 < r5) goto L_0x0699;
    L_0x068e:
        r3 = r2.zzSz;	 Catch:{ JSONException -> 0x097d }
        r3 = r3.zzzV;	 Catch:{ JSONException -> 0x097d }
        if (r3 == 0) goto L_0x0699;
    L_0x0694:
        r3 = r2.zzSz;	 Catch:{ JSONException -> 0x097d }
        r3 = r3.zzzV;	 Catch:{ JSONException -> 0x097d }
        goto L_0x0683;
    L_0x0699:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r5 = 2;
        if (r3 < r5) goto L_0x06a5;
    L_0x069e:
        r3 = "quality_signals";
        r5 = r2.zzSE;	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x097d }
    L_0x06a5:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r5 = 4;
        if (r3 < r5) goto L_0x06b9;
    L_0x06aa:
        r3 = r2.zzSH;	 Catch:{ JSONException -> 0x097d }
        if (r3 == 0) goto L_0x06b9;
    L_0x06ae:
        r3 = "forceHttps";
        r5 = r2.zzSH;	 Catch:{ JSONException -> 0x097d }
        r5 = java.lang.Boolean.valueOf(r5);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x097d }
    L_0x06b9:
        if (r18 == 0) goto L_0x06c2;
    L_0x06bb:
        r3 = "content_info";
        r5 = r18;
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x097d }
    L_0x06c2:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r5 = 5;
        if (r3 < r5) goto L_0x06e9;
    L_0x06c7:
        r3 = "u_sd";
        r4 = r2.zzxR;	 Catch:{ JSONException -> 0x097d }
        r4 = java.lang.Float.valueOf(r4);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r4);	 Catch:{ JSONException -> 0x097d }
        r3 = "sh";
        r4 = r2.zzSJ;	 Catch:{ JSONException -> 0x097d }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r4);	 Catch:{ JSONException -> 0x097d }
        r3 = "sw";
        r4 = r2.zzSI;	 Catch:{ JSONException -> 0x097d }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ JSONException -> 0x097d }
    L_0x06e5:
        r8.put(r3, r4);	 Catch:{ JSONException -> 0x097d }
        goto L_0x0708;
    L_0x06e9:
        r3 = "u_sd";
        r5 = r4.zzxR;	 Catch:{ JSONException -> 0x097d }
        r5 = java.lang.Float.valueOf(r5);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x097d }
        r3 = "sh";
        r5 = r4.zzSJ;	 Catch:{ JSONException -> 0x097d }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x097d }
        r3 = "sw";
        r4 = r4.zzSI;	 Catch:{ JSONException -> 0x097d }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ JSONException -> 0x097d }
        goto L_0x06e5;
    L_0x0708:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r4 = 6;
        if (r3 < r4) goto L_0x0734;
    L_0x070d:
        r3 = r2.zzSK;	 Catch:{ JSONException -> 0x097d }
        r3 = android.text.TextUtils.isEmpty(r3);	 Catch:{ JSONException -> 0x097d }
        if (r3 != 0) goto L_0x0729;
    L_0x0715:
        r3 = "view_hierarchy";
        r4 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x0722 }
        r5 = r2.zzSK;	 Catch:{ JSONException -> 0x0722 }
        r4.<init>(r5);	 Catch:{ JSONException -> 0x0722 }
        r8.put(r3, r4);	 Catch:{ JSONException -> 0x0722 }
        goto L_0x0729;
    L_0x0722:
        r0 = move-exception;
        r3 = r0;
        r4 = "Problem serializing view hierarchy to JSON";
        com.google.android.gms.internal.zzajc.zzc(r4, r3);	 Catch:{ JSONException -> 0x097d }
    L_0x0729:
        r3 = "correlation_id";
        r4 = r2.zzSL;	 Catch:{ JSONException -> 0x097d }
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r4);	 Catch:{ JSONException -> 0x097d }
    L_0x0734:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r4 = 7;
        if (r3 < r4) goto L_0x0740;
    L_0x0739:
        r3 = "request_id";
        r4 = r2.zzSM;	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r4);	 Catch:{ JSONException -> 0x097d }
    L_0x0740:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r4 = 12;
        if (r3 < r4) goto L_0x0755;
    L_0x0746:
        r3 = r2.zzSQ;	 Catch:{ JSONException -> 0x097d }
        r3 = android.text.TextUtils.isEmpty(r3);	 Catch:{ JSONException -> 0x097d }
        if (r3 != 0) goto L_0x0755;
    L_0x074e:
        r3 = "anchor";
        r4 = r2.zzSQ;	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r4);	 Catch:{ JSONException -> 0x097d }
    L_0x0755:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r4 = 13;
        if (r3 < r4) goto L_0x0766;
    L_0x075b:
        r3 = "android_app_volume";
        r4 = r2.zzSR;	 Catch:{ JSONException -> 0x097d }
        r4 = java.lang.Float.valueOf(r4);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r4);	 Catch:{ JSONException -> 0x097d }
    L_0x0766:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r4 = 18;
        if (r3 < r4) goto L_0x0777;
    L_0x076c:
        r3 = "android_app_muted";
        r5 = r2.zzSX;	 Catch:{ JSONException -> 0x097d }
        r5 = java.lang.Boolean.valueOf(r5);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x097d }
    L_0x0777:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r5 = 14;
        if (r3 < r5) goto L_0x078c;
    L_0x077d:
        r3 = r2.zzSS;	 Catch:{ JSONException -> 0x097d }
        if (r3 <= 0) goto L_0x078c;
    L_0x0781:
        r3 = "target_api";
        r5 = r2.zzSS;	 Catch:{ JSONException -> 0x097d }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x097d }
    L_0x078c:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r5 = 15;
        if (r3 < r5) goto L_0x07a4;
    L_0x0792:
        r3 = "scroll_index";
        r5 = r2.zzST;	 Catch:{ JSONException -> 0x097d }
        r6 = -1;
        if (r5 != r6) goto L_0x079a;
    L_0x0799:
        goto L_0x079d;
    L_0x079a:
        r11 = r2.zzST;	 Catch:{ JSONException -> 0x097d }
        r6 = r11;
    L_0x079d:
        r5 = java.lang.Integer.valueOf(r6);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x097d }
    L_0x07a4:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r5 = 16;
        if (r3 < r5) goto L_0x07b5;
    L_0x07aa:
        r3 = "_activity_context";
        r5 = r2.zzSU;	 Catch:{ JSONException -> 0x097d }
        r5 = java.lang.Boolean.valueOf(r5);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x097d }
    L_0x07b5:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        if (r3 < r4) goto L_0x07e0;
    L_0x07b9:
        r3 = r2.zzSY;	 Catch:{ JSONException -> 0x097d }
        r3 = android.text.TextUtils.isEmpty(r3);	 Catch:{ JSONException -> 0x097d }
        if (r3 != 0) goto L_0x07d5;
    L_0x07c1:
        r3 = "app_settings";
        r5 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x07ce }
        r6 = r2.zzSY;	 Catch:{ JSONException -> 0x07ce }
        r5.<init>(r6);	 Catch:{ JSONException -> 0x07ce }
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x07ce }
        goto L_0x07d5;
    L_0x07ce:
        r0 = move-exception;
        r3 = r0;
        r5 = "Problem creating json from app settings";
        com.google.android.gms.internal.zzajc.zzc(r5, r3);	 Catch:{ JSONException -> 0x097d }
    L_0x07d5:
        r3 = "render_in_browser";
        r5 = r2.zzMe;	 Catch:{ JSONException -> 0x097d }
        r5 = java.lang.Boolean.valueOf(r5);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r5);	 Catch:{ JSONException -> 0x097d }
    L_0x07e0:
        r3 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        if (r3 < r4) goto L_0x07ef;
    L_0x07e4:
        r3 = "android_num_video_cache_tasks";
        r4 = r2.zzSZ;	 Catch:{ JSONException -> 0x097d }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ JSONException -> 0x097d }
        r8.put(r3, r4);	 Catch:{ JSONException -> 0x097d }
    L_0x07ef:
        r3 = r2.zzvT;	 Catch:{ JSONException -> 0x097d }
        r1 = r1.zzUm;	 Catch:{ JSONException -> 0x097d }
        r4 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r4.<init>();	 Catch:{ JSONException -> 0x097d }
        r5 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r5.<init>();	 Catch:{ JSONException -> 0x097d }
        r6 = "cl";
        r7 = "162978962";
        r5.putString(r6, r7);	 Catch:{ JSONException -> 0x097d }
        r6 = "rapid_rc";
        r7 = "dev";
        r5.putString(r6, r7);	 Catch:{ JSONException -> 0x097d }
        r6 = "rapid_rollup";
        r7 = "HEAD";
        r5.putString(r6, r7);	 Catch:{ JSONException -> 0x097d }
        r6 = "build_meta";
        r4.putBundle(r6, r5);	 Catch:{ JSONException -> 0x097d }
        r5 = "mf";
        r6 = com.google.android.gms.internal.zzmo.zzFn;	 Catch:{ JSONException -> 0x097d }
        r7 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ JSONException -> 0x097d }
        r6 = r7.zzd(r6);	 Catch:{ JSONException -> 0x097d }
        r6 = (java.lang.Boolean) r6;	 Catch:{ JSONException -> 0x097d }
        r6 = r6.booleanValue();	 Catch:{ JSONException -> 0x097d }
        r6 = java.lang.Boolean.toString(r6);	 Catch:{ JSONException -> 0x097d }
        r4.putString(r5, r6);	 Catch:{ JSONException -> 0x097d }
        r5 = "instant_app";
        r6 = com.google.android.gms.internal.zzbha.zzaP(r21);	 Catch:{ JSONException -> 0x097d }
        r6 = r6.zzsl();	 Catch:{ JSONException -> 0x097d }
        r4.putBoolean(r5, r6);	 Catch:{ JSONException -> 0x097d }
        r5 = "lite";
        r3 = r3.zzaaR;	 Catch:{ JSONException -> 0x097d }
        r4.putBoolean(r5, r3);	 Catch:{ JSONException -> 0x097d }
        r3 = "local_service";
        r4.putBoolean(r3, r1);	 Catch:{ JSONException -> 0x097d }
        r1 = "sdk_env";
        r8.put(r1, r4);	 Catch:{ JSONException -> 0x097d }
        r1 = "cache_state";
        r3 = r19;
        r8.put(r1, r3);	 Catch:{ JSONException -> 0x097d }
        r1 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r3 = 19;
        if (r1 < r3) goto L_0x0862;
    L_0x085b:
        r1 = "gct";
        r3 = r2.zzTb;	 Catch:{ JSONException -> 0x097d }
        r8.put(r1, r3);	 Catch:{ JSONException -> 0x097d }
    L_0x0862:
        r1 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r3 = 21;
        if (r1 < r3) goto L_0x0873;
    L_0x0868:
        r1 = r2.zzTc;	 Catch:{ JSONException -> 0x097d }
        if (r1 == 0) goto L_0x0873;
    L_0x086c:
        r1 = "de";
        r3 = "1";
        r8.put(r1, r3);	 Catch:{ JSONException -> 0x097d }
    L_0x0873:
        r1 = com.google.android.gms.internal.zzmo.zzDY;	 Catch:{ JSONException -> 0x097d }
        r3 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ JSONException -> 0x097d }
        r1 = r3.zzd(r1);	 Catch:{ JSONException -> 0x097d }
        r1 = (java.lang.Boolean) r1;	 Catch:{ JSONException -> 0x097d }
        r1 = r1.booleanValue();	 Catch:{ JSONException -> 0x097d }
        if (r1 == 0) goto L_0x08b9;
    L_0x0885:
        r1 = r2.zzvX;	 Catch:{ JSONException -> 0x097d }
        r1 = r1.zzAs;	 Catch:{ JSONException -> 0x097d }
        r3 = "interstitial_mb";
        r3 = r1.equals(r3);	 Catch:{ JSONException -> 0x097d }
        if (r3 != 0) goto L_0x089c;
    L_0x0891:
        r3 = "reward_mb";
        r1 = r1.equals(r3);	 Catch:{ JSONException -> 0x097d }
        if (r1 == 0) goto L_0x089a;
    L_0x0899:
        goto L_0x089c;
    L_0x089a:
        r1 = 0;
        goto L_0x089d;
    L_0x089c:
        r1 = 1;
    L_0x089d:
        r3 = r2.zzTd;	 Catch:{ JSONException -> 0x097d }
        if (r3 == 0) goto L_0x08a4;
    L_0x08a1:
        r20 = 1;
        goto L_0x08a6;
    L_0x08a4:
        r20 = 0;
    L_0x08a6:
        if (r1 == 0) goto L_0x08b9;
    L_0x08a8:
        if (r20 == 0) goto L_0x08b9;
    L_0x08aa:
        r1 = new android.os.Bundle;	 Catch:{ JSONException -> 0x097d }
        r1.<init>();	 Catch:{ JSONException -> 0x097d }
        r4 = "interstitial_pool";
        r1.putBundle(r4, r3);	 Catch:{ JSONException -> 0x097d }
        r3 = "counters";
        r8.put(r3, r1);	 Catch:{ JSONException -> 0x097d }
    L_0x08b9:
        r1 = r2.versionCode;	 Catch:{ JSONException -> 0x097d }
        r3 = 22;
        if (r1 < r3) goto L_0x0901;
    L_0x08bf:
        r1 = com.google.android.gms.ads.internal.zzbs.zzbY();	 Catch:{ JSONException -> 0x097d }
        r3 = r21;
        r1 = r1.zzp(r3);	 Catch:{ JSONException -> 0x097d }
        if (r1 == 0) goto L_0x0901;
    L_0x08cb:
        r1 = "gmp_app_id";
        r3 = r2.zzTe;	 Catch:{ JSONException -> 0x097d }
        r8.put(r1, r3);	 Catch:{ JSONException -> 0x097d }
        r1 = "TIME_OUT";
        r3 = r2.zzTf;	 Catch:{ JSONException -> 0x097d }
        r1 = r1.equals(r3);	 Catch:{ JSONException -> 0x097d }
        if (r1 == 0) goto L_0x08ec;
    L_0x08dc:
        r1 = "sai_timeout";
        r3 = com.google.android.gms.internal.zzmo.zzDB;	 Catch:{ JSONException -> 0x097d }
        r4 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ JSONException -> 0x097d }
        r3 = r4.zzd(r3);	 Catch:{ JSONException -> 0x097d }
    L_0x08e8:
        r8.put(r1, r3);	 Catch:{ JSONException -> 0x097d }
        goto L_0x08fa;
    L_0x08ec:
        r1 = r2.zzTf;	 Catch:{ JSONException -> 0x097d }
        if (r1 != 0) goto L_0x08f5;
    L_0x08f0:
        r1 = "fbs_aiid";
        r3 = "";
        goto L_0x08e8;
    L_0x08f5:
        r1 = "fbs_aiid";
        r3 = r2.zzTf;	 Catch:{ JSONException -> 0x097d }
        goto L_0x08e8;
    L_0x08fa:
        r1 = "fbs_aeid";
        r2 = r2.zzTg;	 Catch:{ JSONException -> 0x097d }
        r8.put(r1, r2);	 Catch:{ JSONException -> 0x097d }
    L_0x0901:
        r1 = com.google.android.gms.internal.zzmo.zzCE;	 Catch:{ JSONException -> 0x097d }
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ JSONException -> 0x097d }
        r1 = r2.zzd(r1);	 Catch:{ JSONException -> 0x097d }
        r1 = (java.lang.String) r1;	 Catch:{ JSONException -> 0x097d }
        if (r1 == 0) goto L_0x0948;
    L_0x090f:
        r2 = r1.isEmpty();	 Catch:{ JSONException -> 0x097d }
        if (r2 != 0) goto L_0x0948;
    L_0x0915:
        r2 = android.os.Build.VERSION.SDK_INT;	 Catch:{ JSONException -> 0x097d }
        r3 = com.google.android.gms.internal.zzmo.zzCF;	 Catch:{ JSONException -> 0x097d }
        r4 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ JSONException -> 0x097d }
        r3 = r4.zzd(r3);	 Catch:{ JSONException -> 0x097d }
        r3 = (java.lang.Integer) r3;	 Catch:{ JSONException -> 0x097d }
        r3 = r3.intValue();	 Catch:{ JSONException -> 0x097d }
        if (r2 < r3) goto L_0x0948;
    L_0x0929:
        r2 = new java.util.HashMap;	 Catch:{ JSONException -> 0x097d }
        r2.<init>();	 Catch:{ JSONException -> 0x097d }
        r3 = ",";
        r1 = r1.split(r3);	 Catch:{ JSONException -> 0x097d }
        r3 = r1.length;	 Catch:{ JSONException -> 0x097d }
    L_0x0935:
        if (r13 >= r3) goto L_0x0943;
    L_0x0937:
        r4 = r1[r13];	 Catch:{ JSONException -> 0x097d }
        r5 = com.google.android.gms.internal.zzaiw.zzaQ(r4);	 Catch:{ JSONException -> 0x097d }
        r2.put(r4, r5);	 Catch:{ JSONException -> 0x097d }
        r13 = r13 + 1;
        goto L_0x0935;
    L_0x0943:
        r1 = "video_decoders";
        r8.put(r1, r2);	 Catch:{ JSONException -> 0x097d }
    L_0x0948:
        r1 = 2;
        r2 = com.google.android.gms.internal.zzajc.zzz(r1);	 Catch:{ JSONException -> 0x097d }
        if (r2 == 0) goto L_0x0974;
    L_0x094f:
        r2 = com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ JSONException -> 0x097d }
        r2 = r2.zzj(r8);	 Catch:{ JSONException -> 0x097d }
        r1 = r2.toString(r1);	 Catch:{ JSONException -> 0x097d }
        r2 = "Ad Request JSON: ";
        r1 = java.lang.String.valueOf(r1);	 Catch:{ JSONException -> 0x097d }
        r3 = r1.length();	 Catch:{ JSONException -> 0x097d }
        if (r3 == 0) goto L_0x096c;
    L_0x0967:
        r1 = r2.concat(r1);	 Catch:{ JSONException -> 0x097d }
        goto L_0x0971;
    L_0x096c:
        r1 = new java.lang.String;	 Catch:{ JSONException -> 0x097d }
        r1.<init>(r2);	 Catch:{ JSONException -> 0x097d }
    L_0x0971:
        com.google.android.gms.internal.zzafr.v(r1);	 Catch:{ JSONException -> 0x097d }
    L_0x0974:
        r1 = com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ JSONException -> 0x097d }
        r1 = r1.zzj(r8);	 Catch:{ JSONException -> 0x097d }
        return r1;
    L_0x097d:
        r0 = move-exception;
        r1 = r0;
        r2 = "Problem serializing ad request to JSON: ";
        r1 = r1.getMessage();
        r1 = java.lang.String.valueOf(r1);
        r3 = r1.length();
        if (r3 == 0) goto L_0x0994;
    L_0x098f:
        r1 = r2.concat(r1);
        goto L_0x0999;
    L_0x0994:
        r1 = new java.lang.String;
        r1.<init>(r2);
    L_0x0999:
        com.google.android.gms.internal.zzajc.zzaT(r1);
        r1 = 0;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzabt.zza(android.content.Context, com.google.android.gms.internal.zzabk):org.json.JSONObject");
    }

    private static void zza(HashMap<String, Object> hashMap, Location location) {
        HashMap hashMap2 = new HashMap();
        Float valueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
        Long valueOf2 = Long.valueOf(location.getTime() * 1000);
        Long valueOf3 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
        Long valueOf4 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
        hashMap2.put("radius", valueOf);
        hashMap2.put("lat", valueOf3);
        hashMap2.put("long", valueOf4);
        hashMap2.put("time", valueOf2);
        hashMap.put("uule", hashMap2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0095  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00b3  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00c5  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00f5  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0102  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0111  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x011e  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0131  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0140  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x014f  */
    public static org.json.JSONObject zzb(com.google.android.gms.internal.zzaai r9) throws org.json.JSONException {
        /*
        r0 = new org.json.JSONObject;
        r0.<init>();
        r1 = r9.zzPi;
        if (r1 == 0) goto L_0x0010;
    L_0x0009:
        r1 = "ad_base_url";
        r2 = r9.zzPi;
        r0.put(r1, r2);
    L_0x0010:
        r1 = r9.zzTr;
        if (r1 == 0) goto L_0x001b;
    L_0x0014:
        r1 = "ad_size";
        r2 = r9.zzTr;
        r0.put(r1, r2);
    L_0x001b:
        r1 = "native";
        r2 = r9.zzAv;
        r0.put(r1, r2);
        r1 = r9.zzAv;
        if (r1 == 0) goto L_0x002e;
    L_0x0026:
        r1 = "ad_json";
    L_0x0028:
        r2 = r9.body;
        r0.put(r1, r2);
        goto L_0x0031;
    L_0x002e:
        r1 = "ad_html";
        goto L_0x0028;
    L_0x0031:
        r1 = r9.zzTt;
        if (r1 == 0) goto L_0x003c;
    L_0x0035:
        r1 = "debug_dialog";
        r2 = r9.zzTt;
        r0.put(r1, r2);
    L_0x003c:
        r1 = r9.zzTK;
        if (r1 == 0) goto L_0x0047;
    L_0x0040:
        r1 = "debug_signals";
        r2 = r9.zzTK;
        r0.put(r1, r2);
    L_0x0047:
        r1 = r9.zzTn;
        r3 = -1;
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
        if (r5 == 0) goto L_0x005d;
    L_0x004f:
        r1 = "interstitial_timeout";
        r5 = r9.zzTn;
        r5 = (double) r5;
        r7 = 4652007308841189376; // 0x408f400000000000 float:0.0 double:1000.0;
        r5 = r5 / r7;
        r0.put(r1, r5);
    L_0x005d:
        r1 = r9.orientation;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbB();
        r2 = r2.zzhU();
        if (r1 != r2) goto L_0x0071;
    L_0x0069:
        r1 = "orientation";
        r2 = "portrait";
    L_0x006d:
        r0.put(r1, r2);
        goto L_0x0082;
    L_0x0071:
        r1 = r9.orientation;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbB();
        r2 = r2.zzhT();
        if (r1 != r2) goto L_0x0082;
    L_0x007d:
        r1 = "orientation";
        r2 = "landscape";
        goto L_0x006d;
    L_0x0082:
        r1 = r9.zzMa;
        if (r1 == 0) goto L_0x0091;
    L_0x0086:
        r1 = "click_urls";
        r2 = r9.zzMa;
        r2 = zzm(r2);
        r0.put(r1, r2);
    L_0x0091:
        r1 = r9.zzMb;
        if (r1 == 0) goto L_0x00a0;
    L_0x0095:
        r1 = "impression_urls";
        r2 = r9.zzMb;
        r2 = zzm(r2);
        r0.put(r1, r2);
    L_0x00a0:
        r1 = r9.zzTq;
        if (r1 == 0) goto L_0x00af;
    L_0x00a4:
        r1 = "manual_impression_urls";
        r2 = r9.zzTq;
        r2 = zzm(r2);
        r0.put(r1, r2);
    L_0x00af:
        r1 = r9.zzTw;
        if (r1 == 0) goto L_0x00ba;
    L_0x00b3:
        r1 = "active_view";
        r2 = r9.zzTw;
        r0.put(r1, r2);
    L_0x00ba:
        r1 = "ad_is_javascript";
        r2 = r9.zzTu;
        r0.put(r1, r2);
        r1 = r9.zzTv;
        if (r1 == 0) goto L_0x00cc;
    L_0x00c5:
        r1 = "ad_passback_url";
        r2 = r9.zzTv;
        r0.put(r1, r2);
    L_0x00cc:
        r1 = "mediation";
        r2 = r9.zzTo;
        r0.put(r1, r2);
        r1 = "custom_render_allowed";
        r2 = r9.zzTx;
        r0.put(r1, r2);
        r1 = "content_url_opted_out";
        r2 = r9.zzTy;
        r0.put(r1, r2);
        r1 = "content_vertical_opted_out";
        r2 = r9.zzTL;
        r0.put(r1, r2);
        r1 = "prefetch";
        r2 = r9.zzTz;
        r0.put(r1, r2);
        r1 = r9.zzMg;
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
        if (r5 == 0) goto L_0x00fc;
    L_0x00f5:
        r1 = "refresh_interval_milliseconds";
        r5 = r9.zzMg;
        r0.put(r1, r5);
    L_0x00fc:
        r1 = r9.zzTp;
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
        if (r5 == 0) goto L_0x0109;
    L_0x0102:
        r1 = "mediation_config_cache_time_milliseconds";
        r2 = r9.zzTp;
        r0.put(r1, r2);
    L_0x0109:
        r1 = r9.zzTC;
        r1 = android.text.TextUtils.isEmpty(r1);
        if (r1 != 0) goto L_0x0118;
    L_0x0111:
        r1 = "gws_query_id";
        r2 = r9.zzTC;
        r0.put(r1, r2);
    L_0x0118:
        r1 = "fluid";
        r2 = r9.zzAw;
        if (r2 == 0) goto L_0x0121;
    L_0x011e:
        r2 = "height";
        goto L_0x0123;
    L_0x0121:
        r2 = "";
    L_0x0123:
        r0.put(r1, r2);
        r1 = "native_express";
        r2 = r9.zzAx;
        r0.put(r1, r2);
        r1 = r9.zzTE;
        if (r1 == 0) goto L_0x013c;
    L_0x0131:
        r1 = "video_start_urls";
        r2 = r9.zzTE;
        r2 = zzm(r2);
        r0.put(r1, r2);
    L_0x013c:
        r1 = r9.zzTF;
        if (r1 == 0) goto L_0x014b;
    L_0x0140:
        r1 = "video_complete_urls";
        r2 = r9.zzTF;
        r2 = zzm(r2);
        r0.put(r1, r2);
    L_0x014b:
        r1 = r9.zzTD;
        if (r1 == 0) goto L_0x0171;
    L_0x014f:
        r1 = "rewards";
        r2 = r9.zzTD;
        r3 = new org.json.JSONObject;
        r3.<init>();
        r4 = "rb_type";
        r5 = r2.type;
        r3.put(r4, r5);
        r4 = "rb_amount";
        r2 = r2.zzWW;
        r3.put(r4, r2);
        r2 = new org.json.JSONArray;
        r2.<init>();
        r2.put(r3);
        r0.put(r1, r2);
    L_0x0171:
        r1 = "use_displayed_impression";
        r2 = r9.zzTG;
        r0.put(r1, r2);
        r1 = "auto_protection_configuration";
        r2 = r9.zzTH;
        r0.put(r1, r2);
        r1 = "render_in_browser";
        r9 = r9.zzMe;
        r0.put(r1, r9);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzabt.zzb(com.google.android.gms.internal.zzaai):org.json.JSONObject");
    }

    @Nullable
    private static JSONArray zzm(List<String> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (String put : list) {
            jSONArray.put(put);
        }
        return jSONArray;
    }

    private static Integer zzt(boolean z) {
        return Integer.valueOf(z);
    }

    private static String zzu(int i) {
        return String.format(Locale.US, "#%06x", new Object[]{Integer.valueOf(i & ViewCompat.MEASURED_SIZE_MASK)});
    }
}
