package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public final class ClientAppContext extends zza implements ReflectedParcelable {
    public static final Creator<ClientAppContext> CREATOR = new zzd();
    private int versionCode;
    private String zzbyW;
    @Nullable
    private String zzbyX;
    private int zzbyY;
    private boolean zzbyf;
    private String zzbyh;

    ClientAppContext(int i, String str, @Nullable String str2, boolean z, int i2, @Nullable String str3) {
        this.versionCode = i;
        this.zzbyW = (String) zzbo.zzu(str);
        if (!(str2 == null || str2.isEmpty() || str2.startsWith("0p:"))) {
            Log.w("NearbyMessages", String.format("ClientAppContext: 0P identifier(%s) without 0P prefix(%s)", new Object[]{str2, "0p:"}));
            String valueOf = String.valueOf("0p:");
            str = String.valueOf(str2);
            str2 = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
        }
        this.zzbyX = str2;
        this.zzbyf = z;
        this.zzbyY = i2;
        this.zzbyh = str3;
    }

    public ClientAppContext(String str, @Nullable String str2, boolean z, @Nullable String str3, int i) {
        this(1, str, str2, z, i, str3);
    }

    private static boolean zzU(String str, String str2) {
        return TextUtils.isEmpty(str) ? TextUtils.isEmpty(str2) : str.equals(str2);
    }

    @Nullable
    static final ClientAppContext zza(@Nullable ClientAppContext clientAppContext, @Nullable String str, @Nullable String str2, boolean z) {
        return clientAppContext != null ? clientAppContext : (str == null && str2 == null) ? null : new ClientAppContext(str, str2, z, null, 0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientAppContext)) {
            return false;
        }
        ClientAppContext clientAppContext = (ClientAppContext) obj;
        return zzU(this.zzbyW, clientAppContext.zzbyW) && zzU(this.zzbyX, clientAppContext.zzbyX) && this.zzbyf == clientAppContext.zzbyf && zzU(this.zzbyh, clientAppContext.zzbyh) && this.zzbyY == clientAppContext.zzbyY;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbyW, this.zzbyX, Boolean.valueOf(this.zzbyf), this.zzbyh, Integer.valueOf(this.zzbyY)});
    }

    public final String toString() {
        return String.format("{realClientPackageName: %s, zeroPartyIdentifier: %s, useRealClientApiKey: %b, apiKey: %s, callingContext: %d}", new Object[]{this.zzbyW, this.zzbyX, Boolean.valueOf(this.zzbyf), this.zzbyh, Integer.valueOf(this.zzbyY)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.versionCode);
        zzd.zza(parcel, 2, this.zzbyW, false);
        zzd.zza(parcel, 3, this.zzbyX, false);
        zzd.zza(parcel, 4, this.zzbyf);
        zzd.zzc(parcel, 5, this.zzbyY);
        zzd.zza(parcel, 6, this.zzbyh, false);
        zzd.zzI(parcel, i);
    }
}
