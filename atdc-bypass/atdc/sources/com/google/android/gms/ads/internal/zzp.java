package com.google.android.gms.ads.internal;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.internal.zzir;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzzn;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

@zzzn
public final class zzp {
    private static String bundleToString(@Nullable Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            String bundleToString = obj == null ? "null" : obj instanceof Bundle ? bundleToString((Bundle) obj) : obj.toString();
            stringBuilder.append(bundleToString);
        }
        return stringBuilder.toString();
    }

    public static Object[] zza(String str, zzir zzir, String str2, int i, @Nullable zziv zziv) {
        HashSet hashSet = new HashSet(Arrays.asList(str.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(str2);
        if (hashSet.contains("formatString")) {
            arrayList.add(null);
        }
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzir.zzzN));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(bundleToString(zzir.extras));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzir.zzzO));
        }
        if (hashSet.contains("keywords")) {
            if (zzir.zzzP != null) {
                arrayList.add(zzir.zzzP.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzir.zzzQ));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzir.zzzR));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzir.zzzS));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzir.zzzT);
        }
        if (hashSet.contains(Param.LOCATION)) {
            if (zzir.zzzV != null) {
                arrayList.add(zzir.zzzV.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzir.zzzW);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(bundleToString(zzir.zzzX));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(bundleToString(zzir.zzzY));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (zzir.zzzZ != null) {
                arrayList.add(zzir.zzzZ.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzir.zzAa);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzir.zzAb);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzir.zzAc));
        }
        return arrayList.toArray();
    }
}
