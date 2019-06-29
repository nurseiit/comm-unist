package com.google.android.gms.fitness.data;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.safeparcel.zze;
import com.google.android.gms.common.internal.zzbo;

public class DataSource extends zza {
    public static final Creator<DataSource> CREATOR = new zzk();
    public static final int DATA_QUALITY_BLOOD_GLUCOSE_ISO151972003 = 8;
    public static final int DATA_QUALITY_BLOOD_GLUCOSE_ISO151972013 = 9;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_AAMI = 3;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_BHS_A_A = 4;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_BHS_A_B = 5;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_BHS_B_A = 6;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_BHS_B_B = 7;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_ESH2002 = 1;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_ESH2010 = 2;
    public static final String EXTRA_DATA_SOURCE = "vnd.google.fitness.data_source";
    public static final int TYPE_DERIVED = 1;
    public static final int TYPE_RAW = 0;
    private static final int[] zzaTE = new int[0];
    private final String name;
    private final int type;
    private final int versionCode;
    private final DataType zzaSZ;
    private final Device zzaTF;
    private final zzb zzaTG;
    private final String zzaTH;
    private final int[] zzaTI;
    private final String zzaTJ;

    public static final class Builder {
        private String name;
        private int type = -1;
        private DataType zzaSZ;
        private Device zzaTF;
        private zzb zzaTG;
        private String zzaTH = "";
        private int[] zzaTI;

        public final DataSource build() {
            boolean z = false;
            zzbo.zza(this.zzaSZ != null, (Object) "Must set data type");
            if (this.type >= 0) {
                z = true;
            }
            zzbo.zza(z, (Object) "Must set data source type");
            return new DataSource(this, null);
        }

        public final Builder setAppPackageName(Context context) {
            return setAppPackageName(context.getPackageName());
        }

        public final Builder setAppPackageName(String str) {
            this.zzaTG = zzb.zzcX(str);
            return this;
        }

        public final Builder setDataQualityStandards(int... iArr) {
            this.zzaTI = iArr;
            return this;
        }

        public final Builder setDataType(DataType dataType) {
            this.zzaSZ = dataType;
            return this;
        }

        public final Builder setDevice(Device device) {
            this.zzaTF = device;
            return this;
        }

        public final Builder setName(String str) {
            this.name = str;
            return this;
        }

        public final Builder setStreamName(String str) {
            zzbo.zzb(str != null, (Object) "Must specify a valid stream name");
            this.zzaTH = str;
            return this;
        }

        public final Builder setType(int i) {
            this.type = i;
            return this;
        }
    }

    DataSource(int i, DataType dataType, String str, int i2, Device device, zzb zzb, String str2, int[] iArr) {
        this.versionCode = i;
        this.zzaSZ = dataType;
        this.type = i2;
        this.name = str;
        this.zzaTF = device;
        this.zzaTG = zzb;
        this.zzaTH = str2;
        this.zzaTJ = zztN();
        if (iArr == null) {
            iArr = zzaTE;
        }
        this.zzaTI = iArr;
    }

    private DataSource(Builder builder) {
        this.versionCode = 3;
        this.zzaSZ = builder.zzaSZ;
        this.type = builder.type;
        this.name = builder.name;
        this.zzaTF = builder.zzaTF;
        this.zzaTG = builder.zzaTG;
        this.zzaTH = builder.zzaTH;
        this.zzaTJ = zztN();
        this.zzaTI = builder.zzaTI;
    }

    /* synthetic */ DataSource(Builder builder, zzj zzj) {
        this(builder);
    }

    public static DataSource extract(Intent intent) {
        return intent == null ? null : (DataSource) zze.zza(intent, EXTRA_DATA_SOURCE, CREATOR);
    }

    private final String getTypeString() {
        switch (this.type) {
            case 0:
                return "raw";
            case 1:
                return "derived";
            case 2:
                return "cleaned";
            case 3:
                return "converted";
            default:
                return "derived";
        }
    }

    public static String zzaV(int i) {
        switch (i) {
            case 1:
                return "blood_pressure_esh2002";
            case 2:
                return "blood_pressure_esh2010";
            case 3:
                return "blood_pressure_aami";
            case 4:
                return "blood_pressure_bhs_a_a";
            case 5:
                return "blood_pressure_bhs_a_b";
            case 6:
                return "blood_pressure_bhs_b_a";
            case 7:
                return "blood_pressure_bhs_b_b";
            case 8:
                return "blood_glucose_iso151972003";
            case 9:
                return "blood_glucose_iso151972013";
            default:
                return "unknown";
        }
    }

    private final String zztN() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getTypeString());
        stringBuilder.append(":");
        stringBuilder.append(this.zzaSZ.getName());
        if (this.zzaTG != null) {
            stringBuilder.append(":");
            stringBuilder.append(this.zzaTG.getPackageName());
        }
        if (this.zzaTF != null) {
            stringBuilder.append(":");
            stringBuilder.append(this.zzaTF.getStreamIdentifier());
        }
        if (this.zzaTH != null) {
            stringBuilder.append(":");
            stringBuilder.append(this.zzaTH);
        }
        return stringBuilder.toString();
    }

    /* JADX WARNING: Missing block: B:4:0x0010, code skipped:
            if (r1.zzaTJ.equals(((com.google.android.gms.fitness.data.DataSource) r2).zzaTJ) != false) goto L_0x0015;
     */
    public boolean equals(java.lang.Object r2) {
        /*
        r1 = this;
        if (r1 == r2) goto L_0x0015;
    L_0x0002:
        r0 = r2 instanceof com.google.android.gms.fitness.data.DataSource;
        if (r0 == 0) goto L_0x0013;
    L_0x0006:
        r2 = (com.google.android.gms.fitness.data.DataSource) r2;
        r0 = r1.zzaTJ;
        r2 = r2.zzaTJ;
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x0013;
    L_0x0012:
        goto L_0x0015;
    L_0x0013:
        r2 = 0;
        return r2;
    L_0x0015:
        r2 = 1;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fitness.data.DataSource.equals(java.lang.Object):boolean");
    }

    public String getAppPackageName() {
        return this.zzaTG == null ? null : this.zzaTG.getPackageName();
    }

    public int[] getDataQualityStandards() {
        return this.zzaTI;
    }

    public DataType getDataType() {
        return this.zzaSZ;
    }

    public Device getDevice() {
        return this.zzaTF;
    }

    public String getName() {
        return this.name;
    }

    public String getStreamIdentifier() {
        return this.zzaTJ;
    }

    public String getStreamName() {
        return this.zzaTH;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return this.zzaTJ.hashCode();
    }

    public final String toDebugString() {
        Object obj;
        Object obj2;
        String valueOf;
        String valueOf2;
        StringBuilder stringBuilder;
        Object stringBuilder2;
        Object concat;
        switch (this.type) {
            case 0:
                obj = "r";
                break;
            case 1:
                obj = "d";
                break;
            case 2:
                obj = "c";
                break;
            case 3:
                obj = "v";
                break;
            default:
                obj = "?";
                break;
        }
        String valueOf3 = String.valueOf(obj);
        String valueOf4 = String.valueOf(this.zzaSZ.zztO());
        if (this.zzaTG == null) {
            obj2 = "";
        } else if (this.zzaTG.equals(zzb.zzaTj)) {
            obj2 = ":gms";
        } else {
            String str = ":";
            valueOf = String.valueOf(this.zzaTG.getPackageName());
            obj2 = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
        }
        if (this.zzaTF != null) {
            valueOf = String.valueOf(this.zzaTF.getModel());
            valueOf2 = String.valueOf(this.zzaTF.getUid());
            stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 2) + String.valueOf(valueOf2).length());
            stringBuilder.append(":");
            stringBuilder.append(valueOf);
            stringBuilder.append(":");
            stringBuilder.append(valueOf2);
            stringBuilder2 = stringBuilder.toString();
        } else {
            stringBuilder2 = "";
        }
        if (this.zzaTH != null) {
            valueOf2 = ":";
            String valueOf5 = String.valueOf(this.zzaTH);
            concat = valueOf5.length() != 0 ? valueOf2.concat(valueOf5) : new String(valueOf2);
        } else {
            concat = "";
        }
        stringBuilder = new StringBuilder(((((String.valueOf(valueOf3).length() + 1) + String.valueOf(valueOf4).length()) + String.valueOf(obj2).length()) + String.valueOf(stringBuilder2).length()) + String.valueOf(concat).length());
        stringBuilder.append(valueOf3);
        stringBuilder.append(":");
        stringBuilder.append(valueOf4);
        stringBuilder.append(obj2);
        stringBuilder.append(stringBuilder2);
        stringBuilder.append(concat);
        return stringBuilder.toString();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("DataSource{");
        stringBuilder.append(getTypeString());
        if (this.name != null) {
            stringBuilder.append(":");
            stringBuilder.append(this.name);
        }
        if (this.zzaTG != null) {
            stringBuilder.append(":");
            stringBuilder.append(this.zzaTG);
        }
        if (this.zzaTF != null) {
            stringBuilder.append(":");
            stringBuilder.append(this.zzaTF);
        }
        if (this.zzaTH != null) {
            stringBuilder.append(":");
            stringBuilder.append(this.zzaTH);
        }
        stringBuilder.append(":");
        stringBuilder.append(this.zzaSZ);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getDataType(), i, false);
        zzd.zza(parcel, 2, getName(), false);
        zzd.zzc(parcel, 3, getType());
        zzd.zza(parcel, 4, getDevice(), i, false);
        zzd.zza(parcel, 5, this.zzaTG, i, false);
        zzd.zza(parcel, 6, getStreamName(), false);
        zzd.zzc(parcel, 1000, this.versionCode);
        zzd.zza(parcel, 8, getDataQualityStandards(), false);
        zzd.zzI(parcel, zze);
    }

    public final zzb zztM() {
        return this.zzaTG;
    }
}
