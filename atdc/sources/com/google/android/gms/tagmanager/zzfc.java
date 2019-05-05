package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ei;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbp;
import com.google.android.gms.internal.zzbr;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class zzfc {
    private static final zzea<zzbr> zzbGe = new zzea(zzgk.zzCh(), true);
    private final DataLayer zzbDx;
    private final ek zzbGf;
    private final zzbo zzbGg;
    private final Map<String, zzbr> zzbGh;
    private final Map<String, zzbr> zzbGi;
    private final Map<String, zzbr> zzbGj;
    private final zzp<ei, zzea<zzbr>> zzbGk;
    private final zzp<String, zzfi> zzbGl;
    private final Set<em> zzbGm;
    private final Map<String, zzfj> zzbGn;
    private volatile String zzbGo;
    private int zzbGp;

    public zzfc(Context context, ek ekVar, DataLayer dataLayer, zzan zzan, zzan zzan2, zzbo zzbo) {
        if (ekVar == null) {
            throw new NullPointerException("resource cannot be null");
        }
        ei eiVar;
        this.zzbGf = ekVar;
        this.zzbGm = new HashSet(ekVar.zzCX());
        this.zzbDx = dataLayer;
        this.zzbGg = zzbo;
        zzfd zzfd = new zzfd(this);
        zzq zzq = new zzq();
        this.zzbGk = zzq.zza(1048576, zzfd);
        zzfe zzfe = new zzfe(this);
        zzq zzq2 = new zzq();
        this.zzbGl = zzq.zza(1048576, zzfe);
        this.zzbGh = new HashMap();
        zzb(new zzm(context));
        zzb(new zzam(zzan2));
        zzb(new zzaz(dataLayer));
        zzb(new zzgl(context, dataLayer));
        this.zzbGi = new HashMap();
        zzc(new zzak());
        zzc(new zzbl());
        zzc(new zzbm());
        zzc(new zzbt());
        zzc(new zzbu());
        zzc(new zzdf());
        zzc(new zzdg());
        zzc(new zzem());
        zzc(new zzfz());
        this.zzbGj = new HashMap();
        zza(new zze(context));
        zza(new zzf(context));
        zza(new zzh(context));
        zza(new zzi(context));
        zza(new zzj(context));
        zza(new zzk(context));
        zza(new zzl(context));
        zza(new zzt());
        zza(new zzaj(this.zzbGf.getVersion()));
        zza(new zzam(zzan));
        zza(new zzas(dataLayer));
        zza(new zzbc(context));
        zza(new zzbd());
        zza(new zzbk());
        zza(new zzbp(this));
        zza(new zzbv());
        zza(new zzbw());
        zza(new zzcw(context));
        zza(new zzcy());
        zza(new zzde());
        zza(new zzdl());
        zza(new zzdn(context));
        zza(new zzeb());
        zza(new zzef());
        zza(new zzej());
        zza(new zzel());
        zza(new zzen(context));
        zza(new zzfk());
        zza(new zzfl());
        zza(new zzgf());
        zza(new zzgm());
        this.zzbGn = new HashMap();
        for (em emVar : this.zzbGm) {
            for (int i = 0; i < emVar.zzDC().size(); i++) {
                ei eiVar2 = (ei) emVar.zzDC().get(i);
                zzfj zzf = zzf(this.zzbGn, zza(eiVar2));
                zzf.zza(emVar);
                zzf.zza(emVar, eiVar2);
                zzf.zza(emVar, "Unknown");
            }
            for (int i2 = 0; i2 < emVar.zzDD().size(); i2++) {
                eiVar = (ei) emVar.zzDD().get(i2);
                zzfj zzf2 = zzf(this.zzbGn, zza(eiVar));
                zzf2.zza(emVar);
                zzf2.zzb(emVar, eiVar);
                zzf2.zzb(emVar, "Unknown");
            }
        }
        for (Entry entry : this.zzbGf.zzDA().entrySet()) {
            for (ei eiVar3 : (List) entry.getValue()) {
                if (!zzgk.zzf((zzbr) eiVar3.zzCZ().get(zzbg.NOT_DEFAULT_MACRO.toString())).booleanValue()) {
                    zzf(this.zzbGn, (String) entry.getKey()).zzb(eiVar3);
                }
            }
        }
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

    private final zzea<Boolean> zza(ei eiVar, Set<String> set, zzeo zzeo) {
        zzea zza = zza(this.zzbGi, eiVar, (Set) set, zzeo);
        Boolean zzf = zzgk.zzf((zzbr) zza.getObject());
        zzgk.zzI(zzf);
        return new zzea(zzf, zza.zzBz());
    }

    private final zzea<Boolean> zza(em emVar, Set<String> set, zzer zzer) {
        while (true) {
            boolean z = true;
            for (ei zza : emVar.zzDc()) {
                zzea zza2 = zza(zza, (Set) set, zzer.zzBr());
                if (((Boolean) zza2.getObject()).booleanValue()) {
                    zzgk.zzI(Boolean.valueOf(false));
                    return new zzea(Boolean.valueOf(false), zza2.zzBz());
                } else if (!z || !zza2.zzBz()) {
                    z = false;
                }
            }
            for (ei zza3 : emVar.zzDb()) {
                zzea zza4 = zza(zza3, (Set) set, zzer.zzBs());
                if (((Boolean) zza4.getObject()).booleanValue()) {
                    z = z && zza4.zzBz();
                } else {
                    zzgk.zzI(Boolean.valueOf(false));
                    return new zzea(Boolean.valueOf(false), zza4.zzBz());
                }
            }
            zzgk.zzI(Boolean.valueOf(true));
            return new zzea(Boolean.valueOf(true), z);
        }
    }

    private final zzea<zzbr> zza(zzbr zzbr, Set<String> set, zzgn zzgn) {
        if (!zzbr.zzlN) {
            return new zzea(zzbr, true);
        }
        int i = zzbr.type;
        zzbr zzj;
        int i2;
        zzea zza;
        if (i != 7) {
            String str;
            String valueOf;
            switch (i) {
                case 2:
                    zzj = eg.zzj(zzbr);
                    zzj.zzlE = new zzbr[zzbr.zzlE.length];
                    for (i2 = 0; i2 < zzbr.zzlE.length; i2++) {
                        zza = zza(zzbr.zzlE[i2], (Set) set, zzgn.zzbz(i2));
                        if (zza == zzbGe) {
                            return zzbGe;
                        }
                        zzj.zzlE[i2] = (zzbr) zza.getObject();
                    }
                    return new zzea(zzj, false);
                case 3:
                    zzj = eg.zzj(zzbr);
                    if (zzbr.zzlF.length != zzbr.zzlG.length) {
                        str = "Invalid serving value: ";
                        valueOf = String.valueOf(zzbr.toString());
                        zzdj.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                        return zzbGe;
                    }
                    zzj.zzlF = new zzbr[zzbr.zzlF.length];
                    zzj.zzlG = new zzbr[zzbr.zzlF.length];
                    for (i2 = 0; i2 < zzbr.zzlF.length; i2++) {
                        zza = zza(zzbr.zzlF[i2], (Set) set, zzgn.zzbA(i2));
                        zzea zza2 = zza(zzbr.zzlG[i2], (Set) set, zzgn.zzbB(i2));
                        if (zza == zzbGe || zza2 == zzbGe) {
                            return zzbGe;
                        }
                        zzj.zzlF[i2] = (zzbr) zza.getObject();
                        zzj.zzlG[i2] = (zzbr) zza2.getObject();
                    }
                    return new zzea(zzj, false);
                case 4:
                    if (set.contains(zzbr.zzlH)) {
                        valueOf = String.valueOf(zzbr.zzlH);
                        str = String.valueOf(set.toString());
                        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 79) + String.valueOf(str).length());
                        stringBuilder.append("Macro cycle detected.  Current macro reference: ");
                        stringBuilder.append(valueOf);
                        stringBuilder.append(".  Previous macro references: ");
                        stringBuilder.append(str);
                        stringBuilder.append(".");
                        zzdj.e(stringBuilder.toString());
                        return zzbGe;
                    }
                    set.add(zzbr.zzlH);
                    zzea zza3 = zzgo.zza(zza(zzbr.zzlH, (Set) set, zzgn.zzBy()), zzbr.zzlM);
                    set.remove(zzbr.zzlH);
                    return zza3;
                default:
                    int i3 = zzbr.type;
                    StringBuilder stringBuilder2 = new StringBuilder(25);
                    stringBuilder2.append("Unknown type: ");
                    stringBuilder2.append(i3);
                    zzdj.e(stringBuilder2.toString());
                    return zzbGe;
            }
        }
        zzj = eg.zzj(zzbr);
        zzj.zzlL = new zzbr[zzbr.zzlL.length];
        for (i2 = 0; i2 < zzbr.zzlL.length; i2++) {
            zza = zza(zzbr.zzlL[i2], (Set) set, zzgn.zzbC(i2));
            if (zza == zzbGe) {
                return zzbGe;
            }
            zzj.zzlL[i2] = (zzbr) zza.getObject();
        }
        return new zzea(zzj, false);
    }

    private final zzea<zzbr> zza(String str, Set<String> set, zzdm zzdm) {
        this.zzbGp++;
        zzfi zzfi = (zzfi) this.zzbGl.get(str);
        if (zzfi != null) {
            zza(zzfi.zzBN(), (Set) set);
            this.zzbGp--;
            return zzfi.zzBM();
        }
        zzfj zzfj = (zzfj) this.zzbGn.get(str);
        if (zzfj == null) {
            String valueOf = String.valueOf(zzBL());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 15) + String.valueOf(str).length());
            stringBuilder.append(valueOf);
            stringBuilder.append("Invalid macro: ");
            stringBuilder.append(str);
            zzdj.e(stringBuilder.toString());
            this.zzbGp--;
            return zzbGe;
        }
        ei zzBT;
        zzea zza = zza(str, zzfj.zzBO(), zzfj.zzBP(), zzfj.zzBQ(), zzfj.zzBS(), zzfj.zzBR(), set, zzdm.zzAZ());
        if (((Set) zza.getObject()).isEmpty()) {
            zzBT = zzfj.zzBT();
        } else {
            if (((Set) zza.getObject()).size() > 1) {
                String valueOf2 = String.valueOf(zzBL());
                StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf2).length() + 37) + String.valueOf(str).length());
                stringBuilder2.append(valueOf2);
                stringBuilder2.append("Multiple macros active for macroName ");
                stringBuilder2.append(str);
                zzdj.zzaT(stringBuilder2.toString());
            }
            zzBT = (ei) ((Set) zza.getObject()).iterator().next();
        }
        if (zzBT == null) {
            this.zzbGp--;
            return zzbGe;
        }
        zzea zza2 = zza(this.zzbGj, zzBT, (Set) set, zzdm.zzBq());
        boolean z = zza.zzBz() && zza2.zzBz();
        zza2 = zza2 == zzbGe ? zzbGe : new zzea((zzbr) zza2.getObject(), z);
        zzbr zzBN = zzBT.zzBN();
        if (zza2.zzBz()) {
            this.zzbGl.zzf(str, new zzfi(zza2, zzBN));
        }
        zza(zzBN, (Set) set);
        this.zzbGp--;
        return zza2;
    }

    private final zzea<Set<ei>> zza(String str, Set<em> set, Map<em, List<ei>> map, Map<em, List<String>> map2, Map<em, List<ei>> map3, Map<em, List<String>> map4, Set<String> set2, zzfb zzfb) {
        return zza((Set) set, (Set) set2, new zzff(this, map, map2, map3, map4), zzfb);
    }

    private final zzea<zzbr> zza(Map<String, zzbr> map, ei eiVar, Set<String> set, zzeo zzeo) {
        String str;
        zzbr zzbr = (zzbr) eiVar.zzCZ().get(zzbg.FUNCTION.toString());
        if (zzbr == null) {
            str = "No function id in properties";
        } else {
            String str2 = zzbr.zzlI;
            zzbr zzbr2 = (zzbr) map.get(str2);
            if (zzbr2 == null) {
                str = String.valueOf(str2).concat(" has no backing implementation.");
            } else {
                zzea zzea = (zzea) this.zzbGk.get(eiVar);
                if (zzea != null) {
                    return zzea;
                }
                HashMap hashMap = new HashMap();
                boolean z = true;
                Object obj = 1;
                for (Entry entry : eiVar.zzCZ().entrySet()) {
                    zzea zza = zza((zzbr) entry.getValue(), (Set) set, zzeo.zzfp((String) entry.getKey()).zza((zzbr) entry.getValue()));
                    if (zza == zzbGe) {
                        return zzbGe;
                    }
                    if (zza.zzBz()) {
                        eiVar.zza((String) entry.getKey(), (zzbr) zza.getObject());
                    } else {
                        obj = null;
                    }
                    hashMap.put((String) entry.getKey(), (zzbr) zza.getObject());
                }
                if (zzbr2.zzd(hashMap.keySet())) {
                    if (obj == null || !zzbr2.zzAE()) {
                        z = false;
                    }
                    zzea zzea2 = new zzea(zzbr2.zzo(hashMap), z);
                    if (z) {
                        this.zzbGk.zzf(eiVar, zzea2);
                    }
                    return zzea2;
                }
                str = String.valueOf(zzbr2.zzBl());
                String valueOf = String.valueOf(hashMap.keySet());
                StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str2).length() + 43) + String.valueOf(str).length()) + String.valueOf(valueOf).length());
                stringBuilder.append("Incorrect keys for function ");
                stringBuilder.append(str2);
                stringBuilder.append(" required ");
                stringBuilder.append(str);
                stringBuilder.append(" had ");
                stringBuilder.append(valueOf);
                str = stringBuilder.toString();
            }
        }
        zzdj.e(str);
        return zzbGe;
    }

    private final zzea<Set<ei>> zza(Set<em> set, Set<String> set2, zzfh zzfh, zzfb zzfb) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        while (true) {
            boolean z = true;
            for (em emVar : set) {
                zzer zzBx = zzfb.zzBx();
                zzea zza = zza(emVar, (Set) set2, zzBx);
                if (((Boolean) zza.getObject()).booleanValue()) {
                    zzfh.zza(emVar, hashSet, hashSet2, zzBx);
                }
                if (!z || !zza.zzBz()) {
                    z = false;
                }
            }
            hashSet.removeAll(hashSet2);
            return new zzea(hashSet, z);
        }
    }

    private static String zza(ei eiVar) {
        return zzgk.zzb((zzbr) eiVar.zzCZ().get(zzbg.INSTANCE_NAME.toString()));
    }

    private final void zza(zzbr zzbr, Set<String> set) {
        if (zzbr != null) {
            zzea zza = zza(zzbr, (Set) set, new zzdy());
            if (zza != zzbGe) {
                Object zzg = zzgk.zzg((zzbr) zza.getObject());
                if (zzg instanceof Map) {
                    this.zzbDx.push((Map) zzg);
                } else if (zzg instanceof List) {
                    for (Object next : (List) zzg) {
                        if (next instanceof Map) {
                            this.zzbDx.push((Map) next);
                        } else {
                            zzdj.zzaT("pushAfterEvaluate: value not a Map");
                        }
                    }
                } else {
                    zzdj.zzaT("pushAfterEvaluate: value not a Map or List");
                }
            }
        }
    }

    private final void zza(zzbr zzbr) {
        zza(this.zzbGj, zzbr);
    }

    private static void zza(Map<String, zzbr> map, zzbr zzbr) {
        if (map.containsKey(zzbr.zzBk())) {
            String str = "Duplicate function type name: ";
            String valueOf = String.valueOf(zzbr.zzBk());
            throw new IllegalArgumentException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
        map.put(zzbr.zzBk(), zzbr);
    }

    private final void zzb(zzbr zzbr) {
        zza(this.zzbGh, zzbr);
    }

    private final void zzc(zzbr zzbr) {
        zza(this.zzbGi, zzbr);
    }

    private static zzfj zzf(Map<String, zzfj> map, String str) {
        zzfj zzfj = (zzfj) map.get(str);
        if (zzfj != null) {
            return zzfj;
        }
        zzfj = new zzfj();
        map.put(str, zzfj);
        return zzfj;
    }

    private final synchronized void zzft(String str) {
        this.zzbGo = str;
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized String zzBK() {
        return this.zzbGo;
    }

    public final synchronized void zzL(List<zzbp> list) {
        for (zzbp zzbp : list) {
            if (zzbp.name != null) {
                if (zzbp.name.startsWith("gaExperiment:")) {
                    zzbq.zza(this.zzbDx, zzbp);
                }
            }
            String valueOf = String.valueOf(zzbp);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 22);
            stringBuilder.append("Ignored supplemental: ");
            stringBuilder.append(valueOf);
            zzdj.v(stringBuilder.toString());
        }
    }

    public final synchronized void zzeZ(String str) {
        zzft(str);
        zzar zzBj = this.zzbGg.zzfj(str).zzBj();
        for (ei zza : (Set) zza(this.zzbGm, new HashSet(), new zzfg(this), zzBj.zzAZ()).getObject()) {
            zza(this.zzbGh, zza, new HashSet(), zzBj.zzAY());
        }
        zzft(null);
    }

    public final zzea<zzbr> zzfs(String str) {
        this.zzbGp = 0;
        return zza(str, new HashSet(), this.zzbGg.zzfi(str).zzBi());
    }
}
