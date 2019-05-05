package com.google.android.gms.internal;

import android.accounts.Account;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.plus.PlusShare;
import java.util.ArrayList;

public final class zzapv {
    public static zzapl zza(Action action, long j, String str, int i) {
        int i2;
        Bundle bundle = new Bundle();
        bundle.putAll(action.zzmn());
        Bundle bundle2 = bundle.getBundle("object");
        Uri parse = bundle2.containsKey("id") ? Uri.parse(bundle2.getString("id")) : null;
        String string = bundle2.getString("name");
        String string2 = bundle2.getString("type");
        Intent zza = zzapw.zza(str, Uri.parse(bundle2.getString(PlusShare.KEY_CALL_TO_ACTION_URL)));
        zzaox zza2 = zzapl.zza(zza, string, parse, string2, null);
        if (bundle.containsKey(".private:ssbContext")) {
            zza2.zza(zzapb.zzd(bundle.getByteArray(".private:ssbContext")));
            bundle.remove(".private:ssbContext");
        }
        if (bundle.containsKey(".private:accountName")) {
            zza2.zzb(new Account(bundle.getString(".private:accountName"), "com.google"));
            bundle.remove(".private:accountName");
        }
        boolean z = false;
        if (bundle.containsKey(".private:isContextOnly") && bundle.getBoolean(".private:isContextOnly")) {
            i2 = 4;
            bundle.remove(".private:isContextOnly");
        } else {
            i2 = 0;
        }
        if (bundle.containsKey(".private:isDeviceOnly")) {
            z = bundle.getBoolean(".private:isDeviceOnly", false);
            bundle.remove(".private:isDeviceOnly");
        }
        string2 = ".private:action";
        zza2.zza(new zzapb(adp.zzc(zzh(bundle)), new zzapj(string2).zzK(true).zzbJ(string2).zzbI("blob").zzml()));
        return new zzapm().zza(zzapl.zza(str, zza)).zzv(j).zzS(i2).zza(zza2.zzmj()).zzM(z).zzT(i).zzmm();
    }

    private static zzcbb zzb(String str, Bundle bundle) {
        zzcbb zzcbb = new zzcbb();
        zzcbb.name = str;
        zzcbb.zzbgu = new zzcbd();
        zzcbb.zzbgu.zzbgz = zzh(bundle);
        return zzcbb;
    }

    private static zzcbc zzh(Bundle bundle) {
        ArrayList arrayList = new ArrayList();
        for (String str : bundle.keySet()) {
            Object zzp;
            Object obj = bundle.get(str);
            if (obj instanceof String) {
                zzp = zzp(str, (String) obj);
            } else if (obj instanceof Bundle) {
                zzp = zzb(str, (Bundle) obj);
            } else {
                int i = 0;
                int length;
                if (obj instanceof String[]) {
                    String[] strArr = (String[]) obj;
                    length = strArr.length;
                    while (i < length) {
                        String str2 = strArr[i];
                        if (str2 != null) {
                            arrayList.add(zzp(str, str2));
                        }
                        i++;
                    }
                } else if (obj instanceof Bundle[]) {
                    Bundle[] bundleArr = (Bundle[]) obj;
                    length = bundleArr.length;
                    while (i < length) {
                        Bundle bundle2 = bundleArr[i];
                        if (bundle2 != null) {
                            arrayList.add(zzb(str, bundle2));
                        }
                        i++;
                    }
                } else if (obj instanceof Boolean) {
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    zzcbb zzcbb = new zzcbb();
                    zzcbb.name = str;
                    zzcbb.zzbgu = new zzcbd();
                    zzcbb.zzbgu.zzbgw = booleanValue;
                    arrayList.add(zzcbb);
                } else {
                    String valueOf = String.valueOf(obj);
                    StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 19);
                    stringBuilder.append("Unsupported value: ");
                    stringBuilder.append(valueOf);
                    Log.e("SearchIndex", stringBuilder.toString());
                }
            }
            arrayList.add(zzp);
        }
        zzcbc zzcbc = new zzcbc();
        if (bundle.containsKey("type")) {
            zzcbc.type = bundle.getString("type");
        }
        zzcbc.zzbgv = (zzcbb[]) arrayList.toArray(new zzcbb[arrayList.size()]);
        return zzcbc;
    }

    private static zzcbb zzp(String str, String str2) {
        zzcbb zzcbb = new zzcbb();
        zzcbb.name = str;
        zzcbb.zzbgu = new zzcbd();
        zzcbb.zzbgu.zzaIF = str2;
        return zzcbb;
    }
}
