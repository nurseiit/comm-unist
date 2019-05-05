package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

public final class hc {
    private static int zza(String str, hg[] hgVarArr) {
        int i = 14;
        int i2;
        for (hg hgVar : hgVarArr) {
            StringBuilder stringBuilder;
            if (i == 14) {
                if (hgVar.type == 9 || hgVar.type == 2 || hgVar.type == 6) {
                    i = hgVar.type;
                } else if (hgVar.type != 14) {
                    i2 = hgVar.type;
                    stringBuilder = new StringBuilder(String.valueOf(str).length() + 48);
                    stringBuilder.append("Unexpected TypedValue type: ");
                    stringBuilder.append(i2);
                    stringBuilder.append(" for key ");
                    stringBuilder.append(str);
                    throw new IllegalArgumentException(stringBuilder.toString());
                }
            } else if (hgVar.type != i) {
                i2 = hgVar.type;
                stringBuilder = new StringBuilder(String.valueOf(str).length() + TransportMediator.KEYCODE_MEDIA_PLAY);
                stringBuilder.append("The ArrayList elements should all be the same type, but ArrayList with key ");
                stringBuilder.append(str);
                stringBuilder.append(" contains items of type ");
                stringBuilder.append(i);
                stringBuilder.append(" and ");
                stringBuilder.append(i2);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }
        return i;
    }

    public static hd zza(DataMap dataMap) {
        he heVar = new he();
        List arrayList = new ArrayList();
        heVar.zzbTH = zza(dataMap, arrayList);
        return new hd(heVar, arrayList);
    }

    private static hg zza(List<Asset> list, Object obj) {
        hg hgVar = new hg();
        if (obj == null) {
            hgVar.type = 14;
            return hgVar;
        }
        hgVar.zzbTL = new hh();
        if (obj instanceof String) {
            hgVar.type = 2;
            hgVar.zzbTL.zzbTN = (String) obj;
            return hgVar;
        } else if (obj instanceof Integer) {
            hgVar.type = 6;
            hgVar.zzbTL.zzbTR = ((Integer) obj).intValue();
            return hgVar;
        } else if (obj instanceof Long) {
            hgVar.type = 5;
            hgVar.zzbTL.zzbTQ = ((Long) obj).longValue();
            return hgVar;
        } else if (obj instanceof Double) {
            hgVar.type = 3;
            hgVar.zzbTL.zzbTO = ((Double) obj).doubleValue();
            return hgVar;
        } else if (obj instanceof Float) {
            hgVar.type = 4;
            hgVar.zzbTL.zzbTP = ((Float) obj).floatValue();
            return hgVar;
        } else if (obj instanceof Boolean) {
            hgVar.type = 8;
            hgVar.zzbTL.zzbTT = ((Boolean) obj).booleanValue();
            return hgVar;
        } else if (obj instanceof Byte) {
            hgVar.type = 7;
            hgVar.zzbTL.zzbTS = ((Byte) obj).byteValue();
            return hgVar;
        } else if (obj instanceof byte[]) {
            hgVar.type = 1;
            hgVar.zzbTL.zzbTM = (byte[]) obj;
            return hgVar;
        } else if (obj instanceof String[]) {
            hgVar.type = 11;
            hgVar.zzbTL.zzbTW = (String[]) obj;
            return hgVar;
        } else if (obj instanceof long[]) {
            hgVar.type = 12;
            hgVar.zzbTL.zzbTX = (long[]) obj;
            return hgVar;
        } else if (obj instanceof float[]) {
            hgVar.type = 15;
            hgVar.zzbTL.zzbTY = (float[]) obj;
            return hgVar;
        } else if (obj instanceof Asset) {
            hgVar.type = 13;
            hh hhVar = hgVar.zzbTL;
            list.add((Asset) obj);
            hhVar.zzbTZ = (long) (list.size() - 1);
            return hgVar;
        } else {
            int i = 0;
            String valueOf;
            String valueOf2;
            if (obj instanceof DataMap) {
                hgVar.type = 9;
                DataMap dataMap = (DataMap) obj;
                TreeSet treeSet = new TreeSet(dataMap.keySet());
                hf[] hfVarArr = new hf[treeSet.size()];
                Iterator it = treeSet.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    hfVarArr[i] = new hf();
                    hfVarArr[i].name = str;
                    hfVarArr[i].zzbTJ = zza((List) list, dataMap.get(str));
                    i++;
                }
                hgVar.zzbTL.zzbTU = hfVarArr;
                return hgVar;
            } else if (obj instanceof ArrayList) {
                hgVar.type = 10;
                ArrayList arrayList = (ArrayList) obj;
                hg[] hgVarArr = new hg[arrayList.size()];
                int size = arrayList.size();
                Object obj2 = null;
                int i2 = 14;
                while (i < size) {
                    Object obj3 = arrayList.get(i);
                    hg zza = zza((List) list, obj3);
                    if (zza.type == 14 || zza.type == 2 || zza.type == 6 || zza.type == 9) {
                        if (i2 == 14 && zza.type != 14) {
                            i2 = zza.type;
                            obj2 = obj3;
                        } else if (zza.type != i2) {
                            valueOf = String.valueOf(obj2.getClass());
                            valueOf2 = String.valueOf(obj3.getClass());
                            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 80) + String.valueOf(valueOf2).length());
                            stringBuilder.append("ArrayList elements must all be of the sameclass, but this one contains a ");
                            stringBuilder.append(valueOf);
                            stringBuilder.append(" and a ");
                            stringBuilder.append(valueOf2);
                            throw new IllegalArgumentException(stringBuilder.toString());
                        }
                        hgVarArr[i] = zza;
                        i++;
                    } else {
                        valueOf = String.valueOf(obj3.getClass());
                        StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + TransportMediator.KEYCODE_MEDIA_RECORD);
                        stringBuilder2.append("The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a ");
                        stringBuilder2.append(valueOf);
                        throw new IllegalArgumentException(stringBuilder2.toString());
                    }
                }
                hgVar.zzbTL.zzbTV = hgVarArr;
                return hgVar;
            } else {
                valueOf2 = "newFieldValueFromValue: unexpected value ";
                valueOf = String.valueOf(obj.getClass().getSimpleName());
                throw new RuntimeException(valueOf.length() != 0 ? valueOf2.concat(valueOf) : new String(valueOf2));
            }
        }
    }

    public static DataMap zza(hd hdVar) {
        DataMap dataMap = new DataMap();
        for (hf hfVar : hdVar.zzbTF.zzbTH) {
            zza(hdVar.zzbTG, dataMap, hfVar.name, hfVar.zzbTJ);
        }
        return dataMap;
    }

    private static ArrayList zza(List<Asset> list, hh hhVar, int i) {
        ArrayList arrayList = new ArrayList(hhVar.zzbTV.length);
        for (hg hgVar : hhVar.zzbTV) {
            Object obj;
            if (hgVar.type == 14) {
                obj = null;
            } else if (i == 9) {
                DataMap dataMap = new DataMap();
                for (hf hfVar : hgVar.zzbTL.zzbTU) {
                    zza(list, dataMap, hfVar.name, hfVar.zzbTJ);
                }
                arrayList.add(dataMap);
            } else if (i == 2) {
                obj = hgVar.zzbTL.zzbTN;
            } else if (i == 6) {
                obj = Integer.valueOf(hgVar.zzbTL.zzbTR);
            } else {
                StringBuilder stringBuilder = new StringBuilder(39);
                stringBuilder.append("Unexpected typeOfArrayList: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    private static void zza(List<Asset> list, DataMap dataMap, String str, hg hgVar) {
        int i = hgVar.type;
        if (i == 14) {
            dataMap.putString(str, null);
            return;
        }
        hh hhVar = hgVar.zzbTL;
        StringBuilder stringBuilder;
        if (i == 1) {
            dataMap.putByteArray(str, hhVar.zzbTM);
        } else if (i == 11) {
            dataMap.putStringArray(str, hhVar.zzbTW);
        } else if (i == 12) {
            dataMap.putLongArray(str, hhVar.zzbTX);
        } else if (i == 15) {
            dataMap.putFloatArray(str, hhVar.zzbTY);
        } else if (i == 2) {
            dataMap.putString(str, hhVar.zzbTN);
        } else if (i == 3) {
            dataMap.putDouble(str, hhVar.zzbTO);
        } else if (i == 4) {
            dataMap.putFloat(str, hhVar.zzbTP);
        } else if (i == 5) {
            dataMap.putLong(str, hhVar.zzbTQ);
        } else if (i == 6) {
            dataMap.putInt(str, hhVar.zzbTR);
        } else if (i == 7) {
            dataMap.putByte(str, (byte) hhVar.zzbTS);
        } else if (i == 8) {
            dataMap.putBoolean(str, hhVar.zzbTT);
        } else if (i == 13) {
            if (list == null) {
                String str2 = "populateBundle: unexpected type for: ";
                str = String.valueOf(str);
                throw new RuntimeException(str.length() != 0 ? str2.concat(str) : new String(str2));
            }
            dataMap.putAsset(str, (Asset) list.get((int) hhVar.zzbTZ));
        } else if (i == 9) {
            DataMap dataMap2 = new DataMap();
            for (hf hfVar : hhVar.zzbTU) {
                zza(list, dataMap2, hfVar.name, hfVar.zzbTJ);
            }
            dataMap.putDataMap(str, dataMap2);
        } else if (i == 10) {
            i = zza(str, hhVar.zzbTV);
            ArrayList zza = zza(list, hhVar, i);
            if (i == 14) {
                dataMap.putStringArrayList(str, zza);
            } else if (i == 9) {
                dataMap.putDataMapArrayList(str, zza);
            } else if (i == 2) {
                dataMap.putStringArrayList(str, zza);
            } else if (i == 6) {
                dataMap.putIntegerArrayList(str, zza);
            } else {
                stringBuilder = new StringBuilder(39);
                stringBuilder.append("Unexpected typeOfArrayList: ");
                stringBuilder.append(i);
                throw new IllegalStateException(stringBuilder.toString());
            }
        } else {
            stringBuilder = new StringBuilder(43);
            stringBuilder.append("populateBundle: unexpected type ");
            stringBuilder.append(i);
            throw new RuntimeException(stringBuilder.toString());
        }
    }

    private static hf[] zza(DataMap dataMap, List<Asset> list) {
        TreeSet treeSet = new TreeSet(dataMap.keySet());
        hf[] hfVarArr = new hf[treeSet.size()];
        Iterator it = treeSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            Object obj = dataMap.get(str);
            hfVarArr[i] = new hf();
            hfVarArr[i].name = str;
            hfVarArr[i].zzbTJ = zza((List) list, obj);
            i++;
        }
        return hfVarArr;
    }
}
