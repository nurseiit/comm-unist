package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;

public class Strategy extends zza {
    public static final Strategy BLE_ONLY;
    public static final Creator<Strategy> CREATOR = new zzg();
    public static final Strategy DEFAULT = new Builder().build();
    public static final int DISCOVERY_MODE_BROADCAST = 1;
    public static final int DISCOVERY_MODE_DEFAULT = 3;
    public static final int DISCOVERY_MODE_SCAN = 2;
    public static final int DISTANCE_TYPE_DEFAULT = 0;
    public static final int DISTANCE_TYPE_EARSHOT = 1;
    public static final int TTL_SECONDS_DEFAULT = 300;
    public static final int TTL_SECONDS_INFINITE = Integer.MAX_VALUE;
    public static final int TTL_SECONDS_MAX = 86400;
    @Deprecated
    private static Strategy zzbyl;
    private int zzaku;
    @Deprecated
    private int zzbym;
    private int zzbyn;
    private int zzbyo;
    @Deprecated
    private boolean zzbyp;
    private int zzbyq;
    private int zzbyr;
    private final int zzbys;

    public static class Builder {
        private int zzbyt = 3;
        private int zzbyu = Strategy.TTL_SECONDS_DEFAULT;
        private int zzbyv = 0;
        private int zzbyw = -1;
        private int zzbyx = 0;

        public Strategy build() {
            if (this.zzbyw != 2 || this.zzbyv != 1) {
                return new Strategy(2, 0, this.zzbyu, this.zzbyv, false, this.zzbyw, this.zzbyt, 0);
            }
            throw new IllegalStateException("Cannot set EARSHOT with BLE only mode.");
        }

        public Builder setDiscoveryMode(int i) {
            this.zzbyt = i;
            return this;
        }

        public Builder setDistanceType(int i) {
            this.zzbyv = i;
            return this;
        }

        public Builder setTtlSeconds(int i) {
            boolean z = i == Integer.MAX_VALUE || (i > 0 && i <= Strategy.TTL_SECONDS_MAX);
            zzbo.zzb(z, "mTtlSeconds(%d) must either be TTL_SECONDS_INFINITE, or it must be between 1 and TTL_SECONDS_MAX(%d) inclusive", Integer.valueOf(i), Integer.valueOf(Strategy.TTL_SECONDS_MAX));
            this.zzbyu = i;
            return this;
        }

        public final Builder zzbr(int i) {
            this.zzbyw = 2;
            return this;
        }
    }

    static {
        Strategy build = new Builder().zzbr(2).setTtlSeconds(Integer.MAX_VALUE).build();
        BLE_ONLY = build;
        zzbyl = build;
    }

    Strategy(int i, int i2, int i3, int i4, boolean z, int i5, int i6, int i7) {
        this.zzaku = i;
        this.zzbym = i2;
        if (i2 == 0) {
            this.zzbyr = i6;
        } else {
            switch (i2) {
                case 2:
                    i2 = 1;
                    break;
                case 3:
                    this.zzbyr = 2;
                    break;
                default:
                    i2 = 3;
                    break;
            }
            this.zzbyr = i2;
        }
        this.zzbyo = i4;
        this.zzbyp = z;
        if (z) {
            this.zzbyq = 2;
            this.zzbyn = Integer.MAX_VALUE;
        } else {
            this.zzbyn = i3;
            if (i5 != 6) {
                switch (i5) {
                    case -1:
                    case 0:
                    case 1:
                        break;
                    default:
                        this.zzbyq = i5;
                        break;
                }
            }
            this.zzbyq = -1;
        }
        this.zzbys = i7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Strategy)) {
            return false;
        }
        Strategy strategy = (Strategy) obj;
        return this.zzaku == strategy.zzaku && this.zzbyr == strategy.zzbyr && this.zzbyn == strategy.zzbyn && this.zzbyo == strategy.zzbyo && this.zzbyq == strategy.zzbyq;
    }

    public int hashCode() {
        return (((((((this.zzaku * 31) + this.zzbyr) * 31) + this.zzbyn) * 31) + this.zzbyo) * 31) + this.zzbyq;
    }

    public String toString() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        StringBuilder stringBuilder;
        int i = this.zzbyn;
        int i2 = this.zzbyo;
        switch (i2) {
            case 0:
                obj = "DEFAULT";
                break;
            case 1:
                obj = "EARSHOT";
                break;
            default:
                StringBuilder stringBuilder2 = new StringBuilder(19);
                stringBuilder2.append("UNKNOWN:");
                stringBuilder2.append(i2);
                obj = stringBuilder2.toString();
                break;
        }
        String valueOf = String.valueOf(obj);
        int i3 = this.zzbyq;
        if (i3 == -1) {
            obj2 = "DEFAULT";
        } else {
            ArrayList arrayList = new ArrayList();
            if ((i3 & 4) > 0) {
                arrayList.add("ULTRASOUND");
            }
            if ((i3 & 2) > 0) {
                arrayList.add("BLE");
            }
            if (arrayList.isEmpty()) {
                StringBuilder stringBuilder3 = new StringBuilder(19);
                stringBuilder3.append("UNKNOWN:");
                stringBuilder3.append(i3);
                obj2 = stringBuilder3.toString();
            } else {
                obj2 = arrayList.toString();
            }
        }
        String valueOf2 = String.valueOf(obj2);
        int i4 = this.zzbyr;
        if (i4 == 3) {
            obj3 = "DEFAULT";
        } else {
            ArrayList arrayList2 = new ArrayList();
            if ((i4 & 1) > 0) {
                arrayList2.add("BROADCAST");
            }
            if ((i4 & 2) > 0) {
                arrayList2.add("SCAN");
            }
            if (arrayList2.isEmpty()) {
                StringBuilder stringBuilder4 = new StringBuilder(19);
                stringBuilder4.append("UNKNOWN:");
                stringBuilder4.append(i4);
                obj3 = stringBuilder4.toString();
            } else {
                obj3 = arrayList2.toString();
            }
        }
        String valueOf3 = String.valueOf(obj3);
        i4 = this.zzbys;
        switch (i4) {
            case 0:
                obj4 = "DEFAULT";
                break;
            case 1:
                obj4 = "ALWAYS_ON";
                break;
            default:
                stringBuilder = new StringBuilder(20);
                stringBuilder.append("UNKNOWN: ");
                stringBuilder.append(i4);
                obj4 = stringBuilder.toString();
                break;
        }
        String valueOf4 = String.valueOf(obj4);
        stringBuilder = new StringBuilder((((String.valueOf(valueOf).length() + 102) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()) + String.valueOf(valueOf4).length());
        stringBuilder.append("Strategy{ttlSeconds=");
        stringBuilder.append(i);
        stringBuilder.append(", distanceType=");
        stringBuilder.append(valueOf);
        stringBuilder.append(", discoveryMedium=");
        stringBuilder.append(valueOf2);
        stringBuilder.append(", discoveryMode=");
        stringBuilder.append(valueOf3);
        stringBuilder.append(", backgroundScanMode=");
        stringBuilder.append(valueOf4);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzbym);
        zzd.zzc(parcel, 2, this.zzbyn);
        zzd.zzc(parcel, 3, this.zzbyo);
        zzd.zza(parcel, 4, this.zzbyp);
        zzd.zzc(parcel, 5, this.zzbyq);
        zzd.zzc(parcel, 6, this.zzbyr);
        zzd.zzc(parcel, 7, this.zzbys);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }

    public final int zzzU() {
        return this.zzbys;
    }
}
