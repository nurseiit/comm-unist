package com.google.android.gms.internal;

import android.support.v4.app.NotificationCompat;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class op implements oe, on {
    private static long zzcaq;
    private final wl zzbZE;
    private final ScheduledExecutorService zzbZs;
    private final oh zzcaC;
    private final oo zzcaH;
    private String zzcaI;
    private HashSet<String> zzcaJ = new HashSet();
    private boolean zzcaK = true;
    private long zzcaL;
    private od zzcaM;
    private oz zzcaN = oz.Disconnected;
    private long zzcaO = 0;
    private long zzcaP = 0;
    private Map<Long, oy> zzcaQ;
    private List<pb> zzcaR;
    private Map<Long, pd> zzcaS;
    private Map<pa, pc> zzcaT;
    private String zzcaU;
    private boolean zzcaV;
    private final oj zzcaW;
    private final pq zzcaX;
    private String zzcaY;
    private long zzcaZ = 0;
    private final ol zzcar;
    private int zzcba = 0;
    private ScheduledFuture<?> zzcbb = null;
    private long zzcbc;
    private boolean zzcbd;

    public op(oj ojVar, ol olVar, oo ooVar) {
        this.zzcaH = ooVar;
        this.zzcaW = ojVar;
        this.zzbZs = ojVar.zzFV();
        this.zzcaC = ojVar.zzFU();
        this.zzcar = olVar;
        this.zzcaT = new HashMap();
        this.zzcaQ = new HashMap();
        this.zzcaS = new HashMap();
        this.zzcaR = new ArrayList();
        this.zzcaX = new ps(this.zzbZs, ojVar.zzFT(), "ConnectionRetryHelper").zzas(1000).zzh(1.3d).zzat(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS).zzi(0.7d).zzGC();
        long j = zzcaq;
        zzcaq = j + 1;
        StringBuilder stringBuilder = new StringBuilder(23);
        stringBuilder.append("pc_");
        stringBuilder.append(j);
        this.zzbZE = new wl(ojVar.zzFT(), "PersistentConnection", stringBuilder.toString());
        this.zzcaY = null;
        zzGi();
    }

    private final boolean isIdle() {
        return this.zzcaT.isEmpty() && this.zzcaQ.isEmpty() && !this.zzcbd && this.zzcaS.isEmpty();
    }

    private final boolean zzGc() {
        return this.zzcaN == oz.Authenticating || this.zzcaN == oz.Connected;
    }

    private final boolean zzGd() {
        return this.zzcaN == oz.Connected;
    }

    private final boolean zzGe() {
        return this.zzcaJ.size() == 0;
    }

    private final void zzGf() {
        if (zzGe()) {
            ok.zzc(this.zzcaN == oz.Disconnected, "Not in disconnected state: %s", this.zzcaN);
            boolean z = this.zzcaV;
            this.zzbZE.zzb("Scheduling connection attempt", null, new Object[0]);
            this.zzcaV = false;
            this.zzcaX.zzp(new oq(this, z));
        }
    }

    private final void zzGg() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.zzcaS.entrySet().iterator();
        while (it.hasNext()) {
            pd pdVar = (pd) ((Entry) it.next()).getValue();
            if (pdVar.zzGp().containsKey("h") && pdVar.zzGr()) {
                arrayList.add(pdVar);
                it.remove();
            }
        }
        arrayList = arrayList;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((pd) obj).zzGl().zzaa("disconnected", null);
        }
    }

    private final void zzGh() {
        int i = 0;
        ok.zzc(this.zzcaN == oz.Connected, "Should be connected if we're restoring state, but we are: %s", this.zzcaN);
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb("Restoring outstanding listens", null, new Object[0]);
        }
        for (pc pcVar : this.zzcaT.values()) {
            if (this.zzbZE.zzIH()) {
                wl wlVar = this.zzbZE;
                String valueOf = String.valueOf(pcVar.zzGm());
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 17);
                stringBuilder.append("Restoring listen ");
                stringBuilder.append(valueOf);
                wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
            }
            zza(pcVar);
        }
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb("Restoring writes.", null, new Object[0]);
        }
        ArrayList arrayList = new ArrayList(this.zzcaS.keySet());
        Collections.sort(arrayList);
        arrayList = arrayList;
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            zzap(((Long) obj).longValue());
        }
        for (pb pbVar : this.zzcaR) {
            zza(pbVar.getAction(), pbVar.zzGk(), pbVar.getData(), pbVar.zzGl());
        }
        this.zzcaR.clear();
    }

    private final void zzGi() {
        if (isIdle()) {
            if (this.zzcbb != null) {
                this.zzcbb.cancel(false);
            }
            this.zzcbb = this.zzbZs.schedule(new ox(this), 60000, TimeUnit.MILLISECONDS);
            return;
        }
        if (isInterrupted("connection_idle")) {
            ok.zzc(isIdle() ^ 1, "", new Object[0]);
            resume("connection_idle");
        }
    }

    private final boolean zzGj() {
        return isIdle() && System.currentTimeMillis() > this.zzcbc + 60000;
    }

    private final void zzS(List<String> list) {
        int i = 0;
        if (this.zzbZE.zzIH()) {
            wl wlVar = this.zzbZE;
            String valueOf = String.valueOf(list);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 29);
            stringBuilder.append("removing all listens at path ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        ArrayList arrayList = new ArrayList();
        for (Entry entry : this.zzcaT.entrySet()) {
            pa paVar = (pa) entry.getKey();
            pc pcVar = (pc) entry.getValue();
            if (paVar.zzcbt.equals(list)) {
                arrayList.add(pcVar);
            }
        }
        arrayList = arrayList;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            this.zzcaT.remove(((pc) obj).zzGm());
        }
        zzGi();
        size = arrayList.size();
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            ((pc) obj2).zzcbx.zzaa("permission_denied", null);
        }
    }

    private final pc zza(pa paVar) {
        wl wlVar;
        if (this.zzbZE.zzIH()) {
            wlVar = this.zzbZE;
            String valueOf = String.valueOf(paVar);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 15);
            stringBuilder.append("removing query ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        if (this.zzcaT.containsKey(paVar)) {
            pc pcVar = (pc) this.zzcaT.get(paVar);
            this.zzcaT.remove(paVar);
            zzGi();
            return pcVar;
        }
        if (this.zzbZE.zzIH()) {
            wlVar = this.zzbZE;
            String valueOf2 = String.valueOf(paVar);
            StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf2).length() + 64);
            stringBuilder2.append("Trying to remove listener for QuerySpec ");
            stringBuilder2.append(valueOf2);
            stringBuilder2.append(" but no listener exists.");
            wlVar.zzb(stringBuilder2.toString(), null, new Object[0]);
        }
        return null;
    }

    private final void zza(pc pcVar) {
        Map hashMap = new HashMap();
        hashMap.put("p", ok.zzR(pcVar.zzGm().zzcbt));
        Long zzGn = pcVar.zzGn();
        if (zzGn != null) {
            hashMap.put("q", pcVar.zzcby.zzcbu);
            hashMap.put("t", zzGn);
        }
        om zzGo = pcVar.zzGo();
        hashMap.put("h", zzGo.zzFY());
        if (zzGo.zzFZ()) {
            oc zzGa = zzGo.zzGa();
            ArrayList arrayList = new ArrayList();
            for (List zzR : zzGa.zzFR()) {
                arrayList.add(ok.zzR(zzR));
            }
            HashMap hashMap2 = new HashMap();
            hashMap2.put("hs", zzGa.zzFS());
            hashMap2.put("ps", arrayList);
            hashMap.put("ch", hashMap2);
        }
        zza("q", hashMap, new ov(this, pcVar));
    }

    private final void zza(String str, List<String> list, Object obj, pf pfVar) {
        Map hashMap = new HashMap();
        hashMap.put("p", ok.zzR(list));
        hashMap.put("d", obj);
        zza(str, hashMap, new os(this, pfVar));
    }

    private final void zza(String str, List<String> list, Object obj, String str2, pf pfVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("p", ok.zzR(list));
        hashMap.put("d", obj);
        if (str2 != null) {
            hashMap.put("h", str2);
        }
        long j = this.zzcaO;
        this.zzcaO = j + 1;
        this.zzcaS.put(Long.valueOf(j), new pd(str, hashMap, pfVar, null));
        if (zzGd()) {
            zzap(j);
        }
        this.zzcbc = System.currentTimeMillis();
        zzGi();
    }

    private final void zza(String str, Map<String, Object> map, oy oyVar) {
        zza(str, false, (Map) map, oyVar);
    }

    private final void zza(String str, boolean z, Map<String, Object> map, oy oyVar) {
        long j = this.zzcaP;
        this.zzcaP = j + 1;
        HashMap hashMap = new HashMap();
        hashMap.put("r", Long.valueOf(j));
        hashMap.put("a", str);
        hashMap.put("b", map);
        this.zzcaM.zza(hashMap, z);
        this.zzcaQ.put(Long.valueOf(j), oyVar);
    }

    private final void zza(List<String> list, pa paVar) {
        if (list.contains("no_index")) {
            String valueOf = String.valueOf(paVar.zzcbu.get("i"));
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 14);
            stringBuilder.append("\".indexOn\": \"");
            stringBuilder.append(valueOf);
            stringBuilder.append("\"");
            valueOf = stringBuilder.toString();
            wl wlVar = this.zzbZE;
            String valueOf2 = String.valueOf(ok.zzR(paVar.zzcbt));
            StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf).length() + 118) + String.valueOf(valueOf2).length());
            stringBuilder2.append("Using an unspecified index. Consider adding '");
            stringBuilder2.append(valueOf);
            stringBuilder2.append("' at ");
            stringBuilder2.append(valueOf2);
            stringBuilder2.append(" to your security and Firebase Database rules for better performance");
            wlVar.zze(stringBuilder2.toString(), null);
        }
    }

    private final void zzaC(boolean z) {
        String str;
        ok.zzc(zzGc(), "Must be connected to send auth, but was: %s", this.zzcaN);
        ok.zzc(this.zzcaU != null, "Auth token must be set to authenticate!", new Object[0]);
        oy otVar = new ot(this, z);
        Map hashMap = new HashMap();
        yq zzgU = yq.zzgU(this.zzcaU);
        if (zzgU != null) {
            hashMap.put("cred", zzgU.getToken());
            if (zzgU.zzJE() != null) {
                hashMap.put("authvar", zzgU.zzJE());
            }
            str = "gauth";
        } else {
            hashMap.put("cred", this.zzcaU);
            str = "auth";
        }
        zza(str, true, hashMap, otVar);
    }

    private final void zzap(long j) {
        pd pdVar = (pd) this.zzcaS.get(Long.valueOf(j));
        pf zzGl = pdVar.zzGl();
        String action = pdVar.getAction();
        pdVar.zzGq();
        zza(action, pdVar.zzGp(), new ou(this, action, j, pdVar, zzGl));
    }

    public final void initialize() {
        zzGf();
    }

    public final void interrupt(String str) {
        if (this.zzbZE.zzIH()) {
            wl wlVar = this.zzbZE;
            String str2 = "Connection interrupted for: ";
            String valueOf = String.valueOf(str);
            wlVar.zzb(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), null, new Object[0]);
        }
        this.zzcaJ.add(str);
        if (this.zzcaM != null) {
            this.zzcaM.close();
            this.zzcaM = null;
        } else {
            this.zzcaX.cancel();
            this.zzcaN = oz.Disconnected;
        }
        this.zzcaX.zzGA();
    }

    public final boolean isInterrupted(String str) {
        return this.zzcaJ.contains(str);
    }

    public final void purgeOutstandingWrites() {
        for (pd pdVar : this.zzcaS.values()) {
            if (pdVar.zzcbw != null) {
                pdVar.zzcbw.zzaa("write_canceled", null);
            }
        }
        for (pb pbVar : this.zzcaR) {
            if (pbVar.zzcbw != null) {
                pbVar.zzcbw.zzaa("write_canceled", null);
            }
        }
        this.zzcaS.clear();
        this.zzcaR.clear();
        if (!zzGc()) {
            this.zzcbd = false;
        }
        zzGi();
    }

    public final void refreshAuthToken() {
        this.zzbZE.zzb("Auth token refresh requested", null, new Object[0]);
        interrupt("token_refresh");
        resume("token_refresh");
    }

    public final void resume(String str) {
        if (this.zzbZE.zzIH()) {
            wl wlVar = this.zzbZE;
            String str2 = "Connection no longer interrupted for: ";
            String valueOf = String.valueOf(str);
            wlVar.zzb(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), null, new Object[0]);
        }
        this.zzcaJ.remove(str);
        if (zzGe() && this.zzcaN == oz.Disconnected) {
            zzGf();
        }
    }

    public final void shutdown() {
        interrupt("shutdown");
    }

    public final void zzA(Map<String, Object> map) {
        if (map.containsKey("r")) {
            oy oyVar = (oy) this.zzcaQ.remove(Long.valueOf((long) ((Integer) map.get("r")).intValue()));
            if (oyVar != null) {
                oyVar.zzC((Map) map.get("b"));
            }
            return;
        }
        if (!map.containsKey(MediaRouteProviderProtocol.SERVICE_DATA_ERROR)) {
            String str;
            if (map.containsKey("a")) {
                wl wlVar;
                String str2 = (String) map.get("a");
                Map map2 = (Map) map.get("b");
                if (this.zzbZE.zzIH()) {
                    wlVar = this.zzbZE;
                    String valueOf = String.valueOf(map2);
                    StringBuilder stringBuilder = new StringBuilder((String.valueOf(str2).length() + 22) + String.valueOf(valueOf).length());
                    stringBuilder.append("handleServerMessage: ");
                    stringBuilder.append(str2);
                    stringBuilder.append(" ");
                    stringBuilder.append(valueOf);
                    wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
                }
                String str3;
                Object obj;
                Long zzah;
                wl wlVar2;
                if (str2.equals("d") || str2.equals("m")) {
                    boolean equals = str2.equals("m");
                    str3 = (String) map2.get("p");
                    obj = map2.get("d");
                    zzah = ok.zzah(map2.get("t"));
                    if (!equals || !(obj instanceof Map) || ((Map) obj).size() != 0) {
                        this.zzcaH.zza(ok.zzgG(str3), obj, equals, zzah);
                    } else if (this.zzbZE.zzIH()) {
                        wlVar2 = this.zzbZE;
                        str2 = "ignoring empty merge for path ";
                        str3 = String.valueOf(str3);
                        wlVar2.zzb(str3.length() != 0 ? str2.concat(str3) : new String(str2), null, new Object[0]);
                    }
                } else if (str2.equals("rm")) {
                    str2 = (String) map2.get("p");
                    List zzgG = ok.zzgG(str2);
                    obj = map2.get("d");
                    zzah = ok.zzah(map2.get("t"));
                    List<Map> list = (List) obj;
                    ArrayList arrayList = new ArrayList();
                    for (Map map3 : list) {
                        String str4 = (String) map3.get("s");
                        String str5 = (String) map3.get("e");
                        arrayList.add(new pe(str4 != null ? ok.zzgG(str4) : null, str5 != null ? ok.zzgG(str5) : null, map3.get("m")));
                    }
                    if (!arrayList.isEmpty()) {
                        this.zzcaH.zza(zzgG, arrayList, zzah);
                    } else if (this.zzbZE.zzIH()) {
                        wlVar2 = this.zzbZE;
                        str3 = "Ignoring empty range merge for path ";
                        str2 = String.valueOf(str2);
                        wlVar2.zzb(str2.length() != 0 ? str3.concat(str2) : new String(str3), null, new Object[0]);
                    }
                } else if (str2.equals("c")) {
                    zzS(ok.zzgG((String) map2.get("p")));
                } else if (str2.equals("ac")) {
                    str2 = (String) map2.get("s");
                    str = (String) map2.get("d");
                    wlVar = this.zzbZE;
                    StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(str2).length() + 23) + String.valueOf(str).length());
                    stringBuilder2.append("Auth token revoked: ");
                    stringBuilder2.append(str2);
                    stringBuilder2.append(" (");
                    stringBuilder2.append(str);
                    stringBuilder2.append(")");
                    wlVar.zzb(stringBuilder2.toString(), null, new Object[0]);
                    this.zzcaU = null;
                    this.zzcaV = true;
                    this.zzcaH.zzaB(false);
                    this.zzcaM.close();
                } else if (str2.equals("sd")) {
                    this.zzbZE.info((String) map2.get(NotificationCompat.CATEGORY_MESSAGE));
                } else {
                    if (this.zzbZE.zzIH()) {
                        wlVar2 = this.zzbZE;
                        str3 = "Unrecognized action from server: ";
                        str2 = String.valueOf(str2);
                        wlVar2.zzb(str2.length() != 0 ? str3.concat(str2) : new String(str3), null, new Object[0]);
                    }
                }
            } else if (this.zzbZE.zzIH()) {
                wl wlVar3 = this.zzbZE;
                str = String.valueOf(map);
                StringBuilder stringBuilder3 = new StringBuilder(String.valueOf(str).length() + 26);
                stringBuilder3.append("Ignoring unknown message: ");
                stringBuilder3.append(str);
                wlVar3.zzb(stringBuilder3.toString(), null, new Object[0]);
            }
        }
    }

    public final void zza(List<String> list, pf pfVar) {
        if (zzGd()) {
            zza("oc", (List) list, null, pfVar);
        } else {
            this.zzcaR.add(new pb("oc", list, null, pfVar, null));
        }
        zzGi();
    }

    public final void zza(List<String> list, Object obj, pf pfVar) {
        zza("p", (List) list, obj, null, pfVar);
    }

    public final void zza(List<String> list, Object obj, String str, pf pfVar) {
        zza("p", (List) list, obj, str, pfVar);
    }

    public final void zza(List<String> list, Map<String, Object> map) {
        pa paVar = new pa(list, map);
        if (this.zzbZE.zzIH()) {
            wl wlVar = this.zzbZE;
            String valueOf = String.valueOf(paVar);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 15);
            stringBuilder.append("unlistening on ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        pc zza = zza(paVar);
        if (zza != null && zzGc()) {
            Map hashMap = new HashMap();
            hashMap.put("p", ok.zzR(zza.zzcby.zzcbt));
            Long zzGn = zza.zzGn();
            if (zzGn != null) {
                hashMap.put("q", zza.zzGm().zzcbu);
                hashMap.put("t", zzGn);
            }
            zza("n", hashMap, null);
        }
        zzGi();
    }

    public final void zza(List<String> list, Map<String, Object> map, om omVar, Long l, pf pfVar) {
        wl wlVar;
        String valueOf;
        StringBuilder stringBuilder;
        pa paVar = new pa(list, map);
        if (this.zzbZE.zzIH()) {
            wlVar = this.zzbZE;
            valueOf = String.valueOf(paVar);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 13);
            stringBuilder.append("Listening on ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        ok.zzc(this.zzcaT.containsKey(paVar) ^ 1, "listen() called twice for same QuerySpec.", new Object[0]);
        if (this.zzbZE.zzIH()) {
            wlVar = this.zzbZE;
            valueOf = String.valueOf(paVar);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 21);
            stringBuilder.append("Adding listen query: ");
            stringBuilder.append(valueOf);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        pc pcVar = new pc(pfVar, paVar, l, omVar, null);
        this.zzcaT.put(paVar, pcVar);
        if (zzGc()) {
            zza(pcVar);
        }
        zzGi();
    }

    public final void zza(List<String> list, Map<String, Object> map, pf pfVar) {
        zza("m", (List) list, (Object) map, null, pfVar);
    }

    public final void zzb(of ofVar) {
        int i = 0;
        if (this.zzbZE.zzIH()) {
            wl wlVar = this.zzbZE;
            String str = "Got on disconnect due to ";
            String valueOf = String.valueOf(ofVar.name());
            wlVar.zzb(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), null, new Object[0]);
        }
        this.zzcaN = oz.Disconnected;
        this.zzcaM = null;
        this.zzcbd = false;
        this.zzcaQ.clear();
        zzGg();
        if (zzGe()) {
            long currentTimeMillis = System.currentTimeMillis() - this.zzcaL;
            if (this.zzcaL > 0 && currentTimeMillis > NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
                i = 1;
            }
            if (ofVar == of.SERVER_RESET || i != 0) {
                this.zzcaX.zzGA();
            }
            zzGf();
        }
        this.zzcaL = 0;
        this.zzcaH.onDisconnect();
    }

    public final void zzb(List<String> list, Object obj, pf pfVar) {
        this.zzcbd = true;
        if (zzGd()) {
            zza("o", (List) list, obj, pfVar);
        } else {
            this.zzcaR.add(new pb("o", list, obj, pfVar, null));
        }
        zzGi();
    }

    public final void zzb(List<String> list, Map<String, Object> map, pf pfVar) {
        this.zzcbd = true;
        if (zzGd()) {
            zza("om", (List) list, (Object) map, pfVar);
        } else {
            this.zzcaR.add(new pb("om", list, map, pfVar, null));
        }
        zzGi();
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00d9  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00d9  */
    public final void zzc(long r8, java.lang.String r10) {
        /*
        r7 = this;
        r0 = r7.zzbZE;
        r0 = r0.zzIH();
        r1 = 0;
        r2 = 0;
        if (r0 == 0) goto L_0x0013;
    L_0x000a:
        r0 = r7.zzbZE;
        r3 = "onReady";
        r4 = new java.lang.Object[r2];
        r0.zzb(r3, r1, r4);
    L_0x0013:
        r3 = java.lang.System.currentTimeMillis();
        r7.zzcaL = r3;
        r0 = r7.zzbZE;
        r0 = r0.zzIH();
        if (r0 == 0) goto L_0x002a;
    L_0x0021:
        r0 = r7.zzbZE;
        r3 = "handling timestamp";
        r4 = new java.lang.Object[r2];
        r0.zzb(r3, r1, r4);
    L_0x002a:
        r3 = java.lang.System.currentTimeMillis();
        r5 = r8 - r3;
        r8 = new java.util.HashMap;
        r8.<init>();
        r9 = "serverTimeOffset";
        r0 = java.lang.Long.valueOf(r5);
        r8.put(r9, r0);
        r9 = r7.zzcaH;
        r9.zzB(r8);
        r8 = r7.zzcaK;
        r9 = 1;
        if (r8 == 0) goto L_0x00ea;
    L_0x0048:
        r8 = new java.util.HashMap;
        r8.<init>();
        r0 = com.google.android.gms.internal.yp.zzJD();
        r3 = 45;
        r4 = 46;
        if (r0 == 0) goto L_0x0085;
    L_0x0057:
        r0 = r7.zzcaW;
        r0 = r0.zzFW();
        if (r0 == 0) goto L_0x0068;
    L_0x005f:
        r0 = "persistence.android.enabled";
        r5 = java.lang.Integer.valueOf(r9);
        r8.put(r0, r5);
    L_0x0068:
        r0 = "sdk.android.";
        r5 = r7.zzcaW;
        r5 = r5.zzFX();
        r3 = r5.replace(r4, r3);
        r3 = java.lang.String.valueOf(r3);
        r4 = r3.length();
        if (r4 == 0) goto L_0x007f;
    L_0x007e:
        goto L_0x009b;
    L_0x007f:
        r3 = new java.lang.String;
        r3.<init>(r0);
        goto L_0x00a5;
    L_0x0085:
        r0 = "sdk.java.";
        r5 = r7.zzcaW;
        r5 = r5.zzFX();
        r3 = r5.replace(r4, r3);
        r3 = java.lang.String.valueOf(r3);
        r4 = r3.length();
        if (r4 == 0) goto L_0x00a0;
    L_0x009b:
        r0 = r0.concat(r3);
        goto L_0x00a6;
    L_0x00a0:
        r3 = new java.lang.String;
        r3.<init>(r0);
    L_0x00a5:
        r0 = r3;
    L_0x00a6:
        r3 = java.lang.Integer.valueOf(r9);
        r8.put(r0, r3);
        r0 = r7.zzbZE;
        r0 = r0.zzIH();
        if (r0 == 0) goto L_0x00be;
    L_0x00b5:
        r0 = r7.zzbZE;
        r3 = "Sending first connection stats";
        r4 = new java.lang.Object[r2];
        r0.zzb(r3, r1, r4);
    L_0x00be:
        r0 = r8.isEmpty();
        if (r0 != 0) goto L_0x00d9;
    L_0x00c4:
        r0 = new java.util.HashMap;
        r0.<init>();
        r3 = "c";
        r0.put(r3, r8);
        r8 = "s";
        r3 = new com.google.android.gms.internal.ow;
        r3.<init>(r7);
        r7.zza(r8, r0, r3);
        goto L_0x00ea;
    L_0x00d9:
        r8 = r7.zzbZE;
        r8 = r8.zzIH();
        if (r8 == 0) goto L_0x00ea;
    L_0x00e1:
        r8 = r7.zzbZE;
        r0 = "Not sending stats because stats are empty";
        r3 = new java.lang.Object[r2];
        r8.zzb(r0, r1, r3);
    L_0x00ea:
        r8 = r7.zzbZE;
        r8 = r8.zzIH();
        if (r8 == 0) goto L_0x00fb;
    L_0x00f2:
        r8 = r7.zzbZE;
        r0 = "calling restore state";
        r3 = new java.lang.Object[r2];
        r8.zzb(r0, r1, r3);
    L_0x00fb:
        r8 = r7.zzcaN;
        r0 = com.google.android.gms.internal.oz.Connecting;
        if (r8 != r0) goto L_0x0103;
    L_0x0101:
        r8 = 1;
        goto L_0x0104;
    L_0x0103:
        r8 = 0;
    L_0x0104:
        r0 = "Wanted to restore auth, but was in wrong state: %s";
        r3 = new java.lang.Object[r9];
        r4 = r7.zzcaN;
        r3[r2] = r4;
        com.google.android.gms.internal.ok.zzc(r8, r0, r3);
        r8 = r7.zzcaU;
        if (r8 != 0) goto L_0x012c;
    L_0x0113:
        r8 = r7.zzbZE;
        r8 = r8.zzIH();
        if (r8 == 0) goto L_0x0124;
    L_0x011b:
        r8 = r7.zzbZE;
        r9 = "Not restoring auth because token is null.";
        r0 = new java.lang.Object[r2];
        r8.zzb(r9, r1, r0);
    L_0x0124:
        r8 = com.google.android.gms.internal.oz.Connected;
        r7.zzcaN = r8;
        r7.zzGh();
        goto L_0x0144;
    L_0x012c:
        r8 = r7.zzbZE;
        r8 = r8.zzIH();
        if (r8 == 0) goto L_0x013d;
    L_0x0134:
        r8 = r7.zzbZE;
        r0 = "Restoring auth.";
        r3 = new java.lang.Object[r2];
        r8.zzb(r0, r1, r3);
    L_0x013d:
        r8 = com.google.android.gms.internal.oz.Authenticating;
        r7.zzcaN = r8;
        r7.zzaC(r9);
    L_0x0144:
        r7.zzcaK = r2;
        r7.zzcaY = r10;
        r8 = r7.zzcaH;
        r8.zzGb();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.op.zzc(long, java.lang.String):void");
    }

    public final void zzgD(String str) {
        this.zzcaI = str;
    }

    public final void zzgE(String str) {
        if (this.zzbZE.zzIH()) {
            wl wlVar = this.zzbZE;
            String str2 = "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: ";
            str = String.valueOf(str);
            wlVar.zzb(str.length() != 0 ? str2.concat(str) : new String(str2), null, new Object[0]);
        }
        interrupt("server_kill");
    }

    public final void zzgH(String str) {
        this.zzbZE.zzb("Auth token refreshed.", null, new Object[0]);
        this.zzcaU = str;
        if (zzGc()) {
            if (str != null) {
                zzaC(false);
                return;
            }
            ok.zzc(zzGc(), "Must be connected to send unauth.", new Object[0]);
            ok.zzc(this.zzcaU == null, "Auth token must not be set.", new Object[0]);
            zza("unauth", Collections.emptyMap(), null);
        }
    }

    public final void zzgI(String str) {
        ok.zzc(this.zzcaN == oz.GettingToken, "Trying to open network connection while in the wrong state: %s", this.zzcaN);
        if (str == null) {
            this.zzcaH.zzaB(false);
        }
        this.zzcaU = str;
        this.zzcaN = oz.Connecting;
        this.zzcaM = new od(this.zzcaW, this.zzcar, this.zzcaI, this, this.zzcaY);
        this.zzcaM.open();
    }
}
