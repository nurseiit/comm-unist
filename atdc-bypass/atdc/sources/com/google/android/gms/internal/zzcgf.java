package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.measurement.AppMeasurement.Event;
import com.google.android.gms.measurement.AppMeasurement.Param;
import com.google.android.gms.measurement.AppMeasurement.UserProperty;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Map;

public final class zzcgf extends zzchj {
    private final Map<String, Map<String, String>> zzbrQ = new ArrayMap();
    private final Map<String, Map<String, Boolean>> zzbrR = new ArrayMap();
    private final Map<String, Map<String, Boolean>> zzbrS = new ArrayMap();
    private final Map<String, zzcjt> zzbrT = new ArrayMap();
    private final Map<String, String> zzbrU = new ArrayMap();

    zzcgf(zzcgl zzcgl) {
        super(zzcgl);
    }

    private static Map<String, String> zza(zzcjt zzcjt) {
        ArrayMap arrayMap = new ArrayMap();
        if (!(zzcjt == null || zzcjt.zzbvn == null)) {
            for (zzcju zzcju : zzcjt.zzbvn) {
                if (zzcju != null) {
                    arrayMap.put(zzcju.key, zzcju.value);
                }
            }
        }
        return arrayMap;
    }

    private final void zza(String str, zzcjt zzcjt) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        if (!(zzcjt == null || zzcjt.zzbvo == null)) {
            for (zzcjs zzcjs : zzcjt.zzbvo) {
                if (zzcjs != null) {
                    String zzdF = Event.zzdF(zzcjs.name);
                    if (zzdF != null) {
                        zzcjs.name = zzdF;
                    }
                    arrayMap.put(zzcjs.name, zzcjs.zzbvj);
                    arrayMap2.put(zzcjs.name, zzcjs.zzbvk);
                }
            }
        }
        this.zzbrR.put(str, arrayMap);
        this.zzbrS.put(str, arrayMap2);
    }

    @WorkerThread
    private final zzcjt zzc(String str, byte[] bArr) {
        if (bArr == null) {
            return new zzcjt();
        }
        adg zzb = adg.zzb(bArr, 0, bArr.length);
        zzcjt zzcjt = new zzcjt();
        try {
            zzcjt.zza(zzb);
            super.zzwF().zzyD().zze("Parsed config. version, gmp_app_id", zzcjt.zzbvl, zzcjt.zzboQ);
            return zzcjt;
        } catch (IOException e) {
            super.zzwF().zzyz().zze("Unable to merge remote config. appId", zzcfl.zzdZ(str), e);
            return new zzcjt();
        }
    }

    @WorkerThread
    private final void zzeg(String str) {
        zzkD();
        super.zzjC();
        zzbo.zzcF(str);
        if (this.zzbrT.get(str) == null) {
            byte[] zzdS = super.zzwz().zzdS(str);
            if (zzdS == null) {
                this.zzbrQ.put(str, null);
                this.zzbrR.put(str, null);
                this.zzbrS.put(str, null);
                this.zzbrT.put(str, null);
                this.zzbrU.put(str, null);
                return;
            }
            zzcjt zzc = zzc(str, zzdS);
            this.zzbrQ.put(str, zza(zzc));
            zza(str, zzc);
            this.zzbrT.put(str, zzc);
            this.zzbrU.put(str, null);
        }
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final String zzM(String str, String str2) {
        super.zzjC();
        zzeg(str);
        Map map = (Map) this.zzbrQ.get(str);
        return map != null ? (String) map.get(str2) : null;
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final boolean zzN(String str, String str2) {
        super.zzjC();
        zzeg(str);
        if (super.zzwB().zzeA(str) && zzcjl.zzex(str2)) {
            return true;
        }
        if (super.zzwB().zzeB(str) && zzcjl.zzeo(str2)) {
            return true;
        }
        Map map = (Map) this.zzbrR.get(str);
        if (map == null) {
            return false;
        }
        Boolean bool = (Boolean) map.get(str2);
        return bool == null ? false : bool.booleanValue();
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final boolean zzO(String str, String str2) {
        super.zzjC();
        zzeg(str);
        if (FirebaseAnalytics.Event.ECOMMERCE_PURCHASE.equals(str2)) {
            return true;
        }
        Map map = (Map) this.zzbrS.get(str);
        if (map == null) {
            return false;
        }
        Boolean bool = (Boolean) map.get(str2);
        return bool == null ? false : bool.booleanValue();
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final boolean zzb(String str, byte[] bArr, String str2) {
        String str3 = str;
        zzkD();
        super.zzjC();
        zzbo.zzcF(str);
        zzcjt zzc = zzc(str, bArr);
        if (zzc == null) {
            return false;
        }
        byte[] bArr2;
        zza(str3, zzc);
        this.zzbrT.put(str3, zzc);
        this.zzbrU.put(str3, str2);
        this.zzbrQ.put(str3, zza(zzc));
        zzcej zzws = super.zzws();
        zzcjm[] zzcjmArr = zzc.zzbvp;
        zzbo.zzu(zzcjmArr);
        int length = zzcjmArr.length;
        int i = 0;
        while (i < length) {
            int i2;
            zzcjm zzcjm = zzcjmArr[i];
            for (zzcjn zzcjn : zzcjm.zzbuK) {
                String zzdF = Event.zzdF(zzcjn.zzbuN);
                if (zzdF != null) {
                    zzcjn.zzbuN = zzdF;
                }
                zzcjo[] zzcjoArr = zzcjn.zzbuO;
                int length2 = zzcjoArr.length;
                int i3 = 0;
                while (i3 < length2) {
                    zzcjo zzcjo = zzcjoArr[i3];
                    i2 = length;
                    String zzdF2 = Param.zzdF(zzcjo.zzbuV);
                    if (zzdF2 != null) {
                        zzcjo.zzbuV = zzdF2;
                    }
                    i3++;
                    length = i2;
                }
                i2 = length;
            }
            i2 = length;
            for (zzcjq zzcjq : zzcjm.zzbuJ) {
                String zzdF3 = UserProperty.zzdF(zzcjq.zzbvc);
                if (zzdF3 != null) {
                    zzcjq.zzbvc = zzdF3;
                }
            }
            i++;
            length = i2;
        }
        zzws.zzwz().zza(str3, zzcjmArr);
        try {
            zzc.zzbvp = null;
            bArr2 = new byte[zzc.zzLV()];
            zzc.zza(adh.zzc(bArr2, 0, bArr2.length));
        } catch (IOException e) {
            super.zzwF().zzyz().zze("Unable to serialize reduced-size config. Storing full config instead. appId", zzcfl.zzdZ(str), e);
            bArr2 = bArr;
        }
        zzcen zzwz = super.zzwz();
        zzbo.zzcF(str);
        zzwz.zzjC();
        zzwz.zzkD();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr2);
        try {
            if (((long) zzwz.getWritableDatabase().update("apps", contentValues, "app_id = ?", new String[]{str3})) == 0) {
                zzwz.zzwF().zzyx().zzj("Failed to update remote config (got 0). appId", zzcfl.zzdZ(str));
                return true;
            }
        } catch (SQLiteException e2) {
            zzwz.zzwF().zzyx().zze("Error storing remote config. appId", zzcfl.zzdZ(str), e2);
        }
        return true;
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final zzcjt zzeh(String str) {
        zzkD();
        super.zzjC();
        zzbo.zzcF(str);
        zzeg(str);
        return (zzcjt) this.zzbrT.get(str);
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final String zzei(String str) {
        super.zzjC();
        return (String) this.zzbrU.get(str);
    }

    /* Access modifiers changed, original: protected|final */
    @WorkerThread
    public final void zzej(String str) {
        super.zzjC();
        this.zzbrU.put(str, null);
    }

    /* Access modifiers changed, original: final */
    @WorkerThread
    public final void zzek(String str) {
        super.zzjC();
        this.zzbrT.remove(str);
    }

    public final /* bridge */ /* synthetic */ void zzjC() {
        super.zzjC();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
    }

    public final /* bridge */ /* synthetic */ zze zzkq() {
        return super.zzkq();
    }

    public final /* bridge */ /* synthetic */ zzcfj zzwA() {
        return super.zzwA();
    }

    public final /* bridge */ /* synthetic */ zzcjl zzwB() {
        return super.zzwB();
    }

    public final /* bridge */ /* synthetic */ zzcgf zzwC() {
        return super.zzwC();
    }

    public final /* bridge */ /* synthetic */ zzcja zzwD() {
        return super.zzwD();
    }

    public final /* bridge */ /* synthetic */ zzcgg zzwE() {
        return super.zzwE();
    }

    public final /* bridge */ /* synthetic */ zzcfl zzwF() {
        return super.zzwF();
    }

    public final /* bridge */ /* synthetic */ zzcfw zzwG() {
        return super.zzwG();
    }

    public final /* bridge */ /* synthetic */ zzcem zzwH() {
        return super.zzwH();
    }

    public final /* bridge */ /* synthetic */ void zzwo() {
        super.zzwo();
    }

    public final /* bridge */ /* synthetic */ void zzwp() {
        super.zzwp();
    }

    public final /* bridge */ /* synthetic */ void zzwq() {
        super.zzwq();
    }

    public final /* bridge */ /* synthetic */ zzcec zzwr() {
        return super.zzwr();
    }

    public final /* bridge */ /* synthetic */ zzcej zzws() {
        return super.zzws();
    }

    public final /* bridge */ /* synthetic */ zzchl zzwt() {
        return super.zzwt();
    }

    public final /* bridge */ /* synthetic */ zzcfg zzwu() {
        return super.zzwu();
    }

    public final /* bridge */ /* synthetic */ zzcet zzwv() {
        return super.zzwv();
    }

    public final /* bridge */ /* synthetic */ zzcid zzww() {
        return super.zzww();
    }

    public final /* bridge */ /* synthetic */ zzchz zzwx() {
        return super.zzwx();
    }

    public final /* bridge */ /* synthetic */ zzcfh zzwy() {
        return super.zzwy();
    }

    public final /* bridge */ /* synthetic */ zzcen zzwz() {
        return super.zzwz();
    }
}
