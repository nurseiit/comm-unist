package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzf;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class by extends zzcxq {
    private static final String ID = zzbf.UNIVERSAL_ANALYTICS.toString();
    private static final List<String> zzbHw = Arrays.asList(new String[]{ProductAction.ACTION_DETAIL, ProductAction.ACTION_CHECKOUT, "checkout_option", "click", ProductAction.ACTION_ADD, ProductAction.ACTION_REMOVE, ProductAction.ACTION_PURCHASE, ProductAction.ACTION_REFUND});
    private static final Pattern zzbHx = Pattern.compile("dimension(\\d+)");
    private static final Pattern zzbHy = Pattern.compile("metric(\\d+)");
    private static final Set<String> zzbKl = zzf.zza("", "0", "false");
    private static final Map<String, String> zzbKm = zzf.zza("transactionId", "&ti", "transactionAffiliation", "&ta", "transactionTax", "&tt", "transactionShipping", "&ts", "transactionTotal", "&tr", "transactionCurrency", "&cu");
    private static final Map<String, String> zzbKn = zzf.zza("name", "&in", "sku", "&ic", "category", "&iv", Param.PRICE, "&ip", Param.QUANTITY, "&iq", Param.CURRENCY, "&cu");
    private final zzcvy zzbIP;
    private final zzcxj zzbKo;
    private Map<String, Object> zzbKp;

    public by(Context context, zzcvy zzcvy) {
        this(new zzcxj(context), zzcvy);
    }

    private by(zzcxj zzcxj, zzcvy zzcvy) {
        this.zzbIP = zzcvy;
        this.zzbKo = zzcxj;
    }

    private static Double zzM(Object obj) {
        String str;
        String valueOf;
        if (obj instanceof String) {
            try {
                return Double.valueOf((String) obj);
            } catch (NumberFormatException e) {
                str = "Cannot convert the object to Double: ";
                valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        } else if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        } else {
            if (obj instanceof Double) {
                return (Double) obj;
            }
            str = "Cannot convert the object to Double: ";
            valueOf = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }

    private static Integer zzN(Object obj) {
        String str;
        String valueOf;
        if (obj instanceof String) {
            try {
                return Integer.valueOf((String) obj);
            } catch (NumberFormatException e) {
                str = "Cannot convert the object to Integer: ";
                valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        } else if (obj instanceof Double) {
            return Integer.valueOf(((Double) obj).intValue());
        } else {
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            str = "Cannot convert the object to Integer: ";
            valueOf = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }

    private final void zza(Tracker tracker, dp<?> dpVar, dp<?> dpVar2, dp<?> dpVar3) {
        String str = (String) this.zzbKp.get("transactionId");
        if (str == null) {
            zzcvk.e("Cannot find transactionId in data layer.");
            return;
        }
        LinkedList<Map> linkedList = new LinkedList();
        try {
            Map zzi = zzi(dpVar);
            zzi.put("&t", "transaction");
            for (Entry entry : (dpVar2 == dv.zzbLu ? zzbKm : zzh(dpVar2)).entrySet()) {
                String str2 = (String) this.zzbKp.get(entry.getKey());
                if (str2 != null) {
                    zzi.put((String) entry.getValue(), str2);
                }
            }
            linkedList.add(zzi);
            List<Map> zzfN = zzfN("transactionProducts");
            if (zzfN != null) {
                for (Map zzi2 : zzfN) {
                    if (zzi2.get("name") == null) {
                        zzcvk.e("Unable to send transaction item hit due to missing 'name' field.");
                        return;
                    }
                    Map zzi3 = zzi(dpVar);
                    zzi3.put("&t", "item");
                    zzi3.put("&ti", str);
                    for (Entry entry2 : (dpVar3 == dv.zzbLu ? zzbKn : zzh(dpVar3)).entrySet()) {
                        Object obj = zzi2.get(entry2.getKey());
                        if (obj != null) {
                            zzi3.put((String) entry2.getValue(), obj.toString());
                        }
                    }
                    linkedList.add(zzi3);
                }
            }
            for (Map send : linkedList) {
                tracker.send(send);
            }
        } catch (IllegalArgumentException e) {
            zzcvk.zzb("Unable to send transaction", e);
        }
    }

    private final List<Map<String, Object>> zzfN(String str) {
        Object obj = this.zzbKp.get(str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List<Object> list = (List) obj;
            for (Object obj2 : list) {
                if (!(obj2 instanceof Map)) {
                    throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
                }
            }
            return list;
        }
        throw new IllegalArgumentException("transactionProducts should be of type List.");
    }

    private static Map<String, String> zzh(dp<?> dpVar) {
        zzbo.zzu(dpVar);
        zzbo.zzaf(dpVar instanceof dz);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Object zzj = ed.zzj(ed.zzk(dpVar));
        zzbo.zzae(zzj instanceof Map);
        for (Entry entry : ((Map) zzj).entrySet()) {
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private static Map<String, String> zzi(dp<?> dpVar) {
        Map zzh = zzh(dpVar);
        String str = (String) zzh.get("&aip");
        if (str != null && zzbKl.contains(str.toLowerCase())) {
            zzh.remove("&aip");
        }
        return zzh;
    }

    private static Product zzx(Map<String, Object> map) {
        String str;
        Product product = new Product();
        Object obj = map.get("id");
        if (obj != null) {
            product.setId(String.valueOf(obj));
        }
        obj = map.get("name");
        if (obj != null) {
            product.setName(String.valueOf(obj));
        }
        obj = map.get("brand");
        if (obj != null) {
            product.setBrand(String.valueOf(obj));
        }
        obj = map.get("category");
        if (obj != null) {
            product.setCategory(String.valueOf(obj));
        }
        obj = map.get("variant");
        if (obj != null) {
            product.setVariant(String.valueOf(obj));
        }
        obj = map.get(Param.COUPON);
        if (obj != null) {
            product.setCouponCode(String.valueOf(obj));
        }
        obj = map.get("position");
        if (obj != null) {
            product.setPosition(zzN(obj).intValue());
        }
        obj = map.get(Param.PRICE);
        if (obj != null) {
            product.setPrice(zzM(obj).doubleValue());
        }
        obj = map.get(Param.QUANTITY);
        if (obj != null) {
            product.setQuantity(zzN(obj).intValue());
        }
        for (String str2 : map.keySet()) {
            String str22;
            Matcher matcher = zzbHx.matcher(str22);
            if (matcher.matches()) {
                try {
                    product.setCustomDimension(Integer.parseInt(matcher.group(1)), String.valueOf(map.get(str22)));
                } catch (NumberFormatException unused) {
                    str = "illegal number in custom dimension value: ";
                    str22 = String.valueOf(str22);
                    if (str22.length() == 0) {
                        str22 = new String(str);
                        zzcvk.zzaT(str22);
                    }
                    str22 = str.concat(str22);
                    zzcvk.zzaT(str22);
                }
            } else {
                matcher = zzbHy.matcher(str22);
                if (matcher.matches()) {
                    try {
                        product.setCustomMetric(Integer.parseInt(matcher.group(1)), zzN(map.get(str22)).intValue());
                    } catch (NumberFormatException unused2) {
                        str = "illegal number in custom metric value: ";
                        str22 = String.valueOf(str22);
                        if (str22.length() == 0) {
                            str22 = new String(str);
                            zzcvk.zzaT(str22);
                        }
                        str22 = str.concat(str22);
                        zzcvk.zzaT(str22);
                    }
                }
            }
        }
        return product;
    }

    /* Access modifiers changed, original: protected|final|varargs */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x0193 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x0229 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    /* JADX WARNING: Removed duplicated region for block: B:191:0x0364 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00d3 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00b3 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00d3 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    /* JADX WARNING: Removed duplicated region for block: B:191:0x0364 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00a4 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00b3 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    /* JADX WARNING: Removed duplicated region for block: B:191:0x0364 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00d3 A:{Catch:{ RuntimeException -> 0x0141, all -> 0x0383 }} */
    public final com.google.android.gms.internal.dp<?> zza(com.google.android.gms.internal.zzcwa r13, com.google.android.gms.internal.dp<?>... r14) {
        /*
        r12 = this;
        r13 = 1;
        com.google.android.gms.common.internal.zzbo.zzaf(r13);
        r0 = r14.length;
        r1 = 0;
        if (r0 <= 0) goto L_0x000a;
    L_0x0008:
        r0 = 1;
        goto L_0x000b;
    L_0x000a:
        r0 = 0;
    L_0x000b:
        com.google.android.gms.common.internal.zzbo.zzaf(r0);
        r0 = 0;
        r2 = r12.zzbIP;	 Catch:{ all -> 0x0383 }
        r2 = r2.zzCy();	 Catch:{ all -> 0x0383 }
        r2 = r2.zzCl();	 Catch:{ all -> 0x0383 }
        r2 = com.google.android.gms.internal.ed.zzC(r2);	 Catch:{ all -> 0x0383 }
        r12.zzbKp = r2;	 Catch:{ all -> 0x0383 }
        r2 = r14[r1];	 Catch:{ all -> 0x0383 }
        r3 = r14.length;	 Catch:{ all -> 0x0383 }
        if (r3 <= r13) goto L_0x0027;
    L_0x0024:
        r3 = r14[r13];	 Catch:{ all -> 0x0383 }
        goto L_0x0030;
    L_0x0027:
        r3 = new com.google.android.gms.internal.ds;	 Catch:{ all -> 0x0383 }
        r4 = java.lang.Boolean.valueOf(r13);	 Catch:{ all -> 0x0383 }
        r3.<init>(r4);	 Catch:{ all -> 0x0383 }
    L_0x0030:
        r4 = r14.length;	 Catch:{ all -> 0x0383 }
        r5 = 2;
        if (r4 <= r5) goto L_0x0037;
    L_0x0034:
        r4 = r14[r5];	 Catch:{ all -> 0x0383 }
        goto L_0x0040;
    L_0x0037:
        r4 = new com.google.android.gms.internal.ds;	 Catch:{ all -> 0x0383 }
        r5 = java.lang.Boolean.valueOf(r1);	 Catch:{ all -> 0x0383 }
        r4.<init>(r5);	 Catch:{ all -> 0x0383 }
    L_0x0040:
        r5 = r14.length;	 Catch:{ all -> 0x0383 }
        r6 = 3;
        if (r5 <= r6) goto L_0x0047;
    L_0x0044:
        r5 = r14[r6];	 Catch:{ all -> 0x0383 }
        goto L_0x0049;
    L_0x0047:
        r5 = com.google.android.gms.internal.dv.zzbLu;	 Catch:{ all -> 0x0383 }
    L_0x0049:
        r6 = r14.length;	 Catch:{ all -> 0x0383 }
        r7 = 4;
        if (r6 <= r7) goto L_0x0050;
    L_0x004d:
        r6 = r14[r7];	 Catch:{ all -> 0x0383 }
        goto L_0x0052;
    L_0x0050:
        r6 = com.google.android.gms.internal.dv.zzbLu;	 Catch:{ all -> 0x0383 }
    L_0x0052:
        r7 = r14.length;	 Catch:{ all -> 0x0383 }
        r8 = 5;
        if (r7 <= r8) goto L_0x0059;
    L_0x0056:
        r7 = r14[r8];	 Catch:{ all -> 0x0383 }
        goto L_0x0062;
    L_0x0059:
        r7 = new com.google.android.gms.internal.ds;	 Catch:{ all -> 0x0383 }
        r8 = java.lang.Boolean.valueOf(r1);	 Catch:{ all -> 0x0383 }
        r7.<init>(r8);	 Catch:{ all -> 0x0383 }
    L_0x0062:
        r8 = r14.length;	 Catch:{ all -> 0x0383 }
        r9 = 6;
        if (r8 <= r9) goto L_0x0069;
    L_0x0066:
        r8 = r14[r9];	 Catch:{ all -> 0x0383 }
        goto L_0x0072;
    L_0x0069:
        r8 = new com.google.android.gms.internal.ds;	 Catch:{ all -> 0x0383 }
        r9 = java.lang.Boolean.valueOf(r1);	 Catch:{ all -> 0x0383 }
        r8.<init>(r9);	 Catch:{ all -> 0x0383 }
    L_0x0072:
        r9 = r14.length;	 Catch:{ all -> 0x0383 }
        r10 = 7;
        if (r9 <= r10) goto L_0x0079;
    L_0x0076:
        r9 = r14[r10];	 Catch:{ all -> 0x0383 }
        goto L_0x007b;
    L_0x0079:
        r9 = com.google.android.gms.internal.dv.zzbLu;	 Catch:{ all -> 0x0383 }
    L_0x007b:
        r10 = r14.length;	 Catch:{ all -> 0x0383 }
        r11 = 8;
        if (r10 <= r11) goto L_0x0083;
    L_0x0080:
        r14 = r14[r11];	 Catch:{ all -> 0x0383 }
        goto L_0x008c;
    L_0x0083:
        r14 = new com.google.android.gms.internal.ds;	 Catch:{ all -> 0x0383 }
        r10 = java.lang.Boolean.valueOf(r1);	 Catch:{ all -> 0x0383 }
        r14.<init>(r10);	 Catch:{ all -> 0x0383 }
    L_0x008c:
        r10 = r2 instanceof com.google.android.gms.internal.dz;	 Catch:{ all -> 0x0383 }
        com.google.android.gms.common.internal.zzbo.zzaf(r10);	 Catch:{ all -> 0x0383 }
        r10 = com.google.android.gms.internal.dv.zzbLu;	 Catch:{ all -> 0x0383 }
        if (r5 == r10) goto L_0x009c;
    L_0x0095:
        r10 = r5 instanceof com.google.android.gms.internal.dz;	 Catch:{ all -> 0x0383 }
        if (r10 == 0) goto L_0x009a;
    L_0x0099:
        goto L_0x009c;
    L_0x009a:
        r10 = 0;
        goto L_0x009d;
    L_0x009c:
        r10 = 1;
    L_0x009d:
        com.google.android.gms.common.internal.zzbo.zzaf(r10);	 Catch:{ all -> 0x0383 }
        r10 = com.google.android.gms.internal.dv.zzbLu;	 Catch:{ all -> 0x0383 }
        if (r6 == r10) goto L_0x00ab;
    L_0x00a4:
        r10 = r6 instanceof com.google.android.gms.internal.dz;	 Catch:{ all -> 0x0383 }
        if (r10 == 0) goto L_0x00a9;
    L_0x00a8:
        goto L_0x00ab;
    L_0x00a9:
        r10 = 0;
        goto L_0x00ac;
    L_0x00ab:
        r10 = 1;
    L_0x00ac:
        com.google.android.gms.common.internal.zzbo.zzaf(r10);	 Catch:{ all -> 0x0383 }
        r10 = com.google.android.gms.internal.dv.zzbLu;	 Catch:{ all -> 0x0383 }
        if (r9 == r10) goto L_0x00ba;
    L_0x00b3:
        r10 = r9 instanceof com.google.android.gms.internal.dz;	 Catch:{ all -> 0x0383 }
        if (r10 == 0) goto L_0x00b8;
    L_0x00b7:
        goto L_0x00ba;
    L_0x00b8:
        r10 = 0;
        goto L_0x00bb;
    L_0x00ba:
        r10 = 1;
    L_0x00bb:
        com.google.android.gms.common.internal.zzbo.zzaf(r10);	 Catch:{ all -> 0x0383 }
        r10 = r12.zzbKo;	 Catch:{ all -> 0x0383 }
        r11 = "_GTM_DEFAULT_TRACKER_";
        r10 = r10.zzfv(r11);	 Catch:{ all -> 0x0383 }
        r14 = com.google.android.gms.internal.zzcxp.zza(r14);	 Catch:{ all -> 0x0383 }
        r10.enableAdvertisingIdCollection(r14);	 Catch:{ all -> 0x0383 }
        r14 = com.google.android.gms.internal.zzcxp.zza(r7);	 Catch:{ all -> 0x0383 }
        if (r14 == 0) goto L_0x0364;
    L_0x00d3:
        r14 = new com.google.android.gms.analytics.HitBuilders$ScreenViewBuilder;	 Catch:{ all -> 0x0383 }
        r14.<init>();	 Catch:{ all -> 0x0383 }
        r2 = zzi(r2);	 Catch:{ all -> 0x0383 }
        r14.setAll(r2);	 Catch:{ all -> 0x0383 }
        r3 = com.google.android.gms.internal.zzcxp.zza(r8);	 Catch:{ all -> 0x0383 }
        if (r3 == 0) goto L_0x00ee;
    L_0x00e5:
        r3 = r12.zzbKp;	 Catch:{ all -> 0x0383 }
        r4 = "ecommerce";
        r3 = r3.get(r4);	 Catch:{ all -> 0x0383 }
        goto L_0x00f6;
    L_0x00ee:
        r3 = com.google.android.gms.internal.ed.zzk(r9);	 Catch:{ all -> 0x0383 }
        r3 = com.google.android.gms.internal.ed.zzj(r3);	 Catch:{ all -> 0x0383 }
    L_0x00f6:
        r4 = r3 instanceof java.util.Map;	 Catch:{ all -> 0x0383 }
        if (r4 == 0) goto L_0x035c;
    L_0x00fa:
        r3 = (java.util.Map) r3;	 Catch:{ all -> 0x0383 }
        r4 = "&cu";
        r2 = r2.get(r4);	 Catch:{ all -> 0x0383 }
        r2 = (java.lang.String) r2;	 Catch:{ all -> 0x0383 }
        if (r2 != 0) goto L_0x010e;
    L_0x0106:
        r2 = "currencyCode";
        r2 = r3.get(r2);	 Catch:{ all -> 0x0383 }
        r2 = (java.lang.String) r2;	 Catch:{ all -> 0x0383 }
    L_0x010e:
        if (r2 == 0) goto L_0x0115;
    L_0x0110:
        r4 = "&cu";
        r14.set(r4, r2);	 Catch:{ all -> 0x0383 }
    L_0x0115:
        r2 = "impressions";
        r2 = r3.get(r2);	 Catch:{ all -> 0x0383 }
        r4 = r2 instanceof java.util.List;	 Catch:{ all -> 0x0383 }
        if (r4 == 0) goto L_0x0160;
    L_0x011f:
        r2 = (java.util.List) r2;	 Catch:{ all -> 0x0383 }
        r2 = r2.iterator();	 Catch:{ all -> 0x0383 }
    L_0x0125:
        r4 = r2.hasNext();	 Catch:{ all -> 0x0383 }
        if (r4 == 0) goto L_0x0160;
    L_0x012b:
        r4 = r2.next();	 Catch:{ all -> 0x0383 }
        r4 = (java.util.Map) r4;	 Catch:{ all -> 0x0383 }
        r5 = zzx(r4);	 Catch:{ RuntimeException -> 0x0141 }
        r6 = "list";
        r4 = r4.get(r6);	 Catch:{ RuntimeException -> 0x0141 }
        r4 = (java.lang.String) r4;	 Catch:{ RuntimeException -> 0x0141 }
        r14.addImpression(r5, r4);	 Catch:{ RuntimeException -> 0x0141 }
        goto L_0x0125;
    L_0x0141:
        r4 = move-exception;
        r5 = "Failed to extract a product from event data. ";
        r4 = r4.getMessage();	 Catch:{ all -> 0x0383 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0383 }
        r6 = r4.length();	 Catch:{ all -> 0x0383 }
        if (r6 == 0) goto L_0x0157;
    L_0x0152:
        r4 = r5.concat(r4);	 Catch:{ all -> 0x0383 }
        goto L_0x015c;
    L_0x0157:
        r4 = new java.lang.String;	 Catch:{ all -> 0x0383 }
        r4.<init>(r5);	 Catch:{ all -> 0x0383 }
    L_0x015c:
        com.google.android.gms.internal.zzcvk.e(r4);	 Catch:{ all -> 0x0383 }
        goto L_0x0125;
    L_0x0160:
        r2 = "promoClick";
        r2 = r3.containsKey(r2);	 Catch:{ all -> 0x0383 }
        if (r2 == 0) goto L_0x0179;
    L_0x0168:
        r2 = "promoClick";
        r2 = r3.get(r2);	 Catch:{ all -> 0x0383 }
        r2 = (java.util.Map) r2;	 Catch:{ all -> 0x0383 }
        r4 = "promotions";
        r2 = r2.get(r4);	 Catch:{ all -> 0x0383 }
    L_0x0176:
        r2 = (java.util.List) r2;	 Catch:{ all -> 0x0383 }
        goto L_0x0191;
    L_0x0179:
        r2 = "promoView";
        r2 = r3.containsKey(r2);	 Catch:{ all -> 0x0383 }
        if (r2 == 0) goto L_0x0190;
    L_0x0181:
        r2 = "promoView";
        r2 = r3.get(r2);	 Catch:{ all -> 0x0383 }
        r2 = (java.util.Map) r2;	 Catch:{ all -> 0x0383 }
        r4 = "promotions";
        r2 = r2.get(r4);	 Catch:{ all -> 0x0383 }
        goto L_0x0176;
    L_0x0190:
        r2 = r0;
    L_0x0191:
        if (r2 == 0) goto L_0x0227;
    L_0x0193:
        r2 = r2.iterator();	 Catch:{ all -> 0x0383 }
    L_0x0197:
        r4 = r2.hasNext();	 Catch:{ all -> 0x0383 }
        if (r4 == 0) goto L_0x020f;
    L_0x019d:
        r4 = r2.next();	 Catch:{ all -> 0x0383 }
        r4 = (java.util.Map) r4;	 Catch:{ all -> 0x0383 }
        r5 = new com.google.android.gms.analytics.ecommerce.Promotion;	 Catch:{ RuntimeException -> 0x01f0 }
        r5.<init>();	 Catch:{ RuntimeException -> 0x01f0 }
        r6 = "id";
        r6 = r4.get(r6);	 Catch:{ RuntimeException -> 0x01f0 }
        r6 = (java.lang.String) r6;	 Catch:{ RuntimeException -> 0x01f0 }
        if (r6 == 0) goto L_0x01b9;
    L_0x01b2:
        r6 = java.lang.String.valueOf(r6);	 Catch:{ RuntimeException -> 0x01f0 }
        r5.setId(r6);	 Catch:{ RuntimeException -> 0x01f0 }
    L_0x01b9:
        r6 = "name";
        r6 = r4.get(r6);	 Catch:{ RuntimeException -> 0x01f0 }
        r6 = (java.lang.String) r6;	 Catch:{ RuntimeException -> 0x01f0 }
        if (r6 == 0) goto L_0x01ca;
    L_0x01c3:
        r6 = java.lang.String.valueOf(r6);	 Catch:{ RuntimeException -> 0x01f0 }
        r5.setName(r6);	 Catch:{ RuntimeException -> 0x01f0 }
    L_0x01ca:
        r6 = "creative";
        r6 = r4.get(r6);	 Catch:{ RuntimeException -> 0x01f0 }
        r6 = (java.lang.String) r6;	 Catch:{ RuntimeException -> 0x01f0 }
        if (r6 == 0) goto L_0x01db;
    L_0x01d4:
        r6 = java.lang.String.valueOf(r6);	 Catch:{ RuntimeException -> 0x01f0 }
        r5.setCreative(r6);	 Catch:{ RuntimeException -> 0x01f0 }
    L_0x01db:
        r6 = "position";
        r4 = r4.get(r6);	 Catch:{ RuntimeException -> 0x01f0 }
        r4 = (java.lang.String) r4;	 Catch:{ RuntimeException -> 0x01f0 }
        if (r4 == 0) goto L_0x01ec;
    L_0x01e5:
        r4 = java.lang.String.valueOf(r4);	 Catch:{ RuntimeException -> 0x01f0 }
        r5.setPosition(r4);	 Catch:{ RuntimeException -> 0x01f0 }
    L_0x01ec:
        r14.addPromotion(r5);	 Catch:{ RuntimeException -> 0x01f0 }
        goto L_0x0197;
    L_0x01f0:
        r4 = move-exception;
        r5 = "Failed to extract a promotion from event data. ";
        r4 = r4.getMessage();	 Catch:{ all -> 0x0383 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0383 }
        r6 = r4.length();	 Catch:{ all -> 0x0383 }
        if (r6 == 0) goto L_0x0206;
    L_0x0201:
        r4 = r5.concat(r4);	 Catch:{ all -> 0x0383 }
        goto L_0x020b;
    L_0x0206:
        r4 = new java.lang.String;	 Catch:{ all -> 0x0383 }
        r4.<init>(r5);	 Catch:{ all -> 0x0383 }
    L_0x020b:
        com.google.android.gms.internal.zzcvk.e(r4);	 Catch:{ all -> 0x0383 }
        goto L_0x0197;
    L_0x020f:
        r2 = "promoClick";
        r2 = r3.containsKey(r2);	 Catch:{ all -> 0x0383 }
        if (r2 == 0) goto L_0x0220;
    L_0x0217:
        r13 = "&promoa";
        r2 = "click";
        r14.set(r13, r2);	 Catch:{ all -> 0x0383 }
        r13 = 0;
        goto L_0x0227;
    L_0x0220:
        r1 = "&promoa";
        r2 = "view";
        r14.set(r1, r2);	 Catch:{ all -> 0x0383 }
    L_0x0227:
        if (r13 == 0) goto L_0x035c;
    L_0x0229:
        r13 = zzbHw;	 Catch:{ all -> 0x0383 }
        r13 = r13.iterator();	 Catch:{ all -> 0x0383 }
    L_0x022f:
        r1 = r13.hasNext();	 Catch:{ all -> 0x0383 }
        if (r1 == 0) goto L_0x035c;
    L_0x0235:
        r1 = r13.next();	 Catch:{ all -> 0x0383 }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x0383 }
        r2 = r3.containsKey(r1);	 Catch:{ all -> 0x0383 }
        if (r2 == 0) goto L_0x022f;
    L_0x0241:
        r13 = r3.get(r1);	 Catch:{ all -> 0x0383 }
        r13 = (java.util.Map) r13;	 Catch:{ all -> 0x0383 }
        r2 = "products";
        r2 = r13.get(r2);	 Catch:{ all -> 0x0383 }
        r2 = (java.util.List) r2;	 Catch:{ all -> 0x0383 }
        if (r2 == 0) goto L_0x0288;
    L_0x0251:
        r2 = r2.iterator();	 Catch:{ all -> 0x0383 }
    L_0x0255:
        r3 = r2.hasNext();	 Catch:{ all -> 0x0383 }
        if (r3 == 0) goto L_0x0288;
    L_0x025b:
        r3 = r2.next();	 Catch:{ all -> 0x0383 }
        r3 = (java.util.Map) r3;	 Catch:{ all -> 0x0383 }
        r3 = zzx(r3);	 Catch:{ RuntimeException -> 0x0269 }
        r14.addProduct(r3);	 Catch:{ RuntimeException -> 0x0269 }
        goto L_0x0255;
    L_0x0269:
        r3 = move-exception;
        r4 = "Failed to extract a product from event data. ";
        r3 = r3.getMessage();	 Catch:{ all -> 0x0383 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x0383 }
        r5 = r3.length();	 Catch:{ all -> 0x0383 }
        if (r5 == 0) goto L_0x027f;
    L_0x027a:
        r3 = r4.concat(r3);	 Catch:{ all -> 0x0383 }
        goto L_0x0284;
    L_0x027f:
        r3 = new java.lang.String;	 Catch:{ all -> 0x0383 }
        r3.<init>(r4);	 Catch:{ all -> 0x0383 }
    L_0x0284:
        com.google.android.gms.internal.zzcvk.e(r3);	 Catch:{ all -> 0x0383 }
        goto L_0x0255;
    L_0x0288:
        r2 = "actionField";
        r2 = r13.containsKey(r2);	 Catch:{ RuntimeException -> 0x033e }
        if (r2 == 0) goto L_0x0335;
    L_0x0290:
        r2 = "actionField";
        r13 = r13.get(r2);	 Catch:{ RuntimeException -> 0x033e }
        r13 = (java.util.Map) r13;	 Catch:{ RuntimeException -> 0x033e }
        r2 = new com.google.android.gms.analytics.ecommerce.ProductAction;	 Catch:{ RuntimeException -> 0x033e }
        r2.<init>(r1);	 Catch:{ RuntimeException -> 0x033e }
        r1 = "id";
        r1 = r13.get(r1);	 Catch:{ RuntimeException -> 0x033e }
        if (r1 == 0) goto L_0x02ac;
    L_0x02a5:
        r1 = java.lang.String.valueOf(r1);	 Catch:{ RuntimeException -> 0x033e }
        r2.setTransactionId(r1);	 Catch:{ RuntimeException -> 0x033e }
    L_0x02ac:
        r1 = "affiliation";
        r1 = r13.get(r1);	 Catch:{ RuntimeException -> 0x033e }
        if (r1 == 0) goto L_0x02bb;
    L_0x02b4:
        r1 = java.lang.String.valueOf(r1);	 Catch:{ RuntimeException -> 0x033e }
        r2.setTransactionAffiliation(r1);	 Catch:{ RuntimeException -> 0x033e }
    L_0x02bb:
        r1 = "coupon";
        r1 = r13.get(r1);	 Catch:{ RuntimeException -> 0x033e }
        if (r1 == 0) goto L_0x02ca;
    L_0x02c3:
        r1 = java.lang.String.valueOf(r1);	 Catch:{ RuntimeException -> 0x033e }
        r2.setTransactionCouponCode(r1);	 Catch:{ RuntimeException -> 0x033e }
    L_0x02ca:
        r1 = "list";
        r1 = r13.get(r1);	 Catch:{ RuntimeException -> 0x033e }
        if (r1 == 0) goto L_0x02d9;
    L_0x02d2:
        r1 = java.lang.String.valueOf(r1);	 Catch:{ RuntimeException -> 0x033e }
        r2.setProductActionList(r1);	 Catch:{ RuntimeException -> 0x033e }
    L_0x02d9:
        r1 = "option";
        r1 = r13.get(r1);	 Catch:{ RuntimeException -> 0x033e }
        if (r1 == 0) goto L_0x02e8;
    L_0x02e1:
        r1 = java.lang.String.valueOf(r1);	 Catch:{ RuntimeException -> 0x033e }
        r2.setCheckoutOptions(r1);	 Catch:{ RuntimeException -> 0x033e }
    L_0x02e8:
        r1 = "revenue";
        r1 = r13.get(r1);	 Catch:{ RuntimeException -> 0x033e }
        if (r1 == 0) goto L_0x02fb;
    L_0x02f0:
        r1 = zzM(r1);	 Catch:{ RuntimeException -> 0x033e }
        r3 = r1.doubleValue();	 Catch:{ RuntimeException -> 0x033e }
        r2.setTransactionRevenue(r3);	 Catch:{ RuntimeException -> 0x033e }
    L_0x02fb:
        r1 = "tax";
        r1 = r13.get(r1);	 Catch:{ RuntimeException -> 0x033e }
        if (r1 == 0) goto L_0x030e;
    L_0x0303:
        r1 = zzM(r1);	 Catch:{ RuntimeException -> 0x033e }
        r3 = r1.doubleValue();	 Catch:{ RuntimeException -> 0x033e }
        r2.setTransactionTax(r3);	 Catch:{ RuntimeException -> 0x033e }
    L_0x030e:
        r1 = "shipping";
        r1 = r13.get(r1);	 Catch:{ RuntimeException -> 0x033e }
        if (r1 == 0) goto L_0x0321;
    L_0x0316:
        r1 = zzM(r1);	 Catch:{ RuntimeException -> 0x033e }
        r3 = r1.doubleValue();	 Catch:{ RuntimeException -> 0x033e }
        r2.setTransactionShipping(r3);	 Catch:{ RuntimeException -> 0x033e }
    L_0x0321:
        r1 = "step";
        r13 = r13.get(r1);	 Catch:{ RuntimeException -> 0x033e }
        if (r13 == 0) goto L_0x033a;
    L_0x0329:
        r13 = zzN(r13);	 Catch:{ RuntimeException -> 0x033e }
        r13 = r13.intValue();	 Catch:{ RuntimeException -> 0x033e }
        r2.setCheckoutStep(r13);	 Catch:{ RuntimeException -> 0x033e }
        goto L_0x033a;
    L_0x0335:
        r2 = new com.google.android.gms.analytics.ecommerce.ProductAction;	 Catch:{ RuntimeException -> 0x033e }
        r2.<init>(r1);	 Catch:{ RuntimeException -> 0x033e }
    L_0x033a:
        r14.setProductAction(r2);	 Catch:{ RuntimeException -> 0x033e }
        goto L_0x035c;
    L_0x033e:
        r13 = move-exception;
        r1 = "Failed to extract a product action from event data. ";
        r13 = r13.getMessage();	 Catch:{ all -> 0x0383 }
        r13 = java.lang.String.valueOf(r13);	 Catch:{ all -> 0x0383 }
        r2 = r13.length();	 Catch:{ all -> 0x0383 }
        if (r2 == 0) goto L_0x0354;
    L_0x034f:
        r13 = r1.concat(r13);	 Catch:{ all -> 0x0383 }
        goto L_0x0359;
    L_0x0354:
        r13 = new java.lang.String;	 Catch:{ all -> 0x0383 }
        r13.<init>(r1);	 Catch:{ all -> 0x0383 }
    L_0x0359:
        com.google.android.gms.internal.zzcvk.e(r13);	 Catch:{ all -> 0x0383 }
    L_0x035c:
        r13 = r14.build();	 Catch:{ all -> 0x0383 }
    L_0x0360:
        r10.send(r13);	 Catch:{ all -> 0x0383 }
        goto L_0x037e;
    L_0x0364:
        r13 = com.google.android.gms.internal.zzcxp.zza(r3);	 Catch:{ all -> 0x0383 }
        if (r13 == 0) goto L_0x036f;
    L_0x036a:
        r13 = zzi(r2);	 Catch:{ all -> 0x0383 }
        goto L_0x0360;
    L_0x036f:
        r13 = com.google.android.gms.internal.zzcxp.zza(r4);	 Catch:{ all -> 0x0383 }
        if (r13 == 0) goto L_0x0379;
    L_0x0375:
        r12.zza(r10, r2, r5, r6);	 Catch:{ all -> 0x0383 }
        goto L_0x037e;
    L_0x0379:
        r13 = "Ignoring unknown tag.";
        com.google.android.gms.internal.zzcvk.zzaT(r13);	 Catch:{ all -> 0x0383 }
    L_0x037e:
        r12.zzbKp = r0;
        r13 = com.google.android.gms.internal.dv.zzbLu;
        return r13;
    L_0x0383:
        r13 = move-exception;
        r12.zzbKp = r0;
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.by.zza(com.google.android.gms.internal.zzcwa, com.google.android.gms.internal.dp[]):com.google.android.gms.internal.dp");
    }
}
