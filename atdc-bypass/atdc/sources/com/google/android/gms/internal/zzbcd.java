package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzal;
import com.google.android.gms.common.internal.zzbr;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.zze;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

public final class zzbcd implements zzbcw {
    private final Context mContext;
    private final zza<? extends zzctk, zzctl> zzaBe;
    private final zzq zzaCA;
    private final Map<Api<?>, Boolean> zzaCD;
    private final zze zzaCF;
    private ConnectionResult zzaCO;
    private final zzbcx zzaCZ;
    private final Lock zzaCv;
    private int zzaDc;
    private int zzaDd = 0;
    private int zzaDe;
    private final Bundle zzaDf = new Bundle();
    private final Set<zzc> zzaDg = new HashSet();
    private zzctk zzaDh;
    private boolean zzaDi;
    private boolean zzaDj;
    private boolean zzaDk;
    private zzal zzaDl;
    private boolean zzaDm;
    private boolean zzaDn;
    private ArrayList<Future<?>> zzaDo = new ArrayList();

    public zzbcd(zzbcx zzbcx, zzq zzq, Map<Api<?>, Boolean> map, zze zze, zza<? extends zzctk, zzctl> zza, Lock lock, Context context) {
        this.zzaCZ = zzbcx;
        this.zzaCA = zzq;
        this.zzaCD = map;
        this.zzaCF = zze;
        this.zzaBe = zza;
        this.zzaCv = lock;
        this.mContext = context;
    }

    private final void zza(zzctx zzctx) {
        if (zzan(0)) {
            ConnectionResult zzpz = zzctx.zzpz();
            if (zzpz.isSuccess()) {
                zzbr zzAx = zzctx.zzAx();
                zzpz = zzAx.zzpz();
                if (zzpz.isSuccess()) {
                    this.zzaDk = true;
                    this.zzaDl = zzAx.zzrH();
                    this.zzaDm = zzAx.zzrI();
                    this.zzaDn = zzAx.zzrJ();
                    zzpX();
                    return;
                }
                String valueOf = String.valueOf(zzpz);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 48);
                stringBuilder.append("Sign-in succeeded with resolve account failure: ");
                stringBuilder.append(valueOf);
                Log.wtf("GoogleApiClientConnecting", stringBuilder.toString(), new Exception());
                zze(zzpz);
            } else if (zzd(zzpz)) {
                zzpZ();
                zzpX();
            } else {
                zze(zzpz);
            }
        }
    }

    private final void zzad(boolean z) {
        if (this.zzaDh != null) {
            if (this.zzaDh.isConnected() && z) {
                this.zzaDh.zzAq();
            }
            this.zzaDh.disconnect();
            this.zzaDl = null;
        }
    }

    private final boolean zzan(int i) {
        if (this.zzaDd == i) {
            return true;
        }
        Log.w("GoogleApiClientConnecting", this.zzaCZ.zzaCl.zzqg());
        String valueOf = String.valueOf(this);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 23);
        stringBuilder.append("Unexpected callback in ");
        stringBuilder.append(valueOf);
        Log.w("GoogleApiClientConnecting", stringBuilder.toString());
        int i2 = this.zzaDe;
        stringBuilder = new StringBuilder(33);
        stringBuilder.append("mRemainingConnections=");
        stringBuilder.append(i2);
        Log.w("GoogleApiClientConnecting", stringBuilder.toString());
        valueOf = String.valueOf(zzao(this.zzaDd));
        String valueOf2 = String.valueOf(zzao(i));
        stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 70) + String.valueOf(valueOf2).length());
        stringBuilder.append("GoogleApiClient connecting is in step ");
        stringBuilder.append(valueOf);
        stringBuilder.append(" but received callback for step ");
        stringBuilder.append(valueOf2);
        Log.wtf("GoogleApiClientConnecting", stringBuilder.toString(), new Exception());
        zze(new ConnectionResult(8, null));
        return false;
    }

    private static String zzao(int i) {
        switch (i) {
            case 0:
                return "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
            case 1:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    /* JADX WARNING: Missing block: B:8:0x0022, code skipped:
            if (r7 != null) goto L_0x0024;
     */
    private final void zzb(com.google.android.gms.common.ConnectionResult r5, com.google.android.gms.common.api.Api<?> r6, boolean r7) {
        /*
        r4 = this;
        r0 = r6.zzpb();
        r0 = r0.getPriority();
        r1 = 0;
        r2 = 1;
        if (r7 == 0) goto L_0x0024;
    L_0x000c:
        r7 = r5.hasResolution();
        if (r7 == 0) goto L_0x0014;
    L_0x0012:
        r7 = 1;
        goto L_0x0022;
    L_0x0014:
        r7 = r4.zzaCF;
        r3 = r5.getErrorCode();
        r7 = r7.zzak(r3);
        if (r7 == 0) goto L_0x0021;
    L_0x0020:
        goto L_0x0012;
    L_0x0021:
        r7 = 0;
    L_0x0022:
        if (r7 == 0) goto L_0x002d;
    L_0x0024:
        r7 = r4.zzaCO;
        if (r7 == 0) goto L_0x002c;
    L_0x0028:
        r7 = r4.zzaDc;
        if (r0 >= r7) goto L_0x002d;
    L_0x002c:
        r1 = 1;
    L_0x002d:
        if (r1 == 0) goto L_0x0033;
    L_0x002f:
        r4.zzaCO = r5;
        r4.zzaDc = r0;
    L_0x0033:
        r7 = r4.zzaCZ;
        r7 = r7.zzaDU;
        r6 = r6.zzpd();
        r7.put(r6, r5);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbcd.zzb(com.google.android.gms.common.ConnectionResult, com.google.android.gms.common.api.Api, boolean):void");
    }

    private final boolean zzd(ConnectionResult connectionResult) {
        return this.zzaDi && !connectionResult.hasResolution();
    }

    private final void zze(ConnectionResult connectionResult) {
        zzqa();
        zzad(connectionResult.hasResolution() ^ 1);
        this.zzaCZ.zzg(connectionResult);
        this.zzaCZ.zzaDY.zzc(connectionResult);
    }

    private final boolean zzpW() {
        this.zzaDe--;
        if (this.zzaDe > 0) {
            return false;
        }
        ConnectionResult connectionResult;
        if (this.zzaDe < 0) {
            Log.w("GoogleApiClientConnecting", this.zzaCZ.zzaCl.zzqg());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            connectionResult = new ConnectionResult(8, null);
        } else if (this.zzaCO == null) {
            return true;
        } else {
            this.zzaCZ.zzaDX = this.zzaDc;
            connectionResult = this.zzaCO;
        }
        zze(connectionResult);
        return false;
    }

    private final void zzpX() {
        if (this.zzaDe == 0) {
            if (!this.zzaDj || this.zzaDk) {
                ArrayList arrayList = new ArrayList();
                this.zzaDd = 1;
                this.zzaDe = this.zzaCZ.zzaDF.size();
                for (zzc zzc : this.zzaCZ.zzaDF.keySet()) {
                    if (!this.zzaCZ.zzaDU.containsKey(zzc)) {
                        arrayList.add((Api.zze) this.zzaCZ.zzaDF.get(zzc));
                    } else if (zzpW()) {
                        zzpY();
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.zzaDo.add(zzbda.zzqj().submit(new zzbcj(this, arrayList)));
                }
            }
        }
    }

    private final void zzpY() {
        this.zzaCZ.zzqi();
        zzbda.zzqj().execute(new zzbce(this));
        if (this.zzaDh != null) {
            if (this.zzaDm) {
                this.zzaDh.zza(this.zzaDl, this.zzaDn);
            }
            zzad(false);
        }
        for (zzc zzc : this.zzaCZ.zzaDU.keySet()) {
            ((Api.zze) this.zzaCZ.zzaDF.get(zzc)).disconnect();
        }
        this.zzaCZ.zzaDY.zzm(this.zzaDf.isEmpty() ? null : this.zzaDf);
    }

    private final void zzpZ() {
        this.zzaDj = false;
        this.zzaCZ.zzaCl.zzaDG = Collections.emptySet();
        for (zzc zzc : this.zzaDg) {
            if (!this.zzaCZ.zzaDU.containsKey(zzc)) {
                this.zzaCZ.zzaDU.put(zzc, new ConnectionResult(17, null));
            }
        }
    }

    private final void zzqa() {
        ArrayList arrayList = this.zzaDo;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((Future) obj).cancel(true);
        }
        this.zzaDo.clear();
    }

    private final Set<Scope> zzqb() {
        if (this.zzaCA == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(this.zzaCA.zzrn());
        Map zzrp = this.zzaCA.zzrp();
        for (Api api : zzrp.keySet()) {
            if (!this.zzaCZ.zzaDU.containsKey(api.zzpd())) {
                hashSet.addAll(((zzr) zzrp.get(api)).zzame);
            }
        }
        return hashSet;
    }

    public final void begin() {
        this.zzaCZ.zzaDU.clear();
        this.zzaDj = false;
        this.zzaCO = null;
        this.zzaDd = 0;
        this.zzaDi = true;
        this.zzaDk = false;
        this.zzaDm = false;
        HashMap hashMap = new HashMap();
        int i = 0;
        for (Api api : this.zzaCD.keySet()) {
            Api.zze zze = (Api.zze) this.zzaCZ.zzaDF.get(api.zzpd());
            i |= api.zzpb().getPriority() == 1 ? 1 : 0;
            boolean booleanValue = ((Boolean) this.zzaCD.get(api)).booleanValue();
            if (zze.zzmv()) {
                this.zzaDj = true;
                if (booleanValue) {
                    this.zzaDg.add(api.zzpd());
                } else {
                    this.zzaDi = false;
                }
            }
            hashMap.put(zze, new zzbcf(this, api, booleanValue));
        }
        if (i != 0) {
            this.zzaDj = false;
        }
        if (this.zzaDj) {
            this.zzaCA.zzc(Integer.valueOf(System.identityHashCode(this.zzaCZ.zzaCl)));
            zzbcm zzbcm = new zzbcm(this, null);
            this.zzaDh = (zzctk) this.zzaBe.zza(this.mContext, this.zzaCZ.zzaCl.getLooper(), this.zzaCA, this.zzaCA.zzrt(), zzbcm, zzbcm);
        }
        this.zzaDe = this.zzaCZ.zzaDF.size();
        this.zzaDo.add(zzbda.zzqj().submit(new zzbcg(this, hashMap)));
    }

    public final void connect() {
    }

    public final boolean disconnect() {
        zzqa();
        zzad(true);
        this.zzaCZ.zzg(null);
        return true;
    }

    public final void onConnected(Bundle bundle) {
        if (zzan(1)) {
            if (bundle != null) {
                this.zzaDf.putAll(bundle);
            }
            if (zzpW()) {
                zzpY();
            }
        }
    }

    public final void onConnectionSuspended(int i) {
        zze(new ConnectionResult(8, null));
    }

    public final void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
        if (zzan(1)) {
            zzb(connectionResult, api, z);
            if (zzpW()) {
                zzpY();
            }
        }
    }

    public final <A extends zzb, R extends Result, T extends zzbay<R, A>> T zzd(T t) {
        this.zzaCZ.zzaCl.zzaCJ.add(t);
        return t;
    }

    public final <A extends zzb, T extends zzbay<? extends Result, A>> T zze(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
