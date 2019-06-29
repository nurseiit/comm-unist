package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Arrays;

public class Cap extends zza {
    public static final Creator<Cap> CREATOR = new zzb();
    private static final String TAG = "Cap";
    @Nullable
    private final BitmapDescriptor bitmapDescriptor;
    private final int type;
    @Nullable
    private final Float zzbng;

    protected Cap(int i) {
        this(i, null, null);
    }

    Cap(int i, @Nullable IBinder iBinder, @Nullable Float f) {
        this(i, iBinder == null ? null : new BitmapDescriptor(IObjectWrapper.zza.zzM(iBinder)), f);
    }

    private Cap(int i, @Nullable BitmapDescriptor bitmapDescriptor, @Nullable Float f) {
        boolean z = false;
        Object obj = (f == null || f.floatValue() <= 0.0f) ? null : 1;
        if (!(i == 3 && (bitmapDescriptor == null || obj == null))) {
            z = true;
        }
        String valueOf = String.valueOf(bitmapDescriptor);
        String valueOf2 = String.valueOf(f);
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 63) + String.valueOf(valueOf2).length());
        stringBuilder.append("Invalid Cap: type=");
        stringBuilder.append(i);
        stringBuilder.append(" bitmapDescriptor=");
        stringBuilder.append(valueOf);
        stringBuilder.append(" bitmapRefWidth=");
        stringBuilder.append(valueOf2);
        zzbo.zzb(z, stringBuilder.toString());
        this.type = i;
        this.bitmapDescriptor = bitmapDescriptor;
        this.zzbng = f;
    }

    protected Cap(@NonNull BitmapDescriptor bitmapDescriptor, float f) {
        this(3, bitmapDescriptor, Float.valueOf(f));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cap)) {
            return false;
        }
        Cap cap = (Cap) obj;
        return this.type == cap.type && zzbe.equal(this.bitmapDescriptor, cap.bitmapDescriptor) && zzbe.equal(this.zzbng, cap.zzbng);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.type), this.bitmapDescriptor, this.zzbng});
    }

    public String toString() {
        int i = this.type;
        StringBuilder stringBuilder = new StringBuilder(23);
        stringBuilder.append("[Cap: type=");
        stringBuilder.append(i);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.type);
        zzd.zza(parcel, 3, this.bitmapDescriptor == null ? null : this.bitmapDescriptor.zzwe().asBinder(), false);
        zzd.zza(parcel, 4, this.zzbng, false);
        zzd.zzI(parcel, i);
    }

    /* Access modifiers changed, original: final */
    public final Cap zzwk() {
        switch (this.type) {
            case 0:
                return new ButtCap();
            case 1:
                return new SquareCap();
            case 2:
                return new RoundCap();
            case 3:
                return new CustomCap(this.bitmapDescriptor, this.zzbng.floatValue());
            default:
                String str = TAG;
                int i = this.type;
                StringBuilder stringBuilder = new StringBuilder(29);
                stringBuilder.append("Unknown Cap type: ");
                stringBuilder.append(i);
                Log.w(str, stringBuilder.toString());
                return this;
        }
    }
}
