package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.dynamite.DynamiteModule;

public final class jy extends zzz<kc> implements jx {
    private static zzbgb zzakn = new zzbgb("FirebaseAuth", "FirebaseAuth:");
    private final Context mContext;
    private final kg zzbWF;

    public jy(Context context, Looper looper, zzq zzq, kg kgVar, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 112, zzq, connectionCallbacks, onConnectionFailedListener);
        this.mContext = (Context) zzbo.zzu(context);
        this.zzbWF = kgVar;
    }

    public final /* synthetic */ kc zzEM() throws DeadObjectException {
        return (kc) super.zzrf();
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
        return queryLocalInterface instanceof kc ? (kc) queryLocalInterface : new kd(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.firebase.auth.api.gms.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.firebase.auth.api.internal.IFirebaseAuthService";
    }

    /* Access modifiers changed, original: protected|final */
    public final Bundle zzmo() {
        Bundle zzmo = super.zzmo();
        if (zzmo == null) {
            zzmo = new Bundle();
        }
        if (this.zzbWF != null) {
            zzmo.putString("com.google.firebase.auth.API_KEY", this.zzbWF.getApiKey());
        }
        return zzmo;
    }

    public final boolean zzpe() {
        return DynamiteModule.zzE(this.mContext, "com.google.firebase.auth") == 0;
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0082  */
    public final java.lang.String zzqZ() {
        /*
        r6 = this;
        r0 = "firebear.preference";
        r0 = com.google.android.gms.internal.ks.getProperty(r0);
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 == 0) goto L_0x000e;
    L_0x000c:
        r0 = "default";
    L_0x000e:
        r1 = r0.hashCode();
        r2 = 103145323; // 0x625df6b float:3.1197192E-35 double:5.09605606E-316;
        r3 = -1;
        r4 = 0;
        if (r1 == r2) goto L_0x0029;
    L_0x0019:
        r5 = 1544803905; // 0x5c13d641 float:1.66449585E17 double:7.63234539E-315;
        if (r1 == r5) goto L_0x001f;
    L_0x001e:
        goto L_0x0033;
    L_0x001f:
        r1 = "default";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x0033;
    L_0x0027:
        r1 = 1;
        goto L_0x0034;
    L_0x0029:
        r1 = "local";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x0033;
    L_0x0031:
        r1 = 0;
        goto L_0x0034;
    L_0x0033:
        r1 = -1;
    L_0x0034:
        switch(r1) {
            case 0: goto L_0x0039;
            case 1: goto L_0x0039;
            default: goto L_0x0037;
        };
    L_0x0037:
        r0 = "default";
    L_0x0039:
        r1 = r0.hashCode();
        if (r1 == r2) goto L_0x0040;
    L_0x003f:
        goto L_0x0049;
    L_0x0040:
        r1 = "local";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0049;
    L_0x0048:
        r3 = 0;
    L_0x0049:
        if (r3 == 0) goto L_0x0082;
    L_0x004b:
        r0 = zzakn;
        r1 = "Loading module via default loading order.";
        r2 = new java.lang.Object[r4];
        r0.zza(r1, r2);
        r0 = r6.mContext;
        r1 = "com.google.firebase.auth";
        r0 = com.google.android.gms.dynamite.DynamiteModule.zzE(r0, r1);
        r1 = r6.mContext;
        r2 = "com.google.android.gms.firebase_auth";
        r1 = com.google.android.gms.dynamite.DynamiteModule.zzF(r1, r2);
        if (r1 < r0) goto L_0x0072;
    L_0x0066:
        r0 = zzakn;
        r1 = "Loading remote module.";
        r2 = new java.lang.Object[r4];
        r0.zza(r1, r2);
        r0 = "com.google.android.gms";
        return r0;
    L_0x0072:
        r0 = zzakn;
        r1 = "Loading fallback module.";
        r2 = new java.lang.Object[r4];
        r0.zza(r1, r2);
        r0 = r6.mContext;
        r0 = r0.getPackageName();
        return r0;
    L_0x0082:
        r0 = zzakn;
        r1 = "Loading fallback module override.";
        r2 = new java.lang.Object[r4];
        r0.zza(r1, r2);
        r0 = r6.mContext;
        r0 = r0.getPackageName();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jy.zzqZ():java.lang.String");
    }
}
