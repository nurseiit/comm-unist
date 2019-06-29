package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.wearable.CapabilityApi.CapabilityListener;
import com.google.android.gms.wearable.ChannelApi.ChannelListener;
import com.google.android.gms.wearable.DataApi.DataListener;
import com.google.android.gms.wearable.MessageApi.MessageListener;
import com.google.android.gms.wearable.NodeApi.NodeListener;
import java.util.List;

public final class zzga<T> extends zzdl {
    private final IntentFilter[] zzbSW;
    private final String zzbTA;
    private zzbdw<Object> zzbTs;
    private zzbdw<Object> zzbTt;
    private zzbdw<DataListener> zzbTu;
    private zzbdw<MessageListener> zzbTv;
    private zzbdw<NodeListener> zzbTw;
    private zzbdw<Object> zzbTx;
    private zzbdw<ChannelListener> zzbTy;
    private zzbdw<CapabilityListener> zzbTz;

    private zzga(IntentFilter[] intentFilterArr, String str) {
        this.zzbSW = (IntentFilter[]) zzbo.zzu(intentFilterArr);
        this.zzbTA = str;
    }

    public static zzga<ChannelListener> zza(zzbdw<ChannelListener> zzbdw, String str, IntentFilter[] intentFilterArr) {
        zzga zzga = new zzga(intentFilterArr, (String) zzbo.zzu(str));
        zzga.zzbTy = (zzbdw) zzbo.zzu(zzbdw);
        return zzga;
    }

    public static zzga<DataListener> zza(zzbdw<DataListener> zzbdw, IntentFilter[] intentFilterArr) {
        zzga zzga = new zzga(intentFilterArr, null);
        zzga.zzbTu = (zzbdw) zzbo.zzu(zzbdw);
        return zzga;
    }

    public static zzga<MessageListener> zzb(zzbdw<MessageListener> zzbdw, IntentFilter[] intentFilterArr) {
        zzga zzga = new zzga(intentFilterArr, null);
        zzga.zzbTv = (zzbdw) zzbo.zzu(zzbdw);
        return zzga;
    }

    public static zzga<NodeListener> zzc(zzbdw<NodeListener> zzbdw, IntentFilter[] intentFilterArr) {
        zzga zzga = new zzga(intentFilterArr, null);
        zzga.zzbTw = (zzbdw) zzbo.zzu(zzbdw);
        return zzga;
    }

    public static zzga<ChannelListener> zzd(zzbdw<ChannelListener> zzbdw, IntentFilter[] intentFilterArr) {
        zzga zzga = new zzga(intentFilterArr, null);
        zzga.zzbTy = (zzbdw) zzbo.zzu(zzbdw);
        return zzga;
    }

    public static zzga<CapabilityListener> zze(zzbdw<CapabilityListener> zzbdw, IntentFilter[] intentFilterArr) {
        zzga zzga = new zzga(intentFilterArr, null);
        zzga.zzbTz = (zzbdw) zzbo.zzu(zzbdw);
        return zzga;
    }

    private static void zzk(zzbdw<?> zzbdw) {
        if (zzbdw != null) {
            zzbdw.clear();
        }
    }

    public final void clear() {
        zzk(null);
        this.zzbTs = null;
        zzk(null);
        this.zzbTt = null;
        zzk(this.zzbTu);
        this.zzbTu = null;
        zzk(this.zzbTv);
        this.zzbTv = null;
        zzk(this.zzbTw);
        this.zzbTw = null;
        zzk(null);
        this.zzbTx = null;
        zzk(this.zzbTy);
        this.zzbTy = null;
        zzk(this.zzbTz);
        this.zzbTz = null;
    }

    public final void onConnectedNodes(List<zzeg> list) {
    }

    public final IntentFilter[] zzDY() {
        return this.zzbSW;
    }

    public final String zzDZ() {
        return this.zzbTA;
    }

    public final void zzS(DataHolder dataHolder) {
        if (this.zzbTu != null) {
            this.zzbTu.zza(new zzgb(dataHolder));
        } else {
            dataHolder.close();
        }
    }

    public final void zza(zzaa zzaa) {
        if (this.zzbTz != null) {
            this.zzbTz.zza(new zzgg(zzaa));
        }
    }

    public final void zza(zzai zzai) {
        if (this.zzbTy != null) {
            this.zzbTy.zza(new zzgf(zzai));
        }
    }

    public final void zza(zzdx zzdx) {
        if (this.zzbTv != null) {
            this.zzbTv.zza(new zzgc(zzdx));
        }
    }

    public final void zza(zzeg zzeg) {
        if (this.zzbTw != null) {
            this.zzbTw.zza(new zzgd(zzeg));
        }
    }

    public final void zza(zzi zzi) {
    }

    public final void zza(zzl zzl) {
    }

    public final void zzb(zzeg zzeg) {
        if (this.zzbTw != null) {
            this.zzbTw.zza(new zzge(zzeg));
        }
    }
}
