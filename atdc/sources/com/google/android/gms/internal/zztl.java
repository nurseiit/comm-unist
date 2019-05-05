package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcel;
import android.support.annotation.Nullable;
import android.util.Base64;
import com.bumptech.glide.load.Key;
import com.google.android.gms.ads.internal.zzbs;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@zzzn
public final class zztl {
    private final Map<zztm, zztn> zzKo = new HashMap();
    private final LinkedList<zztm> zzKp = new LinkedList();
    @Nullable
    private zzsi zzKq;

    private static String[] zzY(String str) {
        try {
            String[] split = str.split("\u0000");
            for (int i = 0; i < split.length; i++) {
                split[i] = new String(Base64.decode(split[i], 0), Key.STRING_CHARSET_NAME);
            }
            return split;
        } catch (UnsupportedEncodingException unused) {
            return new String[0];
        }
    }

    private static boolean zzZ(String str) {
        try {
            return Pattern.matches((String) zzbs.zzbL().zzd(zzmo.zzEf), str);
        } catch (RuntimeException e) {
            zzbs.zzbD().zza(e, "InterstitialAdPool.isExcludedAdUnit");
            return false;
        }
    }

    private static void zza(String str, zztm zztm) {
        if (zzajc.zzz(2)) {
            zzafr.v(String.format(str, new Object[]{zztm}));
        }
    }

    private static String zzaa(String str) {
        try {
            Matcher matcher = Pattern.compile("([^/]+/[0-9]+).*").matcher(str);
            if (matcher.matches()) {
                return matcher.group(1);
            }
        } catch (RuntimeException unused) {
        }
        return str;
    }

    private static void zzc(Bundle bundle, String str) {
        while (true) {
            String[] split = str.split("/", 2);
            if (split.length != 0) {
                String str2 = split[0];
                if (split.length == 1) {
                    bundle.remove(str2);
                    return;
                }
                bundle = bundle.getBundle(str2);
                if (bundle != null) {
                    str = split[1];
                } else {
                    return;
                }
            }
            return;
        }
    }

    private final String zzeH() {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            Iterator it = this.zzKp.iterator();
            while (it.hasNext()) {
                stringBuilder.append(Base64.encodeToString(((zztm) it.next()).toString().getBytes(Key.STRING_CHARSET_NAME), 0));
                if (it.hasNext()) {
                    stringBuilder.append("\u0000");
                }
            }
            return stringBuilder.toString();
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    static Set<String> zzi(zzir zzir) {
        HashSet hashSet = new HashSet();
        hashSet.addAll(zzir.extras.keySet());
        Bundle bundle = zzir.zzzX.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle != null) {
            hashSet.addAll(bundle.keySet());
        }
        return hashSet;
    }

    static zzir zzj(zzir zzir) {
        zzir = zzl(zzir);
        String str = "_skipMediation";
        Bundle bundle = zzir.zzzX.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle != null) {
            bundle.putBoolean(str, true);
        }
        zzir.extras.putBoolean(str, true);
        return zzir;
    }

    private static zzir zzk(zzir zzir) {
        zzir = zzl(zzir);
        for (String str : ((String) zzbs.zzbL().zzd(zzmo.zzEb)).split(",")) {
            zzc(zzir.zzzX, str);
            String str2 = "com.google.ads.mediation.admob.AdMobAdapter/";
            if (str.startsWith(str2)) {
                zzc(zzir.extras, str.replaceFirst(str2, ""));
            }
        }
        return zzir;
    }

    private static zzir zzl(zzir zzir) {
        Parcel obtain = Parcel.obtain();
        zzir.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        zzir = (zzir) zzir.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzDR)).booleanValue()) {
            zzir.zzh(zzir);
        }
        return zzir;
    }

    /* Access modifiers changed, original: final */
    @Nullable
    public final zzto zza(zzir zzir, String str) {
        if (zzZ(str)) {
            return null;
        }
        int i = new zzacc(this.zzKq.getApplicationContext()).zzgM().zzVS;
        zzir = zzk(zzir);
        str = zzaa(str);
        zztm zztm = new zztm(zzir, str, i);
        zztn zztn = (zztn) this.zzKo.get(zztm);
        if (zztn == null) {
            zza("Interstitial pool created at %s.", zztm);
            zztn = new zztn(zzir, str, i);
            this.zzKo.put(zztm, zztn);
        }
        this.zzKp.remove(zztm);
        this.zzKp.add(zztm);
        zztn.zzeL();
        while (true) {
            if (this.zzKp.size() <= ((Integer) zzbs.zzbL().zzd(zzmo.zzEc)).intValue()) {
                break;
            }
            zztm zztm2 = (zztm) this.zzKp.remove();
            zztn zztn2 = (zztn) this.zzKo.get(zztm2);
            zza("Evicting interstitial queue for %s.", zztm2);
            while (zztn2.size() > 0) {
                zzto zzm = zztn2.zzm(null);
                if (zzm.zzKz) {
                    zztp.zzeN().zzeP();
                }
                zzm.zzKv.zzbb();
            }
            this.zzKo.remove(zztm2);
        }
        while (zztn.size() > 0) {
            zzto zzm2 = zztn.zzm(zzir);
            if (zzm2.zzKz) {
                if (zzbs.zzbF().currentTimeMillis() - zzm2.zzKy > ((long) ((Integer) zzbs.zzbL().zzd(zzmo.zzEe)).intValue()) * 1000) {
                    zza("Expired interstitial at %s.", zztm);
                    zztp.zzeN().zzeO();
                }
            }
            Object obj = zzm2.zzKw != null ? " (inline) " : " ";
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(obj).length() + 34);
            stringBuilder.append("Pooled interstitial");
            stringBuilder.append(obj);
            stringBuilder.append("returned at %s.");
            zza(stringBuilder.toString(), zztm);
            return zzm2;
        }
        return null;
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzsi zzsi) {
        if (this.zzKq == null) {
            this.zzKq = zzsi.zzeF();
            if (this.zzKq != null) {
                int i = 0;
                SharedPreferences sharedPreferences = this.zzKq.getApplicationContext().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0);
                while (this.zzKp.size() > 0) {
                    zztm zztm = (zztm) this.zzKp.remove();
                    zztn zztn = (zztn) this.zzKo.get(zztm);
                    zza("Flushing interstitial queue for %s.", zztm);
                    while (zztn.size() > 0) {
                        zztn.zzm(null).zzKv.zzbb();
                    }
                    this.zzKo.remove(zztm);
                }
                try {
                    HashMap hashMap = new HashMap();
                    for (Entry entry : sharedPreferences.getAll().entrySet()) {
                        if (!((String) entry.getKey()).equals("PoolKeys")) {
                            zztr zzab = zztr.zzab((String) entry.getValue());
                            zztm zztm2 = new zztm(zzab.zzuT, zzab.zztV, zzab.zzKt);
                            if (!this.zzKo.containsKey(zztm2)) {
                                this.zzKo.put(zztm2, new zztn(zzab.zzuT, zzab.zztV, zzab.zzKt));
                                hashMap.put(zztm2.toString(), zztm2);
                                zza("Restored interstitial queue for %s.", zztm2);
                            }
                        }
                    }
                    String[] zzY = zzY(sharedPreferences.getString("PoolKeys", ""));
                    int length = zzY.length;
                    while (i < length) {
                        zztm zztm3 = (zztm) hashMap.get(zzY[i]);
                        if (this.zzKo.containsKey(zztm3)) {
                            this.zzKp.add(zztm3);
                        }
                        i++;
                    }
                } catch (IOException | RuntimeException e) {
                    zzbs.zzbD().zza(e, "InterstitialAdPool.restore");
                    zzajc.zzc("Malformed preferences value for InterstitialAdPool.", e);
                    this.zzKo.clear();
                    this.zzKp.clear();
                }
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzb(zzir zzir, String str) {
        if (this.zzKq != null) {
            int i = new zzacc(this.zzKq.getApplicationContext()).zzgM().zzVS;
            zzir zzk = zzk(zzir);
            str = zzaa(str);
            zztm zztm = new zztm(zzk, str, i);
            zztn zztn = (zztn) this.zzKo.get(zztm);
            if (zztn == null) {
                zza("Interstitial pool created at %s.", zztm);
                zztn = new zztn(zzk, str, i);
                this.zzKo.put(zztm, zztn);
            }
            zztn.zza(this.zzKq, zzir);
            zztn.zzeL();
            zza("Inline entry added to the queue at %s.", zztm);
        }
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Missing block: B:8:0x002f, code skipped:
            r5 = r1.size();
     */
    public final void zzeG() {
        /*
        r9 = this;
        r0 = r9.zzKq;
        if (r0 != 0) goto L_0x0005;
    L_0x0004:
        return;
    L_0x0005:
        r0 = r9.zzKo;
        r0 = r0.entrySet();
        r0 = r0.iterator();
    L_0x000f:
        r1 = r0.hasNext();
        r2 = 0;
        if (r1 == 0) goto L_0x0089;
    L_0x0016:
        r1 = r0.next();
        r1 = (java.util.Map.Entry) r1;
        r3 = r1.getKey();
        r3 = (com.google.android.gms.internal.zztm) r3;
        r1 = r1.getValue();
        r1 = (com.google.android.gms.internal.zztn) r1;
        r4 = 2;
        r5 = com.google.android.gms.internal.zzajc.zzz(r4);
        if (r5 == 0) goto L_0x0056;
    L_0x002f:
        r5 = r1.size();
        r6 = r1.zzeJ();
        if (r6 >= r5) goto L_0x0056;
    L_0x0039:
        r7 = "Loading %s/%s pooled interstitials for %s.";
        r8 = 3;
        r8 = new java.lang.Object[r8];
        r6 = r5 - r6;
        r6 = java.lang.Integer.valueOf(r6);
        r8[r2] = r6;
        r5 = java.lang.Integer.valueOf(r5);
        r6 = 1;
        r8[r6] = r5;
        r8[r4] = r3;
        r4 = java.lang.String.format(r7, r8);
        com.google.android.gms.internal.zzafr.v(r4);
    L_0x0056:
        r4 = r1.zzeK();
        r4 = r4 + r2;
    L_0x005b:
        r2 = r1.size();
        r5 = com.google.android.gms.internal.zzmo.zzEd;
        r6 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r5 = r6.zzd(r5);
        r5 = (java.lang.Integer) r5;
        r5 = r5.intValue();
        if (r2 >= r5) goto L_0x0081;
    L_0x0071:
        r2 = "Pooling and loading one new interstitial for %s.";
        zza(r2, r3);
        r2 = r9.zzKq;
        r2 = r1.zzb(r2);
        if (r2 == 0) goto L_0x005b;
    L_0x007e:
        r4 = r4 + 1;
        goto L_0x005b;
    L_0x0081:
        r1 = com.google.android.gms.internal.zztp.zzeN();
        r1.zzn(r4);
        goto L_0x000f;
    L_0x0089:
        r0 = r9.zzKq;
        if (r0 == 0) goto L_0x00ea;
    L_0x008d:
        r0 = r9.zzKq;
        r0 = r0.getApplicationContext();
        r1 = "com.google.android.gms.ads.internal.interstitial.InterstitialAdPool";
        r0 = r0.getSharedPreferences(r1, r2);
        r0 = r0.edit();
        r0.clear();
        r1 = r9.zzKo;
        r1 = r1.entrySet();
        r1 = r1.iterator();
    L_0x00aa:
        r2 = r1.hasNext();
        if (r2 == 0) goto L_0x00de;
    L_0x00b0:
        r2 = r1.next();
        r2 = (java.util.Map.Entry) r2;
        r3 = r2.getKey();
        r3 = (com.google.android.gms.internal.zztm) r3;
        r2 = r2.getValue();
        r2 = (com.google.android.gms.internal.zztn) r2;
        r4 = r2.zzeM();
        if (r4 == 0) goto L_0x00aa;
    L_0x00c8:
        r4 = new com.google.android.gms.internal.zztr;
        r4.<init>(r2);
        r2 = r4.zzeW();
        r4 = r3.toString();
        r0.putString(r4, r2);
        r2 = "Saved interstitial queue for %s.";
        zza(r2, r3);
        goto L_0x00aa;
    L_0x00de:
        r1 = "PoolKeys";
        r2 = r9.zzeH();
        r0.putString(r1, r2);
        r0.apply();
    L_0x00ea:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zztl.zzeG():void");
    }
}
