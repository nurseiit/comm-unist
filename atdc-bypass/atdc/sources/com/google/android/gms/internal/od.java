package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

final class od implements pj {
    private static long zzcaq;
    private final wl zzbZE;
    private ol zzcar;
    private pg zzcas;
    private oe zzcat;
    private int zzcau = og.zzcay;

    public od(oj ojVar, ol olVar, String str, oe oeVar, String str2) {
        long j = zzcaq;
        zzcaq = j + 1;
        this.zzcar = olVar;
        this.zzcat = oeVar;
        StringBuilder stringBuilder = new StringBuilder(25);
        stringBuilder.append("conn_");
        stringBuilder.append(j);
        this.zzbZE = new wl(ojVar.zzFT(), "Connection", stringBuilder.toString());
        this.zzcas = new pg(ojVar, olVar, str, this, str2);
    }

    private final void zza(of ofVar) {
        if (this.zzcau != og.zzcaA) {
            if (this.zzbZE.zzIH()) {
                this.zzbZE.zzb("closing realtime connection", null, new Object[0]);
            }
            this.zzcau = og.zzcaA;
            if (this.zzcas != null) {
                this.zzcas.close();
                this.zzcas = null;
            }
            this.zzcat.zzb(ofVar);
        }
    }

    public final void close() {
        zza(of.OTHER);
    }

    public final void open() {
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb("Opening a connection", null, new Object[0]);
        }
        this.zzcas.open();
    }

    public final void zza(Map<String, Object> map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("t", "d");
        hashMap.put("d", map);
        if (this.zzcau != og.zzcaz) {
            this.zzbZE.zzb("Tried to send on an unconnected connection", null, new Object[0]);
            return;
        }
        wl wlVar;
        String str;
        Object[] objArr;
        if (z) {
            wlVar = this.zzbZE;
            str = "Sending data (contents hidden)";
            objArr = new Object[0];
        } else {
            wlVar = this.zzbZE;
            str = "Sending data: %s";
            objArr = new Object[]{hashMap};
        }
        wlVar.zzb(str, null, objArr);
        this.zzcas.send(hashMap);
    }

    public final void zzaA(boolean z) {
        wl wlVar;
        String str;
        this.zzcas = null;
        if (z || this.zzcau != og.zzcay) {
            if (this.zzbZE.zzIH()) {
                wlVar = this.zzbZE;
                str = "Realtime connection lost";
            }
            zza(of.OTHER);
        }
        if (this.zzbZE.zzIH()) {
            wlVar = this.zzbZE;
            str = "Realtime connection failed";
        }
        zza(of.OTHER);
        wlVar.zzb(str, null, new Object[0]);
        zza(of.OTHER);
    }

    public final void zzz(Map<String, Object> map) {
        wl wlVar;
        String str;
        String valueOf;
        try {
            String str2 = (String) map.get("t");
            Map map2;
            String valueOf2;
            wl wlVar2;
            if (str2 == null) {
                if (this.zzbZE.zzIH()) {
                    wlVar = this.zzbZE;
                    str = "Failed to parse server message: missing message type:";
                    valueOf = String.valueOf(map.toString());
                    wlVar.zzb(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), null, new Object[0]);
                }
                zza(of.OTHER);
            } else if (str2.equals("d")) {
                map2 = (Map) map.get("d");
                if (this.zzbZE.zzIH()) {
                    wlVar = this.zzbZE;
                    str = "received data message: ";
                    valueOf2 = String.valueOf(map2.toString());
                    wlVar.zzb(valueOf2.length() != 0 ? str.concat(valueOf2) : new String(str), null, new Object[0]);
                }
                this.zzcat.zzA(map2);
            } else if (str2.equals("c")) {
                map2 = (Map) map.get("d");
                if (this.zzbZE.zzIH()) {
                    wlVar = this.zzbZE;
                    str = "Got control message: ";
                    valueOf2 = String.valueOf(map2.toString());
                    wlVar.zzb(valueOf2.length() != 0 ? str.concat(valueOf2) : new String(str), null, new Object[0]);
                }
                try {
                    str2 = (String) map2.get("t");
                    if (str2 != null) {
                        of ofVar;
                        if (str2.equals("s")) {
                            valueOf = (String) map2.get("d");
                            if (this.zzbZE.zzIH()) {
                                this.zzbZE.zzb("Connection shutdown command received. Shutting down...", null, new Object[0]);
                            }
                            this.zzcat.zzgE(valueOf);
                            ofVar = of.OTHER;
                        } else if (str2.equals("r")) {
                            valueOf = (String) map2.get("d");
                            if (this.zzbZE.zzIH()) {
                                wlVar = this.zzbZE;
                                str = String.valueOf(this.zzcar.getHost());
                                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 62) + String.valueOf(valueOf).length());
                                stringBuilder.append("Got a reset; killing connection to ");
                                stringBuilder.append(str);
                                stringBuilder.append("; Updating internalHost to ");
                                stringBuilder.append(valueOf);
                                wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
                            }
                            this.zzcat.zzgD(valueOf);
                            ofVar = of.SERVER_RESET;
                        } else if (str2.equals("h")) {
                            map2 = (Map) map2.get("d");
                            long longValue = ((Long) map2.get("ts")).longValue();
                            this.zzcat.zzgD((String) map2.get("h"));
                            valueOf = (String) map2.get("s");
                            if (this.zzcau == og.zzcay) {
                                if (this.zzbZE.zzIH()) {
                                    this.zzbZE.zzb("realtime connection established", null, new Object[0]);
                                }
                                this.zzcau = og.zzcaz;
                                this.zzcat.zzc(longValue, valueOf);
                                return;
                            }
                            return;
                        } else if (this.zzbZE.zzIH()) {
                            wlVar2 = this.zzbZE;
                            str = "Ignoring unknown control message: ";
                            str2 = String.valueOf(str2);
                            wlVar2.zzb(str2.length() != 0 ? str.concat(str2) : new String(str), null, new Object[0]);
                            return;
                        }
                        zza(ofVar);
                        return;
                    }
                    if (this.zzbZE.zzIH()) {
                        wlVar = this.zzbZE;
                        str = "Got invalid control message: ";
                        valueOf = String.valueOf(map2.toString());
                        wlVar.zzb(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), null, new Object[0]);
                    }
                    zza(of.OTHER);
                } catch (ClassCastException e) {
                    if (this.zzbZE.zzIH()) {
                        wlVar = this.zzbZE;
                        str = "Failed to parse control message: ";
                        valueOf = String.valueOf(e.toString());
                        wlVar.zzb(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), null, new Object[0]);
                    }
                    zza(of.OTHER);
                }
            } else if (this.zzbZE.zzIH()) {
                wlVar2 = this.zzbZE;
                str = "Ignoring unknown server message type: ";
                str2 = String.valueOf(str2);
                wlVar2.zzb(str2.length() != 0 ? str.concat(str2) : new String(str), null, new Object[0]);
            }
        } catch (ClassCastException e2) {
            if (this.zzbZE.zzIH()) {
                wlVar = this.zzbZE;
                str = "Failed to parse server message: ";
                valueOf = String.valueOf(e2.toString());
                wlVar.zzb(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), null, new Object[0]);
            }
            zza(of.OTHER);
        }
    }
}
