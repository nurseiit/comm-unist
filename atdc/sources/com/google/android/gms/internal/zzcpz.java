package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;

public final class zzcpz {
    private final SimpleArrayMap<Object, zzcpn> zzbzJ = new SimpleArrayMap(1);

    private static boolean zza(zzcpn zzcpn) {
        return zzcpn != null && zzcpn.zzzX().zzoc();
    }

    @Nullable
    private final synchronized <C> C zzj(zzbdw<C> zzbdw) {
        for (int i = 0; i < this.zzbzJ.size(); i++) {
            Object keyAt = this.zzbzJ.keyAt(i);
            if (((zzcpn) this.zzbzJ.get(keyAt)).zzzX().equals(zzbdw)) {
                return keyAt;
            }
        }
        return null;
    }

    public final synchronized void clear() {
        this.zzbzJ.clear();
    }

    @Nullable
    public final synchronized <C> zzcpn<C> zzE(@Nullable C c) {
        if (c == null) {
            return null;
        }
        zzcpn zzcpn = (zzcpn) this.zzbzJ.get(c);
        if (zza(zzcpn)) {
            return zzcpn;
        }
        this.zzbzJ.remove(c);
        return null;
    }

    /* JADX WARNING: Missing block: B:22:0x0056, code skipped:
            return r0;
     */
    @android.support.annotation.Nullable
    public final synchronized <C> com.google.android.gms.internal.zzcpn<C> zzb(com.google.android.gms.common.api.GoogleApiClient r3, @android.support.annotation.Nullable C r4) {
        /*
        r2 = this;
        monitor-enter(r2);
        if (r4 != 0) goto L_0x0006;
    L_0x0003:
        r3 = 0;
        monitor-exit(r2);
        return r3;
    L_0x0006:
        r0 = r2.zzbzJ;	 Catch:{ all -> 0x0057 }
        r0 = r0.get(r4);	 Catch:{ all -> 0x0057 }
        r0 = (com.google.android.gms.internal.zzcpn) r0;	 Catch:{ all -> 0x0057 }
        r1 = zza(r0);	 Catch:{ all -> 0x0057 }
        if (r1 != 0) goto L_0x0055;
    L_0x0014:
        r3 = r3.zzp(r4);	 Catch:{ all -> 0x0057 }
        r0 = r4 instanceof com.google.android.gms.nearby.messages.StatusCallback;	 Catch:{ all -> 0x0057 }
        if (r0 == 0) goto L_0x0022;
    L_0x001c:
        r0 = new com.google.android.gms.internal.zzcpv;	 Catch:{ all -> 0x0057 }
        r0.<init>(r3);	 Catch:{ all -> 0x0057 }
        goto L_0x002b;
    L_0x0022:
        r0 = r4 instanceof com.google.android.gms.nearby.messages.MessageListener;	 Catch:{ all -> 0x0057 }
        if (r0 == 0) goto L_0x0031;
    L_0x0026:
        r0 = new com.google.android.gms.internal.zzcpo;	 Catch:{ all -> 0x0057 }
        r0.<init>(r3);	 Catch:{ all -> 0x0057 }
    L_0x002b:
        r3 = r2.zzbzJ;	 Catch:{ all -> 0x0057 }
        r3.put(r4, r0);	 Catch:{ all -> 0x0057 }
        goto L_0x0055;
    L_0x0031:
        r3 = new java.lang.IllegalArgumentException;	 Catch:{ all -> 0x0057 }
        r0 = "Unknown callback of type ";
        r4 = r4.getClass();	 Catch:{ all -> 0x0057 }
        r4 = r4.getName();	 Catch:{ all -> 0x0057 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0057 }
        r1 = r4.length();	 Catch:{ all -> 0x0057 }
        if (r1 == 0) goto L_0x004c;
    L_0x0047:
        r4 = r0.concat(r4);	 Catch:{ all -> 0x0057 }
        goto L_0x0051;
    L_0x004c:
        r4 = new java.lang.String;	 Catch:{ all -> 0x0057 }
        r4.<init>(r0);	 Catch:{ all -> 0x0057 }
    L_0x0051:
        r3.<init>(r4);	 Catch:{ all -> 0x0057 }
        throw r3;	 Catch:{ all -> 0x0057 }
    L_0x0055:
        monitor-exit(r2);
        return r0;
    L_0x0057:
        r3 = move-exception;
        monitor-exit(r2);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcpz.zzb(com.google.android.gms.common.api.GoogleApiClient, java.lang.Object):com.google.android.gms.internal.zzcpn");
    }

    @Nullable
    public final synchronized <C> zzcpn<C> zzh(zzbdw<C> zzbdw) {
        if (zzbdw == null) {
            return null;
        }
        return zzE(zzj(zzbdw));
    }

    public final synchronized <C> void zzi(zzbdw<C> zzbdw) {
        zzbdw.clear();
        this.zzbzJ.remove(zzj(zzbdw));
    }
}
