package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbaz;
import java.util.HashMap;
import java.util.Map;

final class zzdp<T> {
    private final Map<T, zzga<T>> zzaWU = new HashMap();

    zzdp() {
    }

    public final void zza(zzfw zzfw, zzbaz<Status> zzbaz, T t) throws RemoteException {
        synchronized (this.zzaWU) {
            zzga zzga = (zzga) this.zzaWU.remove(t);
            if (zzga == null) {
                zzbaz.setResult(new Status(4002));
                return;
            }
            zzga.clear();
            ((zzdn) zzfw.zzrf()).zza(new zzdr(this.zzaWU, t, zzbaz), new zzeo(zzga));
        }
    }

    public final void zza(zzfw zzfw, zzbaz<Status> zzbaz, T t, zzga<T> zzga) throws RemoteException {
        synchronized (this.zzaWU) {
            if (this.zzaWU.get(t) != null) {
                zzbaz.setResult(new Status(4001));
                return;
            }
            this.zzaWU.put(t, zzga);
            try {
                ((zzdn) zzfw.zzrf()).zza(new zzdq(this.zzaWU, t, zzbaz), new zzd(zzga));
            } catch (RemoteException e) {
                this.zzaWU.remove(t);
                throw e;
            }
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:18:0x008b */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:18|19|29) */
    /* JADX WARNING: Missing block: B:19:?, code skipped:
            r3 = java.lang.String.valueOf(r3.getKey());
            r4 = java.lang.String.valueOf(r4);
            r7 = new java.lang.StringBuilder((java.lang.String.valueOf(r3).length() + 32) + java.lang.String.valueOf(r4).length());
            r7.append("onPostInitHandler: Didn't add: ");
            r7.append(r3);
            r7.append("/");
            r7.append(r4);
            android.util.Log.d("WearableClient", r7.toString());
     */
    public final void zzam(android.os.IBinder r11) {
        /*
        r10 = this;
        r0 = r10.zzaWU;
        monitor-enter(r0);
        if (r11 != 0) goto L_0x0007;
    L_0x0005:
        r11 = 0;
        goto L_0x001b;
    L_0x0007:
        r1 = "com.google.android.gms.wearable.internal.IWearableService";
        r1 = r11.queryLocalInterface(r1);	 Catch:{ all -> 0x00cc }
        r2 = r1 instanceof com.google.android.gms.wearable.internal.zzdn;	 Catch:{ all -> 0x00cc }
        if (r2 == 0) goto L_0x0015;
    L_0x0011:
        r11 = r1;
        r11 = (com.google.android.gms.wearable.internal.zzdn) r11;	 Catch:{ all -> 0x00cc }
        goto L_0x001b;
    L_0x0015:
        r1 = new com.google.android.gms.wearable.internal.zzdo;	 Catch:{ all -> 0x00cc }
        r1.<init>(r11);	 Catch:{ all -> 0x00cc }
        r11 = r1;
    L_0x001b:
        r1 = new com.google.android.gms.wearable.internal.zzfp;	 Catch:{ all -> 0x00cc }
        r1.<init>();	 Catch:{ all -> 0x00cc }
        r2 = r10.zzaWU;	 Catch:{ all -> 0x00cc }
        r2 = r2.entrySet();	 Catch:{ all -> 0x00cc }
        r2 = r2.iterator();	 Catch:{ all -> 0x00cc }
    L_0x002a:
        r3 = r2.hasNext();	 Catch:{ all -> 0x00cc }
        if (r3 == 0) goto L_0x00ca;
    L_0x0030:
        r3 = r2.next();	 Catch:{ all -> 0x00cc }
        r3 = (java.util.Map.Entry) r3;	 Catch:{ all -> 0x00cc }
        r4 = r3.getValue();	 Catch:{ all -> 0x00cc }
        r4 = (com.google.android.gms.wearable.internal.zzga) r4;	 Catch:{ all -> 0x00cc }
        r5 = new com.google.android.gms.wearable.internal.zzd;	 Catch:{ RemoteException -> 0x008b }
        r5.<init>(r4);	 Catch:{ RemoteException -> 0x008b }
        r11.zza(r1, r5);	 Catch:{ RemoteException -> 0x008b }
        r5 = "WearableClient";
        r6 = 2;
        r5 = android.util.Log.isLoggable(r5, r6);	 Catch:{ RemoteException -> 0x008b }
        if (r5 == 0) goto L_0x002a;
    L_0x004d:
        r5 = "WearableClient";
        r6 = r3.getKey();	 Catch:{ RemoteException -> 0x008b }
        r6 = java.lang.String.valueOf(r6);	 Catch:{ RemoteException -> 0x008b }
        r7 = java.lang.String.valueOf(r4);	 Catch:{ RemoteException -> 0x008b }
        r8 = java.lang.String.valueOf(r6);	 Catch:{ RemoteException -> 0x008b }
        r8 = r8.length();	 Catch:{ RemoteException -> 0x008b }
        r8 = r8 + 27;
        r9 = java.lang.String.valueOf(r7);	 Catch:{ RemoteException -> 0x008b }
        r9 = r9.length();	 Catch:{ RemoteException -> 0x008b }
        r8 = r8 + r9;
        r9 = new java.lang.StringBuilder;	 Catch:{ RemoteException -> 0x008b }
        r9.<init>(r8);	 Catch:{ RemoteException -> 0x008b }
        r8 = "onPostInitHandler: added: ";
        r9.append(r8);	 Catch:{ RemoteException -> 0x008b }
        r9.append(r6);	 Catch:{ RemoteException -> 0x008b }
        r6 = "/";
        r9.append(r6);	 Catch:{ RemoteException -> 0x008b }
        r9.append(r7);	 Catch:{ RemoteException -> 0x008b }
        r6 = r9.toString();	 Catch:{ RemoteException -> 0x008b }
        android.util.Log.d(r5, r6);	 Catch:{ RemoteException -> 0x008b }
        goto L_0x002a;
    L_0x008b:
        r5 = "WearableClient";
        r3 = r3.getKey();	 Catch:{ all -> 0x00cc }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x00cc }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x00cc }
        r6 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x00cc }
        r6 = r6.length();	 Catch:{ all -> 0x00cc }
        r6 = r6 + 32;
        r7 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x00cc }
        r7 = r7.length();	 Catch:{ all -> 0x00cc }
        r6 = r6 + r7;
        r7 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00cc }
        r7.<init>(r6);	 Catch:{ all -> 0x00cc }
        r6 = "onPostInitHandler: Didn't add: ";
        r7.append(r6);	 Catch:{ all -> 0x00cc }
        r7.append(r3);	 Catch:{ all -> 0x00cc }
        r3 = "/";
        r7.append(r3);	 Catch:{ all -> 0x00cc }
        r7.append(r4);	 Catch:{ all -> 0x00cc }
        r3 = r7.toString();	 Catch:{ all -> 0x00cc }
        android.util.Log.d(r5, r3);	 Catch:{ all -> 0x00cc }
        goto L_0x002a;
    L_0x00ca:
        monitor-exit(r0);	 Catch:{ all -> 0x00cc }
        return;
    L_0x00cc:
        r11 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x00cc }
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.wearable.internal.zzdp.zzam(android.os.IBinder):void");
    }
}
