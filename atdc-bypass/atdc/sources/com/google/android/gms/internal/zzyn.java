package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbb;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.plus.PlusShare;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzyn implements Callable<zzaff> {
    private static long zzRj = TimeUnit.SECONDS.toMillis(60);
    private final Context mContext;
    private int mErrorCode;
    private final Object mLock = new Object();
    private final zzcu zzIc;
    private final zzafg zzQQ;
    private String zzRA;
    private boolean zzRB;
    private final zzaie zzRv;
    private final zzbb zzRw;
    private boolean zzRx;
    private List<String> zzRy;
    private JSONObject zzRz;
    private final zznb zzsK;
    private zzyh zzuP;

    public zzyn(Context context, zzbb zzbb, zzaie zzaie, zzcu zzcu, zzafg zzafg, zznb zznb) {
        this.mContext = context;
        this.zzRw = zzbb;
        this.zzRv = zzaie;
        this.zzQQ = zzafg;
        this.zzIc = zzcu;
        this.zzsK = zznb;
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFu)).booleanValue()) {
            this.zzuP = zzbb.zzbi();
        }
        if (this.zzuP == null) {
            this.zzuP = new zzyh(context, zzafg, zzbb, zzcu);
            this.zzuP.zzgs();
            this.zzRB = true;
        }
        this.zzRx = false;
        this.mErrorCode = -2;
        this.zzRy = null;
        this.zzRA = null;
    }

    private final zzaff zza(zzoa zzoa) {
        int i;
        zzoa zzoa2;
        synchronized (this.mLock) {
            try {
                i = (zzoa == null && this.mErrorCode == -2) ? 0 : this.mErrorCode;
            } finally {
                Object obj = r0;
            }
        }
        if (i == -2) {
            zzoa2 = zzoa;
        }
        zzir zzir = this.zzQQ.zzUj.zzSz;
        List list = this.zzQQ.zzXY.zzMa;
        List list2 = this.zzQQ.zzXY.zzMb;
        List list3 = this.zzRy;
        int i2 = this.zzQQ.zzXY.orientation;
        long j = this.zzQQ.zzXY.zzMg;
        String str = this.zzQQ.zzUj.zzSC;
        zziv zziv = this.zzQQ.zzvX;
        long j2 = this.zzQQ.zzXY.zzTn;
        List list4 = list;
        long j3 = this.zzQQ.zzXR;
        return new zzaff(zzir, null, list4, i, list2, list3, i2, j, str, false, null, null, null, null, null, 0, zziv, j2, j3, this.zzQQ.zzXS, this.zzQQ.zzXY.zzTt, this.zzRz, zzoa2, null, null, null, this.zzQQ.zzXY.zzTG, this.zzQQ.zzXY.zzTH, null, this.zzQQ.zzXY.zzMd, this.zzRA, this.zzQQ.zzXX);
    }

    private final zzajm<zznp> zza(JSONObject jSONObject, boolean z, boolean z2) throws JSONException {
        CharSequence string = z ? jSONObject.getString(PlusShare.KEY_CALL_TO_ACTION_URL) : jSONObject.optString(PlusShare.KEY_CALL_TO_ACTION_URL);
        double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        if (!TextUtils.isEmpty(string)) {
            return z2 ? new zzajh(new zznp(null, Uri.parse(string), optDouble)) : this.zzRv.zza(string, new zzyu(this, z, optDouble, optBoolean, string));
        } else {
            zzc(0, z);
            return new zzajh(null);
        }
    }

    static zzaka zzb(zzajm<zzaka> zzajm) {
        try {
            return (zzaka) zzajm.get((long) ((Integer) zzbs.zzbL().zzd(zzmo.zzFz)).intValue(), TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            zzajc.zzc("InterruptedException occurred while waiting for video to load", e);
            Thread.currentThread().interrupt();
            return null;
        } catch (CancellationException | ExecutionException | TimeoutException e2) {
            zzajc.zzc("Exception occurred while waiting for video to load", e2);
            return null;
        }
    }

    private static Integer zzb(JSONObject jSONObject, String str) {
        try {
            jSONObject = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject.getInt("r"), jSONObject.getInt("g"), jSONObject.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    private final void zzc(zzpj zzpj, String str) {
        try {
            zzpt zzs = this.zzRw.zzs(zzpj.getCustomTemplateId());
            if (zzs != null) {
                zzs.zzb(zzpj, str);
            }
        } catch (RemoteException e) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 40);
            stringBuilder.append("Failed to call onCustomClick for asset ");
            stringBuilder.append(str);
            stringBuilder.append(".");
            zzajc.zzc(stringBuilder.toString(), e);
        }
    }

    private static String[] zzd(JSONObject jSONObject, String str) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        String[] strArr = new String[optJSONArray.length()];
        for (int i = 0; i < optJSONArray.length(); i++) {
            strArr[i] = optJSONArray.getString(i);
        }
        return strArr;
    }

    /* JADX WARNING: Removed duplicated region for block: B:52:0x012f A:{Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00e7 A:{Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00e6 A:{Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x015f  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x015f  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x015f  */
    private final com.google.android.gms.internal.zzaff zzgw() {
        /*
        r13 = this;
        r0 = 0;
        r1 = 0;
        r2 = r13.zzRB;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r2 == 0) goto L_0x000b;
    L_0x0006:
        r2 = r13.zzuP;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2.zzgt();	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
    L_0x000b:
        r2 = java.util.UUID.randomUUID();	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r11 = r2.toString();	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2 = r13.zzgx();	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r2 == 0) goto L_0x001b;
    L_0x0019:
        r8 = r1;
        goto L_0x003a;
    L_0x001b:
        r2 = new com.google.android.gms.internal.zzajg;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2.<init>();	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = new com.google.android.gms.internal.zzyw;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3.<init>(r13);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = new com.google.android.gms.internal.zzyo;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4.<init>(r13, r11, r3, r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r13.zzuP;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3.zza(r4);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = zzRj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r5 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2 = r2.get(r3, r5);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2 = (org.json.JSONObject) r2;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r8 = r2;
    L_0x003a:
        r2 = r13.zzgx();	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r2 != 0) goto L_0x00db;
    L_0x0040:
        if (r8 != 0) goto L_0x0044;
    L_0x0042:
        goto L_0x00db;
    L_0x0044:
        r2 = "template_id";
        r2 = r8.getString(r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r13.zzQQ;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r3.zzUj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r3.zzwj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r3 == 0) goto L_0x005b;
    L_0x0052:
        r3 = r13.zzQQ;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r3.zzUj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r3.zzwj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r3.zzIn;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        goto L_0x005c;
    L_0x005b:
        r3 = 0;
    L_0x005c:
        r4 = r13.zzQQ;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = r4.zzUj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = r4.zzwj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r4 == 0) goto L_0x006d;
    L_0x0064:
        r4 = r13.zzQQ;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = r4.zzUj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = r4.zzwj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = r4.zzIp;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        goto L_0x006e;
    L_0x006d:
        r4 = 0;
    L_0x006e:
        r5 = "2";
        r5 = r5.equals(r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r5 == 0) goto L_0x007c;
    L_0x0076:
        r2 = new com.google.android.gms.internal.zzzf;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2.<init>(r3, r4);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        goto L_0x00dc;
    L_0x007c:
        r5 = "1";
        r5 = r5.equals(r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r5 == 0) goto L_0x008a;
    L_0x0084:
        r2 = new com.google.android.gms.internal.zzzg;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2.<init>(r3, r4);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        goto L_0x00dc;
    L_0x008a:
        r4 = "3";
        r2 = r4.equals(r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r2 == 0) goto L_0x00d8;
    L_0x0092:
        r2 = "custom_template_id";
        r2 = r8.getString(r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = new com.google.android.gms.internal.zzajg;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4.<init>();	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r5 = com.google.android.gms.internal.zzagz.zzZr;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r6 = new com.google.android.gms.internal.zzyq;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r6.<init>(r13, r4, r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r5.post(r6);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r5 = zzRj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2 = r4.get(r5, r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r2 == 0) goto L_0x00b7;
    L_0x00b1:
        r2 = new com.google.android.gms.internal.zzzh;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2.<init>(r3);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        goto L_0x00dc;
    L_0x00b7:
        r2 = "No handler for custom template: ";
        r3 = "custom_template_id";
        r3 = r8.getString(r3);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = r3.length();	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r4 == 0) goto L_0x00ce;
    L_0x00c9:
        r2 = r2.concat(r3);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        goto L_0x00d4;
    L_0x00ce:
        r3 = new java.lang.String;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3.<init>(r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2 = r3;
    L_0x00d4:
        com.google.android.gms.internal.zzajc.e(r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        goto L_0x00db;
    L_0x00d8:
        r13.zzt(r0);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
    L_0x00db:
        r2 = r1;
    L_0x00dc:
        r3 = r13.zzgx();	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r3 != 0) goto L_0x012a;
    L_0x00e2:
        if (r2 == 0) goto L_0x012a;
    L_0x00e4:
        if (r8 != 0) goto L_0x00e7;
    L_0x00e6:
        goto L_0x012a;
    L_0x00e7:
        r3 = "tracking_urls_and_actions";
        r3 = r8.getJSONObject(r3);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = "impression_tracking_urls";
        r4 = zzd(r3, r4);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r4 != 0) goto L_0x00f7;
    L_0x00f5:
        r4 = r1;
        goto L_0x00fb;
    L_0x00f7:
        r4 = java.util.Arrays.asList(r4);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
    L_0x00fb:
        r13.zzRy = r4;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = "active_view";
        r3 = r3.optJSONObject(r4);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r13.zzRz = r3;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = "debug_signals";
        r3 = r8.optString(r3);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r13.zzRA = r3;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2 = r2.zza(r13, r8);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r12 = new com.google.android.gms.internal.zzoc;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = r13.mContext;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r5 = r13.zzRw;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r6 = r13.zzuP;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r7 = r13.zzIc;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r13.zzQQ;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r3.zzUj;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r10 = r3.zzvT;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r12;
        r9 = r2;
        r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r2.zzb(r12);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        goto L_0x012b;
    L_0x012a:
        r2 = r1;
    L_0x012b:
        r3 = r2 instanceof com.google.android.gms.internal.zznu;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        if (r3 == 0) goto L_0x0148;
    L_0x012f:
        r3 = r2;
        r3 = (com.google.android.gms.internal.zznu) r3;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = new com.google.android.gms.internal.zzyw;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4.<init>(r13);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r5 = new com.google.android.gms.internal.zzyr;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r5.<init>(r13, r3);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4.zzRW = r5;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3 = r13.zzuP;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4 = new com.google.android.gms.internal.zzys;	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r4.<init>(r13, r5);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        r3.zza(r4);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
    L_0x0148:
        r2 = r13.zza(r2);	 Catch:{ InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, InterruptedException | CancellationException | ExecutionException -> 0x015b, JSONException -> 0x0155, TimeoutException -> 0x0151, Exception -> 0x014d }
        return r2;
    L_0x014d:
        r2 = move-exception;
        r3 = "Error occured while doing native ads initialization.";
        goto L_0x0158;
    L_0x0151:
        r2 = move-exception;
        r3 = "Timeout when loading native ad.";
        goto L_0x0158;
    L_0x0155:
        r2 = move-exception;
        r3 = "Malformed native JSON response.";
    L_0x0158:
        com.google.android.gms.internal.zzajc.zzc(r3, r2);
    L_0x015b:
        r2 = r13.zzRx;
        if (r2 != 0) goto L_0x0162;
    L_0x015f:
        r13.zzt(r0);
    L_0x0162:
        r0 = r13.zza(r1);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzyn.zzgw():com.google.android.gms.internal.zzaff");
    }

    private static List<Drawable> zzj(List<zznp> list) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        for (zznp zzeg : list) {
            arrayList.add((Drawable) zzn.zzE(zzeg.zzeg()));
        }
        return arrayList;
    }

    public final /* synthetic */ Object call() throws Exception {
        return zzgw();
    }

    public final zzajm<zznp> zza(JSONObject jSONObject, String str, boolean z, boolean z2) throws JSONException {
        jSONObject = z ? jSONObject.getJSONObject(str) : jSONObject.optJSONObject(str);
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        return zza(jSONObject, z, z2);
    }

    public final List<zzajm<zznp>> zza(JSONObject jSONObject, String str, boolean z, boolean z2, boolean z3) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        ArrayList arrayList = new ArrayList();
        if (optJSONArray == null || optJSONArray.length() == 0) {
            zzc(0, false);
            return arrayList;
        }
        int length = z3 ? optJSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            arrayList.add(zza(jSONObject2, false, z2));
        }
        return arrayList;
    }

    public final Future<zznp> zza(JSONObject jSONObject, String str, boolean z) throws JSONException {
        jSONObject = jSONObject.getJSONObject(str);
        boolean optBoolean = jSONObject.optBoolean("require", true);
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        return zza(jSONObject, optBoolean, z);
    }

    public final zzajm<zzaka> zzc(JSONObject jSONObject, String str) throws JSONException {
        jSONObject = jSONObject.optJSONObject(str);
        if (jSONObject == null) {
            return new zzajh(null);
        }
        if (TextUtils.isEmpty(jSONObject.optString("vast_xml"))) {
            zzajc.zzaT("Required field 'vast_xml' is missing");
            return new zzajh(null);
        }
        zzyx zzyx = new zzyx(this.mContext, this.zzIc, this.zzQQ, this.zzsK, this.zzRw);
        zzajg zzajg = new zzajg();
        zzbs.zzbz();
        zzagz.runOnUiThread(new zzyy(zzyx, jSONObject, zzajg));
        return zzajg;
    }

    public final void zzc(int i, boolean z) {
        if (z) {
            zzt(i);
        }
    }

    public final zzajm<zznn> zzd(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return new zzajh(null);
        }
        String optString = optJSONObject.optString("text");
        int optInt = optJSONObject.optInt("text_size", -1);
        Integer zzb = zzb(optJSONObject, "text_color");
        Integer zzb2 = zzb(optJSONObject, "bg_color");
        int optInt2 = optJSONObject.optInt("animation_ms", 1000);
        int optInt3 = optJSONObject.optInt("presentation_ms", 4000);
        int i = (this.zzQQ.zzUj.zzwj == null || this.zzQQ.zzUj.zzwj.versionCode < 2) ? 1 : this.zzQQ.zzUj.zzwj.zzIq;
        boolean optBoolean = optJSONObject.optBoolean("allow_pub_rendering");
        List arrayList = new ArrayList();
        if (optJSONObject.optJSONArray("images") != null) {
            arrayList = zza(optJSONObject, "images", false, false, true);
        } else {
            arrayList.add(zza(optJSONObject, "image", false, false));
        }
        return zzaji.zza(zzaji.zzp(arrayList), new zzyt(this, optString, zzb2, zzb, optInt, optInt3, optInt2, i, optBoolean));
    }

    public final boolean zzgx() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzRx;
        }
        return z;
    }

    public final void zzt(int i) {
        synchronized (this.mLock) {
            this.zzRx = true;
            this.mErrorCode = i;
        }
    }
}
