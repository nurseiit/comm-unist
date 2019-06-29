package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.bumptech.glide.load.Key;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.tagmanager.zzce;
import com.google.android.gms.tagmanager.zzcn;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class zzcvu {
    private final Context mContext;
    private final String zzbDw;
    private int zzbGp;
    private final zzcn zzbHN;
    private final zzce zzbHW;
    private final db zzbII;
    private final zzcwa zzbIJ = new zzcwa();
    private final dz zzbIK = new dz(new HashMap(50));
    private final dz zzbIL = new dz(new HashMap(10));
    private final Set<String> zzbIM = new HashSet();
    private ao zzbIN;
    private zzcut zzbIO;
    private final zzcvy zzbIP = new zzcvv(this);

    public zzcvu(Context context, String str, db dbVar, dj djVar, zzcn zzcn, zzce zzce) {
        zzbo.zzb((Object) dbVar, (Object) "Internal Error: Container resource cannot be null");
        zzbo.zzb((Object) djVar, (Object) "Internal Error: Runtime resource cannot be null");
        zzbo.zzh(str, "Internal Error: ContainerId cannot be empty");
        zzbo.zzu(zzcn);
        zzbo.zzu(zzce);
        this.mContext = context;
        this.zzbDw = str;
        this.zzbII = dbVar;
        this.zzbHN = zzcn;
        this.zzbHW = zzce;
        this.zzbIJ.zza("1", new du(new zzcyn()));
        this.zzbIJ.zza("12", new du(new zzcyo()));
        this.zzbIJ.zza("18", new du(new zzcyp()));
        this.zzbIJ.zza("19", new du(new zzcyq()));
        this.zzbIJ.zza("20", new du(new zzcyr()));
        this.zzbIJ.zza("21", new du(new zzcys()));
        this.zzbIJ.zza("23", new du(new zzcyt()));
        this.zzbIJ.zza("24", new du(new zzcyu()));
        this.zzbIJ.zza("27", new du(new zzcyv()));
        this.zzbIJ.zza("28", new du(new zzcyw()));
        this.zzbIJ.zza("29", new du(new zzcyx()));
        this.zzbIJ.zza("30", new du(new zzcyy()));
        this.zzbIJ.zza("32", new du(new zzcyz()));
        this.zzbIJ.zza("33", new du(new zzcyz()));
        this.zzbIJ.zza("34", new du(new zzcza()));
        this.zzbIJ.zza("35", new du(new zzcza()));
        this.zzbIJ.zza("39", new du(new zzczb()));
        this.zzbIJ.zza("40", new du(new zzczc()));
        this.zzbIJ.zza("0", new du(new zzczz()));
        this.zzbIJ.zza("10", new du(new a()));
        this.zzbIJ.zza("25", new du(new b()));
        this.zzbIJ.zza("26", new du(new c()));
        this.zzbIJ.zza("37", new du(new d()));
        this.zzbIJ.zza("2", new du(new zzczd()));
        this.zzbIJ.zza("3", new du(new zzcze()));
        this.zzbIJ.zza("4", new du(new zzczf()));
        this.zzbIJ.zza("5", new du(new zzczg()));
        this.zzbIJ.zza("6", new du(new zzczh()));
        this.zzbIJ.zza("7", new du(new zzczi()));
        this.zzbIJ.zza("8", new du(new zzczj()));
        this.zzbIJ.zza("9", new du(new zzczg()));
        this.zzbIJ.zza("13", new du(new zzczk()));
        this.zzbIJ.zza("47", new du(new zzczl()));
        this.zzbIJ.zza("15", new du(new zzczm()));
        this.zzbIJ.zza("48", new du(new zzczn(this)));
        zzczo zzczo = new zzczo();
        this.zzbIJ.zza("16", new du(zzczo));
        this.zzbIJ.zza("17", new du(zzczo));
        this.zzbIJ.zza("22", new du(new zzczq()));
        this.zzbIJ.zza("45", new du(new zzczr()));
        this.zzbIJ.zza("46", new du(new zzczs()));
        this.zzbIJ.zza("36", new du(new zzczt()));
        this.zzbIJ.zza("43", new du(new zzczu()));
        this.zzbIJ.zza("38", new du(new zzczv()));
        this.zzbIJ.zza("44", new du(new zzczw()));
        this.zzbIJ.zza("41", new du(new zzczx()));
        this.zzbIJ.zza("42", new du(new zzczy()));
        zza(zzbf.CONTAINS, new bl());
        zza(zzbf.ENDS_WITH, new bm());
        zza(zzbf.EQUALS, new bn());
        zza(zzbf.GREATER_EQUALS, new bo());
        zza(zzbf.GREATER_THAN, new bp());
        zza(zzbf.LESS_EQUALS, new bq());
        zza(zzbf.LESS_THAN, new br());
        zza(zzbf.REGEX, new bt());
        zza(zzbf.STARTS_WITH, new bu());
        this.zzbIK.zzc("advertiserId", new du(new ae(this.mContext)));
        this.zzbIK.zzc("advertiserTrackingEnabled", new du(new af(this.mContext)));
        this.zzbIK.zzc("adwordsClickReferrer", new du(new ag(this.mContext, this.zzbIP)));
        this.zzbIK.zzc("applicationId", new du(new ah(this.mContext)));
        this.zzbIK.zzc("applicationName", new du(new ai(this.mContext)));
        this.zzbIK.zzc("applicationVersion", new du(new aj(this.mContext)));
        this.zzbIK.zzc("applicationVersionName", new du(new ak(this.mContext)));
        this.zzbIK.zzc("arbitraryPixieMacro", new du(new ab(1, this.zzbIJ)));
        this.zzbIK.zzc("carrier", new du(new al(this.mContext)));
        this.zzbIK.zzc("constant", new du(new zzczt()));
        this.zzbIK.zzc("containerId", new du(new am(new eb(this.zzbDw))));
        this.zzbIK.zzc("containerVersion", new du(new am(new eb(this.zzbII.getVersion()))));
        this.zzbIK.zzc("customMacro", new du(new z(new zzcvx(this, null))));
        this.zzbIK.zzc("deviceBrand", new du(new ap()));
        this.zzbIK.zzc("deviceId", new du(new aq(this.mContext)));
        this.zzbIK.zzc("deviceModel", new du(new ar()));
        this.zzbIK.zzc("deviceName", new du(new as()));
        this.zzbIK.zzc("encode", new du(new at()));
        this.zzbIK.zzc("encrypt", new du(new au()));
        this.zzbIK.zzc("event", new du(new an()));
        this.zzbIK.zzc("eventParameters", new du(new av(this.zzbIP)));
        this.zzbIK.zzc("version", new du(new aw()));
        this.zzbIK.zzc("hashcode", new du(new ax()));
        this.zzbIK.zzc("installReferrer", new du(new ay(this.mContext)));
        this.zzbIK.zzc("join", new du(new az()));
        this.zzbIK.zzc("language", new du(new ba()));
        this.zzbIK.zzc("locale", new du(new bb()));
        this.zzbIK.zzc("adWordsUniqueId", new du(new bd(this.mContext)));
        this.zzbIK.zzc("osVersion", new du(new be()));
        this.zzbIK.zzc("platform", new du(new bf()));
        this.zzbIK.zzc("random", new du(new bg()));
        this.zzbIK.zzc("regexGroup", new du(new bh()));
        this.zzbIK.zzc("resolution", new du(new bj(this.mContext)));
        this.zzbIK.zzc("runtimeVersion", new du(new bi()));
        this.zzbIK.zzc("sdkVersion", new du(new bk()));
        this.zzbIN = new ao();
        this.zzbIK.zzc("currentTime", new du(this.zzbIN));
        this.zzbIK.zzc("userProperty", new du(new bc(this.mContext, this.zzbIP)));
        this.zzbIK.zzc("arbitraryPixel", new du(new bx(zzcur.zzbv(this.mContext))));
        this.zzbIK.zzc("customTag", new du(new z(new zzcvw(this, null))));
        this.zzbIK.zzc("universalAnalytics", new du(new by(this.mContext, this.zzbIP)));
        this.zzbIK.zzc("queueRequest", new du(new bv(zzcur.zzbv(this.mContext))));
        this.zzbIK.zzc("sendMeasurement", new du(new bw(this.zzbHN, this.zzbIP)));
        this.zzbIK.zzc("arbitraryPixieTag", new du(new ab(0, this.zzbIJ)));
        this.zzbIK.zzc("suppressPassthrough", new du(new ad(this.mContext, this.zzbIP)));
        this.zzbIL.zzc("decodeURI", new du(new u()));
        this.zzbIL.zzc("decodeURIComponent", new du(new v()));
        this.zzbIL.zzc("encodeURI", new du(new w()));
        this.zzbIL.zzc("encodeURIComponent", new du(new x()));
        this.zzbIL.zzc("log", new du(new ac()));
        this.zzbIL.zzc("isArray", new du(new y()));
        zza(djVar);
        dz dzVar = new dz(new HashMap(1));
        dzVar.zzc("mobile", this.zzbIK);
        dzVar.zzc("common", this.zzbIL);
        this.zzbIJ.zza("gtmUtils", dzVar);
        dz dzVar2 = new dz(new HashMap(this.zzbIK.zzDt()));
        dzVar2.zzDu();
        dz dzVar3 = new dz(new HashMap(this.zzbIL.zzDt()));
        dzVar3.zzDu();
        if (this.zzbIJ.has("main") && (this.zzbIJ.zzfK("main") instanceof du)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(dzVar);
            ed.zza(this.zzbIJ, new ea("main", arrayList));
        }
        this.zzbIK.zzc("base", dzVar2);
        this.zzbIL.zzc("base", dzVar3);
        dzVar.zzDu();
        this.zzbIK.zzDu();
        this.zzbIL.zzDu();
    }

    private final String zzBL() {
        if (this.zzbGp <= 1) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Integer.toString(this.zzbGp));
        for (int i = 2; i < this.zzbGp; i++) {
            stringBuilder.append(' ');
        }
        stringBuilder.append(": ");
        return stringBuilder.toString();
    }

    private final dp<?> zza(dd ddVar) {
        this.zzbIM.clear();
        try {
            dp<?> zzw = zzw(zzv(ddVar.zzCZ()));
            if (!(zzw instanceof ds)) {
                zzcup.zzc("Predicate must return a boolean value", this.mContext);
                zzw = new ds(Boolean.valueOf(false));
            }
            return zzw;
        } catch (IllegalStateException unused) {
            zzcvk.e("Error evaluating predicate.");
            return dv.zzbLt;
        }
    }

    private final dp<?> zza(dg dgVar, Map<dd, dp<?>> map) {
        String valueOf = String.valueOf(dgVar);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 19);
        stringBuilder.append("Evaluating trigger ");
        stringBuilder.append(valueOf);
        zzcvk.v(stringBuilder.toString());
        for (dd ddVar : dgVar.zzDc()) {
            dp dpVar = (dp) map.get(ddVar);
            if (dpVar == null) {
                dpVar = zza(ddVar);
                map.put(ddVar, dpVar);
            }
            if (dpVar == dv.zzbLt) {
                return dv.zzbLt;
            }
            if (((ds) dpVar).zzDn().booleanValue()) {
                return new ds(Boolean.valueOf(false));
            }
        }
        for (dd ddVar2 : dgVar.zzDb()) {
            dp dpVar2 = (dp) map.get(ddVar2);
            if (dpVar2 == null) {
                dpVar2 = zza(ddVar2);
                map.put(ddVar2, dpVar2);
            }
            if (dpVar2 == dv.zzbLt) {
                return dv.zzbLt;
            }
            if (!((ds) dpVar2).zzDn().booleanValue()) {
                return new ds(Boolean.valueOf(false));
            }
        }
        return new ds(Boolean.valueOf(true));
    }

    private final dp<?> zza(dm dmVar) {
        switch (dmVar.getType()) {
            case 1:
                try {
                    return new dt(Double.valueOf(Double.parseDouble((String) dmVar.getValue())));
                } catch (NumberFormatException unused) {
                    return new eb((String) dmVar.getValue());
                }
            case 2:
                List<dm> list = (List) dmVar.getValue();
                ArrayList arrayList = new ArrayList(list.size());
                for (dm zza : list) {
                    arrayList.add(zza(zza));
                }
                return new dw(arrayList);
            case 3:
                Map map = (Map) dmVar.getValue();
                HashMap hashMap = new HashMap(map.size());
                for (Entry entry : map.entrySet()) {
                    dp zza2 = zza((dm) entry.getKey());
                    hashMap.put(zzcxp.zzd(zza2), zza((dm) entry.getValue()));
                }
                return new dz(hashMap);
            case 4:
                dp<?> zzfI = zzfI((String) dmVar.getValue());
                if ((zzfI instanceof eb) && !dmVar.zzDi().isEmpty()) {
                    zzfI = new eb(zzd(((eb) zzfI).value(), dmVar.zzDi()));
                }
                return zzfI;
            case 5:
                return new eb((String) dmVar.getValue());
            case 6:
                return new dt(Double.valueOf(((Integer) dmVar.getValue()).doubleValue()));
            case 7:
                StringBuilder stringBuilder = new StringBuilder();
                for (dm zza3 : (List) dmVar.getValue()) {
                    stringBuilder.append(zzcxp.zzd(zza(zza3)));
                }
                return new eb(stringBuilder.toString());
            case 8:
                return new ds((Boolean) dmVar.getValue());
            default:
                int type = dmVar.getType();
                StringBuilder stringBuilder2 = new StringBuilder(52);
                stringBuilder2.append("Attempting to expand unknown Value type ");
                stringBuilder2.append(type);
                stringBuilder2.append(".");
                throw new IllegalStateException(stringBuilder2.toString());
        }
    }

    private final void zza(dj djVar) {
        for (zzcxn zzcxn : djVar.zzDg()) {
            zzcxn.zza(this.zzbIJ);
            this.zzbIJ.zza(zzcxn.getName(), new du(zzcxn));
        }
    }

    private final void zza(zzbf zzbf, zzcxo zzcxo) {
        this.zzbIK.zzc(zzcxl.zza(zzbf), new du(zzcxo));
    }

    private final String zzd(String str, List<Integer> list) {
        for (Integer intValue : list) {
            int intValue2 = intValue.intValue();
            if (intValue2 != 12) {
                StringBuilder stringBuilder = new StringBuilder(39);
                stringBuilder.append("Unsupported Value Escaping: ");
                stringBuilder.append(intValue2);
                zzcvk.e(stringBuilder.toString());
            } else {
                str = zzfJ(str);
            }
        }
        return str;
    }

    private final dp<?> zzfI(String str) {
        this.zzbGp++;
        String valueOf = String.valueOf(zzBL());
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 31) + String.valueOf(str).length());
        stringBuilder.append(valueOf);
        stringBuilder.append("Beginning to evaluate variable ");
        stringBuilder.append(str);
        zzcvk.v(stringBuilder.toString());
        String valueOf2;
        StringBuilder stringBuilder2;
        if (this.zzbIM.contains(str)) {
            this.zzbGp--;
            valueOf2 = String.valueOf(this.zzbIM.toString());
            stringBuilder2 = new StringBuilder((String.valueOf(str).length() + 77) + String.valueOf(valueOf2).length());
            stringBuilder2.append("Macro cycle detected.  Current macro reference: ");
            stringBuilder2.append(str);
            stringBuilder2.append(". Previous macro references: ");
            stringBuilder2.append(valueOf2);
            throw new IllegalStateException(stringBuilder2.toString());
        }
        this.zzbIM.add(str);
        dd zzfV = this.zzbII.zzfV(str);
        if (zzfV == null) {
            this.zzbGp--;
            this.zzbIM.remove(str);
            valueOf2 = String.valueOf(zzBL());
            stringBuilder2 = new StringBuilder((String.valueOf(valueOf2).length() + 36) + String.valueOf(str).length());
            stringBuilder2.append(valueOf2);
            stringBuilder2.append("Attempting to resolve unknown macro ");
            stringBuilder2.append(str);
            throw new IllegalStateException(stringBuilder2.toString());
        }
        dp zzw = zzw(zzv(zzfV.zzCZ()));
        valueOf2 = String.valueOf(zzBL());
        stringBuilder2 = new StringBuilder((String.valueOf(valueOf2).length() + 25) + String.valueOf(str).length());
        stringBuilder2.append(valueOf2);
        stringBuilder2.append("Done evaluating variable ");
        stringBuilder2.append(str);
        zzcvk.v(stringBuilder2.toString());
        this.zzbGp--;
        this.zzbIM.remove(str);
        return zzw;
    }

    private static String zzfJ(String str) {
        try {
            return URLEncoder.encode(str, Key.STRING_CHARSET_NAME).replaceAll("\\+", "%20");
        } catch (UnsupportedEncodingException e) {
            zzcvk.zzb("Escape URI: unsupported encoding", e);
            return str;
        }
    }

    private final ea zzg(String str, Map<String, dp<?>> map) {
        try {
            return zzcxl.zza(str, map, this.zzbIJ);
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(e.getMessage());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 30) + String.valueOf(valueOf).length());
            stringBuilder.append("Incorrect keys for function ");
            stringBuilder.append(str);
            stringBuilder.append(". ");
            stringBuilder.append(valueOf);
            zzcvk.e(stringBuilder.toString());
            return null;
        }
    }

    private final Map<String, dp<?>> zzv(Map<String, dm> map) {
        HashMap hashMap = new HashMap();
        for (Entry entry : map.entrySet()) {
            hashMap.put((String) entry.getKey(), zza((dm) entry.getValue()));
        }
        return hashMap;
    }

    private final dp zzw(Map<String, dp<?>> map) {
        String str;
        if (map == null) {
            str = "executeFunctionCall: cannot access the function parameters.";
        } else {
            dp dpVar = (dp) map.get(zzbg.FUNCTION.toString());
            if (dpVar instanceof eb) {
                ea eaVar;
                String value = ((eb) dpVar).value();
                if (this.zzbIJ.has(value)) {
                    HashMap hashMap = new HashMap();
                    for (Entry entry : map.entrySet()) {
                        if (((String) entry.getKey()).startsWith("vtp_")) {
                            hashMap.put(((String) entry.getKey()).substring(4), (dp) entry.getValue());
                        }
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new dz(hashMap));
                    eaVar = new ea(value, arrayList);
                } else {
                    String zzfM = zzcxl.zzfM(value);
                    Object obj = (zzfM == null || !this.zzbIK.zzfY(zzfM)) ? null : 1;
                    if (obj != null) {
                        eaVar = zzg(value, map);
                    } else {
                        StringBuilder stringBuilder = new StringBuilder(String.valueOf(value).length() + 30);
                        stringBuilder.append("functionId '");
                        stringBuilder.append(value);
                        stringBuilder.append("' is not supported");
                        str = stringBuilder.toString();
                    }
                }
                if (eaVar == null) {
                    str = "Internal error: failed to convert function to a valid statement";
                } else {
                    str = "Executing: ";
                    value = String.valueOf(eaVar.zzDv());
                    zzcvk.v(value.length() != 0 ? str.concat(value) : new String(str));
                    dp zza = ed.zza(this.zzbIJ, eaVar);
                    if (zza instanceof dv) {
                        dv dvVar = (dv) zza;
                        if (dvVar.zzDr()) {
                            zza = dvVar.zzDq();
                        }
                    }
                    return zza;
                }
            }
            str = "No function id in properties";
        }
        zzcup.zzc(str, this.mContext);
        return dv.zzbLu;
    }

    public final void dispatch() {
        zzcur.zzbv(this.mContext).dispatch();
    }

    public final void zzb(zzcut zzcut) {
        String valueOf;
        StringBuilder stringBuilder;
        Throwable e;
        String valueOf2;
        this.zzbIJ.zza("gtm.globals.eventName", new eb(zzcut.zzCk()));
        this.zzbIN.zza(zzcut);
        this.zzbIO = zzcut;
        HashSet<dd> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Map hashMap = new HashMap();
        for (dg dgVar : this.zzbII.zzCX()) {
            if (dgVar.zzDd().isEmpty() && dgVar.zzDe().isEmpty()) {
                valueOf = String.valueOf(dgVar);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 64);
                stringBuilder.append("Trigger is not being evaluated since it has no associated tags: ");
                stringBuilder.append(valueOf);
                zzcvk.v(stringBuilder.toString());
            } else {
                String valueOf3;
                StringBuilder stringBuilder2;
                String str;
                dp zza = zza(dgVar, hashMap);
                if (zza == dv.zzbLt) {
                    valueOf3 = String.valueOf(dgVar);
                    stringBuilder2 = new StringBuilder(String.valueOf(valueOf3).length() + 41);
                    stringBuilder2.append("Error encounted while evaluating trigger ");
                    stringBuilder2.append(valueOf3);
                    zzcup.zzd(stringBuilder2.toString(), this.mContext);
                    if (!dgVar.zzDe().isEmpty()) {
                        valueOf3 = String.valueOf(dgVar.zzDe());
                        stringBuilder2 = new StringBuilder(String.valueOf(valueOf3).length() + 15);
                        str = "Blocking tags: ";
                    }
                } else if (((ds) zza).zzDn().booleanValue()) {
                    valueOf3 = String.valueOf(dgVar);
                    stringBuilder2 = new StringBuilder(String.valueOf(valueOf3).length() + 19);
                    stringBuilder2.append("Trigger is firing: ");
                    stringBuilder2.append(valueOf3);
                    zzcvk.v(stringBuilder2.toString());
                    if (!dgVar.zzDd().isEmpty()) {
                        valueOf3 = String.valueOf(dgVar.zzDd());
                        stringBuilder2 = new StringBuilder(String.valueOf(valueOf3).length() + 34);
                        stringBuilder2.append("Adding tags to firing candidates: ");
                        stringBuilder2.append(valueOf3);
                        zzcvk.v(stringBuilder2.toString());
                        hashSet.addAll(dgVar.zzDd());
                    }
                    if (!dgVar.zzDe().isEmpty()) {
                        valueOf3 = String.valueOf(dgVar.zzDe());
                        stringBuilder2 = new StringBuilder(String.valueOf(valueOf3).length() + 24);
                        str = "Blocking disabled tags: ";
                    }
                }
                stringBuilder2.append(str);
                stringBuilder2.append(valueOf3);
                zzcvk.v(stringBuilder2.toString());
                hashSet2.addAll(dgVar.zzDe());
            }
        }
        hashSet.removeAll(hashSet2);
        Object obj = null;
        for (dd ddVar : hashSet) {
            this.zzbIM.clear();
            valueOf = String.valueOf(ddVar);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 21);
            stringBuilder.append("Executing firing tag ");
            stringBuilder.append(valueOf);
            zzcvk.v(stringBuilder.toString());
            try {
                zzw(zzv(ddVar.zzCZ()));
                dm dmVar = (dm) ddVar.zzCZ().get(zzbg.DISPATCH_ON_FIRE.toString());
                Object obj2 = (dmVar != null && dmVar.getType() == 8 && ((Boolean) dmVar.getValue()).booleanValue()) ? 1 : null;
                if (obj2 != null) {
                    try {
                        String valueOf4 = String.valueOf(ddVar);
                        stringBuilder = new StringBuilder(String.valueOf(valueOf4).length() + 36);
                        stringBuilder.append("Tag configured to dispatch on fire: ");
                        stringBuilder.append(valueOf4);
                        zzcvk.v(stringBuilder.toString());
                        obj = 1;
                    } catch (IllegalStateException e2) {
                        e = e2;
                        obj = 1;
                        valueOf2 = String.valueOf(ddVar);
                        stringBuilder = new StringBuilder(String.valueOf(valueOf2).length() + 19);
                        stringBuilder.append("Error firing tag ");
                        stringBuilder.append(valueOf2);
                        stringBuilder.append(": ");
                        zzcup.zza(stringBuilder.toString(), e, this.mContext);
                    }
                }
            } catch (IllegalStateException e3) {
                e = e3;
                valueOf2 = String.valueOf(ddVar);
                stringBuilder = new StringBuilder(String.valueOf(valueOf2).length() + 19);
                stringBuilder.append("Error firing tag ");
                stringBuilder.append(valueOf2);
                stringBuilder.append(": ");
                zzcup.zza(stringBuilder.toString(), e, this.mContext);
            }
        }
        this.zzbIJ.remove("gtm.globals.eventName");
        if (zzcut.zzCn()) {
            String valueOf5 = String.valueOf(zzcut.zzCk());
            StringBuilder stringBuilder3 = new StringBuilder(String.valueOf(valueOf5).length() + 35);
            stringBuilder3.append("Log passthrough event ");
            stringBuilder3.append(valueOf5);
            stringBuilder3.append(" to Firebase.");
            zzcvk.v(stringBuilder3.toString());
            try {
                this.zzbHN.logEventInternalNoInterceptor(zzcut.zzCm(), zzcut.zzCk(), zzcut.zzCl(), zzcut.currentTimeMillis());
            } catch (RemoteException e4) {
                zzcup.zza("Error calling measurement proxy: ", e4, this.mContext);
            }
        } else {
            String valueOf6 = String.valueOf(zzcut.zzCk());
            StringBuilder stringBuilder4 = new StringBuilder(String.valueOf(valueOf6).length() + 63);
            stringBuilder4.append("Non-passthrough event ");
            stringBuilder4.append(valueOf6);
            stringBuilder4.append(" doesn't get logged to Firebase directly.");
            zzcvk.v(stringBuilder4.toString());
        }
        if (obj != null) {
            zzcvk.v("Dispatch called for dispatchOnFire tags.");
            dispatch();
        }
    }

    public final dp<?> zzfH(String str) {
        if (this.zzbIM.contains(str)) {
            String valueOf = String.valueOf(this.zzbIM.toString());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 77) + String.valueOf(valueOf).length());
            stringBuilder.append("Macro cycle detected.  Current macro reference: ");
            stringBuilder.append(str);
            stringBuilder.append(". Previous macro references: ");
            stringBuilder.append(valueOf);
            throw new IllegalStateException(stringBuilder.toString());
        }
        this.zzbGp = 0;
        return zzfI(str);
    }
}
