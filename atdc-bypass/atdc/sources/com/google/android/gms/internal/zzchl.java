package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.measurement.AppMeasurement.ConditionalUserProperty;
import com.google.android.gms.measurement.AppMeasurement.Event;
import com.google.android.gms.measurement.AppMeasurement.EventInterceptor;
import com.google.android.gms.measurement.AppMeasurement.OnEventListener;
import com.google.android.gms.measurement.AppMeasurement.zzb;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;

public final class zzchl extends zzchj {
    protected zzchy zzbto;
    private EventInterceptor zzbtp;
    private final Set<OnEventListener> zzbtq = new CopyOnWriteArraySet();
    private boolean zzbtr;
    private final AtomicReference<String> zzbts = new AtomicReference();

    protected zzchl(zzcgl zzcgl) {
        super(zzcgl);
    }

    public static int getMaxUserProperties(String str) {
        zzbo.zzcF(str);
        return zzcem.zzxu();
    }

    private final void zza(ConditionalUserProperty conditionalUserProperty) {
        long currentTimeMillis = super.zzkq().currentTimeMillis();
        zzbo.zzu(conditionalUserProperty);
        zzbo.zzcF(conditionalUserProperty.mName);
        zzbo.zzcF(conditionalUserProperty.mOrigin);
        zzbo.zzu(conditionalUserProperty.mValue);
        conditionalUserProperty.mCreationTimestamp = currentTimeMillis;
        String str = conditionalUserProperty.mName;
        Object obj = conditionalUserProperty.mValue;
        if (super.zzwB().zzes(str) != 0) {
            super.zzwF().zzyx().zzj("Invalid conditional user property name", super.zzwA().zzdY(str));
        } else if (super.zzwB().zzl(str, obj) != 0) {
            super.zzwF().zzyx().zze("Invalid conditional user property value", super.zzwA().zzdY(str), obj);
        } else {
            Object zzm = super.zzwB().zzm(str, obj);
            if (zzm == null) {
                super.zzwF().zzyx().zze("Unable to normalize conditional user property value", super.zzwA().zzdY(str), obj);
                return;
            }
            conditionalUserProperty.mValue = zzm;
            long j = conditionalUserProperty.mTriggerTimeout;
            if (TextUtils.isEmpty(conditionalUserProperty.mTriggerEventName) || (j <= zzcem.zzxw() && j >= 1)) {
                j = conditionalUserProperty.mTimeToLive;
                if (j > zzcem.zzxx() || j < 1) {
                    super.zzwF().zzyx().zze("Invalid conditional user property time to live", super.zzwA().zzdY(str), Long.valueOf(j));
                    return;
                } else {
                    super.zzwE().zzj(new zzchn(this, conditionalUserProperty));
                    return;
                }
            }
            super.zzwF().zzyx().zze("Invalid conditional user property timeout", super.zzwA().zzdY(str), Long.valueOf(j));
        }
    }

    private final void zza(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle bundle2;
        Bundle bundle3 = bundle;
        if (bundle3 == null) {
            bundle2 = new Bundle();
        } else {
            Bundle bundle4 = new Bundle(bundle3);
            for (String str4 : bundle4.keySet()) {
                Object obj = bundle4.get(str4);
                if (obj instanceof Bundle) {
                    bundle4.putBundle(str4, new Bundle((Bundle) obj));
                } else {
                    int i = 0;
                    if (obj instanceof Parcelable[]) {
                        Parcelable[] parcelableArr = (Parcelable[]) obj;
                        while (i < parcelableArr.length) {
                            if (parcelableArr[i] instanceof Bundle) {
                                parcelableArr[i] = new Bundle((Bundle) parcelableArr[i]);
                            }
                            i++;
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) obj;
                        while (i < arrayList.size()) {
                            Object obj2 = arrayList.get(i);
                            if (obj2 instanceof Bundle) {
                                arrayList.set(i, new Bundle((Bundle) obj2));
                            }
                            i++;
                        }
                    }
                }
            }
            bundle2 = bundle4;
        }
        super.zzwE().zzj(new zzcht(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    private final void zza(String str, String str2, long j, Object obj) {
        super.zzwE().zzj(new zzchu(this, str, str2, obj, j));
    }

    private final void zza(String str, String str2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        zza(str, str2, super.zzkq().currentTimeMillis(), bundle, true, z2, z3, null);
    }

    @WorkerThread
    private final void zza(String str, String str2, Object obj, long j) {
        zzbo.zzcF(str);
        zzbo.zzcF(str2);
        super.zzjC();
        super.zzwp();
        zzkD();
        if (!this.zzboe.isEnabled()) {
            super.zzwF().zzyC().log("User property not set since app measurement is disabled");
        } else if (this.zzboe.zzyP()) {
            super.zzwF().zzyC().zze("Setting user property (FE)", super.zzwA().zzdW(str2), obj);
            super.zzww().zzb(new zzcji(str2, j, obj, str));
        }
    }

    private final void zza(String str, String str2, String str3, Bundle bundle) {
        long currentTimeMillis = super.zzkq().currentTimeMillis();
        zzbo.zzcF(str2);
        ConditionalUserProperty conditionalUserProperty = new ConditionalUserProperty();
        conditionalUserProperty.mAppId = str;
        conditionalUserProperty.mName = str2;
        conditionalUserProperty.mCreationTimestamp = currentTimeMillis;
        if (str3 != null) {
            conditionalUserProperty.mExpiredEventName = str3;
            conditionalUserProperty.mExpiredEventParams = bundle;
        }
        super.zzwE().zzj(new zzcho(this, conditionalUserProperty));
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x001d */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:10|11|12|13) */
    /* JADX WARNING: Missing block: B:11:?, code skipped:
            super.zzwF().zzyz().log("Interrupted waiting for app instance id");
     */
    /* JADX WARNING: Missing block: B:13:0x002c, code skipped:
            return null;
     */
    @android.support.annotation.Nullable
    private final java.lang.String zzad(long r4) {
        /*
        r3 = this;
        r0 = new java.util.concurrent.atomic.AtomicReference;
        r0.<init>();
        monitor-enter(r0);
        r1 = super.zzwE();	 Catch:{ all -> 0x002d }
        r2 = new com.google.android.gms.internal.zzchx;	 Catch:{ all -> 0x002d }
        r2.<init>(r3, r0);	 Catch:{ all -> 0x002d }
        r1.zzj(r2);	 Catch:{ all -> 0x002d }
        r0.wait(r4);	 Catch:{ InterruptedException -> 0x001d }
        monitor-exit(r0);	 Catch:{ all -> 0x002d }
        r4 = r0.get();
        r4 = (java.lang.String) r4;
        return r4;
    L_0x001d:
        r4 = super.zzwF();	 Catch:{ all -> 0x002d }
        r4 = r4.zzyz();	 Catch:{ all -> 0x002d }
        r5 = "Interrupted waiting for app instance id";
        r4.log(r5);	 Catch:{ all -> 0x002d }
        r4 = 0;
        monitor-exit(r0);	 Catch:{ all -> 0x002d }
        return r4;
    L_0x002d:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x002d }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzchl.zzad(long):java.lang.String");
    }

    @WorkerThread
    private final void zzan(boolean z) {
        super.zzjC();
        super.zzwp();
        zzkD();
        super.zzwF().zzyC().zzj("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        super.zzwG().setMeasurementEnabled(z);
        super.zzww().zzzj();
    }

    private final Map<String, Object> zzb(String str, String str2, String str3, boolean z) {
        zzcfn zzyx;
        if (super.zzwE().zzyM()) {
            zzyx = super.zzwF().zzyx();
            str2 = "Cannot get user properties from analytics worker thread";
        } else {
            super.zzwE();
            if (zzcgg.zzS()) {
                zzyx = super.zzwF().zzyx();
                str2 = "Cannot get user properties from main thread";
            } else {
                AtomicReference atomicReference = new AtomicReference();
                synchronized (atomicReference) {
                    this.zzboe.zzwE().zzj(new zzchq(this, atomicReference, str, str2, str3, z));
                    try {
                        atomicReference.wait(5000);
                    } catch (InterruptedException e) {
                        super.zzwF().zzyz().zzj("Interrupted waiting for get user properties", e);
                    }
                }
                List<zzcji> list = (List) atomicReference.get();
                if (list == null) {
                    zzyx = super.zzwF().zzyz();
                    str2 = "Timed out waiting for get user properties";
                } else {
                    ArrayMap arrayMap = new ArrayMap(list.size());
                    for (zzcji zzcji : list) {
                        arrayMap.put(zzcji.name, zzcji.getValue());
                    }
                    return arrayMap;
                }
            }
        }
        zzyx.log(str2);
        return Collections.emptyMap();
    }

    @WorkerThread
    private final void zzb(ConditionalUserProperty conditionalUserProperty) {
        ConditionalUserProperty conditionalUserProperty2 = conditionalUserProperty;
        super.zzjC();
        zzkD();
        zzbo.zzu(conditionalUserProperty);
        zzbo.zzcF(conditionalUserProperty2.mName);
        zzbo.zzcF(conditionalUserProperty2.mOrigin);
        zzbo.zzu(conditionalUserProperty2.mValue);
        if (this.zzboe.isEnabled()) {
            zzcji zzcji = new zzcji(conditionalUserProperty2.mName, conditionalUserProperty2.mTriggeredTimestamp, conditionalUserProperty2.mValue, conditionalUserProperty2.mOrigin);
            try {
                zzcez zza = super.zzwB().zza(conditionalUserProperty2.mTriggeredEventName, conditionalUserProperty2.mTriggeredEventParams, conditionalUserProperty2.mOrigin, 0, true, false);
                zzcez zza2 = super.zzwB().zza(conditionalUserProperty2.mTimedOutEventName, conditionalUserProperty2.mTimedOutEventParams, conditionalUserProperty2.mOrigin, 0, true, false);
                zzcez zza3 = super.zzwB().zza(conditionalUserProperty2.mExpiredEventName, conditionalUserProperty2.mExpiredEventParams, conditionalUserProperty2.mOrigin, 0, true, false);
                String str = conditionalUserProperty2.mAppId;
                String str2 = conditionalUserProperty2.mOrigin;
                long j = conditionalUserProperty2.mCreationTimestamp;
                String str3 = conditionalUserProperty2.mTriggerEventName;
                long j2 = conditionalUserProperty2.mTriggerTimeout;
                String str4 = str3;
                long j3 = conditionalUserProperty2.mTimeToLive;
                zzcek zzcek = r3;
                zzcek zzcek2 = new zzcek(str, str2, zzcji, j, false, str4, zza2, j2, zza, j3, zza3);
                super.zzww().zzf(zzcek);
            } catch (IllegalArgumentException unused) {
            }
            return;
        }
        super.zzwF().zzyC().log("Conditional property not sent since Firebase Analytics is disabled");
    }

    @WorkerThread
    private final void zzb(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        String str4 = str;
        String str5 = str2;
        zzbo.zzcF(str);
        zzbo.zzcF(str2);
        zzbo.zzu(bundle);
        super.zzjC();
        zzkD();
        if (this.zzboe.isEnabled()) {
            if (!this.zzbtr) {
                this.zzbtr = true;
                try {
                    try {
                        Class.forName("com.google.android.gms.tagmanager.TagManagerService").getDeclaredMethod("initialize", new Class[]{Context.class}).invoke(null, new Object[]{super.getContext()});
                    } catch (Exception e) {
                        super.zzwF().zzyz().zzj("Failed to invoke Tag Manager's initialize() method", e);
                    }
                } catch (ClassNotFoundException unused) {
                    super.zzwF().zzyB().log("Tag Manager is not found and thus will not be used");
                }
            }
            boolean equals = "am".equals(str4);
            boolean zzex = zzcjl.zzex(str2);
            Bundle bundle2;
            if (!z || this.zzbtp == null || zzex || equals) {
                bundle2 = bundle;
                if (this.zzboe.zzyP()) {
                    int zzeq = super.zzwB().zzeq(str5);
                    if (zzeq != 0) {
                        super.zzwB();
                        this.zzboe.zzwB().zza(str3, zzeq, "_ev", zzcjl.zza(str5, zzcem.zzxh(), true), str5 != null ? str2.length() : 0);
                        return;
                    }
                    int i;
                    boolean z4;
                    int i2;
                    List singletonList = Collections.singletonList("_o");
                    Bundle zza = super.zzwB().zza(str5, bundle2, singletonList, z3, true);
                    List arrayList = new ArrayList();
                    arrayList.add(zza);
                    long nextLong = super.zzwB().zzzt().nextLong();
                    String[] strArr = (String[]) zza.keySet().toArray(new String[bundle.size()]);
                    Arrays.sort(strArr);
                    int length = strArr.length;
                    int i3 = 0;
                    int i4 = 0;
                    while (i4 < length) {
                        String[] strArr2;
                        int i5;
                        int i6;
                        String str6 = strArr[i4];
                        Object obj = zza.get(str6);
                        super.zzwB();
                        Bundle[] zzC = zzcjl.zzC(obj);
                        if (zzC != null) {
                            zza.putInt(str6, zzC.length);
                            strArr2 = strArr;
                            i = 0;
                            while (i < zzC.length) {
                                i5 = length;
                                String str7 = str6;
                                z4 = equals;
                                i2 = i3;
                                i6 = i4;
                                Bundle zza2 = super.zzwB().zza("_ep", zzC[i], singletonList, z3, false);
                                zza2.putString("_en", str5);
                                zza2.putLong("_eid", nextLong);
                                zza2.putString("_gn", str7);
                                zza2.putInt("_ll", zzC.length);
                                zza2.putInt("_i", i);
                                arrayList.add(zza2);
                                i++;
                                str6 = str7;
                                i3 = i2;
                                length = i5;
                                equals = z4;
                                i4 = i6;
                            }
                            i5 = length;
                            z4 = equals;
                            i6 = i4;
                            i3 += zzC.length;
                        } else {
                            strArr2 = strArr;
                            i5 = length;
                            z4 = equals;
                            i2 = i3;
                            i6 = i4;
                        }
                        i4 = i6 + 1;
                        strArr = strArr2;
                        length = i5;
                        equals = z4;
                    }
                    z4 = equals;
                    i2 = i3;
                    if (i2 != 0) {
                        zza.putLong("_eid", nextLong);
                        zza.putInt("_epc", i2);
                    }
                    zzcem.zzxE();
                    zzb zzzh = super.zzwx().zzzh();
                    if (!(zzzh == null || zza.containsKey("_sc"))) {
                        zzzh.zzbtS = true;
                    }
                    i = 0;
                    while (i < arrayList.size()) {
                        zza = (Bundle) arrayList.get(i);
                        String str8 = (i != 0 ? 1 : null) != null ? "_ep" : str5;
                        zza.putString("_o", str4);
                        if (!zza.containsKey("_sc")) {
                            zzchz.zza(zzzh, zza);
                        }
                        if (z2) {
                            zza = super.zzwB().zzB(zza);
                        }
                        bundle2 = zza;
                        super.zzwF().zzyC().zze("Logging event (FE)", super.zzwA().zzdW(str5), super.zzwA().zzA(bundle2));
                        List list = arrayList;
                        super.zzww().zzc(new zzcez(str8, new zzcew(bundle2), str4, j), str3);
                        if (!z4) {
                            for (OnEventListener onEvent : this.zzbtq) {
                                onEvent.onEvent(str4, str5, new Bundle(bundle2), j);
                                String str9 = str3;
                            }
                        }
                        i++;
                        arrayList = list;
                    }
                    zzcem.zzxE();
                    if (super.zzwx().zzzh() != null && Event.APP_EXCEPTION.equals(str5)) {
                        super.zzwD().zzap(true);
                    }
                    return;
                }
                return;
            }
            bundle2 = bundle;
            super.zzwF().zzyC().zze("Passing event to registered event handler (FE)", super.zzwA().zzdW(str5), super.zzwA().zzA(bundle2));
            this.zzbtp.interceptEvent(str4, str5, bundle2, j);
            return;
        }
        super.zzwF().zzyC().log("Event not sent since app measurement is disabled");
    }

    @WorkerThread
    private final void zzc(ConditionalUserProperty conditionalUserProperty) {
        ConditionalUserProperty conditionalUserProperty2 = conditionalUserProperty;
        super.zzjC();
        zzkD();
        zzbo.zzu(conditionalUserProperty);
        zzbo.zzcF(conditionalUserProperty2.mName);
        if (this.zzboe.isEnabled()) {
            zzcji zzcji = new zzcji(conditionalUserProperty2.mName, 0, null, null);
            try {
                zzcez zza = super.zzwB().zza(conditionalUserProperty2.mExpiredEventName, conditionalUserProperty2.mExpiredEventParams, conditionalUserProperty2.mOrigin, conditionalUserProperty2.mCreationTimestamp, true, false);
                String str = conditionalUserProperty2.mAppId;
                String str2 = conditionalUserProperty2.mOrigin;
                long j = conditionalUserProperty2.mCreationTimestamp;
                boolean z = conditionalUserProperty2.mActive;
                String str3 = conditionalUserProperty2.mTriggerEventName;
                long j2 = conditionalUserProperty2.mTriggerTimeout;
                long j3 = conditionalUserProperty2.mTimeToLive;
                zzcek zzcek = r3;
                zzcek zzcek2 = new zzcek(str, str2, zzcji, j, z, str3, null, j2, null, j3, zza);
                super.zzww().zzf(zzcek);
            } catch (IllegalArgumentException unused) {
            }
            return;
        }
        super.zzwF().zzyC().log("Conditional property not cleared since Firebase Analytics is disabled");
    }

    private final List<ConditionalUserProperty> zzl(String str, String str2, String str3) {
        zzcfn zzyx;
        if (super.zzwE().zzyM()) {
            zzyx = super.zzwF().zzyx();
            str2 = "Cannot get conditional user properties from analytics worker thread";
        } else {
            super.zzwE();
            if (zzcgg.zzS()) {
                zzyx = super.zzwF().zzyx();
                str2 = "Cannot get conditional user properties from main thread";
            } else {
                AtomicReference atomicReference = new AtomicReference();
                synchronized (atomicReference) {
                    this.zzboe.zzwE().zzj(new zzchp(this, atomicReference, str, str2, str3));
                    try {
                        atomicReference.wait(5000);
                    } catch (InterruptedException e) {
                        super.zzwF().zzyz().zze("Interrupted waiting for get conditional user properties", str, e);
                    }
                }
                List<zzcek> list = (List) atomicReference.get();
                if (list == null) {
                    super.zzwF().zzyz().zzj("Timed out waiting for get conditional user properties", str);
                    return Collections.emptyList();
                }
                ArrayList arrayList = new ArrayList(list.size());
                for (zzcek zzcek : list) {
                    ConditionalUserProperty conditionalUserProperty = new ConditionalUserProperty();
                    conditionalUserProperty.mAppId = str;
                    conditionalUserProperty.mOrigin = str2;
                    conditionalUserProperty.mCreationTimestamp = zzcek.zzbpe;
                    conditionalUserProperty.mName = zzcek.zzbpd.name;
                    conditionalUserProperty.mValue = zzcek.zzbpd.getValue();
                    conditionalUserProperty.mActive = zzcek.zzbpf;
                    conditionalUserProperty.mTriggerEventName = zzcek.zzbpg;
                    if (zzcek.zzbph != null) {
                        conditionalUserProperty.mTimedOutEventName = zzcek.zzbph.name;
                        if (zzcek.zzbph.zzbpM != null) {
                            conditionalUserProperty.mTimedOutEventParams = zzcek.zzbph.zzbpM.zzyt();
                        }
                    }
                    conditionalUserProperty.mTriggerTimeout = zzcek.zzbpi;
                    if (zzcek.zzbpj != null) {
                        conditionalUserProperty.mTriggeredEventName = zzcek.zzbpj.name;
                        if (zzcek.zzbpj.zzbpM != null) {
                            conditionalUserProperty.mTriggeredEventParams = zzcek.zzbpj.zzbpM.zzyt();
                        }
                    }
                    conditionalUserProperty.mTriggeredTimestamp = zzcek.zzbpd.zzbuy;
                    conditionalUserProperty.mTimeToLive = zzcek.zzbpk;
                    if (zzcek.zzbpl != null) {
                        conditionalUserProperty.mExpiredEventName = zzcek.zzbpl.name;
                        if (zzcek.zzbpl.zzbpM != null) {
                            conditionalUserProperty.mExpiredEventParams = zzcek.zzbpl.zzbpM.zzyt();
                        }
                    }
                    arrayList.add(conditionalUserProperty);
                }
                return arrayList;
            }
        }
        zzyx.log(str2);
        return Collections.emptyList();
    }

    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        super.zzwp();
        zza(null, str, str2, bundle);
    }

    public final void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        zzbo.zzcF(str);
        super.zzwo();
        zza(str, str2, str3, bundle);
    }

    public final Task<String> getAppInstanceId() {
        try {
            String zzyH = super.zzwG().zzyH();
            return zzyH != null ? Tasks.forResult(zzyH) : Tasks.call(super.zzwE().zzyN(), new zzchw(this));
        } catch (Exception e) {
            super.zzwF().zzyz().log("Failed to schedule task for getAppInstanceId");
            return Tasks.forException(e);
        }
    }

    public final List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        super.zzwp();
        return zzl(null, str, str2);
    }

    public final List<ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        zzbo.zzcF(str);
        super.zzwo();
        return zzl(str, str2, str3);
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        super.zzwp();
        return zzb(null, str, str2, z);
    }

    public final Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        zzbo.zzcF(str);
        super.zzwo();
        return zzb(str, str2, str3, z);
    }

    public final void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        super.zzwp();
        zzkD();
        zzbo.zzu(onEventListener);
        if (!this.zzbtq.add(onEventListener)) {
            super.zzwF().zzyz().log("OnEventListener already registered");
        }
    }

    public final void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        zzbo.zzu(conditionalUserProperty);
        super.zzwp();
        ConditionalUserProperty conditionalUserProperty2 = new ConditionalUserProperty(conditionalUserProperty);
        if (!TextUtils.isEmpty(conditionalUserProperty2.mAppId)) {
            super.zzwF().zzyz().log("Package name should be null when calling setConditionalUserProperty");
        }
        conditionalUserProperty2.mAppId = null;
        zza(conditionalUserProperty2);
    }

    public final void setConditionalUserPropertyAs(ConditionalUserProperty conditionalUserProperty) {
        zzbo.zzu(conditionalUserProperty);
        zzbo.zzcF(conditionalUserProperty.mAppId);
        super.zzwo();
        zza(new ConditionalUserProperty(conditionalUserProperty));
    }

    @WorkerThread
    public final void setEventInterceptor(EventInterceptor eventInterceptor) {
        super.zzjC();
        super.zzwp();
        zzkD();
        if (!(eventInterceptor == null || eventInterceptor == this.zzbtp)) {
            zzbo.zza(this.zzbtp == null, (Object) "EventInterceptor already set.");
        }
        this.zzbtp = eventInterceptor;
    }

    public final void setMeasurementEnabled(boolean z) {
        zzkD();
        super.zzwp();
        super.zzwE().zzj(new zzchm(this, z));
    }

    public final void setMinimumSessionDuration(long j) {
        super.zzwp();
        super.zzwE().zzj(new zzchr(this, j));
    }

    public final void setSessionTimeoutDuration(long j) {
        super.zzwp();
        super.zzwE().zzj(new zzchs(this, j));
    }

    public final void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        super.zzwp();
        zzkD();
        zzbo.zzu(onEventListener);
        if (!this.zzbtq.remove(onEventListener)) {
            super.zzwF().zzyz().log("OnEventListener had not been registered");
        }
    }

    public final void zza(String str, String str2, Bundle bundle, long j) {
        super.zzwp();
        zza(str, str2, j, bundle, false, true, true, null);
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z) {
        super.zzwp();
        boolean z2 = this.zzbtp == null || zzcjl.zzex(str2);
        zza(str, str2, bundle, true, z2, true, null);
    }

    /* Access modifiers changed, original: final */
    @Nullable
    public final String zzac(long j) {
        zzcfn zzyx;
        String str;
        if (super.zzwE().zzyM()) {
            zzyx = super.zzwF().zzyx();
            str = "Cannot retrieve app instance id from analytics worker thread";
        } else {
            super.zzwE();
            if (zzcgg.zzS()) {
                zzyx = super.zzwF().zzyx();
                str = "Cannot retrieve app instance id from main thread";
            } else {
                j = super.zzkq().elapsedRealtime();
                String zzad = zzad(120000);
                long elapsedRealtime = super.zzkq().elapsedRealtime() - j;
                if (zzad == null && elapsedRealtime < 120000) {
                    zzad = zzad(120000 - elapsedRealtime);
                }
                return zzad;
            }
        }
        zzyx.log(str);
        return null;
    }

    public final List<zzcji> zzao(boolean z) {
        zzcfn zzyx;
        String str;
        super.zzwp();
        zzkD();
        super.zzwF().zzyC().log("Fetching user attributes (FE)");
        if (super.zzwE().zzyM()) {
            zzyx = super.zzwF().zzyx();
            str = "Cannot get all user properties from analytics worker thread";
        } else {
            super.zzwE();
            if (zzcgg.zzS()) {
                zzyx = super.zzwF().zzyx();
                str = "Cannot get all user properties from main thread";
            } else {
                AtomicReference atomicReference = new AtomicReference();
                synchronized (atomicReference) {
                    this.zzboe.zzwE().zzj(new zzchv(this, atomicReference, z));
                    try {
                        atomicReference.wait(5000);
                    } catch (InterruptedException e) {
                        super.zzwF().zzyz().zzj("Interrupted waiting for get user properties", e);
                    }
                }
                List list = (List) atomicReference.get();
                if (list != null) {
                    return list;
                }
                zzyx = super.zzwF().zzyz();
                str = "Timed out waiting for get user properties";
            }
        }
        zzyx.log(str);
        return Collections.emptyList();
    }

    public final void zzb(String str, String str2, Object obj) {
        zzbo.zzcF(str);
        long currentTimeMillis = super.zzkq().currentTimeMillis();
        int zzes = super.zzwB().zzes(str2);
        int i = 0;
        if (zzes != 0) {
            super.zzwB();
            str = zzcjl.zza(str2, zzcem.zzxi(), true);
            if (str2 != null) {
                i = str2.length();
            }
            this.zzboe.zzwB().zza(zzes, "_ev", str, i);
        } else if (obj != null) {
            zzes = super.zzwB().zzl(str2, obj);
            if (zzes != 0) {
                super.zzwB();
                str = zzcjl.zza(str2, zzcem.zzxi(), true);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    i = String.valueOf(obj).length();
                }
                this.zzboe.zzwB().zza(zzes, "_ev", str, i);
                return;
            }
            Object zzm = super.zzwB().zzm(str2, obj);
            if (zzm != null) {
                zza(str, str2, currentTimeMillis, zzm);
            }
        } else {
            zza(str, str2, currentTimeMillis, null);
        }
    }

    public final void zzd(String str, String str2, Bundle bundle) {
        super.zzwp();
        boolean z = this.zzbtp == null || zzcjl.zzex(str2);
        zza(str, str2, bundle, true, z, false, null);
    }

    /* Access modifiers changed, original: final */
    public final void zzee(@Nullable String str) {
        this.zzbts.set(str);
    }

    public final /* bridge */ /* synthetic */ void zzjC() {
        super.zzjC();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
    }

    public final /* bridge */ /* synthetic */ zze zzkq() {
        return super.zzkq();
    }

    public final /* bridge */ /* synthetic */ zzcfj zzwA() {
        return super.zzwA();
    }

    public final /* bridge */ /* synthetic */ zzcjl zzwB() {
        return super.zzwB();
    }

    public final /* bridge */ /* synthetic */ zzcgf zzwC() {
        return super.zzwC();
    }

    public final /* bridge */ /* synthetic */ zzcja zzwD() {
        return super.zzwD();
    }

    public final /* bridge */ /* synthetic */ zzcgg zzwE() {
        return super.zzwE();
    }

    public final /* bridge */ /* synthetic */ zzcfl zzwF() {
        return super.zzwF();
    }

    public final /* bridge */ /* synthetic */ zzcfw zzwG() {
        return super.zzwG();
    }

    public final /* bridge */ /* synthetic */ zzcem zzwH() {
        return super.zzwH();
    }

    public final /* bridge */ /* synthetic */ void zzwo() {
        super.zzwo();
    }

    public final /* bridge */ /* synthetic */ void zzwp() {
        super.zzwp();
    }

    public final /* bridge */ /* synthetic */ void zzwq() {
        super.zzwq();
    }

    public final /* bridge */ /* synthetic */ zzcec zzwr() {
        return super.zzwr();
    }

    public final /* bridge */ /* synthetic */ zzcej zzws() {
        return super.zzws();
    }

    public final /* bridge */ /* synthetic */ zzchl zzwt() {
        return super.zzwt();
    }

    public final /* bridge */ /* synthetic */ zzcfg zzwu() {
        return super.zzwu();
    }

    public final /* bridge */ /* synthetic */ zzcet zzwv() {
        return super.zzwv();
    }

    public final /* bridge */ /* synthetic */ zzcid zzww() {
        return super.zzww();
    }

    public final /* bridge */ /* synthetic */ zzchz zzwx() {
        return super.zzwx();
    }

    public final /* bridge */ /* synthetic */ zzcfh zzwy() {
        return super.zzwy();
    }

    public final /* bridge */ /* synthetic */ zzcen zzwz() {
        return super.zzwz();
    }

    @Nullable
    public final String zzyH() {
        super.zzwp();
        return (String) this.zzbts.get();
    }
}
