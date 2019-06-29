package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class zzgl extends zzgi {
    private static final String ID = zzbf.UNIVERSAL_ANALYTICS.toString();
    private static Map<String, String> zzbHA;
    private static final String zzbHn = zzbg.ACCOUNT.toString();
    private static final String zzbHo = zzbg.ANALYTICS_PASS_THROUGH.toString();
    private static final String zzbHp = zzbg.ENABLE_ECOMMERCE.toString();
    private static final String zzbHq = zzbg.ECOMMERCE_USE_DATA_LAYER.toString();
    private static final String zzbHr = zzbg.ECOMMERCE_MACRO_DATA.toString();
    private static final String zzbHs = zzbg.ANALYTICS_FIELDS.toString();
    private static final String zzbHt = zzbg.TRACK_TRANSACTION.toString();
    private static final String zzbHu = zzbg.TRANSACTION_DATALAYER_MAP.toString();
    private static final String zzbHv = zzbg.TRANSACTION_ITEM_DATALAYER_MAP.toString();
    private static final List<String> zzbHw = Arrays.asList(new String[]{ProductAction.ACTION_DETAIL, ProductAction.ACTION_CHECKOUT, "checkout_option", "click", ProductAction.ACTION_ADD, ProductAction.ACTION_REMOVE, ProductAction.ACTION_PURCHASE, ProductAction.ACTION_REFUND});
    private static final Pattern zzbHx = Pattern.compile("dimension(\\d+)");
    private static final Pattern zzbHy = Pattern.compile("metric(\\d+)");
    private static Map<String, String> zzbHz;
    private final DataLayer zzbDx;
    private final Set<String> zzbHB;
    private final zzgg zzbHC;

    public zzgl(Context context, DataLayer dataLayer) {
        this(context, dataLayer, new zzgg(context));
    }

    private zzgl(Context context, DataLayer dataLayer, zzgg zzgg) {
        super(ID, new String[0]);
        this.zzbDx = dataLayer;
        this.zzbHC = zzgg;
        this.zzbHB = new HashSet();
        this.zzbHB.add("");
        this.zzbHB.add("0");
        this.zzbHB.add("false");
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

    private final void zza(Tracker tracker, Map<String, zzbr> map) {
        String zzfA = zzfA("transactionId");
        if (zzfA == null) {
            zzdj.e("Cannot find transactionId in data layer.");
            return;
        }
        LinkedList<Map> linkedList = new LinkedList();
        try {
            Map zzh;
            Map zzi = zzi((zzbr) map.get(zzbHs));
            zzi.put("&t", "transaction");
            zzbr zzbr = (zzbr) map.get(zzbHu);
            if (zzbr != null) {
                zzh = zzh(zzbr);
            } else {
                if (zzbHz == null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("transactionId", "&ti");
                    hashMap.put("transactionAffiliation", "&ta");
                    hashMap.put("transactionTax", "&tt");
                    hashMap.put("transactionShipping", "&ts");
                    hashMap.put("transactionTotal", "&tr");
                    hashMap.put("transactionCurrency", "&cu");
                    zzbHz = hashMap;
                }
                zzh = zzbHz;
            }
            for (Entry entry : zzh.entrySet()) {
                zzd(zzi, (String) entry.getValue(), zzfA((String) entry.getKey()));
            }
            linkedList.add(zzi);
            List<Map> zzfB = zzfB("transactionProducts");
            if (zzfB != null) {
                for (Map zzh2 : zzfB) {
                    if (zzh2.get("name") == null) {
                        zzdj.e("Unable to send transaction item hit due to missing 'name' field.");
                        return;
                    }
                    Map zzi2 = zzi((zzbr) map.get(zzbHs));
                    zzi2.put("&t", "item");
                    zzi2.put("&ti", zzfA);
                    zzbr zzbr2 = (zzbr) map.get(zzbHv);
                    Map zzh3;
                    if (zzbr2 != null) {
                        zzh3 = zzh(zzbr2);
                    } else {
                        if (zzbHA == null) {
                            HashMap hashMap2 = new HashMap();
                            hashMap2.put("name", "&in");
                            hashMap2.put("sku", "&ic");
                            hashMap2.put("category", "&iv");
                            hashMap2.put(Param.PRICE, "&ip");
                            hashMap2.put(Param.QUANTITY, "&iq");
                            hashMap2.put(Param.CURRENCY, "&cu");
                            zzbHA = hashMap2;
                        }
                        zzh3 = zzbHA;
                    }
                    for (Entry entry2 : zzh3.entrySet()) {
                        zzd(zzi2, (String) entry2.getValue(), (String) zzh2.get(entry2.getKey()));
                    }
                    linkedList.add(zzi2);
                }
            }
            for (Map send : linkedList) {
                tracker.send(send);
            }
        } catch (IllegalArgumentException e) {
            zzdj.zzb("Unable to send transaction", e);
        }
    }

    private static void zzd(Map<String, String> map, String str, String str2) {
        if (str2 != null) {
            map.put(str, str2);
        }
    }

    private final String zzfA(String str) {
        Object obj = this.zzbDx.get(str);
        return obj == null ? null : obj.toString();
    }

    private final List<Map<String, String>> zzfB(String str) {
        Object obj = this.zzbDx.get(str);
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

    private static boolean zzg(Map<String, zzbr> map, String str) {
        zzbr zzbr = (zzbr) map.get(str);
        return zzbr == null ? false : zzgk.zzf(zzbr).booleanValue();
    }

    private static Map<String, String> zzh(zzbr zzbr) {
        Object zzg = zzgk.zzg(zzbr);
        if (!(zzg instanceof Map)) {
            return null;
        }
        Map map = (Map) zzg;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private final Map<String, String> zzi(zzbr zzbr) {
        if (zzbr == null) {
            return new HashMap();
        }
        Map zzh = zzh(zzbr);
        if (zzh == null) {
            return new HashMap();
        }
        String str = (String) zzh.get("&aip");
        if (str != null && this.zzbHB.contains(str.toLowerCase())) {
            zzh.remove("&aip");
        }
        return zzh;
    }

    private static Product zzt(Map<String, Object> map) {
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
                        zzdj.zzaT(str22);
                    }
                    str22 = str.concat(str22);
                    zzdj.zzaT(str22);
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
                            zzdj.zzaT(str22);
                        }
                        str22 = str.concat(str22);
                        zzdj.zzaT(str22);
                    }
                }
            }
        }
        return product;
    }

    public final /* bridge */ /* synthetic */ boolean zzAE() {
        return super.zzAE();
    }

    public final /* bridge */ /* synthetic */ String zzBk() {
        return super.zzBk();
    }

    public final /* bridge */ /* synthetic */ Set zzBl() {
        return super.zzBl();
    }

    public final /* bridge */ /* synthetic */ zzbr zzo(Map map) {
        return super.zzo(map);
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x00e5  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x017b  */
    /* JADX WARNING: Missing block: B:5:0x0040, code skipped:
            if ((r8 instanceof java.util.Map) != false) goto L_0x0053;
     */
    /* JADX WARNING: Missing block: B:7:0x0051, code skipped:
            if ((r8 instanceof java.util.Map) != false) goto L_0x0053;
     */
    /* JADX WARNING: Missing block: B:9:0x0056, code skipped:
            r8 = null;
     */
    public final void zzq(java.util.Map<java.lang.String, com.google.android.gms.internal.zzbr> r8) {
        /*
        r7 = this;
        r0 = r7.zzbHC;
        r1 = "_GTM_DEFAULT_TRACKER_";
        r0 = r0.zzfv(r1);
        r1 = "collect_adid";
        r1 = zzg(r8, r1);
        r0.enableAdvertisingIdCollection(r1);
        r1 = zzbHp;
        r1 = zzg(r8, r1);
        if (r1 == 0) goto L_0x02b6;
    L_0x0019:
        r1 = new com.google.android.gms.analytics.HitBuilders$ScreenViewBuilder;
        r1.<init>();
        r2 = zzbHs;
        r2 = r8.get(r2);
        r2 = (com.google.android.gms.internal.zzbr) r2;
        r2 = r7.zzi(r2);
        r1.setAll(r2);
        r3 = zzbHq;
        r3 = zzg(r8, r3);
        r4 = 0;
        if (r3 == 0) goto L_0x0043;
    L_0x0036:
        r8 = r7.zzbDx;
        r3 = "ecommerce";
        r8 = r8.get(r3);
        r3 = r8 instanceof java.util.Map;
        if (r3 == 0) goto L_0x0056;
    L_0x0042:
        goto L_0x0053;
    L_0x0043:
        r3 = zzbHr;
        r8 = r8.get(r3);
        r8 = (com.google.android.gms.internal.zzbr) r8;
        r8 = com.google.android.gms.tagmanager.zzgk.zzg(r8);
        r3 = r8 instanceof java.util.Map;
        if (r3 == 0) goto L_0x0056;
    L_0x0053:
        r8 = (java.util.Map) r8;
        goto L_0x0057;
    L_0x0056:
        r8 = r4;
    L_0x0057:
        if (r8 == 0) goto L_0x02ae;
    L_0x0059:
        r3 = "&cu";
        r2 = r2.get(r3);
        r2 = (java.lang.String) r2;
        if (r2 != 0) goto L_0x006b;
    L_0x0063:
        r2 = "currencyCode";
        r2 = r8.get(r2);
        r2 = (java.lang.String) r2;
    L_0x006b:
        if (r2 == 0) goto L_0x0072;
    L_0x006d:
        r3 = "&cu";
        r1.set(r3, r2);
    L_0x0072:
        r2 = "impressions";
        r2 = r8.get(r2);
        r3 = r2 instanceof java.util.List;
        if (r3 == 0) goto L_0x00bd;
    L_0x007c:
        r2 = (java.util.List) r2;
        r2 = r2.iterator();
    L_0x0082:
        r3 = r2.hasNext();
        if (r3 == 0) goto L_0x00bd;
    L_0x0088:
        r3 = r2.next();
        r3 = (java.util.Map) r3;
        r5 = zzt(r3);	 Catch:{ RuntimeException -> 0x009e }
        r6 = "list";
        r3 = r3.get(r6);	 Catch:{ RuntimeException -> 0x009e }
        r3 = (java.lang.String) r3;	 Catch:{ RuntimeException -> 0x009e }
        r1.addImpression(r5, r3);	 Catch:{ RuntimeException -> 0x009e }
        goto L_0x0082;
    L_0x009e:
        r3 = move-exception;
        r5 = "Failed to extract a product from DataLayer. ";
        r3 = r3.getMessage();
        r3 = java.lang.String.valueOf(r3);
        r6 = r3.length();
        if (r6 == 0) goto L_0x00b4;
    L_0x00af:
        r3 = r5.concat(r3);
        goto L_0x00b9;
    L_0x00b4:
        r3 = new java.lang.String;
        r3.<init>(r5);
    L_0x00b9:
        com.google.android.gms.tagmanager.zzdj.e(r3);
        goto L_0x0082;
    L_0x00bd:
        r2 = "promoClick";
        r2 = r8.containsKey(r2);
        if (r2 == 0) goto L_0x00d7;
    L_0x00c5:
        r2 = "promoClick";
    L_0x00c7:
        r2 = r8.get(r2);
        r2 = (java.util.Map) r2;
        r3 = "promotions";
        r2 = r2.get(r3);
        r4 = r2;
        r4 = (java.util.List) r4;
        goto L_0x00e2;
    L_0x00d7:
        r2 = "promoView";
        r2 = r8.containsKey(r2);
        if (r2 == 0) goto L_0x00e2;
    L_0x00df:
        r2 = "promoView";
        goto L_0x00c7;
    L_0x00e2:
        r2 = 1;
        if (r4 == 0) goto L_0x0179;
    L_0x00e5:
        r3 = r4.iterator();
    L_0x00e9:
        r4 = r3.hasNext();
        if (r4 == 0) goto L_0x0161;
    L_0x00ef:
        r4 = r3.next();
        r4 = (java.util.Map) r4;
        r5 = new com.google.android.gms.analytics.ecommerce.Promotion;	 Catch:{ RuntimeException -> 0x0142 }
        r5.<init>();	 Catch:{ RuntimeException -> 0x0142 }
        r6 = "id";
        r6 = r4.get(r6);	 Catch:{ RuntimeException -> 0x0142 }
        r6 = (java.lang.String) r6;	 Catch:{ RuntimeException -> 0x0142 }
        if (r6 == 0) goto L_0x010b;
    L_0x0104:
        r6 = java.lang.String.valueOf(r6);	 Catch:{ RuntimeException -> 0x0142 }
        r5.setId(r6);	 Catch:{ RuntimeException -> 0x0142 }
    L_0x010b:
        r6 = "name";
        r6 = r4.get(r6);	 Catch:{ RuntimeException -> 0x0142 }
        r6 = (java.lang.String) r6;	 Catch:{ RuntimeException -> 0x0142 }
        if (r6 == 0) goto L_0x011c;
    L_0x0115:
        r6 = java.lang.String.valueOf(r6);	 Catch:{ RuntimeException -> 0x0142 }
        r5.setName(r6);	 Catch:{ RuntimeException -> 0x0142 }
    L_0x011c:
        r6 = "creative";
        r6 = r4.get(r6);	 Catch:{ RuntimeException -> 0x0142 }
        r6 = (java.lang.String) r6;	 Catch:{ RuntimeException -> 0x0142 }
        if (r6 == 0) goto L_0x012d;
    L_0x0126:
        r6 = java.lang.String.valueOf(r6);	 Catch:{ RuntimeException -> 0x0142 }
        r5.setCreative(r6);	 Catch:{ RuntimeException -> 0x0142 }
    L_0x012d:
        r6 = "position";
        r4 = r4.get(r6);	 Catch:{ RuntimeException -> 0x0142 }
        r4 = (java.lang.String) r4;	 Catch:{ RuntimeException -> 0x0142 }
        if (r4 == 0) goto L_0x013e;
    L_0x0137:
        r4 = java.lang.String.valueOf(r4);	 Catch:{ RuntimeException -> 0x0142 }
        r5.setPosition(r4);	 Catch:{ RuntimeException -> 0x0142 }
    L_0x013e:
        r1.addPromotion(r5);	 Catch:{ RuntimeException -> 0x0142 }
        goto L_0x00e9;
    L_0x0142:
        r4 = move-exception;
        r5 = "Failed to extract a promotion from DataLayer. ";
        r4 = r4.getMessage();
        r4 = java.lang.String.valueOf(r4);
        r6 = r4.length();
        if (r6 == 0) goto L_0x0158;
    L_0x0153:
        r4 = r5.concat(r4);
        goto L_0x015d;
    L_0x0158:
        r4 = new java.lang.String;
        r4.<init>(r5);
    L_0x015d:
        com.google.android.gms.tagmanager.zzdj.e(r4);
        goto L_0x00e9;
    L_0x0161:
        r3 = "promoClick";
        r3 = r8.containsKey(r3);
        if (r3 == 0) goto L_0x0172;
    L_0x0169:
        r2 = "&promoa";
        r3 = "click";
        r1.set(r2, r3);
        r2 = 0;
        goto L_0x0179;
    L_0x0172:
        r3 = "&promoa";
        r4 = "view";
        r1.set(r3, r4);
    L_0x0179:
        if (r2 == 0) goto L_0x02ae;
    L_0x017b:
        r2 = zzbHw;
        r2 = r2.iterator();
    L_0x0181:
        r3 = r2.hasNext();
        if (r3 == 0) goto L_0x02ae;
    L_0x0187:
        r3 = r2.next();
        r3 = (java.lang.String) r3;
        r4 = r8.containsKey(r3);
        if (r4 == 0) goto L_0x0181;
    L_0x0193:
        r8 = r8.get(r3);
        r8 = (java.util.Map) r8;
        r2 = "products";
        r2 = r8.get(r2);
        r2 = (java.util.List) r2;
        if (r2 == 0) goto L_0x01da;
    L_0x01a3:
        r2 = r2.iterator();
    L_0x01a7:
        r4 = r2.hasNext();
        if (r4 == 0) goto L_0x01da;
    L_0x01ad:
        r4 = r2.next();
        r4 = (java.util.Map) r4;
        r4 = zzt(r4);	 Catch:{ RuntimeException -> 0x01bb }
        r1.addProduct(r4);	 Catch:{ RuntimeException -> 0x01bb }
        goto L_0x01a7;
    L_0x01bb:
        r4 = move-exception;
        r5 = "Failed to extract a product from DataLayer. ";
        r4 = r4.getMessage();
        r4 = java.lang.String.valueOf(r4);
        r6 = r4.length();
        if (r6 == 0) goto L_0x01d1;
    L_0x01cc:
        r4 = r5.concat(r4);
        goto L_0x01d6;
    L_0x01d1:
        r4 = new java.lang.String;
        r4.<init>(r5);
    L_0x01d6:
        com.google.android.gms.tagmanager.zzdj.e(r4);
        goto L_0x01a7;
    L_0x01da:
        r2 = "actionField";
        r2 = r8.containsKey(r2);	 Catch:{ RuntimeException -> 0x0290 }
        if (r2 == 0) goto L_0x0287;
    L_0x01e2:
        r2 = "actionField";
        r8 = r8.get(r2);	 Catch:{ RuntimeException -> 0x0290 }
        r8 = (java.util.Map) r8;	 Catch:{ RuntimeException -> 0x0290 }
        r2 = new com.google.android.gms.analytics.ecommerce.ProductAction;	 Catch:{ RuntimeException -> 0x0290 }
        r2.<init>(r3);	 Catch:{ RuntimeException -> 0x0290 }
        r3 = "id";
        r3 = r8.get(r3);	 Catch:{ RuntimeException -> 0x0290 }
        if (r3 == 0) goto L_0x01fe;
    L_0x01f7:
        r3 = java.lang.String.valueOf(r3);	 Catch:{ RuntimeException -> 0x0290 }
        r2.setTransactionId(r3);	 Catch:{ RuntimeException -> 0x0290 }
    L_0x01fe:
        r3 = "affiliation";
        r3 = r8.get(r3);	 Catch:{ RuntimeException -> 0x0290 }
        if (r3 == 0) goto L_0x020d;
    L_0x0206:
        r3 = java.lang.String.valueOf(r3);	 Catch:{ RuntimeException -> 0x0290 }
        r2.setTransactionAffiliation(r3);	 Catch:{ RuntimeException -> 0x0290 }
    L_0x020d:
        r3 = "coupon";
        r3 = r8.get(r3);	 Catch:{ RuntimeException -> 0x0290 }
        if (r3 == 0) goto L_0x021c;
    L_0x0215:
        r3 = java.lang.String.valueOf(r3);	 Catch:{ RuntimeException -> 0x0290 }
        r2.setTransactionCouponCode(r3);	 Catch:{ RuntimeException -> 0x0290 }
    L_0x021c:
        r3 = "list";
        r3 = r8.get(r3);	 Catch:{ RuntimeException -> 0x0290 }
        if (r3 == 0) goto L_0x022b;
    L_0x0224:
        r3 = java.lang.String.valueOf(r3);	 Catch:{ RuntimeException -> 0x0290 }
        r2.setProductActionList(r3);	 Catch:{ RuntimeException -> 0x0290 }
    L_0x022b:
        r3 = "option";
        r3 = r8.get(r3);	 Catch:{ RuntimeException -> 0x0290 }
        if (r3 == 0) goto L_0x023a;
    L_0x0233:
        r3 = java.lang.String.valueOf(r3);	 Catch:{ RuntimeException -> 0x0290 }
        r2.setCheckoutOptions(r3);	 Catch:{ RuntimeException -> 0x0290 }
    L_0x023a:
        r3 = "revenue";
        r3 = r8.get(r3);	 Catch:{ RuntimeException -> 0x0290 }
        if (r3 == 0) goto L_0x024d;
    L_0x0242:
        r3 = zzM(r3);	 Catch:{ RuntimeException -> 0x0290 }
        r3 = r3.doubleValue();	 Catch:{ RuntimeException -> 0x0290 }
        r2.setTransactionRevenue(r3);	 Catch:{ RuntimeException -> 0x0290 }
    L_0x024d:
        r3 = "tax";
        r3 = r8.get(r3);	 Catch:{ RuntimeException -> 0x0290 }
        if (r3 == 0) goto L_0x0260;
    L_0x0255:
        r3 = zzM(r3);	 Catch:{ RuntimeException -> 0x0290 }
        r3 = r3.doubleValue();	 Catch:{ RuntimeException -> 0x0290 }
        r2.setTransactionTax(r3);	 Catch:{ RuntimeException -> 0x0290 }
    L_0x0260:
        r3 = "shipping";
        r3 = r8.get(r3);	 Catch:{ RuntimeException -> 0x0290 }
        if (r3 == 0) goto L_0x0273;
    L_0x0268:
        r3 = zzM(r3);	 Catch:{ RuntimeException -> 0x0290 }
        r3 = r3.doubleValue();	 Catch:{ RuntimeException -> 0x0290 }
        r2.setTransactionShipping(r3);	 Catch:{ RuntimeException -> 0x0290 }
    L_0x0273:
        r3 = "step";
        r8 = r8.get(r3);	 Catch:{ RuntimeException -> 0x0290 }
        if (r8 == 0) goto L_0x028c;
    L_0x027b:
        r8 = zzN(r8);	 Catch:{ RuntimeException -> 0x0290 }
        r8 = r8.intValue();	 Catch:{ RuntimeException -> 0x0290 }
        r2.setCheckoutStep(r8);	 Catch:{ RuntimeException -> 0x0290 }
        goto L_0x028c;
    L_0x0287:
        r2 = new com.google.android.gms.analytics.ecommerce.ProductAction;	 Catch:{ RuntimeException -> 0x0290 }
        r2.<init>(r3);	 Catch:{ RuntimeException -> 0x0290 }
    L_0x028c:
        r1.setProductAction(r2);	 Catch:{ RuntimeException -> 0x0290 }
        goto L_0x02ae;
    L_0x0290:
        r8 = move-exception;
        r2 = "Failed to extract a product action from DataLayer. ";
        r8 = r8.getMessage();
        r8 = java.lang.String.valueOf(r8);
        r3 = r8.length();
        if (r3 == 0) goto L_0x02a6;
    L_0x02a1:
        r8 = r2.concat(r8);
        goto L_0x02ab;
    L_0x02a6:
        r8 = new java.lang.String;
        r8.<init>(r2);
    L_0x02ab:
        com.google.android.gms.tagmanager.zzdj.e(r8);
    L_0x02ae:
        r8 = r1.build();
        r0.send(r8);
        return;
    L_0x02b6:
        r1 = zzbHo;
        r1 = zzg(r8, r1);
        if (r1 == 0) goto L_0x02ce;
    L_0x02be:
        r1 = zzbHs;
        r8 = r8.get(r1);
        r8 = (com.google.android.gms.internal.zzbr) r8;
        r8 = r7.zzi(r8);
        r0.send(r8);
        return;
    L_0x02ce:
        r1 = zzbHt;
        r1 = zzg(r8, r1);
        if (r1 == 0) goto L_0x02da;
    L_0x02d6:
        r7.zza(r0, r8);
        return;
    L_0x02da:
        r8 = "Ignoring unknown tag.";
        com.google.android.gms.tagmanager.zzdj.zzaT(r8);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzgl.zzq(java.util.Map):void");
    }
}
