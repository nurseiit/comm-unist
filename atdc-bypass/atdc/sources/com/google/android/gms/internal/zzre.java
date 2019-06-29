package com.google.android.gms.internal;

import android.content.Context;
import com.androidnetworking.common.ANConstants;
import com.google.android.gms.plus.PlusShare;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzre implements zzrd {
    private final Context mContext;
    private final zzaje zztW;

    public zzre(Context context, zzaje zzaje) {
        this.mContext = context;
        this.zztW = zzaje;
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00e5  */
    private final com.google.android.gms.internal.zzrj zza(com.google.android.gms.internal.zzri r12) {
        /*
        r11 = this;
        r0 = 0;
        r1 = 0;
        r2 = r12.zzez();	 Catch:{ Exception -> 0x00d8, all -> 0x00d5 }
        r2 = r2.openConnection();	 Catch:{ Exception -> 0x00d8, all -> 0x00d5 }
        r2 = (java.net.HttpURLConnection) r2;	 Catch:{ Exception -> 0x00d8, all -> 0x00d5 }
        r3 = com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ Exception -> 0x00d3 }
        r4 = r11.mContext;	 Catch:{ Exception -> 0x00d3 }
        r5 = r11.zztW;	 Catch:{ Exception -> 0x00d3 }
        r5 = r5.zzaP;	 Catch:{ Exception -> 0x00d3 }
        r3.zza(r4, r5, r0, r2);	 Catch:{ Exception -> 0x00d3 }
        r3 = r12.zzeA();	 Catch:{ Exception -> 0x00d3 }
        r3 = (java.util.ArrayList) r3;	 Catch:{ Exception -> 0x00d3 }
        r4 = r3.size();	 Catch:{ Exception -> 0x00d3 }
        r5 = 0;
    L_0x0024:
        if (r5 >= r4) goto L_0x003a;
    L_0x0026:
        r6 = r3.get(r5);	 Catch:{ Exception -> 0x00d3 }
        r5 = r5 + 1;
        r6 = (com.google.android.gms.internal.zzrh) r6;	 Catch:{ Exception -> 0x00d3 }
        r7 = r6.getKey();	 Catch:{ Exception -> 0x00d3 }
        r6 = r6.getValue();	 Catch:{ Exception -> 0x00d3 }
        r2.addRequestProperty(r7, r6);	 Catch:{ Exception -> 0x00d3 }
        goto L_0x0024;
    L_0x003a:
        r3 = r12.zzeB();	 Catch:{ Exception -> 0x00d3 }
        r3 = android.text.TextUtils.isEmpty(r3);	 Catch:{ Exception -> 0x00d3 }
        r4 = 1;
        if (r3 != 0) goto L_0x0063;
    L_0x0045:
        r2.setDoOutput(r4);	 Catch:{ Exception -> 0x00d3 }
        r3 = r12.zzeB();	 Catch:{ Exception -> 0x00d3 }
        r3 = r3.getBytes();	 Catch:{ Exception -> 0x00d3 }
        r5 = r3.length;	 Catch:{ Exception -> 0x00d3 }
        r2.setFixedLengthStreamingMode(r5);	 Catch:{ Exception -> 0x00d3 }
        r5 = new java.io.BufferedOutputStream;	 Catch:{ Exception -> 0x00d3 }
        r6 = r2.getOutputStream();	 Catch:{ Exception -> 0x00d3 }
        r5.<init>(r6);	 Catch:{ Exception -> 0x00d3 }
        r5.write(r3);	 Catch:{ Exception -> 0x00d3 }
        r5.close();	 Catch:{ Exception -> 0x00d3 }
    L_0x0063:
        r3 = new java.util.ArrayList;	 Catch:{ Exception -> 0x00d3 }
        r3.<init>();	 Catch:{ Exception -> 0x00d3 }
        r5 = r2.getHeaderFields();	 Catch:{ Exception -> 0x00d3 }
        if (r5 == 0) goto L_0x00ab;
    L_0x006e:
        r5 = r2.getHeaderFields();	 Catch:{ Exception -> 0x00d3 }
        r5 = r5.entrySet();	 Catch:{ Exception -> 0x00d3 }
        r5 = r5.iterator();	 Catch:{ Exception -> 0x00d3 }
    L_0x007a:
        r6 = r5.hasNext();	 Catch:{ Exception -> 0x00d3 }
        if (r6 == 0) goto L_0x00ab;
    L_0x0080:
        r6 = r5.next();	 Catch:{ Exception -> 0x00d3 }
        r6 = (java.util.Map.Entry) r6;	 Catch:{ Exception -> 0x00d3 }
        r7 = r6.getValue();	 Catch:{ Exception -> 0x00d3 }
        r7 = (java.util.List) r7;	 Catch:{ Exception -> 0x00d3 }
        r7 = r7.iterator();	 Catch:{ Exception -> 0x00d3 }
    L_0x0090:
        r8 = r7.hasNext();	 Catch:{ Exception -> 0x00d3 }
        if (r8 == 0) goto L_0x007a;
    L_0x0096:
        r8 = r7.next();	 Catch:{ Exception -> 0x00d3 }
        r8 = (java.lang.String) r8;	 Catch:{ Exception -> 0x00d3 }
        r9 = new com.google.android.gms.internal.zzrh;	 Catch:{ Exception -> 0x00d3 }
        r10 = r6.getKey();	 Catch:{ Exception -> 0x00d3 }
        r10 = (java.lang.String) r10;	 Catch:{ Exception -> 0x00d3 }
        r9.<init>(r10, r8);	 Catch:{ Exception -> 0x00d3 }
        r3.add(r9);	 Catch:{ Exception -> 0x00d3 }
        goto L_0x0090;
    L_0x00ab:
        r5 = new com.google.android.gms.internal.zzrk;	 Catch:{ Exception -> 0x00d3 }
        r12 = r12.zzey();	 Catch:{ Exception -> 0x00d3 }
        r6 = r2.getResponseCode();	 Catch:{ Exception -> 0x00d3 }
        com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ Exception -> 0x00d3 }
        r7 = new java.io.InputStreamReader;	 Catch:{ Exception -> 0x00d3 }
        r8 = r2.getInputStream();	 Catch:{ Exception -> 0x00d3 }
        r7.<init>(r8);	 Catch:{ Exception -> 0x00d3 }
        r7 = com.google.android.gms.internal.zzagz.zza(r7);	 Catch:{ Exception -> 0x00d3 }
        r5.<init>(r12, r6, r3, r7);	 Catch:{ Exception -> 0x00d3 }
        r12 = new com.google.android.gms.internal.zzrj;	 Catch:{ Exception -> 0x00d3 }
        r12.<init>(r11, r4, r5, r1);	 Catch:{ Exception -> 0x00d3 }
        if (r2 == 0) goto L_0x00d2;
    L_0x00cf:
        r2.disconnect();
    L_0x00d2:
        return r12;
    L_0x00d3:
        r12 = move-exception;
        goto L_0x00da;
    L_0x00d5:
        r12 = move-exception;
        r2 = r1;
        goto L_0x00ea;
    L_0x00d8:
        r12 = move-exception;
        r2 = r1;
    L_0x00da:
        r3 = new com.google.android.gms.internal.zzrj;	 Catch:{ all -> 0x00e9 }
        r12 = r12.toString();	 Catch:{ all -> 0x00e9 }
        r3.<init>(r11, r0, r1, r12);	 Catch:{ all -> 0x00e9 }
        if (r2 == 0) goto L_0x00e8;
    L_0x00e5:
        r2.disconnect();
    L_0x00e8:
        return r3;
    L_0x00e9:
        r12 = move-exception;
    L_0x00ea:
        if (r2 == 0) goto L_0x00ef;
    L_0x00ec:
        r2.disconnect();
    L_0x00ef:
        throw r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzre.zza(com.google.android.gms.internal.zzri):com.google.android.gms.internal.zzrj");
    }

    private static JSONObject zza(zzrk zzrk) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_request_id", zzrk.zzey());
            if (zzrk.getBody() != null) {
                jSONObject.put("body", zzrk.getBody());
            }
            JSONArray jSONArray = new JSONArray();
            for (zzrh zzrh : zzrk.zzeD()) {
                jSONArray.put(new JSONObject().put("key", zzrh.getKey()).put(Param.VALUE, zzrh.getValue()));
            }
            jSONObject.put("headers", jSONArray);
            jSONObject.put("response_code", zzrk.getResponseCode());
            return jSONObject;
        } catch (JSONException e) {
            zzajc.zzb("Error constructing JSON for http response.", e);
            return jSONObject;
        }
    }

    private static zzri zzc(JSONObject jSONObject) {
        String optString = jSONObject.optString("http_request_id");
        String optString2 = jSONObject.optString(PlusShare.KEY_CALL_TO_ACTION_URL);
        URL url = null;
        String optString3 = jSONObject.optString("post_body", null);
        try {
            url = new URL(optString2);
        } catch (MalformedURLException e) {
            zzajc.zzb("Error constructing http request.", e);
        }
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("headers");
        if (optJSONArray == null) {
            optJSONArray = new JSONArray();
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                arrayList.add(new zzrh(optJSONObject.optString("key"), optJSONObject.optString(Param.VALUE)));
            }
        }
        return new zzri(optString, url, arrayList, optString3);
    }

    public final JSONObject zzR(String str) {
        Exception e;
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = new JSONObject();
            String str2 = "";
            Object optString;
            try {
                optString = jSONObject.optString("http_request_id");
                try {
                    zzrj zza = zza(zzc(jSONObject));
                    if (zza.isSuccess()) {
                        jSONObject2.put("response", zza(zza.zzeC()));
                        jSONObject2.put(ANConstants.SUCCESS, true);
                        return jSONObject2;
                    }
                    jSONObject2.put("response", new JSONObject().put("http_request_id", optString));
                    jSONObject2.put(ANConstants.SUCCESS, false);
                    jSONObject2.put("reason", zza.getReason());
                    return jSONObject2;
                } catch (Exception e2) {
                    e = e2;
                    try {
                        jSONObject2.put("response", new JSONObject().put("http_request_id", optString));
                        jSONObject2.put(ANConstants.SUCCESS, false);
                        jSONObject2.put("reason", e.toString());
                    } catch (JSONException unused) {
                    }
                    return jSONObject2;
                }
            } catch (Exception e3) {
                e = e3;
                optString = str2;
                jSONObject2.put("response", new JSONObject().put("http_request_id", optString));
                jSONObject2.put(ANConstants.SUCCESS, false);
                jSONObject2.put("reason", e.toString());
                return jSONObject2;
            }
        } catch (JSONException unused2) {
            zzajc.e("The request is not a valid JSON.");
            try {
                return new JSONObject().put(ANConstants.SUCCESS, false);
            } catch (JSONException unused3) {
                return new JSONObject();
            }
        }
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        zzagt.zza(new zzrf(this, map, zzaka));
    }
}
