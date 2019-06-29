package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.Cast.CastApi;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.cast.games.GameManagerClient.GameManagerInstanceResult;
import com.google.android.gms.cast.games.GameManagerClient.GameManagerResult;
import com.google.android.gms.cast.games.GameManagerClient.Listener;
import com.google.android.gms.cast.games.GameManagerState;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzawy extends zzaxt {
    private static String NAMESPACE = zzaye.zzcj("com.google.cast.games");
    private static final zzayo zzapq = new zzayo("GameManagerChannel");
    private final SharedPreferences zzBT;
    private final GoogleApiClient zzXj;
    private final CastApi zzasb;
    private final Map<String, String> zzawR = new ConcurrentHashMap();
    private final List<zzayu> zzawS;
    private final String zzawT;
    private zzaxl zzawU;
    private boolean zzawV = false;
    private GameManagerState zzawW;
    private GameManagerState zzawX;
    private String zzawY;
    private JSONObject zzawZ;
    private long zzaxa = 0;
    private Listener zzaxb;
    private String zzaxc;
    private final zze zzvw;

    public zzawy(GoogleApiClient googleApiClient, String str, CastApi castApi) throws IllegalArgumentException, IllegalStateException {
        super(NAMESPACE, "CastGameManagerChannel", null);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("castSessionId cannot be null.");
        } else if (googleApiClient != null && googleApiClient.isConnected() && googleApiClient.hasConnectedApi(Cast.API)) {
            this.zzvw = zzi.zzrY();
            this.zzawS = new ArrayList();
            this.zzawT = str;
            this.zzasb = castApi;
            this.zzXj = googleApiClient;
            this.zzBT = r12.getApplicationContext().getSharedPreferences(String.format(Locale.ROOT, "%s.%s", new Object[]{googleApiClient.getContext().getApplicationContext().getPackageName(), "game_manager_channel_data"}), 0);
            this.zzawX = null;
            this.zzawW = new zzaxn(0, 0, "", null, new ArrayList(), "", -1);
        } else {
            throw new IllegalArgumentException("googleApiClient needs to be connected and contain the Cast.API API.");
        }
    }

    private final synchronized boolean isInitialized() {
        return this.zzawU != null;
    }

    private final JSONObject zza(long j, String str, int i, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("requestId", j);
            jSONObject2.put("type", i);
            jSONObject2.put("extraMessageData", jSONObject);
            jSONObject2.put("playerId", str);
            jSONObject2.put("playerToken", zzcg(str));
            return jSONObject2;
        } catch (JSONException e) {
            zzapq.zzf("JSONException when trying to create a message: %s", e.getMessage());
            return null;
        }
    }

    /* JADX WARNING: Missing block: B:28:0x008a, code skipped:
            return;
     */
    private final synchronized void zza(com.google.android.gms.internal.zzaxm r10) {
        /*
        r9 = this;
        monitor-enter(r9);
        r0 = r10.zzaxt;	 Catch:{ all -> 0x008b }
        r1 = 1;
        if (r0 != r1) goto L_0x0007;
    L_0x0006:
        goto L_0x0008;
    L_0x0007:
        r1 = 0;
    L_0x0008:
        r0 = r9.zzawW;	 Catch:{ all -> 0x008b }
        r9.zzawX = r0;	 Catch:{ all -> 0x008b }
        if (r1 == 0) goto L_0x0016;
    L_0x000e:
        r0 = r10.zzawU;	 Catch:{ all -> 0x008b }
        if (r0 == 0) goto L_0x0016;
    L_0x0012:
        r0 = r10.zzawU;	 Catch:{ all -> 0x008b }
        r9.zzawU = r0;	 Catch:{ all -> 0x008b }
    L_0x0016:
        r0 = r9.isInitialized();	 Catch:{ all -> 0x008b }
        if (r0 != 0) goto L_0x001e;
    L_0x001c:
        monitor-exit(r9);
        return;
    L_0x001e:
        r6 = new java.util.ArrayList;	 Catch:{ all -> 0x008b }
        r6.<init>();	 Catch:{ all -> 0x008b }
        r0 = r10.zzaxy;	 Catch:{ all -> 0x008b }
        r0 = r0.iterator();	 Catch:{ all -> 0x008b }
    L_0x0029:
        r1 = r0.hasNext();	 Catch:{ all -> 0x008b }
        if (r1 == 0) goto L_0x0050;
    L_0x002f:
        r1 = r0.next();	 Catch:{ all -> 0x008b }
        r1 = (com.google.android.gms.internal.zzaxp) r1;	 Catch:{ all -> 0x008b }
        r2 = r1.getPlayerId();	 Catch:{ all -> 0x008b }
        r3 = new com.google.android.gms.internal.zzaxo;	 Catch:{ all -> 0x008b }
        r4 = r1.getPlayerState();	 Catch:{ all -> 0x008b }
        r1 = r1.getPlayerData();	 Catch:{ all -> 0x008b }
        r5 = r9.zzawR;	 Catch:{ all -> 0x008b }
        r5 = r5.containsKey(r2);	 Catch:{ all -> 0x008b }
        r3.<init>(r2, r4, r1, r5);	 Catch:{ all -> 0x008b }
        r6.add(r3);	 Catch:{ all -> 0x008b }
        goto L_0x0029;
    L_0x0050:
        r0 = new com.google.android.gms.internal.zzaxn;	 Catch:{ all -> 0x008b }
        r2 = r10.zzaxx;	 Catch:{ all -> 0x008b }
        r3 = r10.zzaxw;	 Catch:{ all -> 0x008b }
        r4 = r10.zzaxA;	 Catch:{ all -> 0x008b }
        r5 = r10.zzaxz;	 Catch:{ all -> 0x008b }
        r1 = r9.zzawU;	 Catch:{ all -> 0x008b }
        r7 = r1.zzox();	 Catch:{ all -> 0x008b }
        r1 = r9.zzawU;	 Catch:{ all -> 0x008b }
        r8 = r1.getMaxPlayers();	 Catch:{ all -> 0x008b }
        r1 = r0;
        r1.<init>(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ all -> 0x008b }
        r9.zzawW = r0;	 Catch:{ all -> 0x008b }
        r0 = r9.zzawW;	 Catch:{ all -> 0x008b }
        r1 = r10.zzaxn;	 Catch:{ all -> 0x008b }
        r0 = r0.getPlayer(r1);	 Catch:{ all -> 0x008b }
        if (r0 == 0) goto L_0x0089;
    L_0x0076:
        r0 = r0.isControllable();	 Catch:{ all -> 0x008b }
        if (r0 == 0) goto L_0x0089;
    L_0x007c:
        r0 = r10.zzaxt;	 Catch:{ all -> 0x008b }
        r1 = 2;
        if (r0 != r1) goto L_0x0089;
    L_0x0081:
        r0 = r10.zzaxn;	 Catch:{ all -> 0x008b }
        r9.zzawY = r0;	 Catch:{ all -> 0x008b }
        r10 = r10.zzaxp;	 Catch:{ all -> 0x008b }
        r9.zzawZ = r10;	 Catch:{ all -> 0x008b }
    L_0x0089:
        monitor-exit(r9);
        return;
    L_0x008b:
        r10 = move-exception;
        monitor-exit(r9);
        throw r10;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzawy.zza(com.google.android.gms.internal.zzaxm):void");
    }

    private final void zza(String str, int i, JSONObject jSONObject, zzayt zzayt) {
        long j = this.zzaxa + 1;
        this.zzaxa = j;
        JSONObject zza = zza(j, str, i, jSONObject);
        if (zza == null) {
            zzayt.zza(-1, 2001, null);
            zzapq.zzf("Not sending request because it was invalid.", new Object[0]);
            return;
        }
        zzayu zzayu = new zzayu(this.zzvw, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
        zzayu.zza(j, zzayt);
        this.zzawS.add(zzayu);
        zzZ(true);
        this.zzasb.sendMessage(this.zzXj, getNamespace(), zza.toString()).setResultCallback(new zzaxd(this, j));
    }

    private final void zzb(long j, int i, Object obj) {
        Iterator it = this.zzawS.iterator();
        while (it.hasNext()) {
            if (((zzayu) it.next()).zzc(j, i, obj)) {
                it.remove();
            }
        }
    }

    private final synchronized String zzcg(String str) throws IllegalStateException {
        if (str == null) {
            return null;
        }
        return (String) this.zzawR.get(str);
    }

    private final synchronized void zzot() throws IllegalStateException {
        if (!isInitialized()) {
            throw new IllegalStateException("Attempted to perform an operation on the GameManagerChannel before it is initialized.");
        } else if (isDisposed()) {
            throw new IllegalStateException("Attempted to perform an operation on the GameManagerChannel after it has been disposed.");
        }
    }

    private final synchronized void zzou() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("castSessionId", this.zzawT);
            jSONObject.put("playerTokenMap", new JSONObject(this.zzawR));
            this.zzBT.edit().putString("save_data", jSONObject.toString()).commit();
        } catch (JSONException e) {
            zzapq.zzf("Error while saving data: %s", e.getMessage());
        }
    }

    /* JADX WARNING: Missing block: B:15:0x0046, code skipped:
            return;
     */
    private final synchronized void zzov() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.zzBT;	 Catch:{ all -> 0x005b }
        r1 = "save_data";
        r2 = 0;
        r0 = r0.getString(r1, r2);	 Catch:{ all -> 0x005b }
        if (r0 != 0) goto L_0x000e;
    L_0x000c:
        monitor-exit(r5);
        return;
    L_0x000e:
        r1 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x0047 }
        r1.<init>(r0);	 Catch:{ JSONException -> 0x0047 }
        r0 = "castSessionId";
        r0 = r1.getString(r0);	 Catch:{ JSONException -> 0x0047 }
        r2 = r5.zzawT;	 Catch:{ JSONException -> 0x0047 }
        r0 = r2.equals(r0);	 Catch:{ JSONException -> 0x0047 }
        if (r0 == 0) goto L_0x0045;
    L_0x0021:
        r0 = "playerTokenMap";
        r0 = r1.getJSONObject(r0);	 Catch:{ JSONException -> 0x0047 }
        r1 = r0.keys();	 Catch:{ JSONException -> 0x0047 }
    L_0x002b:
        r2 = r1.hasNext();	 Catch:{ JSONException -> 0x0047 }
        if (r2 == 0) goto L_0x0041;
    L_0x0031:
        r2 = r1.next();	 Catch:{ JSONException -> 0x0047 }
        r2 = (java.lang.String) r2;	 Catch:{ JSONException -> 0x0047 }
        r3 = r5.zzawR;	 Catch:{ JSONException -> 0x0047 }
        r4 = r0.getString(r2);	 Catch:{ JSONException -> 0x0047 }
        r3.put(r2, r4);	 Catch:{ JSONException -> 0x0047 }
        goto L_0x002b;
    L_0x0041:
        r0 = 0;
        r5.zzaxa = r0;	 Catch:{ JSONException -> 0x0047 }
    L_0x0045:
        monitor-exit(r5);
        return;
    L_0x0047:
        r0 = move-exception;
        r1 = zzapq;	 Catch:{ all -> 0x005b }
        r2 = "Error while loading data: %s";
        r3 = 1;
        r3 = new java.lang.Object[r3];	 Catch:{ all -> 0x005b }
        r4 = 0;
        r0 = r0.getMessage();	 Catch:{ all -> 0x005b }
        r3[r4] = r0;	 Catch:{ all -> 0x005b }
        r1.zzf(r2, r3);	 Catch:{ all -> 0x005b }
        monitor-exit(r5);
        return;
    L_0x005b:
        r0 = move-exception;
        monitor-exit(r5);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzawy.zzov():void");
    }

    public final synchronized void dispose() throws IllegalStateException {
        if (!this.zzawV) {
            this.zzawW = null;
            this.zzawX = null;
            this.zzawY = null;
            this.zzawZ = null;
            this.zzawV = true;
            try {
                this.zzasb.removeMessageReceivedCallbacks(this.zzXj, getNamespace());
            } catch (IOException e) {
                zzapq.zzf("Exception while detaching game manager channel.", e);
            }
        }
    }

    public final synchronized GameManagerState getCurrentState() throws IllegalStateException {
        zzot();
        return this.zzawW;
    }

    public final synchronized String getLastUsedPlayerId() throws IllegalStateException {
        zzot();
        return this.zzaxc;
    }

    public final synchronized boolean isDisposed() {
        return this.zzawV;
    }

    public final synchronized void sendGameMessage(String str, JSONObject jSONObject) throws IllegalStateException {
        zzot();
        long j = this.zzaxa + 1;
        this.zzaxa = j;
        JSONObject zza = zza(j, str, 7, jSONObject);
        if (zza != null) {
            this.zzasb.sendMessage(this.zzXj, getNamespace(), zza.toString());
        }
    }

    public final synchronized PendingResult<GameManagerResult> sendGameRequest(String str, JSONObject jSONObject) throws IllegalStateException {
        zzot();
        return this.zzXj.zze(new zzaxc(this, str, jSONObject));
    }

    public final synchronized void setListener(Listener listener) {
        this.zzaxb = listener;
    }

    public final synchronized PendingResult<GameManagerInstanceResult> zza(GameManagerClient gameManagerClient) throws IllegalArgumentException {
        return this.zzXj.zze(new zzawz(this, gameManagerClient));
    }

    public final synchronized PendingResult<GameManagerResult> zza(String str, int i, JSONObject jSONObject) throws IllegalStateException {
        zzot();
        return this.zzXj.zze(new zzaxb(this, i, str, jSONObject));
    }

    public final void zzc(long j, int i) {
        zzb(j, i, null);
    }

    public final void zzch(String str) {
        Object[] objArr = new Object[1];
        int i = 0;
        objArr[0] = str;
        zzapq.zzb("message received: %s", objArr);
        try {
            zzaxm zzo = zzaxm.zzo(new JSONObject(str));
            if (zzo == null) {
                zzapq.zzf("Could not parse game manager message from string: %s", str);
            } else if ((isInitialized() || zzo.zzawU != null) && !isDisposed()) {
                Object obj = zzo.zzaxt == 1 ? 1 : null;
                if (!(obj == null || TextUtils.isEmpty(zzo.zzaxB))) {
                    this.zzawR.put(zzo.zzaxn, zzo.zzaxB);
                    zzou();
                }
                if (zzo.zzaxu == 0) {
                    zza(zzo);
                } else {
                    zzapq.zzf("Not updating from game message because the message contains error code: %d", Integer.valueOf(zzo.zzaxu));
                }
                int i2 = zzo.zzaxu;
                switch (i2) {
                    case 0:
                        break;
                    case 1:
                        i = 2001;
                        break;
                    case 2:
                        i = CastStatusCodes.NOT_ALLOWED;
                        break;
                    case 3:
                        i = GameManagerClient.STATUS_INCORRECT_VERSION;
                        break;
                    case 4:
                        i = GameManagerClient.STATUS_TOO_MANY_PLAYERS;
                        break;
                    default:
                        zzayo zzayo = zzapq;
                        StringBuilder stringBuilder = new StringBuilder(53);
                        stringBuilder.append("Unknown GameManager protocol status code: ");
                        stringBuilder.append(i2);
                        zzayo.zzf(stringBuilder.toString(), new Object[0]);
                        i = 13;
                        break;
                }
                if (obj != null) {
                    zzb(zzo.zzaxo, i, zzo);
                }
                if (isInitialized() && i == 0) {
                    if (this.zzaxb != null) {
                        if (!(this.zzawX == null || this.zzawW.equals(this.zzawX))) {
                            this.zzaxb.onStateChanged(this.zzawW, this.zzawX);
                        }
                        if (!(this.zzawZ == null || this.zzawY == null)) {
                            this.zzaxb.onGameMessageReceived(this.zzawY, this.zzawZ);
                        }
                    }
                    this.zzawX = null;
                    this.zzawY = null;
                    this.zzawZ = null;
                }
            }
        } catch (JSONException e) {
            zzapq.zzf("Message is malformed (%s); ignoring: %s", e.getMessage(), str);
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zzz(long j) {
        Iterator it = this.zzawS.iterator();
        while (it.hasNext()) {
            if (((zzayu) it.next()).zzd(j, 15)) {
                it.remove();
            }
        }
        boolean z = false;
        synchronized (zzayu.zzrl) {
            for (zzayu zzoO : this.zzawS) {
                if (zzoO.zzoO()) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }
}
