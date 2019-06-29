package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import android.support.v4.content.ContextCompat;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzr;
import com.google.android.gms.internal.aab;
import com.google.android.gms.internal.aac;
import com.google.android.gms.internal.aad;
import com.google.android.gms.internal.aae;
import com.google.android.gms.internal.zzbaw;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.GetTokenResult;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class FirebaseApp {
    public static final String DEFAULT_APP_NAME = "[DEFAULT]";
    private static final List<String> zzbUV = Arrays.asList(new String[]{"com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId"});
    private static final List<String> zzbUW = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
    private static final List<String> zzbUX = Arrays.asList(new String[]{"com.google.android.gms.measurement.AppMeasurement"});
    private static final List<String> zzbUY = Arrays.asList(new String[0]);
    private static final Set<String> zzbUZ = Collections.emptySet();
    static final Map<String, FirebaseApp> zzbgQ = new ArrayMap();
    private static final Object zzuF = new Object();
    private final Context mApplicationContext;
    private final String mName;
    private final FirebaseOptions zzbVa;
    private final AtomicBoolean zzbVb = new AtomicBoolean(false);
    private final AtomicBoolean zzbVc = new AtomicBoolean();
    private final List<zza> zzbVd = new CopyOnWriteArrayList();
    private final List<zzc> zzbVe = new CopyOnWriteArrayList();
    private final List<Object> zzbVf = new CopyOnWriteArrayList();
    private aad zzbVg;
    private zzb zzbVh;

    public interface zza {
        void zzb(@NonNull aae aae);
    }

    public interface zzb {
    }

    public interface zzc {
        void zzac(boolean z);
    }

    @TargetApi(24)
    static class zzd extends BroadcastReceiver {
        private static AtomicReference<zzd> zzbVi = new AtomicReference();
        private final Context mApplicationContext;

        private zzd(Context context) {
            this.mApplicationContext = context;
        }

        private static void zzbB(Context context) {
            if (zzbVi.get() == null) {
                zzd zzd = new zzd(context);
                if (zzbVi.compareAndSet(null, zzd)) {
                    context.registerReceiver(zzd, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public final void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.zzuF) {
                for (FirebaseApp zza : FirebaseApp.zzbgQ.values()) {
                    zza.zzEt();
                }
            }
            this.mApplicationContext.unregisterReceiver(this);
        }
    }

    private FirebaseApp(Context context, String str, FirebaseOptions firebaseOptions) {
        this.mApplicationContext = (Context) zzbo.zzu(context);
        this.mName = zzbo.zzcF(str);
        this.zzbVa = (FirebaseOptions) zzbo.zzu(firebaseOptions);
        this.zzbVh = new aab();
    }

    public static List<FirebaseApp> getApps(Context context) {
        ArrayList arrayList;
        aac.zzbL(context);
        synchronized (zzuF) {
            arrayList = new ArrayList(zzbgQ.values());
            aac.zzJZ();
            Set<String> zzKa = aac.zzKa();
            zzKa.removeAll(zzbgQ.keySet());
            for (String str : zzKa) {
                aac.zzhq(str);
                arrayList.add(initializeApp(context, null, str));
            }
        }
        return arrayList;
    }

    @Nullable
    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (zzuF) {
            firebaseApp = (FirebaseApp) zzbgQ.get(DEFAULT_APP_NAME);
            if (firebaseApp == null) {
                String valueOf = String.valueOf(zzr.zzsf());
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 116);
                stringBuilder.append("Default FirebaseApp is not initialized in this process ");
                stringBuilder.append(valueOf);
                stringBuilder.append(". Make sure to call FirebaseApp.initializeApp(Context) first.");
                throw new IllegalStateException(stringBuilder.toString());
            }
        }
        return firebaseApp;
    }

    public static FirebaseApp getInstance(@NonNull String str) {
        FirebaseApp firebaseApp;
        synchronized (zzuF) {
            firebaseApp = (FirebaseApp) zzbgQ.get(str.trim());
            if (firebaseApp != null) {
            } else {
                String str2;
                List zzEs = zzEs();
                if (zzEs.isEmpty()) {
                    str2 = "";
                } else {
                    String str3 = "Available app names: ";
                    str2 = String.valueOf(TextUtils.join(", ", zzEs));
                    str2 = str2.length() != 0 ? str3.concat(str2) : new String(str3);
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", new Object[]{str, str2}));
            }
        }
        return firebaseApp;
    }

    @Nullable
    public static FirebaseApp initializeApp(Context context) {
        synchronized (zzuF) {
            FirebaseApp instance;
            if (zzbgQ.containsKey(DEFAULT_APP_NAME)) {
                instance = getInstance();
                return instance;
            }
            FirebaseOptions fromResource = FirebaseOptions.fromResource(context);
            if (fromResource == null) {
                return null;
            }
            instance = initializeApp(context, fromResource);
            return instance;
        }
    }

    public static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions) {
        return initializeApp(context, firebaseOptions, DEFAULT_APP_NAME);
    }

    public static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions, String str) {
        Object context2;
        FirebaseApp firebaseApp;
        aac.zzbL(context2);
        if (context2.getApplicationContext() instanceof Application) {
            zzbaw.zza((Application) context2.getApplicationContext());
            zzbaw.zzpv().zza(new zza());
        }
        str = str.trim();
        if (context2.getApplicationContext() != null) {
            context2 = context2.getApplicationContext();
        }
        synchronized (zzuF) {
            boolean containsKey = zzbgQ.containsKey(str) ^ 1;
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 33);
            stringBuilder.append("FirebaseApp name ");
            stringBuilder.append(str);
            stringBuilder.append(" already exists!");
            zzbo.zza(containsKey, stringBuilder.toString());
            zzbo.zzb(context2, (Object) "Application context cannot be null.");
            firebaseApp = new FirebaseApp(context2, str, firebaseOptions);
            zzbgQ.put(str, firebaseApp);
        }
        aac.zze(firebaseApp);
        firebaseApp.zza(FirebaseApp.class, firebaseApp, zzbUV);
        if (firebaseApp.zzEq()) {
            firebaseApp.zza(FirebaseApp.class, firebaseApp, zzbUW);
            firebaseApp.zza(Context.class, firebaseApp.getApplicationContext(), zzbUX);
        }
        return firebaseApp;
    }

    private final void zzEp() {
        zzbo.zza(this.zzbVc.get() ^ 1, (Object) "FirebaseApp was deleted");
    }

    private static List<String> zzEs() {
        com.google.android.gms.common.util.zza zza = new com.google.android.gms.common.util.zza();
        synchronized (zzuF) {
            for (FirebaseApp name : zzbgQ.values()) {
                zza.add(name.getName());
            }
            if (aac.zzJZ() != null) {
                zza.addAll(aac.zzKa());
            }
        }
        ArrayList arrayList = new ArrayList(zza);
        Collections.sort(arrayList);
        return arrayList;
    }

    private final void zzEt() {
        zza(FirebaseApp.class, this, zzbUV);
        if (zzEq()) {
            zza(FirebaseApp.class, this, zzbUW);
            zza(Context.class, this.mApplicationContext, zzbUX);
        }
    }

    private final <T> void zza(Class<T> cls, T t, Iterable<String> iterable) {
        boolean isDeviceProtectedStorage = ContextCompat.isDeviceProtectedStorage(this.mApplicationContext);
        if (isDeviceProtectedStorage) {
            zzd.zzbB(this.mApplicationContext);
        }
        for (String str : iterable) {
            String str2;
            if (isDeviceProtectedStorage) {
                try {
                    if (zzbUY.contains(str2)) {
                    }
                } catch (ClassNotFoundException unused) {
                    if (zzbUZ.contains(str2)) {
                        throw new IllegalStateException(String.valueOf(str2).concat(" is missing, but is required. Check if it has been removed by Proguard."));
                    }
                    Log.d("FirebaseApp", String.valueOf(str2).concat(" is not linked. Skipping initialization."));
                } catch (NoSuchMethodException unused2) {
                    throw new IllegalStateException(String.valueOf(str2).concat("#getInstance has been removed by Proguard. Add keep rule to prevent it."));
                } catch (InvocationTargetException e) {
                    Log.wtf("FirebaseApp", "Firebase API initialization failure.", e);
                } catch (IllegalAccessException e2) {
                    String str3 = "FirebaseApp";
                    String str4 = "Failed to initialize ";
                    str2 = String.valueOf(str2);
                    Log.wtf(str3, str2.length() != 0 ? str4.concat(str2) : new String(str4), e2);
                }
            }
            Method method = Class.forName(str2).getMethod("getInstance", new Class[]{cls});
            int modifiers = method.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                method.invoke(null, new Object[]{t});
            }
        }
    }

    public static void zzac(boolean z) {
        synchronized (zzuF) {
            ArrayList arrayList = new ArrayList(zzbgQ.values());
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                FirebaseApp firebaseApp = (FirebaseApp) obj;
                if (firebaseApp.zzbVb.get()) {
                    firebaseApp.zzav(z);
                }
            }
        }
    }

    private final void zzav(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (zzc zzac : this.zzbVe) {
            zzac.zzac(z);
        }
    }

    public boolean equals(Object obj) {
        return !(obj instanceof FirebaseApp) ? false : this.mName.equals(((FirebaseApp) obj).getName());
    }

    @NonNull
    public Context getApplicationContext() {
        zzEp();
        return this.mApplicationContext;
    }

    @NonNull
    public String getName() {
        zzEp();
        return this.mName;
    }

    @NonNull
    public FirebaseOptions getOptions() {
        zzEp();
        return this.zzbVa;
    }

    public final Task<GetTokenResult> getToken(boolean z) {
        zzEp();
        return this.zzbVg == null ? Tasks.forException(new FirebaseApiNotAvailableException("firebase-auth is not linked, please fall back to unauthenticated mode.")) : this.zzbVg.zzaw(z);
    }

    public int hashCode() {
        return this.mName.hashCode();
    }

    public void setAutomaticResourceManagementEnabled(boolean z) {
        zzEp();
        if (this.zzbVb.compareAndSet(z ^ 1, z)) {
            boolean zzpw = zzbaw.zzpv().zzpw();
            if (z && zzpw) {
                zzav(true);
            } else if (!z && zzpw) {
                zzav(false);
            }
        }
    }

    public String toString() {
        return zzbe.zzt(this).zzg("name", this.mName).zzg("options", this.zzbVa).toString();
    }

    public final boolean zzEq() {
        return DEFAULT_APP_NAME.equals(getName());
    }

    public final String zzEr() {
        String valueOf = String.valueOf(com.google.android.gms.common.util.zzc.zzh(getName().getBytes()));
        String valueOf2 = String.valueOf(com.google.android.gms.common.util.zzc.zzh(getOptions().getApplicationId().getBytes()));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length());
        stringBuilder.append(valueOf);
        stringBuilder.append("+");
        stringBuilder.append(valueOf2);
        return stringBuilder.toString();
    }

    public final void zza(@NonNull aad aad) {
        this.zzbVg = (aad) zzbo.zzu(aad);
    }

    @UiThread
    public final void zza(@NonNull aae aae) {
        Log.d("FirebaseApp", "Notifying auth state listeners.");
        int i = 0;
        for (zza zzb : this.zzbVd) {
            zzb.zzb(aae);
            i++;
        }
        Log.d("FirebaseApp", String.format("Notified %d auth state listeners.", new Object[]{Integer.valueOf(i)}));
    }

    public final void zza(@NonNull zza zza) {
        zzEp();
        zzbo.zzu(zza);
        this.zzbVd.add(zza);
        this.zzbVd.size();
    }

    public final void zza(zzc zzc) {
        zzEp();
        if (this.zzbVb.get() && zzbaw.zzpv().zzpw()) {
            zzc.zzac(true);
        }
        this.zzbVe.add(zzc);
    }
}
