package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.zzc;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.HashMap;
import java.util.Map;

final class zzbf {
    private static volatile DynamiteModule zzbEA;
    private static volatile zzcq zzbEB;
    private static final Map<String, CustomTagProvider> zzbEC = new HashMap();
    private static final Map<String, CustomVariableProvider> zzbED = new HashMap();

    private zzbf() {
    }

    static void zza(Intent intent, Context context) {
        zzcq zzbp = zzbp(context);
        synchronized (zzbf.class) {
            try {
                zzbp.previewIntent(intent, zzn.zzw(context), zzn.zzw(zzbEA.zztC()), zzbr(context), new zzbj());
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            } catch (Throwable th) {
            }
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0064 */
    private static java.lang.Object zzb(java.lang.String r6, java.lang.Class<?> r7) {
        /*
        r0 = java.lang.Class.forName(r6);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = r0.getInterfaces();	 Catch:{ ClassNotFoundException -> 0x0098 }
        r2 = r1.length;	 Catch:{ ClassNotFoundException -> 0x0098 }
        r3 = 0;
        r4 = 0;
    L_0x000b:
        if (r4 >= r2) goto L_0x001a;
    L_0x000d:
        r5 = r1[r4];	 Catch:{ ClassNotFoundException -> 0x0098 }
        r5 = r5.equals(r7);	 Catch:{ ClassNotFoundException -> 0x0098 }
        if (r5 == 0) goto L_0x0017;
    L_0x0015:
        r1 = 1;
        goto L_0x001b;
    L_0x0017:
        r4 = r4 + 1;
        goto L_0x000b;
    L_0x001a:
        r1 = 0;
    L_0x001b:
        if (r1 != 0) goto L_0x0057;
    L_0x001d:
        r0 = "GoogleTagManagerAPI";
        r7 = r7.getCanonicalName();	 Catch:{ ClassNotFoundException -> 0x0098 }
        r7 = java.lang.String.valueOf(r7);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = java.lang.String.valueOf(r6);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = r1.length();	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = r1 + 30;
        r2 = java.lang.String.valueOf(r7);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r2 = r2.length();	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = r1 + r2;
        r2 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x0098 }
        r2.<init>(r1);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r2.append(r6);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = " doesn't implement ";
        r2.append(r1);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r2.append(r7);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r7 = " interface.";
        r2.append(r7);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r7 = r2.toString();	 Catch:{ ClassNotFoundException -> 0x0098 }
        android.util.Log.e(r0, r7);	 Catch:{ ClassNotFoundException -> 0x0098 }
        goto L_0x00a7;
    L_0x0057:
        r7 = new java.lang.Class[r3];	 Catch:{ NoSuchMethodException -> 0x008f, SecurityException -> 0x0086, InvocationTargetException -> 0x007d, InstantiationException -> 0x0074, IllegalAccessException -> 0x0064 }
        r7 = r0.getConstructor(r7);	 Catch:{ NoSuchMethodException -> 0x008f, SecurityException -> 0x0086, InvocationTargetException -> 0x007d, InstantiationException -> 0x0074, IllegalAccessException -> 0x0064 }
        r0 = new java.lang.Object[r3];	 Catch:{ NoSuchMethodException -> 0x008f, SecurityException -> 0x0086, InvocationTargetException -> 0x007d, InstantiationException -> 0x0074, IllegalAccessException -> 0x0064 }
        r7 = r7.newInstance(r0);	 Catch:{ NoSuchMethodException -> 0x008f, SecurityException -> 0x0086, InvocationTargetException -> 0x007d, InstantiationException -> 0x0074, IllegalAccessException -> 0x0064 }
        return r7;
    L_0x0064:
        r7 = "GoogleTagManagerAPI";
        r0 = java.lang.String.valueOf(r6);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = " doesn't have an accessible no-arg constructor";
    L_0x006c:
        r0 = r0.concat(r1);	 Catch:{ ClassNotFoundException -> 0x0098 }
        android.util.Log.e(r7, r0);	 Catch:{ ClassNotFoundException -> 0x0098 }
        goto L_0x00a7;
    L_0x0074:
        r7 = "GoogleTagManagerAPI";
        r0 = java.lang.String.valueOf(r6);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = " is an abstract class.";
        goto L_0x006c;
    L_0x007d:
        r7 = "GoogleTagManagerAPI";
        r0 = java.lang.String.valueOf(r6);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = " construction threw an exception.";
        goto L_0x006c;
    L_0x0086:
        r7 = "GoogleTagManagerAPI";
        r0 = java.lang.String.valueOf(r6);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = " doesn't have an accessible no-arg constructor";
        goto L_0x006c;
    L_0x008f:
        r7 = "GoogleTagManagerAPI";
        r0 = java.lang.String.valueOf(r6);	 Catch:{ ClassNotFoundException -> 0x0098 }
        r1 = " doesn't have a valid no-arg constructor";
        goto L_0x006c;
    L_0x0098:
        r7 = "GoogleTagManagerAPI";
        r6 = java.lang.String.valueOf(r6);
        r0 = " can't be found in the application.";
        r6 = r6.concat(r0);
        android.util.Log.e(r7, r6);
    L_0x00a7:
        r7 = 0;
        return r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzbf.zzb(java.lang.String, java.lang.Class):java.lang.Object");
    }

    static IBinder zzbn(Context context) {
        try {
            return zzcu.asInterface(zzbq(context).zzcV("com.google.android.gms.tagmanager.TagManagerServiceProviderImpl")).getService(zzn.zzw(context), zzbr(context), new zzbj()).asBinder();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        } catch (zzc e2) {
            throw new RuntimeException(e2);
        }
    }

    static void zzbo(Context context) {
        zzcq zzbp = zzbp(context);
        synchronized (zzbf.class) {
            try {
                zzbp.initialize(zzn.zzw(context), zzbr(context), new zzbj());
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            } catch (Throwable th) {
            }
        }
    }

    private static zzcq zzbp(Context context) {
        zzcq zzcq = zzbEB;
        if (zzcq != null) {
            return zzcq;
        }
        synchronized (zzbf.class) {
            zzcq = zzbEB;
            if (zzcq == null) {
                try {
                    zzcq asInterface = zzcr.asInterface(zzbq(context).zzcV("com.google.android.gms.tagmanager.TagManagerApiImpl"));
                    zzbEB = asInterface;
                    zzcq = asInterface;
                } catch (zzc e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return zzcq;
    }

    private static DynamiteModule zzbq(Context context) throws zzc {
        DynamiteModule dynamiteModule = zzbEA;
        if (dynamiteModule != null) {
            return dynamiteModule;
        }
        synchronized (zzbf.class) {
            dynamiteModule = zzbEA;
            if (zzbEA == null) {
                DynamiteModule zza = DynamiteModule.zza(context, DynamiteModule.zzaSO, ModuleDescriptor.MODULE_ID);
                zzbEA = zza;
                dynamiteModule = zza;
            }
        }
        return dynamiteModule;
    }

    private static zzcn zzbr(Context context) {
        return new zzbg(AppMeasurement.getInstance(context));
    }
}
