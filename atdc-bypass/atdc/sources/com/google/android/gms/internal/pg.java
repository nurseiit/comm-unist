package com.google.android.gms.internal;

import com.androidnetworking.common.ANConstants;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class pg {
    private static long zzcbG;
    private final wl zzbZE;
    private final ScheduledExecutorService zzbZs;
    private pk zzcbH;
    private boolean zzcbI = false;
    private boolean zzcbJ = false;
    private long zzcbK = 0;
    private pt zzcbL;
    private pj zzcbM;
    private ScheduledFuture<?> zzcbN;
    private ScheduledFuture<?> zzcbO;
    private final oj zzcbP;

    public pg(oj ojVar, ol olVar, String str, pj pjVar, String str2) {
        Object str3;
        this.zzcbP = ojVar;
        this.zzbZs = ojVar.zzFV();
        this.zzcbM = pjVar;
        long j = zzcbG;
        zzcbG = j + 1;
        StringBuilder stringBuilder = new StringBuilder(23);
        stringBuilder.append("ws_");
        stringBuilder.append(j);
        this.zzbZE = new wl(ojVar.zzFT(), "WebSocket", stringBuilder.toString());
        if (str3 == null) {
            str3 = olVar.getHost();
        }
        boolean isSecure = olVar.isSecure();
        String namespace = olVar.getNamespace();
        Object obj = isSecure ? "wss" : "ws";
        String valueOf = String.valueOf("v");
        String valueOf2 = String.valueOf("5");
        StringBuilder stringBuilder2 = new StringBuilder(((((String.valueOf(obj).length() + 13) + String.valueOf(str3).length()) + String.valueOf(namespace).length()) + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
        stringBuilder2.append(obj);
        stringBuilder2.append("://");
        stringBuilder2.append(str3);
        stringBuilder2.append("/.ws?ns=");
        stringBuilder2.append(namespace);
        stringBuilder2.append("&");
        stringBuilder2.append(valueOf);
        stringBuilder2.append("=");
        stringBuilder2.append(valueOf2);
        String stringBuilder3 = stringBuilder2.toString();
        if (str2 != null) {
            stringBuilder3 = String.valueOf(stringBuilder3);
            namespace = String.valueOf("&ls=");
            StringBuilder stringBuilder4 = new StringBuilder((String.valueOf(stringBuilder3).length() + String.valueOf(namespace).length()) + String.valueOf(str2).length());
            stringBuilder4.append(stringBuilder3);
            stringBuilder4.append(namespace);
            stringBuilder4.append(str2);
            stringBuilder3 = stringBuilder4.toString();
        }
        URI create = URI.create(stringBuilder3);
        HashMap hashMap = new HashMap();
        hashMap.put(ANConstants.USER_AGENT, this.zzcbP.zzht());
        this.zzcbH = new pl(this, new yd(create, null, hashMap), null);
    }

    private final void shutdown() {
        this.zzcbJ = true;
        this.zzcbM.zzaA(this.zzcbI);
    }

    private final void zzGv() {
        if (!this.zzcbJ) {
            wl wlVar;
            String stringBuilder;
            if (this.zzcbN != null) {
                this.zzcbN.cancel(false);
                if (this.zzbZE.zzIH()) {
                    wlVar = this.zzbZE;
                    long delay = this.zzcbN.getDelay(TimeUnit.MILLISECONDS);
                    StringBuilder stringBuilder2 = new StringBuilder(48);
                    stringBuilder2.append("Reset keepAlive. Remaining: ");
                    stringBuilder2.append(delay);
                    stringBuilder = stringBuilder2.toString();
                }
                this.zzcbN = this.zzbZs.schedule(new pi(this), 45000, TimeUnit.MILLISECONDS);
            }
            if (this.zzbZE.zzIH()) {
                wlVar = this.zzbZE;
                stringBuilder = "Reset keepAlive";
            }
            this.zzcbN = this.zzbZs.schedule(new pi(this), 45000, TimeUnit.MILLISECONDS);
            wlVar.zzb(stringBuilder, null, new Object[0]);
            this.zzcbN = this.zzbZs.schedule(new pi(this), 45000, TimeUnit.MILLISECONDS);
        }
    }

    private final void zzGw() {
        if (!this.zzcbJ) {
            if (this.zzbZE.zzIH()) {
                this.zzbZE.zzb("closing itself", null, new Object[0]);
            }
            shutdown();
        }
        this.zzcbH = null;
        if (this.zzcbN != null) {
            this.zzcbN.cancel(false);
        }
    }

    private final void zzGx() {
        if (!this.zzcbI && !this.zzcbJ) {
            if (this.zzbZE.zzIH()) {
                this.zzbZE.zzb("timed out on connect", null, new Object[0]);
            }
            this.zzcbH.close();
        }
    }

    private final void zzbV(int i) {
        this.zzcbK = (long) i;
        this.zzcbL = new pt();
        if (this.zzbZE.zzIH()) {
            wl wlVar = this.zzbZE;
            long j = this.zzcbK;
            StringBuilder stringBuilder = new StringBuilder(41);
            stringBuilder.append("HandleNewFrameCount: ");
            stringBuilder.append(j);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
    }

    private final void zzgJ(String str) {
        wl wlVar;
        String str2;
        this.zzcbL.zzgN(str);
        this.zzcbK--;
        if (this.zzcbK == 0) {
            String valueOf;
            try {
                this.zzcbL.zzGD();
                Map zzgV = yr.zzgV(this.zzcbL.toString());
                this.zzcbL = null;
                if (this.zzbZE.zzIH()) {
                    wl wlVar2 = this.zzbZE;
                    valueOf = String.valueOf(zzgV);
                    StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 36);
                    stringBuilder.append("handleIncomingFrame complete frame: ");
                    stringBuilder.append(valueOf);
                    wlVar2.zzb(stringBuilder.toString(), null, new Object[0]);
                }
                this.zzcbM.zzz(zzgV);
            } catch (IOException e) {
                wlVar = this.zzbZE;
                str2 = "Error parsing frame: ";
                valueOf = String.valueOf(this.zzcbL.toString());
                wlVar.zzd(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), e);
                close();
                shutdown();
            } catch (ClassCastException e2) {
                wlVar = this.zzbZE;
                str2 = "Error parsing frame (cast error): ";
                valueOf = String.valueOf(this.zzcbL.toString());
                wlVar.zzd(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), e2);
                close();
                shutdown();
            }
        }
    }

    private final String zzgK(String str) {
        if (str.length() <= 6) {
            try {
                int parseInt = Integer.parseInt(str);
                if (parseInt > 0) {
                    zzbV(parseInt);
                }
                return null;
            } catch (NumberFormatException unused) {
            }
        }
        zzbV(1);
        return str;
    }

    private final void zzgL(String str) {
        if (!this.zzcbJ) {
            zzGv();
            if ((this.zzcbL != null ? 1 : null) != null) {
                zzgJ(str);
                return;
            }
            str = zzgK(str);
            if (str != null) {
                zzgJ(str);
            }
        }
    }

    public final void close() {
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb("websocket is being closed", null, new Object[0]);
        }
        this.zzcbJ = true;
        this.zzcbH.close();
        if (this.zzcbO != null) {
            this.zzcbO.cancel(true);
        }
        if (this.zzcbN != null) {
            this.zzcbN.cancel(true);
        }
    }

    public final void open() {
        this.zzcbH.connect();
        this.zzcbO = this.zzbZs.schedule(new ph(this), NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, TimeUnit.MILLISECONDS);
    }

    public final void send(Map<String, Object> map) {
        zzGv();
        try {
            String[] strArr;
            int i;
            String zzak = yr.zzak(map);
            int i2 = 0;
            if (zzak.length() <= 16384) {
                strArr = new String[]{zzak};
            } else {
                ArrayList arrayList = new ArrayList();
                i = 0;
                while (i < zzak.length()) {
                    int i3 = i + 16384;
                    arrayList.add(zzak.substring(i, Math.min(i3, zzak.length())));
                    i = i3;
                }
                strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
            if (strArr.length > 1) {
                pk pkVar = this.zzcbH;
                i = strArr.length;
                StringBuilder stringBuilder = new StringBuilder(11);
                stringBuilder.append(i);
                pkVar.zzgM(stringBuilder.toString());
            }
            while (i2 < strArr.length) {
                this.zzcbH.zzgM(strArr[i2]);
                i2++;
            }
        } catch (IOException e) {
            wl wlVar = this.zzbZE;
            String str = "Failed to serialize message: ";
            String valueOf = String.valueOf(map.toString());
            wlVar.zzd(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), e);
            shutdown();
        }
    }
}
