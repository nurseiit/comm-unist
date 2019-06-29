package com.google.android.gms.analytics.ecommerce;

import com.google.android.gms.analytics.zzf;
import com.google.android.gms.analytics.zzj;
import com.google.android.gms.common.internal.zzbo;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class Product {
    private Map<String, String> zzafu = new HashMap();

    private final void put(String str, String str2) {
        zzbo.zzb((Object) str, (Object) "Name should be non-null");
        this.zzafu.put(str, str2);
    }

    public Product setBrand(String str) {
        put("br", str);
        return this;
    }

    public Product setCategory(String str) {
        put("ca", str);
        return this;
    }

    public Product setCouponCode(String str) {
        put("cc", str);
        return this;
    }

    public Product setCustomDimension(int i, String str) {
        put(zzf.zzN(i), str);
        return this;
    }

    public Product setCustomMetric(int i, int i2) {
        put(zzf.zzO(i), Integer.toString(i2));
        return this;
    }

    public Product setId(String str) {
        put("id", str);
        return this;
    }

    public Product setName(String str) {
        put("nm", str);
        return this;
    }

    public Product setPosition(int i) {
        put("ps", Integer.toString(i));
        return this;
    }

    public Product setPrice(double d) {
        put("pr", Double.toString(d));
        return this;
    }

    public Product setQuantity(int i) {
        put("qt", Integer.toString(i));
        return this;
    }

    public Product setVariant(String str) {
        put("va", str);
        return this;
    }

    public String toString() {
        return zzj.zzk(this.zzafu);
    }

    public final Map<String, String> zzbl(String str) {
        HashMap hashMap = new HashMap();
        for (Entry entry : this.zzafu.entrySet()) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf((String) entry.getKey());
            hashMap.put(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), (String) entry.getValue());
        }
        return hashMap;
    }
}
