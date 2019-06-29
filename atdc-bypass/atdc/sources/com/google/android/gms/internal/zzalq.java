package com.google.android.gms.internal;

import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.analytics.zzj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class zzalq extends zzj<zzalq> {
    private ProductAction zzadK;
    private final Map<String, List<Product>> zzadL = new HashMap();
    private final List<Promotion> zzadM = new ArrayList();
    private final List<Product> zzadN = new ArrayList();

    public final String toString() {
        HashMap hashMap = new HashMap();
        if (!this.zzadN.isEmpty()) {
            hashMap.put("products", this.zzadN);
        }
        if (!this.zzadM.isEmpty()) {
            hashMap.put("promotions", this.zzadM);
        }
        if (!this.zzadL.isEmpty()) {
            hashMap.put("impressions", this.zzadL);
        }
        hashMap.put("productAction", this.zzadK);
        return zzj.zzh(hashMap);
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        zzalq zzalq = (zzalq) zzj;
        zzalq.zzadN.addAll(this.zzadN);
        zzalq.zzadM.addAll(this.zzadM);
        for (Entry entry : this.zzadL.entrySet()) {
            String str = (String) entry.getKey();
            for (Product product : (List) entry.getValue()) {
                if (product != null) {
                    Object obj = str == null ? "" : str;
                    if (!zzalq.zzadL.containsKey(obj)) {
                        zzalq.zzadL.put(obj, new ArrayList());
                    }
                    ((List) zzalq.zzadL.get(obj)).add(product);
                }
            }
        }
        if (this.zzadK != null) {
            zzalq.zzadK = this.zzadK;
        }
    }

    public final ProductAction zzjS() {
        return this.zzadK;
    }

    public final List<Product> zzjT() {
        return Collections.unmodifiableList(this.zzadN);
    }

    public final Map<String, List<Product>> zzjU() {
        return this.zzadL;
    }

    public final List<Promotion> zzjV() {
        return Collections.unmodifiableList(this.zzadM);
    }
}
