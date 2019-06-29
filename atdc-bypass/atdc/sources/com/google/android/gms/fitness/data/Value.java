package com.google.android.gms.fitness.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzl;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

public final class Value extends zza {
    public static final Creator<Value> CREATOR = new zzai();
    private final int format;
    private float value;
    private final int versionCode;
    private String zzaIF;
    private boolean zzaVl;
    private Map<String, MapValue> zzaVm;
    private int[] zzaVn;
    private float[] zzaVo;
    private byte[] zzaVp;

    public Value(int i) {
        this(3, i, false, 0.0f, null, null, null, null, null);
    }

    Value(int i, int i2, boolean z, float f, String str, Bundle bundle, int[] iArr, float[] fArr, byte[] bArr) {
        Map map;
        this.versionCode = i;
        this.format = i2;
        this.zzaVl = z;
        this.value = f;
        this.zzaIF = str;
        if (bundle == null) {
            map = null;
        } else {
            bundle.setClassLoader(MapValue.class.getClassLoader());
            map = new ArrayMap(bundle.size());
            for (String str2 : bundle.keySet()) {
                map.put(str2, (MapValue) bundle.getParcelable(str2));
            }
        }
        this.zzaVm = map;
        this.zzaVn = iArr;
        this.zzaVo = fArr;
        this.zzaVp = bArr;
    }

    public final String asActivity() {
        return com.google.android.gms.fitness.zza.getName(asInt());
    }

    public final float asFloat() {
        zzbo.zza(this.format == 2, (Object) "Value is not in float format");
        return this.value;
    }

    public final int asInt() {
        boolean z = true;
        if (this.format != 1) {
            z = false;
        }
        zzbo.zza(z, (Object) "Value is not in int format");
        return Float.floatToRawIntBits(this.value);
    }

    public final String asString() {
        zzbo.zza(this.format == 3, (Object) "Value is not in string format");
        return this.zzaIF;
    }

    public final void clearKey(String str) {
        zzbo.zza(this.format == 4, (Object) "Attempting to set a key's value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format.");
        if (this.zzaVm != null) {
            this.zzaVm.remove(str);
        }
    }

    /* JADX WARNING: Missing block: B:11:0x0021, code skipped:
            if (r4.value == r5.value) goto L_0x0023;
     */
    /* JADX WARNING: Missing block: B:12:0x0023, code skipped:
            r5 = true;
     */
    /* JADX WARNING: Missing block: B:18:0x0049, code skipped:
            r5 = com.google.android.gms.common.internal.zzbe.equal(r1, r5);
     */
    /* JADX WARNING: Missing block: B:20:0x0054, code skipped:
            if (r4.value == r5.value) goto L_0x0023;
     */
    /* JADX WARNING: Missing block: B:22:0x005f, code skipped:
            if (asInt() == r5.asInt()) goto L_0x0023;
     */
    public final boolean equals(java.lang.Object r5) {
        /*
        r4 = this;
        r0 = 1;
        if (r4 == r5) goto L_0x0067;
    L_0x0003:
        r1 = r5 instanceof com.google.android.gms.fitness.data.Value;
        r2 = 0;
        if (r1 == 0) goto L_0x0066;
    L_0x0008:
        r5 = (com.google.android.gms.fitness.data.Value) r5;
        r1 = r4.format;
        r3 = r5.format;
        if (r1 != r3) goto L_0x0062;
    L_0x0010:
        r1 = r4.zzaVl;
        r3 = r5.zzaVl;
        if (r1 != r3) goto L_0x0062;
    L_0x0016:
        r1 = r4.format;
        switch(r1) {
            case 1: goto L_0x0057;
            case 2: goto L_0x004e;
            case 3: goto L_0x0045;
            case 4: goto L_0x0040;
            case 5: goto L_0x0037;
            case 6: goto L_0x002e;
            case 7: goto L_0x0025;
            default: goto L_0x001b;
        };
    L_0x001b:
        r1 = r4.value;
        r5 = r5.value;
        r5 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1));
        if (r5 != 0) goto L_0x0062;
    L_0x0023:
        r5 = 1;
        goto L_0x0063;
    L_0x0025:
        r1 = r4.zzaVp;
        r5 = r5.zzaVp;
        r5 = java.util.Arrays.equals(r1, r5);
        goto L_0x0063;
    L_0x002e:
        r1 = r4.zzaVo;
        r5 = r5.zzaVo;
        r5 = java.util.Arrays.equals(r1, r5);
        goto L_0x0063;
    L_0x0037:
        r1 = r4.zzaVn;
        r5 = r5.zzaVn;
        r5 = java.util.Arrays.equals(r1, r5);
        goto L_0x0063;
    L_0x0040:
        r1 = r4.zzaVm;
        r5 = r5.zzaVm;
        goto L_0x0049;
    L_0x0045:
        r1 = r4.zzaIF;
        r5 = r5.zzaIF;
    L_0x0049:
        r5 = com.google.android.gms.common.internal.zzbe.equal(r1, r5);
        goto L_0x0063;
    L_0x004e:
        r1 = r4.value;
        r5 = r5.value;
        r5 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1));
        if (r5 != 0) goto L_0x0062;
    L_0x0056:
        goto L_0x0023;
    L_0x0057:
        r1 = r4.asInt();
        r5 = r5.asInt();
        if (r1 != r5) goto L_0x0062;
    L_0x0061:
        goto L_0x0023;
    L_0x0062:
        r5 = 0;
    L_0x0063:
        if (r5 == 0) goto L_0x0066;
    L_0x0065:
        return r0;
    L_0x0066:
        return r2;
    L_0x0067:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fitness.data.Value.equals(java.lang.Object):boolean");
    }

    public final int getFormat() {
        return this.format;
    }

    @Nullable
    public final Float getKeyValue(String str) {
        zzbo.zza(this.format == 4, (Object) "Value is not in float map format");
        return (this.zzaVm == null || !this.zzaVm.containsKey(str)) ? null : Float.valueOf(((MapValue) this.zzaVm.get(str)).asFloat());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.value), this.zzaIF, this.zzaVm, this.zzaVn, this.zzaVo, this.zzaVp});
    }

    public final boolean isSet() {
        return this.zzaVl;
    }

    public final void setActivity(String str) {
        setInt(com.google.android.gms.fitness.zza.zzcW(str));
    }

    public final void setFloat(float f) {
        zzbo.zza(this.format == 2, (Object) "Attempting to set an float value to a field that is not in FLOAT format.  Please check the data type definition and use the right format.");
        this.zzaVl = true;
        this.value = f;
    }

    public final void setInt(int i) {
        zzbo.zza(this.format == 1, (Object) "Attempting to set an int value to a field that is not in INT32 format.  Please check the data type definition and use the right format.");
        this.zzaVl = true;
        this.value = Float.intBitsToFloat(i);
    }

    public final void setKeyValue(String str, float f) {
        zzbo.zza(this.format == 4, (Object) "Attempting to set a key's value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format.");
        this.zzaVl = true;
        if (this.zzaVm == null) {
            this.zzaVm = new HashMap();
        }
        this.zzaVm.put(str, new MapValue(2, f));
    }

    public final void setString(String str) {
        zzbo.zza(this.format == 3, (Object) "Attempting to set a string value to a field that is not in STRING format.  Please check the data type definition and use the right format.");
        this.zzaVl = true;
        this.zzaIF = str;
    }

    public final String toString() {
        if (!this.zzaVl) {
            return "unset";
        }
        switch (this.format) {
            case 1:
                return Integer.toString(asInt());
            case 2:
                return Float.toString(this.value);
            case 3:
                return this.zzaIF;
            case 4:
                return new TreeMap(this.zzaVm).toString();
            case 5:
                return Arrays.toString(this.zzaVn);
            case 6:
                return Arrays.toString(this.zzaVo);
            case 7:
                return zzl.zza(this.zzaVp, 0, this.zzaVp.length, false);
            default:
                return "unknown";
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Bundle bundle;
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, getFormat());
        zzd.zza(parcel, 2, isSet());
        zzd.zza(parcel, 3, this.value);
        zzd.zza(parcel, 4, this.zzaIF, false);
        if (this.zzaVm == null) {
            bundle = null;
        } else {
            bundle = new Bundle(this.zzaVm.size());
            for (Entry entry : this.zzaVm.entrySet()) {
                bundle.putParcelable((String) entry.getKey(), (Parcelable) entry.getValue());
            }
        }
        zzd.zza(parcel, 5, bundle, false);
        zzd.zza(parcel, 6, this.zzaVn, false);
        zzd.zza(parcel, 7, this.zzaVo, false);
        zzd.zzc(parcel, 1000, this.versionCode);
        zzd.zza(parcel, 8, this.zzaVp, false);
        zzd.zzI(parcel, i);
    }
}
