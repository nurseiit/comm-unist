package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.zzc;
import com.google.firebase.FirebaseApp;
import org.json.JSONObject;

public final class ace {
    private static final Object zzcqh = new Object();
    private static volatile ace zzcqi;
    private Context mContext;
    private FirebaseApp zzckw;
    private acc zzcqj;

    private ace(@NonNull FirebaseApp firebaseApp) throws RemoteException {
        this.mContext = firebaseApp.getApplicationContext();
        this.zzckw = firebaseApp;
        try {
            acc acc;
            IBinder zzcV = DynamiteModule.zza(this.mContext, DynamiteModule.zzaSL, "com.google.android.gms.firebasestorage").zzcV("com.google.firebase.storage.network.NetworkRequestFactoryImpl");
            if (zzcV == null) {
                acc = null;
            } else {
                IInterface queryLocalInterface = zzcV.queryLocalInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                acc = queryLocalInterface instanceof acc ? (acc) queryLocalInterface : new acd(zzcV);
            }
            this.zzcqj = acc;
            if (this.zzcqj == null) {
                Log.e("NetworkRqFactoryProxy", "Unable to load Firebase Storage Network layer.");
                throw new RemoteException();
            }
        } catch (zzc e) {
            Log.e("NetworkRqFactoryProxy", "NetworkRequestFactoryProxy failed with a RemoteException:", e);
            throw new RemoteException();
        }
    }

    private final acf zze(acf acf) {
        acf.zzam("x-firebase-gmpid", this.zzckw.getOptions().getApplicationId());
        return acf;
    }

    public static ace zzg(@NonNull FirebaseApp firebaseApp) throws RemoteException {
        if (zzcqi == null) {
            synchronized (zzcqh) {
                if (zzcqi == null) {
                    zzcqi = new ace(firebaseApp);
                }
            }
        }
        return zzcqi;
    }

    @Nullable
    public final String zzLm() {
        try {
            return this.zzcqj.zzLm();
        } catch (RemoteException e) {
            Log.e("NetworkRqFactoryProxy", "getBackendAuthority failed with a RemoteException:", e);
            return null;
        }
    }

    @NonNull
    public final acf zza(Uri uri, long j) throws RemoteException {
        return zze(new acf(this.zzcqj.zza(uri, zzn.zzw(this.mContext), j)));
    }

    @Nullable
    public final acf zza(Uri uri, String str) throws RemoteException {
        return zze(new acf(this.zzcqj.zza(uri, zzn.zzw(this.mContext), str)));
    }

    @NonNull
    public final acf zza(Uri uri, String str, byte[] bArr, long j, int i, boolean z) throws RemoteException {
        return zze(new acf(this.zzcqj.zza(uri, zzn.zzw(this.mContext), str, zzn.zzw(bArr), j, i, z)));
    }

    @NonNull
    public final acf zza(Uri uri, JSONObject jSONObject) throws RemoteException {
        return zze(new acf(this.zzcqj.zza(uri, zzn.zzw(this.mContext), zzn.zzw(jSONObject))));
    }

    @NonNull
    public final acf zza(Uri uri, JSONObject jSONObject, String str) throws RemoteException {
        return zze(new acf(this.zzcqj.zza(uri, zzn.zzw(this.mContext), zzn.zzw(jSONObject), str)));
    }

    @NonNull
    public final acf zzb(Uri uri, String str) throws RemoteException {
        return zze(new acf(this.zzcqj.zzb(uri, zzn.zzw(this.mContext), str)));
    }

    @Nullable
    public final String zzv(Uri uri) {
        try {
            return this.zzcqj.zzv(uri);
        } catch (RemoteException e) {
            Log.e("NetworkRqFactoryProxy", "getDefaultURL failed with a RemoteException:", e);
            return null;
        }
    }

    @NonNull
    public final acf zzw(Uri uri) throws RemoteException {
        return zze(new acf(this.zzcqj.zza(uri, zzn.zzw(this.mContext))));
    }

    @NonNull
    public final acf zzx(Uri uri) throws RemoteException {
        return zze(new acf(this.zzcqj.zzb(uri, zzn.zzw(this.mContext))));
    }
}
