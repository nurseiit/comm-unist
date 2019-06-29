package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public final class SignInConfiguration extends zza implements ReflectedParcelable {
    public static final Creator<SignInConfiguration> CREATOR = new zzw();
    private int versionCode;
    private final String zzamu;
    private GoogleSignInOptions zzamv;

    SignInConfiguration(int i, String str, GoogleSignInOptions googleSignInOptions) {
        this.versionCode = i;
        this.zzamu = zzbo.zzcF(str);
        this.zzamv = googleSignInOptions;
    }

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this(3, str, googleSignInOptions);
    }

    /* JADX WARNING: Missing block: B:12:0x0021, code skipped:
            if (r3.zzamv.equals(r4.zzamv) != false) goto L_0x0023;
     */
    public final boolean equals(java.lang.Object r4) {
        /*
        r3 = this;
        r0 = 0;
        if (r4 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r4 = (com.google.android.gms.auth.api.signin.internal.SignInConfiguration) r4;	 Catch:{ ClassCastException -> 0x0025 }
        r1 = r3.zzamu;	 Catch:{ ClassCastException -> 0x0025 }
        r2 = r4.zzamu;	 Catch:{ ClassCastException -> 0x0025 }
        r1 = r1.equals(r2);	 Catch:{ ClassCastException -> 0x0025 }
        if (r1 == 0) goto L_0x0025;
    L_0x0010:
        r1 = r3.zzamv;	 Catch:{ ClassCastException -> 0x0025 }
        if (r1 != 0) goto L_0x0019;
    L_0x0014:
        r4 = r4.zzamv;	 Catch:{ ClassCastException -> 0x0025 }
        if (r4 != 0) goto L_0x0025;
    L_0x0018:
        goto L_0x0023;
    L_0x0019:
        r1 = r3.zzamv;	 Catch:{ ClassCastException -> 0x0025 }
        r4 = r4.zzamv;	 Catch:{ ClassCastException -> 0x0025 }
        r4 = r1.equals(r4);	 Catch:{ ClassCastException -> 0x0025 }
        if (r4 == 0) goto L_0x0025;
    L_0x0023:
        r4 = 1;
        return r4;
    L_0x0025:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.SignInConfiguration.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return new zzo().zzo(this.zzamu).zzo(this.zzamv).zzmJ();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.versionCode);
        zzd.zza(parcel, 2, this.zzamu, false);
        zzd.zza(parcel, 5, this.zzamv, i, false);
        zzd.zzI(parcel, zze);
    }

    public final GoogleSignInOptions zzmL() {
        return this.zzamv;
    }
}
