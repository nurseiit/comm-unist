package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.roboguice.shaded.goole.common.base.Ascii;

public final class tn {
    private final List<String> zzcfp = new ArrayList();
    private int zzcfq;

    private tn(qr qrVar) throws DatabaseException {
        int i = 0;
        this.zzcfq = 0;
        Iterator it = qrVar.iterator();
        while (it.hasNext()) {
            this.zzcfp.add(((wp) it.next()).asString());
        }
        this.zzcfq = Math.max(1, this.zzcfp.size());
        while (i < this.zzcfp.size()) {
            this.zzcfq += zza((CharSequence) this.zzcfp.get(i));
            i++;
        }
        zzHy();
    }

    private final String zzHx() {
        String str = (String) this.zzcfp.remove(this.zzcfp.size() - 1);
        this.zzcfq -= zza(str);
        if (this.zzcfp.size() > 0) {
            this.zzcfq--;
        }
        return str;
    }

    private final void zzHy() throws DatabaseException {
        String valueOf;
        StringBuilder stringBuilder;
        if (this.zzcfq > 768) {
            valueOf = String.valueOf("Data has a key path longer than 768 bytes (");
            int i = this.zzcfq;
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 13);
            stringBuilder.append(valueOf);
            stringBuilder.append(i);
            stringBuilder.append(").");
            throw new DatabaseException(stringBuilder.toString());
        } else if (this.zzcfp.size() > 32) {
            Object obj;
            String valueOf2;
            valueOf = String.valueOf("Path specified exceeds the maximum depth that can be written (32) or object contains a cycle ");
            if (this.zzcfp.size() == 0) {
                obj = "";
            } else {
                valueOf2 = String.valueOf(zze("/", this.zzcfp));
                stringBuilder = new StringBuilder(String.valueOf(valueOf2).length() + 10);
                stringBuilder.append("in path '");
                stringBuilder.append(valueOf2);
                stringBuilder.append("'");
                obj = stringBuilder.toString();
            }
            valueOf2 = String.valueOf(obj);
            throw new DatabaseException(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        }
    }

    private static int zza(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt <= Ascii.MAX) {
                i2++;
            } else if (charAt <= 2047) {
                i2 += 2;
            } else if (Character.isHighSurrogate(charAt)) {
                i2 += 4;
                i++;
            } else {
                i2 += 3;
            }
            i++;
        }
        return i2;
    }

    public static void zza(qr qrVar, Object obj) throws DatabaseException {
        new tn(qrVar).zzai(obj);
    }

    private final void zzai(Object obj) throws DatabaseException {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            for (String str : map.keySet()) {
                if (!str.startsWith(".")) {
                    zzgS(str);
                    zzai(map.get(str));
                    zzHx();
                }
            }
            return;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            for (int i = 0; i < list.size(); i++) {
                zzgS(Integer.toString(i));
                zzai(list.get(i));
                zzHx();
            }
        }
    }

    private static String zze(String str, List<String> list) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) {
                stringBuilder.append(str);
            }
            stringBuilder.append((String) list.get(i));
        }
        return stringBuilder.toString();
    }

    private final void zzgS(String str) throws DatabaseException {
        if (this.zzcfp.size() > 0) {
            this.zzcfq++;
        }
        this.zzcfp.add(str);
        this.zzcfq += zza(str);
        zzHy();
    }
}
