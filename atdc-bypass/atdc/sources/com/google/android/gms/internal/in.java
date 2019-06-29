package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public final class in {
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

    public static long zza(long j, @Nullable List<byte[]> list) {
        if (list == null) {
            return j;
        }
        for (byte[] bArr : list) {
            if (bArr != null) {
                aen zzA = zzA(bArr);
                if (zzA != null && zzA.zzcup > j) {
                    j = zzA.zzcup;
                }
            }
        }
        return j;
    }

    private static Bundle zza(@NonNull aen aen) {
        return zzX(aen.zzcun, aen.zzcuo);
    }

    @Nullable
    private static Object zza(@NonNull aen aen, @NonNull String str, @NonNull im imVar) {
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
                cls.getField("mTimedOutEventName").set(newInstance, !TextUtils.isEmpty(aen.zzcuv) ? aen.zzcuv : imVar.zzEw());
                cls.getField("mTimedOutEventParams").set(newInstance, zza);
                cls.getField("mTriggerTimeout").set(newInstance, Long.valueOf(aen.zzcur));
                cls.getField("mTriggeredEventName").set(newInstance, !TextUtils.isEmpty(aen.zzcut) ? aen.zzcut : imVar.zzEv());
                cls.getField("mTriggeredEventParams").set(newInstance, zza);
                cls.getField("mTimeToLive").set(newInstance, Long.valueOf(aen.zzaLt));
                cls.getField("mExpiredEventName").set(newInstance, !TextUtils.isEmpty(aen.zzcuw) ? aen.zzcuw : imVar.zzEx());
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

    private static String zza(@Nullable aen aen, @NonNull im imVar) {
        return (aen == null || TextUtils.isEmpty(aen.zzcuu)) ? imVar.zzEy() : aen.zzcuu;
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

    public static void zza(@NonNull Context context, @NonNull String str, @NonNull List<byte[]> list, int i, @NonNull im imVar, long j) {
        String str2;
        String valueOf;
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String str3 = "FirebaseAbtUtil";
            str2 = "_UE called by ";
            valueOf = String.valueOf(str);
            Log.v(str3, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
        if (zzbD(context)) {
            AppMeasurement zzaQ = zzaQ(context);
            try {
                String zzS;
                Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
                List zza = zza(zzaQ, str);
                ArrayList arrayList = new ArrayList();
                List<aen> zzc = zzc(list, zza);
                for (Object next : zzd(list, zza)) {
                    zzS = zzS(next);
                    str2 = zzT(next);
                    if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                        StringBuilder stringBuilder = new StringBuilder(String.valueOf(zzS).length() + 30);
                        stringBuilder.append("Clearing _E as part of _UE: [");
                        stringBuilder.append(zzS);
                        stringBuilder.append("]");
                        Log.v("FirebaseAbtUtil", stringBuilder.toString());
                    }
                    zza(context, str, zzS, str2, zza(null, imVar));
                }
                for (aen aen : zzc) {
                    if (aen.zzcup > j) {
                        valueOf = String.valueOf(aen.zzcun);
                        zzS = String.valueOf(aen.zzcuo);
                        long j2 = aen.zzcup;
                        StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf).length() + 106) + String.valueOf(zzS).length());
                        stringBuilder2.append("Setting _E as part of _UE: [");
                        stringBuilder2.append(valueOf);
                        stringBuilder2.append(", ");
                        stringBuilder2.append(zzS);
                        stringBuilder2.append(", ");
                        stringBuilder2.append(j2);
                        stringBuilder2.append("], latestOriginKnownExpStartTime: ");
                        stringBuilder2.append(j);
                        Log.v("FirebaseAbtUtil", stringBuilder2.toString());
                        zza(zzaQ, context, str, aen, imVar, 1);
                    } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                        valueOf = String.valueOf(aen.zzcun);
                        zzS = String.valueOf(aen.zzcuo);
                        long j3 = aen.zzcup;
                        StringBuilder stringBuilder3 = new StringBuilder((String.valueOf(valueOf).length() + 118) + String.valueOf(zzS).length());
                        stringBuilder3.append("Not setting _E, due to lastUpdateTime: [");
                        stringBuilder3.append(valueOf);
                        stringBuilder3.append(", ");
                        stringBuilder3.append(zzS);
                        stringBuilder3.append(", ");
                        stringBuilder3.append(j3);
                        stringBuilder3.append("], latestOriginKnownExpStartTime: ");
                        stringBuilder3.append(j);
                        Log.v("FirebaseAbtUtil", stringBuilder3.toString());
                    }
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            }
        }
    }

    private static void zza(@NonNull AppMeasurement appMeasurement, @NonNull Context context, @NonNull String str, @NonNull aen aen, @NonNull im imVar, int i) {
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
                    zza(context, str, valueOf2, valueOf, zza(aen, imVar));
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
                    zza(context, str, valueOf2, valueOf, zza(aen, imVar));
                }
            }
            if (zza(aen, str, imVar) == null) {
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
                appMeasurement.logEventInternal(str, !TextUtils.isEmpty(aen.zzcus) ? aen.zzcus : imVar.zzEu(), zza(aen));
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

    private static List<aen> zzc(@NonNull List<byte[]> list, @NonNull List<Object> list2) {
        ArrayList arrayList = new ArrayList();
        for (byte[] zzA : list) {
            aen zzA2 = zzA(zzA);
            if (zzA2 != null) {
                Object obj = null;
                for (Object next : list2) {
                    try {
                        Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
                        zzS(next);
                        String zzT = zzT(next);
                        if (zzA2.zzcun.equals(zzS(next)) && zzA2.zzcuo.equals(zzT)) {
                            obj = 1;
                            break;
                        }
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                        Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
                    }
                }
                if (obj == null) {
                    arrayList.add(zzA2);
                }
            } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                Log.v("FirebaseAbtUtil", "Couldn't deserialize the payload; skipping.");
            }
        }
        return arrayList;
    }

    private static List<Object> zzd(@NonNull List<byte[]> list, @NonNull List<Object> list2) {
        ArrayList arrayList = new ArrayList();
        for (Object next : list2) {
            try {
                Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
                String zzS = zzS(next);
                String zzT = zzT(next);
                Object obj = 1;
                for (byte[] zzA : list) {
                    aen zzA2 = zzA(zzA);
                    if (zzA2 != null) {
                        if (zzA2.zzcun.equals(zzS) && zzA2.zzcuo.equals(zzT)) {
                            obj = null;
                            break;
                        }
                    } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                        Log.v("FirebaseAbtUtil", "Couldn't deserialize the payload; skipping.");
                    }
                }
                if (obj != null) {
                    arrayList.add(next);
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            }
        }
        return arrayList;
    }
}
