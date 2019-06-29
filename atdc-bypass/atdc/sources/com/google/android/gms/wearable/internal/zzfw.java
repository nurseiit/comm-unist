package com.google.android.gms.wearable.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.common.zze;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.CapabilityApi.CapabilityListener;
import com.google.android.gms.wearable.ChannelApi.ChannelListener;
import com.google.android.gms.wearable.DataApi.DataItemResult;
import com.google.android.gms.wearable.DataApi.DataListener;
import com.google.android.gms.wearable.DataApi.GetFdForAssetResult;
import com.google.android.gms.wearable.MessageApi.MessageListener;
import com.google.android.gms.wearable.NodeApi.NodeListener;
import com.google.android.gms.wearable.PutDataRequest;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map.Entry;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

public final class zzfw extends zzz<zzdn> {
    private final zzdp<Object> zzbTg;
    private final zzdp<Object> zzbTh;
    private final zzdp<ChannelListener> zzbTi;
    private final zzdp<DataListener> zzbTj;
    private final zzdp<MessageListener> zzbTk;
    private final zzdp<NodeListener> zzbTl;
    private final zzdp<Object> zzbTm;
    private final zzdp<CapabilityListener> zzbTn;
    private final zzgh zzbTo;
    private final ExecutorService zzbrV;

    public zzfw(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, zzq zzq) {
        this(context, looper, connectionCallbacks, onConnectionFailedListener, zzq, Executors.newCachedThreadPool(), zzgh.zzbz(context));
    }

    private zzfw(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, zzq zzq, ExecutorService executorService, zzgh zzgh) {
        super(context, looper, 14, zzq, connectionCallbacks, onConnectionFailedListener);
        this.zzbTg = new zzdp();
        this.zzbTh = new zzdp();
        this.zzbTi = new zzdp();
        this.zzbTj = new zzdp();
        this.zzbTk = new zzdp();
        this.zzbTl = new zzdp();
        this.zzbTm = new zzdp();
        this.zzbTn = new zzdp();
        this.zzbrV = (ExecutorService) zzbo.zzu(executorService);
        this.zzbTo = zzgh;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (Log.isLoggable("WearableClient", 2)) {
            StringBuilder stringBuilder = new StringBuilder(41);
            stringBuilder.append("onPostInitHandler: statusCode ");
            stringBuilder.append(i);
            Log.d("WearableClient", stringBuilder.toString());
        }
        if (i == 0) {
            this.zzbTg.zzam(iBinder);
            this.zzbTh.zzam(iBinder);
            this.zzbTi.zzam(iBinder);
            this.zzbTj.zzam(iBinder);
            this.zzbTk.zzam(iBinder);
            this.zzbTl.zzam(iBinder);
            this.zzbTm.zzam(iBinder);
            this.zzbTn.zzam(iBinder);
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public final void zza(@NonNull zzj zzj) {
        if (!zzpe()) {
            try {
                Bundle bundle = getContext().getPackageManager().getApplicationInfo("com.google.android.wearable.app.cn", 128).metaData;
                int i = bundle != null ? bundle.getInt("com.google.android.wearable.api.version", 0) : 0;
                if (i < zze.GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                    int i2 = zze.GOOGLE_PLAY_SERVICES_VERSION_CODE;
                    StringBuilder stringBuilder = new StringBuilder(80);
                    stringBuilder.append("Android Wear out of date. Requires API version ");
                    stringBuilder.append(i2);
                    stringBuilder.append(" but found ");
                    stringBuilder.append(i);
                    Log.w("WearableClient", stringBuilder.toString());
                    Context context = getContext();
                    Context context2 = getContext();
                    Intent intent = new Intent("com.google.android.wearable.app.cn.UPDATE_ANDROID_WEAR").setPackage("com.google.android.wearable.app.cn");
                    if (context2.getPackageManager().resolveActivity(intent, 65536) == null) {
                        intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.wearable.app.cn").build());
                    }
                    zza(zzj, 6, PendingIntent.getActivity(context, 0, intent, 0));
                    return;
                }
            } catch (NameNotFoundException unused) {
                zza(zzj, 16, null);
                return;
            }
        }
        super.zza(zzj);
    }

    public final void zza(zzbaz<GetFdForAssetResult> zzbaz, Asset asset) throws RemoteException {
        ((zzdn) zzrf()).zza(new zzfn(zzbaz), asset);
    }

    public final void zza(zzbaz<Status> zzbaz, CapabilityListener capabilityListener) throws RemoteException {
        this.zzbTn.zza(this, zzbaz, capabilityListener);
    }

    public final void zza(zzbaz<Status> zzbaz, CapabilityListener capabilityListener, zzbdw<CapabilityListener> zzbdw, IntentFilter[] intentFilterArr) throws RemoteException {
        this.zzbTn.zza(this, zzbaz, capabilityListener, zzga.zze(zzbdw, intentFilterArr));
    }

    public final void zza(zzbaz<Status> zzbaz, ChannelListener channelListener, zzbdw<ChannelListener> zzbdw, String str, IntentFilter[] intentFilterArr) throws RemoteException {
        if (str == null) {
            this.zzbTi.zza(this, zzbaz, channelListener, zzga.zzd(zzbdw, intentFilterArr));
            return;
        }
        this.zzbTi.zza(this, zzbaz, new zzeu(str, channelListener), zzga.zza(zzbdw, str, intentFilterArr));
    }

    public final void zza(zzbaz<Status> zzbaz, ChannelListener channelListener, String str) throws RemoteException {
        if (str == null) {
            this.zzbTi.zza(this, zzbaz, channelListener);
            return;
        }
        this.zzbTi.zza(this, zzbaz, new zzeu(str, channelListener));
    }

    public final void zza(zzbaz<Status> zzbaz, DataListener dataListener) throws RemoteException {
        this.zzbTj.zza(this, zzbaz, dataListener);
    }

    public final void zza(zzbaz<Status> zzbaz, DataListener dataListener, zzbdw<DataListener> zzbdw, IntentFilter[] intentFilterArr) throws RemoteException {
        this.zzbTj.zza(this, zzbaz, dataListener, zzga.zza(zzbdw, intentFilterArr));
    }

    public final void zza(zzbaz<Status> zzbaz, MessageListener messageListener) throws RemoteException {
        this.zzbTk.zza(this, zzbaz, messageListener);
    }

    public final void zza(zzbaz<Status> zzbaz, MessageListener messageListener, zzbdw<MessageListener> zzbdw, IntentFilter[] intentFilterArr) throws RemoteException {
        this.zzbTk.zza(this, zzbaz, messageListener, zzga.zzb(zzbdw, intentFilterArr));
    }

    public final void zza(zzbaz<Status> zzbaz, NodeListener nodeListener) throws RemoteException {
        this.zzbTl.zza(this, zzbaz, nodeListener);
    }

    public final void zza(zzbaz<Status> zzbaz, NodeListener nodeListener, zzbdw<NodeListener> zzbdw, IntentFilter[] intentFilterArr) throws RemoteException {
        this.zzbTl.zza(this, zzbaz, nodeListener, zzga.zzc(zzbdw, intentFilterArr));
    }

    public final void zza(zzbaz<DataItemResult> zzbaz, PutDataRequest putDataRequest) throws RemoteException {
        String valueOf;
        StringBuilder stringBuilder;
        zzbaz<DataItemResult> zzbaz2 = zzbaz;
        for (Entry value : putDataRequest.getAssets().entrySet()) {
            Asset asset = (Asset) value.getValue();
            if (asset.getData() == null && asset.getDigest() == null && asset.getFd() == null && asset.getUri() == null) {
                valueOf = String.valueOf(putDataRequest.getUri());
                String valueOf2 = String.valueOf(asset);
                StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf).length() + 33) + String.valueOf(valueOf2).length());
                stringBuilder2.append("Put for ");
                stringBuilder2.append(valueOf);
                stringBuilder2.append(" contains invalid asset: ");
                stringBuilder2.append(valueOf2);
                throw new IllegalArgumentException(stringBuilder2.toString());
            }
        }
        PutDataRequest zzt = PutDataRequest.zzt(putDataRequest.getUri());
        zzt.setData(putDataRequest.getData());
        if (putDataRequest.isUrgent()) {
            zzt.setUrgent();
        }
        ArrayList arrayList = new ArrayList();
        for (Entry entry : putDataRequest.getAssets().entrySet()) {
            Asset asset2 = (Asset) entry.getValue();
            if (asset2.getData() != null) {
                try {
                    ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                    if (Log.isLoggable("WearableClient", 3)) {
                        String valueOf3 = String.valueOf(asset2);
                        String valueOf4 = String.valueOf(createPipe[0]);
                        String valueOf5 = String.valueOf(createPipe[1]);
                        StringBuilder stringBuilder3 = new StringBuilder(((String.valueOf(valueOf3).length() + 61) + String.valueOf(valueOf4).length()) + String.valueOf(valueOf5).length());
                        stringBuilder3.append("processAssets: replacing data with FD in asset: ");
                        stringBuilder3.append(valueOf3);
                        stringBuilder3.append(" read:");
                        stringBuilder3.append(valueOf4);
                        stringBuilder3.append(" write:");
                        stringBuilder3.append(valueOf5);
                        Log.d("WearableClient", stringBuilder3.toString());
                    }
                    zzt.putAsset((String) entry.getKey(), Asset.createFromFd(createPipe[0]));
                    FutureTask futureTask = new FutureTask(new zzfx(this, createPipe[1], asset2.getData()));
                    arrayList.add(futureTask);
                    this.zzbrV.submit(futureTask);
                } catch (IOException e) {
                    valueOf = String.valueOf(putDataRequest);
                    stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 60);
                    stringBuilder.append("Unable to create ParcelFileDescriptor for asset in request: ");
                    stringBuilder.append(valueOf);
                    throw new IllegalStateException(stringBuilder.toString(), e);
                }
            } else if (asset2.getUri() != null) {
                try {
                    zzt.putAsset((String) entry.getKey(), Asset.createFromFd(getContext().getContentResolver().openFileDescriptor(asset2.getUri(), "r")));
                } catch (FileNotFoundException unused) {
                    new zzfr(zzbaz2, arrayList).zza(new zzem(4005, null));
                    valueOf = String.valueOf(asset2.getUri());
                    stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 28);
                    stringBuilder.append("Couldn't resolve asset URI: ");
                    stringBuilder.append(valueOf);
                    Log.w("WearableClient", stringBuilder.toString());
                    return;
                }
            } else {
                zzt.putAsset((String) entry.getKey(), asset2);
            }
        }
        ((zzdn) zzrf()).zza(new zzfr(zzbaz2, arrayList), zzt);
    }

    public final void zza(zzbaz<Status> zzbaz, String str, Uri uri, long j, long j2) {
        try {
            ExecutorService executorService = this.zzbrV;
            zzbo.zzu(zzbaz);
            zzbo.zzu(str);
            zzbo.zzu(uri);
            zzbo.zzb(j >= 0, "startOffset is negative: %s", Long.valueOf(j));
            zzbo.zzb(j2 >= -1, "invalid length: %s", Long.valueOf(j2));
            executorService.execute(new zzfz(this, uri, zzbaz, str, j, j2));
        } catch (RuntimeException e) {
            RuntimeException runtimeException = e;
            zzbaz.zzr(new Status(8));
            throw runtimeException;
        }
    }

    public final void zza(zzbaz<Status> zzbaz, String str, Uri uri, boolean z) {
        try {
            ExecutorService executorService = this.zzbrV;
            zzbo.zzu(zzbaz);
            zzbo.zzu(str);
            zzbo.zzu(uri);
            executorService.execute(new zzfy(this, uri, zzbaz, z, str));
        } catch (RuntimeException e) {
            zzbaz.zzr(new Status(8));
            throw e;
        }
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
        return queryLocalInterface instanceof zzdn ? (zzdn) queryLocalInterface : new zzdo(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.wearable.BIND";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.wearable.internal.IWearableService";
    }

    public final boolean zzpe() {
        return !this.zzbTo.zzgm("com.google.android.wearable.app.cn");
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzqZ() {
        return this.zzbTo.zzgm("com.google.android.wearable.app.cn") ? "com.google.android.wearable.app.cn" : "com.google.android.gms";
    }
}
