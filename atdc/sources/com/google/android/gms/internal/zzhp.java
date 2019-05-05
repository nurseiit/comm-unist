package com.google.android.gms.internal;

import java.io.IOException;
import java.text.Normalizer;
import java.text.Normalizer.Form;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

@zzzn
public final class zzhp {
    private final int zzyY;
    private final zzhf zzza;
    private String zzzi;
    private String zzzj;
    private final boolean zzzk = false;
    private final int zzzl;
    private final int zzzm;

    public zzhp(int i, int i2, int i3) {
        this.zzyY = i;
        if (i2 > 64 || i2 < 0) {
            this.zzzl = 64;
        } else {
            this.zzzl = i2;
        }
        if (i3 <= 0) {
            this.zzzm = 1;
        } else {
            this.zzzm = i3;
        }
        this.zzza = new zzho(this.zzzl);
    }

    private final boolean zza(String str, HashSet<String> hashSet) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return true;
        }
        for (String str2 : split) {
            String str22;
            int i;
            Object obj;
            int i2;
            if (str22.indexOf("'") != -1) {
                StringBuilder stringBuilder = new StringBuilder(str22);
                i = 1;
                obj = null;
                while (true) {
                    i2 = i + 2;
                    if (i2 > stringBuilder.length()) {
                        break;
                    }
                    if (stringBuilder.charAt(i) == '\'') {
                        if (stringBuilder.charAt(i - 1) != ' ') {
                            int i3 = i + 1;
                            if ((stringBuilder.charAt(i3) == 's' || stringBuilder.charAt(i3) == 'S') && (i2 == stringBuilder.length() || stringBuilder.charAt(i2) == ' ')) {
                                stringBuilder.insert(i, ' ');
                                i = i2;
                                obj = 1;
                            }
                        }
                        stringBuilder.setCharAt(i, ' ');
                        obj = 1;
                    }
                    i++;
                }
                String stringBuilder2 = obj != null ? stringBuilder.toString() : null;
                if (stringBuilder2 != null) {
                    this.zzzj = stringBuilder2;
                    str22 = stringBuilder2;
                }
            }
            String[] zzd = zzhj.zzd(str22, true);
            if (zzd.length >= this.zzzm) {
                for (int i4 = 0; i4 < zzd.length; i4++) {
                    Object obj2;
                    obj = "";
                    for (i = 0; i < this.zzzm; i++) {
                        i2 = i4 + i;
                        if (i2 >= zzd.length) {
                            obj2 = null;
                            break;
                        }
                        if (i > 0) {
                            obj = String.valueOf(obj).concat(" ");
                        }
                        String valueOf = String.valueOf(obj);
                        String valueOf2 = String.valueOf(zzd[i2]);
                        obj = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                    }
                    obj2 = 1;
                    if (obj2 == null) {
                        break;
                    }
                    hashSet.add(obj);
                    if (hashSet.size() >= this.zzyY) {
                        return false;
                    }
                }
                if (hashSet.size() >= this.zzyY) {
                    return false;
                }
            }
        }
        return true;
    }

    public final String zza(ArrayList<String> arrayList, ArrayList<zzhe> arrayList2) {
        Collections.sort(arrayList2, new zzhq(this));
        HashSet hashSet = new HashSet();
        int i = 0;
        while (i < arrayList2.size() && zza(Normalizer.normalize((CharSequence) arrayList.get(((zzhe) arrayList2.get(i)).zzcV()), Form.NFKC).toLowerCase(Locale.US), hashSet)) {
            i++;
        }
        zzhi zzhi = new zzhi();
        this.zzzi = "";
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                zzhi.write(this.zzza.zzy((String) it.next()));
            } catch (IOException e) {
                zzajc.zzb("Error while writing hash to byteStream", e);
            }
        }
        return zzhi.toString();
    }
}
