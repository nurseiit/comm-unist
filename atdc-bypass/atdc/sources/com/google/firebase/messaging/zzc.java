package com.google.firebase.messaging;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.ado;
import com.google.android.gms.internal.aen;
import com.google.android.gms.measurement.AppMeasurement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public final class zzc {
    @Nullable
    private static aen zzA(@NonNull byte[] bArr) {
        try {
            return aen.zzL(bArr);
        } catch (ado unused) {
            return null;
        }
    }

    private static String zzS(@NonNull Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mName").get(obj);
    }

    private static String zzT(@NonNull Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mValue").get(obj);
    }

    private static Bundle zzX(@NonNull String str, @NonNull String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(str, str2);
        return bundle;
    }

    private static Bundle zza(@NonNull aen aen) {
        return zzX(aen.zzcun, aen.zzcuo);
    }

    @Nullable
    private static Object zza(@NonNull aen aen, @NonNull String str, @NonNull zzb zzb) {
        Throwable e;
        Object obj = null;
        Object newInstance;
        try {
            Class cls = Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            Bundle zza = zza(aen);
            newInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
            try {
                cls.getField("mOrigin").set(newInstance, str);
                cls.getField("mCreationTimestamp").set(newInstance, Long.valueOf(aen.zzcup));
                cls.getField("mName").set(newInstance, aen.zzcun);
                cls.getField("mValue").set(newInstance, aen.zzcuo);
                if (!TextUtils.isEmpty(aen.zzcuq)) {
                    obj = aen.zzcuq;
                }
                cls.getField("mTriggerEventName").set(newInstance, obj);
                cls.getField("mTimedOutEventName").set(newInstance, !TextUtils.isEmpty(aen.zzcuv) ? aen.zzcuv : zzb.zzEw());
                cls.getField("mTimedOutEventParams").set(newInstance, zza);
                cls.getField("mTriggerTimeout").set(newInstance, Long.valueOf(aen.zzcur));
                cls.getField("mTriggeredEventName").set(newInstance, !TextUtils.isEmpty(aen.zzcut) ? aen.zzcut : zzb.zzEv());
                cls.getField("mTriggeredEventParams").set(newInstance, zza);
                cls.getField("mTimeToLive").set(newInstance, Long.valueOf(aen.zzaLt));
                cls.getField("mExpiredEventName").set(newInstance, !TextUtils.isEmpty(aen.zzcuw) ? aen.zzcuw : zzb.zzEx());
                cls.getField("mExpiredEventParams").set(newInstance, zza);
                return newInstance;
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException e2) {
                e = e2;
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
                return newInstance;
            }
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException e3) {
            e = e3;
            newInstance = null;
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            return newInstance;
        }
    }

    private static String zza(@Nullable aen aen, @NonNull zzb zzb) {
        return (aen == null || TextUtils.isEmpty(aen.zzcuu)) ? zzb.zzEy() : aen.zzcuu;
    }

    private static List<Object> zza(@NonNull AppMeasurement appMeasurement, @NonNull String str) {
        List list;
        ArrayList arrayList = new ArrayList();
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getConditionalUserProperties", new Class[]{String.class, String.class});
            declaredMethod.setAccessible(true);
            list = (List) declaredMethod.invoke(appMeasurement, new Object[]{str, ""});
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            list = arrayList;
        }
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            int size = list.size();
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 55);
            stringBuilder.append("Number of currently set _Es for origin: ");
            stringBuilder.append(str);
            stringBuilder.append(" is ");
            stringBuilder.append(size);
            Log.v("FirebaseAbtUtil", stringBuilder.toString());
        }
        return list;
    }

    private static void zza(@NonNull Context context, @NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String str5 = "FirebaseAbtUtil";
            String str6 = "_CE(experimentId) called by ";
            str = String.valueOf(str);
            Log.v(str5, str.length() != 0 ? str6.concat(str) : new String(str6));
        }
        if (zzbD(context)) {
            AppMeasurement zzaQ = zzaQ(context);
            try {
                Method declaredMethod = AppMeasurement.class.getDeclaredMethod("clearConditionalUserProperty", new Class[]{String.class, String.class, Bundle.class});
                declaredMethod.setAccessible(true);
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    StringBuilder stringBuilder = new StringBuilder((String.valueOf(str2).length() + 17) + String.valueOf(str3).length());
                    stringBuilder.append("Clearing _E: [");
                    stringBuilder.append(str2);
                    stringBuilder.append(", ");
                    stringBuilder.append(str3);
                    stringBuilder.append("]");
                    Log.v("FirebaseAbtUtil", stringBuilder.toString());
                }
                declaredMethod.invoke(zzaQ, new Object[]{str2, str4, zzX(str2, str3)});
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:48:0x01ba A:{Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0125 A:{Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }} */
    public static void zza(@android.support.annotation.NonNull android.content.Context r17, @android.support.annotation.NonNull java.lang.String r18, @android.support.annotation.NonNull byte[] r19, @android.support.annotation.NonNull com.google.firebase.messaging.zzb r20, int r21) {
        /*
        r3 = r18;
        r1 = "FirebaseAbtUtil";
        r2 = 2;
        r1 = android.util.Log.isLoggable(r1, r2);
        if (r1 == 0) goto L_0x0027;
    L_0x000b:
        r1 = "FirebaseAbtUtil";
        r4 = "_SE called by ";
        r5 = java.lang.String.valueOf(r18);
        r6 = r5.length();
        if (r6 == 0) goto L_0x001e;
    L_0x0019:
        r4 = r4.concat(r5);
        goto L_0x0024;
    L_0x001e:
        r5 = new java.lang.String;
        r5.<init>(r4);
        r4 = r5;
    L_0x0024:
        android.util.Log.v(r1, r4);
    L_0x0027:
        r1 = zzbD(r17);
        if (r1 != 0) goto L_0x002e;
    L_0x002d:
        return;
    L_0x002e:
        r1 = zzaQ(r17);
        r4 = zzA(r19);
        if (r4 != 0) goto L_0x0048;
    L_0x0038:
        r1 = "FirebaseAbtUtil";
        r1 = android.util.Log.isLoggable(r1, r2);
        if (r1 == 0) goto L_0x0047;
    L_0x0040:
        r1 = "FirebaseAbtUtil";
        r2 = "_SE failed; either _P was not set, or we couldn't deserialize the _P.";
        android.util.Log.v(r1, r2);
    L_0x0047:
        return;
    L_0x0048:
        r5 = "com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty";
        java.lang.Class.forName(r5);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r5 = zza(r1, r3);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r5 = r5.iterator();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r7 = 0;
        r8 = 0;
    L_0x0057:
        r9 = r5.hasNext();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        if (r9 == 0) goto L_0x01c0;
    L_0x005d:
        r9 = r5.next();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r10 = zzS(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r11 = zzT(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12 = "com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty";
        r12 = java.lang.Class.forName(r12);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r13 = "mCreationTimestamp";
        r12 = r12.getField(r13);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r12.get(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = (java.lang.Long) r9;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12 = r9.longValue();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r4.zzcun;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9.equals(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        if (r9 == 0) goto L_0x00cf;
    L_0x0087:
        r9 = r4.zzcuo;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9.equals(r11);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        if (r9 == 0) goto L_0x00cf;
    L_0x008f:
        r8 = "FirebaseAbtUtil";
        r8 = android.util.Log.isLoggable(r8, r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        if (r8 == 0) goto L_0x00cd;
    L_0x0097:
        r8 = "FirebaseAbtUtil";
        r9 = java.lang.String.valueOf(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9.length();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9 + 23;
        r12 = java.lang.String.valueOf(r11);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12 = r12.length();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9 + r12;
        r12 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12.<init>(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = "_E is already set. [";
        r12.append(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12.append(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = ", ";
        r12.append(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12.append(r11);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = "]";
        r12.append(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r12.toString();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        android.util.Log.v(r8, r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
    L_0x00cd:
        r8 = 1;
        goto L_0x0057;
    L_0x00cf:
        r9 = r4.zzcuy;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r14 = r9.length;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r15 = 0;
    L_0x00d3:
        if (r15 >= r14) goto L_0x0122;
    L_0x00d5:
        r6 = r9[r15];	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r6 = r6.zzcun;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r6 = r6.equals(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        if (r6 == 0) goto L_0x011f;
    L_0x00df:
        r6 = "FirebaseAbtUtil";
        r6 = android.util.Log.isLoggable(r6, r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        if (r6 == 0) goto L_0x011d;
    L_0x00e7:
        r6 = "FirebaseAbtUtil";
        r9 = java.lang.String.valueOf(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9.length();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9 + 33;
        r14 = java.lang.String.valueOf(r11);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r14 = r14.length();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9 + r14;
        r14 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r14.<init>(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = "_E is found in the _OE list. [";
        r14.append(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r14.append(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = ", ";
        r14.append(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r14.append(r11);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = "]";
        r14.append(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r14.toString();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        android.util.Log.v(r6, r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
    L_0x011d:
        r6 = 1;
        goto L_0x0123;
    L_0x011f:
        r15 = r15 + 1;
        goto L_0x00d3;
    L_0x0122:
        r6 = 0;
    L_0x0123:
        if (r6 != 0) goto L_0x01ba;
    L_0x0125:
        r14 = r4.zzcup;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r6 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1));
        if (r6 <= 0) goto L_0x0176;
    L_0x012b:
        r6 = "FirebaseAbtUtil";
        r6 = android.util.Log.isLoggable(r6, r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        if (r6 == 0) goto L_0x0169;
    L_0x0133:
        r6 = "FirebaseAbtUtil";
        r9 = java.lang.String.valueOf(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9.length();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9 + 115;
        r12 = java.lang.String.valueOf(r11);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12 = r12.length();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r9 + r12;
        r12 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12.<init>(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = "Clearing _E as it was not in the _OE list, andits start time is older than the start time of the _E to be set. [";
        r12.append(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12.append(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = ", ";
        r12.append(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12.append(r11);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = "]";
        r12.append(r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r9 = r12.toString();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        android.util.Log.v(r6, r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
    L_0x0169:
        r6 = r20;
        r9 = zza(r4, r6);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r12 = r17;
        zza(r12, r3, r10, r11, r9);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        goto L_0x0057;
    L_0x0176:
        r12 = r17;
        r6 = r20;
        r9 = "FirebaseAbtUtil";
        r9 = android.util.Log.isLoggable(r9, r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        if (r9 == 0) goto L_0x0057;
    L_0x0182:
        r9 = "FirebaseAbtUtil";
        r13 = java.lang.String.valueOf(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r13 = r13.length();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r13 = r13 + 109;
        r14 = java.lang.String.valueOf(r11);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r14 = r14.length();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r13 = r13 + r14;
        r14 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r14.<init>(r13);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r13 = "_E was not found in the _OE list, but not clearing it as it has a new start time than the _E to be set.  [";
        r14.append(r13);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r14.append(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r10 = ", ";
        r14.append(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r14.append(r11);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r10 = "]";
        r14.append(r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r10 = r14.toString();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        android.util.Log.v(r9, r10);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        goto L_0x0057;
    L_0x01ba:
        r12 = r17;
        r6 = r20;
        goto L_0x0057;
    L_0x01c0:
        r12 = r17;
        r6 = r20;
        if (r8 == 0) goto L_0x0211;
    L_0x01c6:
        r1 = "FirebaseAbtUtil";
        r1 = android.util.Log.isLoggable(r1, r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        if (r1 == 0) goto L_0x0210;
    L_0x01ce:
        r1 = "FirebaseAbtUtil";
        r2 = r4.zzcun;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r3 = r4.zzcuo;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r4 = java.lang.String.valueOf(r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r4 = r4.length();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r4 = r4 + 44;
        r5 = java.lang.String.valueOf(r3);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r5 = r5.length();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r4 = r4 + r5;
        r5 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r5.<init>(r4);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r4 = "_E is already set. Not setting it again [";
        r5.append(r4);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r5.append(r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r2 = ", ";
        r5.append(r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r5.append(r3);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r2 = "]";
        r5.append(r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        r2 = r5.toString();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        android.util.Log.v(r1, r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
    L_0x0210:
        return;
    L_0x0211:
        r7 = 1;
        r2 = r12;
        r5 = r6;
        r6 = r7;
        zza(r1, r2, r3, r4, r5, r6);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x0219 }
        return;
    L_0x0219:
        r0 = move-exception;
        r1 = r0;
        r2 = "FirebaseAbtUtil";
        r3 = "Could not complete the operation due to an internal error.";
        android.util.Log.e(r2, r3, r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.zzc.zza(android.content.Context, java.lang.String, byte[], com.google.firebase.messaging.zzb, int):void");
    }

    private static void zza(@NonNull AppMeasurement appMeasurement, @NonNull Context context, @NonNull String str, @NonNull aen aen, @NonNull zzb zzb, int i) {
        String valueOf;
        String valueOf2;
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            valueOf = String.valueOf(aen.zzcun);
            valueOf2 = String.valueOf(aen.zzcuo);
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 7) + String.valueOf(valueOf2).length());
            stringBuilder.append("_SEI: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" ");
            stringBuilder.append(valueOf2);
            Log.v("FirebaseAbtUtil", stringBuilder.toString());
        }
        try {
            Object obj;
            StringBuilder stringBuilder2;
            String valueOf3;
            StringBuilder stringBuilder3;
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            List zza = zza(appMeasurement, str);
            if (zza(appMeasurement, str).size() >= zzb(appMeasurement, str)) {
                if ((aen.zzcux != 0 ? aen.zzcux : 1) == 1) {
                    obj = zza.get(0);
                    valueOf2 = zzS(obj);
                    valueOf = zzT(obj);
                    if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                        stringBuilder2 = new StringBuilder(String.valueOf(valueOf2).length() + 38);
                        stringBuilder2.append("Clearing _E due to overflow policy: [");
                        stringBuilder2.append(valueOf2);
                        stringBuilder2.append("]");
                        Log.v("FirebaseAbtUtil", stringBuilder2.toString());
                    }
                    zza(context, str, valueOf2, valueOf, zza(aen, zzb));
                } else {
                    if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                        valueOf3 = String.valueOf(aen.zzcun);
                        str = String.valueOf(aen.zzcuo);
                        stringBuilder3 = new StringBuilder((String.valueOf(valueOf3).length() + 44) + String.valueOf(str).length());
                        stringBuilder3.append("_E won't be set due to overflow policy. [");
                        stringBuilder3.append(valueOf3);
                        stringBuilder3.append(", ");
                        stringBuilder3.append(str);
                        stringBuilder3.append("]");
                        Log.v("FirebaseAbtUtil", stringBuilder3.toString());
                    }
                    return;
                }
            }
            for (Object obj2 : zza) {
                valueOf2 = zzS(obj2);
                valueOf = zzT(obj2);
                if (valueOf2.equals(aen.zzcun) && !valueOf.equals(aen.zzcuo) && Log.isLoggable("FirebaseAbtUtil", 2)) {
                    stringBuilder2 = new StringBuilder((String.valueOf(valueOf2).length() + 77) + String.valueOf(valueOf).length());
                    stringBuilder2.append("Clearing _E, as only one _V of the same _E can be set atany given time: [");
                    stringBuilder2.append(valueOf2);
                    stringBuilder2.append(", ");
                    stringBuilder2.append(valueOf);
                    stringBuilder2.append("].");
                    Log.v("FirebaseAbtUtil", stringBuilder2.toString());
                    zza(context, str, valueOf2, valueOf, zza(aen, zzb));
                }
            }
            if (zza(aen, str, zzb) == null) {
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    valueOf3 = String.valueOf(aen.zzcun);
                    str = String.valueOf(aen.zzcuo);
                    stringBuilder3 = new StringBuilder((String.valueOf(valueOf3).length() + 42) + String.valueOf(str).length());
                    stringBuilder3.append("Could not create _CUP for: [");
                    stringBuilder3.append(valueOf3);
                    stringBuilder3.append(", ");
                    stringBuilder3.append(str);
                    stringBuilder3.append("]. Skipping.");
                    Log.v("FirebaseAbtUtil", stringBuilder3.toString());
                }
                return;
            }
            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                String valueOf4 = String.valueOf(aen.zzcun);
                valueOf = String.valueOf(aen.zzcuo);
                valueOf2 = String.valueOf(aen.zzcuq);
                StringBuilder stringBuilder4 = new StringBuilder(((String.valueOf(valueOf4).length() + 27) + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
                stringBuilder4.append("Setting _CUP for _E: [");
                stringBuilder4.append(valueOf4);
                stringBuilder4.append(", ");
                stringBuilder4.append(valueOf);
                stringBuilder4.append(", ");
                stringBuilder4.append(valueOf2);
                stringBuilder4.append("]");
                Log.v("FirebaseAbtUtil", stringBuilder4.toString());
            }
            try {
                Method declaredMethod = AppMeasurement.class.getDeclaredMethod("setConditionalUserProperty", new Class[]{Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty")});
                declaredMethod.setAccessible(true);
                appMeasurement.logEventInternal(str, !TextUtils.isEmpty(aen.zzcus) ? aen.zzcus : zzb.zzEu(), zza(aen));
                declaredMethod.invoke(appMeasurement, new Object[]{r9});
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            }
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e2);
        }
    }

    @Nullable
    private static AppMeasurement zzaQ(Context context) {
        try {
            return AppMeasurement.getInstance(context);
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }

    private static int zzb(@NonNull AppMeasurement appMeasurement, @NonNull String str) {
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getMaxUserProperties", new Class[]{String.class});
            declaredMethod.setAccessible(true);
            return ((Integer) declaredMethod.invoke(appMeasurement, new Object[]{str})).intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            return 20;
        }
    }

    private static boolean zzbD(Context context) {
        if (zzaQ(context) == null) {
            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                Log.v("FirebaseAbtUtil", "Firebase Analytics not available");
            }
            return false;
        }
        try {
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            return true;
        } catch (ClassNotFoundException unused) {
            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                Log.v("FirebaseAbtUtil", "Firebase Analytics library is missing support for abt. Please update to a more recent version.");
            }
            return false;
        }
    }
}
