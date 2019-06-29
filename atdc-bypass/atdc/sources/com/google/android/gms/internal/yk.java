package com.google.android.gms.internal;

import android.util.Base64;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.net.URI;
import java.util.LinkedHashMap;
import java.util.Map;

final class yk {
    private String protocol = null;
    private URI zzciP = null;
    private String zzcje = null;
    private Map<String, String> zzcjf = null;

    public yk(URI uri, String str, Map<String, String> map) {
        this.zzciP = uri;
        this.protocol = null;
        this.zzcjf = map;
        this.zzcje = zzJw();
    }

    private static String zzJw() {
        byte[] bArr = new byte[16];
        for (int i = 0; i < 16; i++) {
            bArr[i] = (byte) ((int) ((Math.random() * 255.0d) + FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE));
        }
        return Base64.encodeToString(bArr, 2);
    }

    private static String zza(LinkedHashMap<String, String> linkedHashMap) {
        Object str = new String();
        for (String str2 : linkedHashMap.keySet()) {
            String valueOf = String.valueOf(str);
            String str3 = (String) linkedHashMap.get(str2);
            StringBuilder stringBuilder = new StringBuilder(((String.valueOf(valueOf).length() + 4) + String.valueOf(str2).length()) + String.valueOf(str3).length());
            stringBuilder.append(valueOf);
            stringBuilder.append(str2);
            stringBuilder.append(": ");
            stringBuilder.append(str3);
            stringBuilder.append("\r\n");
            str = stringBuilder.toString();
        }
        return str;
    }

    public final byte[] zzJv() {
        Object obj;
        String path = this.zzciP.getPath();
        String query = this.zzciP.getQuery();
        path = String.valueOf(path);
        if (query == null) {
            obj = "";
        } else {
            String str = "?";
            query = String.valueOf(query);
            obj = query.length() != 0 ? str.concat(query) : new String(str);
        }
        query = String.valueOf(obj);
        Object concat = query.length() != 0 ? path.concat(query) : new String(path);
        obj = this.zzciP.getHost();
        if (this.zzciP.getPort() != -1) {
            query = String.valueOf(obj);
            int port = this.zzciP.getPort();
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(query).length() + 12);
            stringBuilder.append(query);
            stringBuilder.append(":");
            stringBuilder.append(port);
            obj = stringBuilder.toString();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("Host", obj);
        linkedHashMap.put("Upgrade", "websocket");
        linkedHashMap.put("Connection", "Upgrade");
        linkedHashMap.put("Sec-WebSocket-Version", "13");
        linkedHashMap.put("Sec-WebSocket-Key", this.zzcje);
        if (this.protocol != null) {
            linkedHashMap.put("Sec-WebSocket-Protocol", this.protocol);
        }
        if (this.zzcjf != null) {
            for (String str2 : this.zzcjf.keySet()) {
                if (!linkedHashMap.containsKey(str2)) {
                    linkedHashMap.put(str2, (String) this.zzcjf.get(str2));
                }
            }
        }
        StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(concat).length() + 15);
        stringBuilder2.append("GET ");
        stringBuilder2.append(concat);
        stringBuilder2.append(" HTTP/1.1\r\n");
        path = String.valueOf(stringBuilder2.toString());
        query = String.valueOf(zza(linkedHashMap));
        path = String.valueOf(query.length() != 0 ? path.concat(query) : new String(path)).concat("\r\n");
        byte[] bArr = new byte[path.getBytes().length];
        System.arraycopy(path.getBytes(), 0, bArr, 0, path.getBytes().length);
        return bArr;
    }
}
