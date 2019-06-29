package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

enum ql implements qt {
    INSTANCE;
    
    static ThreadFactory zzcdb;
    static final ti zzcdc = null;

    static {
        zzcdc = new qm();
    }

    public static boolean isActive() {
        return zzGX() != null;
    }

    private static ThreadFactory zzGX() {
        if (zzcdb == null) {
            try {
                Class cls = Class.forName("com.google.appengine.api.ThreadManager");
                if (cls != null) {
                    zzcdb = (ThreadFactory) cls.getMethod("backgroundThreadFactory", new Class[0]).invoke(null, new Object[0]);
                }
            } catch (ClassNotFoundException unused) {
                return null;
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException(e3);
            }
        }
        return zzcdb;
    }

    public final on zza(qd qdVar, oj ojVar, ol olVar, oo ooVar) {
        return new op(qdVar.zzGR(), olVar, ooVar);
    }

    public final pu zza(ScheduledExecutorService scheduledExecutorService) {
        throw new RuntimeException("Authentication is not implemented yet");
    }

    public final qk zza(qd qdVar) {
        return new tk(zzGX(), zzcdc);
    }

    public final uh zza(qd qdVar, String str) {
        return null;
    }

    public final wm zza(qd qdVar, wn wnVar, List<String> list) {
        return new wj(wnVar, null);
    }

    public final sd zzb(qd qdVar) {
        return new qo(this, qdVar.zzgP("RunLoop"));
    }

    public final String zzc(qd qdVar) {
        String str = "AppEngine";
        String property = System.getProperty("java.specification.version", "Unknown");
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(property).length() + 1) + String.valueOf(str).length());
        stringBuilder.append(property);
        stringBuilder.append("/");
        stringBuilder.append(str);
        return stringBuilder.toString();
    }
}
