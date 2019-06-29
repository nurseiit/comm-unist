package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.common.zze;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzaeg implements zzaet {
    private final Context mContext;
    private final Object mLock;
    private final zzaeq zzVu;
    private final adt zzWX;
    private final LinkedHashMap<String, aeb> zzWY;
    private final zzael zzWZ;
    @VisibleForTesting
    boolean zzXa;
    private HashSet<String> zzXb;
    private boolean zzXc;
    private boolean zzXd;
    private boolean zzXe;

    public zzaeg(Context context, zzaje zzaje, zzaai zzaai) {
        this(context, zzaje, zzaai, new zzael());
    }

    @VisibleForTesting
    private zzaeg(Context context, zzaje zzaje, zzaai zzaai, zzael zzael) {
        this.mLock = new Object();
        this.zzXb = new HashSet();
        this.zzXc = false;
        this.zzXd = false;
        this.zzXe = false;
        zzbo.zzb(zzaai.zzTJ, (Object) "SafeBrowsing config is not present.");
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.mContext = context;
        this.zzWY = new LinkedHashMap();
        this.zzWZ = zzael;
        this.zzVu = zzaai.zzTJ;
        for (String toLowerCase : this.zzVu.zzXv) {
            this.zzXb.add(toLowerCase.toLowerCase(Locale.ENGLISH));
        }
        this.zzXb.remove("cookie".toLowerCase(Locale.ENGLISH));
        adt adt = new adt();
        adt.zzcsJ = Integer.valueOf(8);
        adt.url = zzaai.zzPi;
        adt.zzcsL = zzaai.zzPi;
        adt.zzcsN = new adu();
        adt.zzcsN.zzXr = this.zzVu.zzXr;
        aec aec = new aec();
        aec.zzctu = zzaje.zzaP;
        zze.zzoW();
        long zzau = (long) zze.zzau(this.mContext);
        if (zzau > 0) {
            aec.zzctv = Long.valueOf(zzau);
        }
        adt.zzcsX = aec;
        this.zzWX = adt;
    }

    @Nullable
    private final aeb zzaB(String str) {
        aeb aeb;
        synchronized (this.mLock) {
            aeb = (aeb) this.zzWY.get(str);
        }
        return aeb;
    }

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final void send() {
        Object obj = (!(this.zzXa && this.zzVu.zzXx) && (!(this.zzXe && this.zzVu.zzXw) && (this.zzXa || !this.zzVu.zzXu))) ? null : 1;
        if (obj != null) {
            synchronized (this.mLock) {
                this.zzWX.zzcsO = new aeb[this.zzWY.size()];
                this.zzWY.values().toArray(this.zzWX.zzcsO);
                if (zzaes.isEnabled()) {
                    String valueOf = String.valueOf(this.zzWX.url);
                    String valueOf2 = String.valueOf(this.zzWX.zzcsP);
                    StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 53) + String.valueOf(valueOf2).length());
                    stringBuilder.append("Sending SB report\n  url: ");
                    stringBuilder.append(valueOf);
                    stringBuilder.append("\n  clickUrl: ");
                    stringBuilder.append(valueOf2);
                    stringBuilder.append("\n  resources: \n");
                    StringBuilder stringBuilder2 = new StringBuilder(stringBuilder.toString());
                    for (aeb aeb : this.zzWX.zzcsO) {
                        stringBuilder2.append("    [");
                        stringBuilder2.append(aeb.zzctt.length);
                        stringBuilder2.append("] ");
                        stringBuilder2.append(aeb.url);
                    }
                    zzaes.zzaC(stringBuilder2.toString());
                }
                zzajm zza = new zzaie(this.mContext).zza(1, this.zzVu.zzXs, null, adp.zzc(this.zzWX));
                if (zzaes.isEnabled()) {
                    zza.zzc(new zzaej(this));
                }
            }
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:36:0x00b0 */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:36|37|48) */
    /* JADX WARNING: Missing block: B:14:0x0026, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:37:?, code skipped:
            com.google.android.gms.internal.zzaes.zzaC("Cannot convert string to bytes, skip header.");
     */
    public final void zza(java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8, int r9) {
        /*
        r6 = this;
        r0 = r6.mLock;
        monitor-enter(r0);
        r1 = 3;
        if (r9 != r1) goto L_0x000d;
    L_0x0006:
        r2 = 1;
        r6.zzXe = r2;	 Catch:{ all -> 0x000a }
        goto L_0x000d;
    L_0x000a:
        r7 = move-exception;
        goto L_0x00ca;
    L_0x000d:
        r2 = r6.zzWY;	 Catch:{ all -> 0x000a }
        r2 = r2.containsKey(r7);	 Catch:{ all -> 0x000a }
        if (r2 == 0) goto L_0x0027;
    L_0x0015:
        if (r9 != r1) goto L_0x0025;
    L_0x0017:
        r8 = r6.zzWY;	 Catch:{ all -> 0x000a }
        r7 = r8.get(r7);	 Catch:{ all -> 0x000a }
        r7 = (com.google.android.gms.internal.aeb) r7;	 Catch:{ all -> 0x000a }
        r8 = java.lang.Integer.valueOf(r9);	 Catch:{ all -> 0x000a }
        r7.zzcts = r8;	 Catch:{ all -> 0x000a }
    L_0x0025:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x0027:
        r1 = new com.google.android.gms.internal.aeb;	 Catch:{ all -> 0x000a }
        r1.<init>();	 Catch:{ all -> 0x000a }
        r9 = java.lang.Integer.valueOf(r9);	 Catch:{ all -> 0x000a }
        r1.zzcts = r9;	 Catch:{ all -> 0x000a }
        r9 = r6.zzWY;	 Catch:{ all -> 0x000a }
        r9 = r9.size();	 Catch:{ all -> 0x000a }
        r9 = java.lang.Integer.valueOf(r9);	 Catch:{ all -> 0x000a }
        r1.zzbuM = r9;	 Catch:{ all -> 0x000a }
        r1.url = r7;	 Catch:{ all -> 0x000a }
        r9 = new com.google.android.gms.internal.adw;	 Catch:{ all -> 0x000a }
        r9.<init>();	 Catch:{ all -> 0x000a }
        r1.zzctn = r9;	 Catch:{ all -> 0x000a }
        r9 = r6.zzXb;	 Catch:{ all -> 0x000a }
        r9 = r9.size();	 Catch:{ all -> 0x000a }
        if (r9 <= 0) goto L_0x00c3;
    L_0x004f:
        if (r8 == 0) goto L_0x00c3;
    L_0x0051:
        r9 = new java.util.LinkedList;	 Catch:{ all -> 0x000a }
        r9.<init>();	 Catch:{ all -> 0x000a }
        r8 = r8.entrySet();	 Catch:{ all -> 0x000a }
        r8 = r8.iterator();	 Catch:{ all -> 0x000a }
    L_0x005e:
        r2 = r8.hasNext();	 Catch:{ all -> 0x000a }
        if (r2 == 0) goto L_0x00b6;
    L_0x0064:
        r2 = r8.next();	 Catch:{ all -> 0x000a }
        r2 = (java.util.Map.Entry) r2;	 Catch:{ all -> 0x000a }
        r3 = r2.getKey();	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        if (r3 == 0) goto L_0x0077;
    L_0x0070:
        r3 = r2.getKey();	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r3 = (java.lang.String) r3;	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        goto L_0x0079;
    L_0x0077:
        r3 = "";
    L_0x0079:
        r4 = r2.getValue();	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        if (r4 == 0) goto L_0x0086;
    L_0x007f:
        r2 = r2.getValue();	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r2 = (java.lang.String) r2;	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        goto L_0x0088;
    L_0x0086:
        r2 = "";
    L_0x0088:
        r4 = java.util.Locale.ENGLISH;	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r4 = r3.toLowerCase(r4);	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r5 = r6.zzXb;	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r4 = r5.contains(r4);	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        if (r4 != 0) goto L_0x0097;
    L_0x0096:
        goto L_0x005e;
    L_0x0097:
        r4 = new com.google.android.gms.internal.adv;	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r4.<init>();	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r5 = "UTF-8";
        r3 = r3.getBytes(r5);	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r4.zzcsZ = r3;	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r3 = "UTF-8";
        r2 = r2.getBytes(r3);	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r4.zzcnR = r2;	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        r9.add(r4);	 Catch:{ UnsupportedEncodingException -> 0x00b0 }
        goto L_0x005e;
    L_0x00b0:
        r2 = "Cannot convert string to bytes, skip header.";
        com.google.android.gms.internal.zzaes.zzaC(r2);	 Catch:{ all -> 0x000a }
        goto L_0x005e;
    L_0x00b6:
        r8 = r9.size();	 Catch:{ all -> 0x000a }
        r8 = new com.google.android.gms.internal.adv[r8];	 Catch:{ all -> 0x000a }
        r9.toArray(r8);	 Catch:{ all -> 0x000a }
        r9 = r1.zzctn;	 Catch:{ all -> 0x000a }
        r9.zzctb = r8;	 Catch:{ all -> 0x000a }
    L_0x00c3:
        r8 = r6.zzWY;	 Catch:{ all -> 0x000a }
        r8.put(r7, r1);	 Catch:{ all -> 0x000a }
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x00ca:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaeg.zza(java.lang.String, java.util.Map, int):void");
    }

    public final void zzaA(String str) {
        synchronized (this.mLock) {
            this.zzWX.zzcsP = str;
        }
    }

    public final zzaeq zzgY() {
        return this.zzVu;
    }

    public final boolean zzgZ() {
        return zzq.zzsc() && this.zzVu.zzXt && !this.zzXd;
    }

    public final void zzha() {
        this.zzXc = true;
    }

    public final void zzhb() {
        synchronized (this.mLock) {
            zzajm zza = this.zzWZ.zza(this.mContext, this.zzWY.keySet());
            zza.zzc(new zzaei(this, zza));
        }
    }

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final void zzi(@Nullable Map<String, String> map) throws JSONException {
        if (map != null) {
            for (String str : map.keySet()) {
                String str2;
                JSONArray optJSONArray = new JSONObject((String) map.get(str2)).optJSONArray("matches");
                if (optJSONArray != null) {
                    synchronized (this.mLock) {
                        int length = optJSONArray.length();
                        aeb zzaB = zzaB(str2);
                        if (zzaB == null) {
                            String str3 = "Cannot find the corresponding resource object for ";
                            str2 = String.valueOf(str2);
                            zzaes.zzaC(str2.length() != 0 ? str3.concat(str2) : new String(str3));
                        } else {
                            zzaB.zzctt = new String[length];
                            int i = 0;
                            for (int i2 = 0; i2 < length; i2++) {
                                zzaB.zzctt[i2] = optJSONArray.getJSONObject(i2).getString("threat_type");
                            }
                            boolean z = this.zzXa;
                            if (length > 0) {
                                i = 1;
                            }
                            this.zzXa = i | z;
                        }
                    }
                }
            }
        }
    }

    public final void zzk(View view) {
        if (this.zzVu.zzXt && !this.zzXd) {
            zzbs.zzbz();
            Bitmap zzm = zzagz.zzm(view);
            if (zzm == null) {
                zzaes.zzaC("Failed to capture the webview bitmap.");
                return;
            }
            this.zzXd = true;
            zzagz.zzb(new zzaeh(this, zzm));
        }
    }
}
