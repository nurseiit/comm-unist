package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings.System;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.measurement.AppMeasurement.Param;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzfi implements OnGlobalLayoutListener, OnScrollChangedListener {
    private final Context mApplicationContext;
    private Object mLock = new Object();
    private boolean zzuV = false;
    private final WeakReference<zzaff> zzwN;
    private WeakReference<ViewTreeObserver> zzwO;
    private final zzgs zzwP;
    protected final zzfg zzwQ;
    private final WindowManager zzwR;
    private final PowerManager zzwS;
    private final KeyguardManager zzwT;
    private final DisplayMetrics zzwU;
    @Nullable
    private zzfp zzwV;
    private boolean zzwW;
    private boolean zzwX = false;
    private boolean zzwY;
    private boolean zzwZ;
    private zzair zzwx;
    private boolean zzxa;
    @Nullable
    private BroadcastReceiver zzxb;
    private final HashSet<Object> zzxc = new HashSet();
    private final HashSet<zzgd> zzxd = new HashSet();
    private final Rect zzxe = new Rect();
    private final zzfl zzxf;
    private float zzxg;

    public zzfi(Context context, zziv zziv, zzaff zzaff, zzaje zzaje, zzgs zzgs) {
        this.zzwN = new WeakReference(zzaff);
        this.zzwP = zzgs;
        this.zzwO = new WeakReference(null);
        this.zzwY = true;
        this.zzxa = false;
        this.zzwx = new zzair(200);
        this.zzwQ = new zzfg(UUID.randomUUID().toString(), zzaje, zziv.zzAs, zzaff.zzXL, zzaff.zzcn(), zziv.zzAv);
        this.zzwR = (WindowManager) context.getSystemService("window");
        this.zzwS = (PowerManager) context.getApplicationContext().getSystemService("power");
        this.zzwT = (KeyguardManager) context.getSystemService("keyguard");
        this.mApplicationContext = context;
        this.zzxf = new zzfl(this, new Handler());
        this.mApplicationContext.getContentResolver().registerContentObserver(System.CONTENT_URI, true, this.zzxf);
        this.zzwU = context.getResources().getDisplayMetrics();
        Display defaultDisplay = this.zzwR.getDefaultDisplay();
        this.zzxe.right = defaultDisplay.getWidth();
        this.zzxe.bottom = defaultDisplay.getHeight();
        zzcp();
    }

    private final boolean isScreenOn() {
        return VERSION.SDK_INT >= 20 ? this.zzwS.isInteractive() : this.zzwS.isScreenOn();
    }

    private static int zza(int i, DisplayMetrics displayMetrics) {
        return (int) (((float) i) / displayMetrics.density);
    }

    private final JSONObject zza(@Nullable View view, @Nullable Boolean bool) throws JSONException {
        if (view == null) {
            return zzcu().put("isAttachedToWindow", false).put("isScreenOn", isScreenOn()).put("isVisible", false);
        }
        boolean isAttachedToWindow = zzbs.zzbB().isAttachedToWindow(view);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            view.getLocationInWindow(iArr2);
        } catch (Exception e) {
            zzajc.zzb("Failure getting view location.", e);
        }
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect2 = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect2, null);
        Rect rect3 = new Rect();
        boolean localVisibleRect = view.getLocalVisibleRect(rect3);
        Rect rect4 = new Rect();
        view.getHitRect(rect4);
        JSONObject zzcu = zzcu();
        zzcu.put("windowVisibility", view.getWindowVisibility()).put("isAttachedToWindow", isAttachedToWindow).put("viewBox", new JSONObject().put("top", zza(this.zzxe.top, this.zzwU)).put("bottom", zza(this.zzxe.bottom, this.zzwU)).put("left", zza(this.zzxe.left, this.zzwU)).put("right", zza(this.zzxe.right, this.zzwU))).put("adBox", new JSONObject().put("top", zza(rect.top, this.zzwU)).put("bottom", zza(rect.bottom, this.zzwU)).put("left", zza(rect.left, this.zzwU)).put("right", zza(rect.right, this.zzwU))).put("globalVisibleBox", new JSONObject().put("top", zza(rect2.top, this.zzwU)).put("bottom", zza(rect2.bottom, this.zzwU)).put("left", zza(rect2.left, this.zzwU)).put("right", zza(rect2.right, this.zzwU))).put("globalVisibleBoxVisible", globalVisibleRect).put("localVisibleBox", new JSONObject().put("top", zza(rect3.top, this.zzwU)).put("bottom", zza(rect3.bottom, this.zzwU)).put("left", zza(rect3.left, this.zzwU)).put("right", zza(rect3.right, this.zzwU))).put("localVisibleBoxVisible", localVisibleRect).put("hitBox", new JSONObject().put("top", zza(rect4.top, this.zzwU)).put("bottom", zza(rect4.bottom, this.zzwU)).put("left", zza(rect4.left, this.zzwU)).put("right", zza(rect4.right, this.zzwU))).put("screenDensity", (double) this.zzwU.density);
        if (bool == null) {
            bool = Boolean.valueOf(zzbs.zzbz().zza(view, this.zzwS, this.zzwT));
        }
        zzcu.put("isVisible", bool.booleanValue());
        return zzcu;
    }

    private static JSONObject zza(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }

    private final void zza(JSONObject jSONObject, boolean z) {
        try {
            jSONObject = zza(jSONObject);
            ArrayList arrayList = new ArrayList(this.zzxd);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((zzgd) obj).zzb(jSONObject, z);
            }
        } catch (Throwable th) {
            zzajc.zzb("Skipping active view message.", th);
        }
    }

    private final void zzcr() {
        if (this.zzwV != null) {
            this.zzwV.zza(this);
        }
    }

    private final void zzct() {
        ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.zzwO.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this);
            viewTreeObserver.removeGlobalOnLayoutListener(this);
        }
    }

    private final JSONObject zzcu() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        zzbs.zzbz();
        zzbs.zzbz();
        jSONObject.put("afmaVersion", this.zzwQ.zzck()).put("activeViewJSON", this.zzwQ.zzcl()).put(Param.TIMESTAMP, zzbs.zzbF().elapsedRealtime()).put("adFormat", this.zzwQ.zzcj()).put("hashCode", this.zzwQ.zzcm()).put("isMraid", this.zzwQ.zzcn()).put("isStopped", this.zzwX).put("isPaused", this.zzuV).put("isNative", this.zzwQ.zzco()).put("isScreenOn", isScreenOn()).put("appMuted", zzagz.zzbh()).put("appVolume", (double) zzagz.zzbf()).put("deviceVolume", (double) this.zzxg);
        return jSONObject;
    }

    public final void onGlobalLayout() {
        zzg(2);
    }

    public final void onScrollChanged() {
        zzg(1);
    }

    public final void pause() {
        synchronized (this.mLock) {
            this.zzuV = true;
            zzg(3);
        }
    }

    public final void resume() {
        synchronized (this.mLock) {
            this.zzuV = false;
            zzg(3);
        }
    }

    public final void stop() {
        synchronized (this.mLock) {
            this.zzwX = true;
            zzg(3);
        }
    }

    public final void zza(zzfp zzfp) {
        synchronized (this.mLock) {
            this.zzwV = zzfp;
        }
    }

    public final void zza(zzgd zzgd) {
        if (this.zzxd.isEmpty()) {
            synchronized (this.mLock) {
                if (this.zzxb == null) {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.intent.action.SCREEN_ON");
                    intentFilter.addAction("android.intent.action.SCREEN_OFF");
                    this.zzxb = new zzfj(this);
                    this.mApplicationContext.registerReceiver(this.zzxb, intentFilter);
                }
            }
            zzg(3);
        }
        this.zzxd.add(zzgd);
        try {
            zzgd.zzb(zza(zza(this.zzwP.zzcv(), null)), false);
        } catch (JSONException e) {
            zzajc.zzb("Skipping measurement update for new client.", e);
        }
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzgd zzgd, Map<String, String> map) {
        String str = "Received request to untrack: ";
        String valueOf = String.valueOf(this.zzwQ.zzcm());
        zzajc.zzaC(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        zzb(zzgd);
    }

    /* Access modifiers changed, original: final */
    public final void zzb(zzaka zzaka, Map<String, String> map) {
        zzg(3);
    }

    public final void zzb(zzgd zzgd) {
        this.zzxd.remove(zzgd);
        zzgd.zzcz();
        if (this.zzxd.isEmpty()) {
            synchronized (this.mLock) {
                zzct();
                synchronized (this.mLock) {
                    if (this.zzxb != null) {
                        try {
                            this.mApplicationContext.unregisterReceiver(this.zzxb);
                        } catch (IllegalStateException e) {
                            zzajc.zzb("Failed trying to unregister the receiver", e);
                        } catch (Exception e2) {
                            zzbs.zzbD().zza(e2, "ActiveViewUnit.stopScreenStatusMonitoring");
                        }
                        this.zzxb = null;
                    }
                }
                this.mApplicationContext.getContentResolver().unregisterContentObserver(this.zzxf);
                int i = 0;
                this.zzwY = false;
                zzcr();
                ArrayList arrayList = new ArrayList(this.zzxd);
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    zzb((zzgd) obj);
                }
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final boolean zzb(@Nullable Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.zzwQ.zzcm());
    }

    /* Access modifiers changed, original: final */
    public final void zzc(Map<String, String> map) {
        if (map.containsKey("isVisible")) {
            if (!"1".equals(map.get("isVisible"))) {
                "true".equals(map.get("isVisible"));
            }
            Iterator it = this.zzxc.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    public final void zzcp() {
        zzbs.zzbz();
        this.zzxg = zzagz.zzM(this.mApplicationContext);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003b A:{Catch:{ JSONException -> 0x0020, RuntimeException -> 0x0019 }} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0036 A:{Catch:{ JSONException -> 0x0020, RuntimeException -> 0x0019 }} */
    public final void zzcq() {
        /*
        r5 = this;
        r0 = r5.mLock;
        monitor-enter(r0);
        r1 = r5.zzwY;	 Catch:{ all -> 0x0046 }
        if (r1 == 0) goto L_0x0044;
    L_0x0007:
        r1 = 1;
        r5.zzwZ = r1;	 Catch:{ all -> 0x0046 }
        r2 = r5.zzcu();	 Catch:{ JSONException -> 0x0020, RuntimeException -> 0x0019 }
        r3 = "doneReasonCode";
        r4 = "u";
        r2.put(r3, r4);	 Catch:{ JSONException -> 0x0020, RuntimeException -> 0x0019 }
        r5.zza(r2, r1);	 Catch:{ JSONException -> 0x0020, RuntimeException -> 0x0019 }
        goto L_0x0024;
    L_0x0019:
        r1 = move-exception;
        r2 = "Failure while processing active view data.";
    L_0x001c:
        com.google.android.gms.internal.zzajc.zzb(r2, r1);	 Catch:{ all -> 0x0046 }
        goto L_0x0024;
    L_0x0020:
        r1 = move-exception;
        r2 = "JSON failure while processing active view data.";
        goto L_0x001c;
    L_0x0024:
        r1 = "Untracking ad unit: ";
        r2 = r5.zzwQ;	 Catch:{ all -> 0x0046 }
        r2 = r2.zzcm();	 Catch:{ all -> 0x0046 }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0046 }
        r3 = r2.length();	 Catch:{ all -> 0x0046 }
        if (r3 == 0) goto L_0x003b;
    L_0x0036:
        r1 = r1.concat(r2);	 Catch:{ all -> 0x0046 }
        goto L_0x0041;
    L_0x003b:
        r2 = new java.lang.String;	 Catch:{ all -> 0x0046 }
        r2.<init>(r1);	 Catch:{ all -> 0x0046 }
        r1 = r2;
    L_0x0041:
        com.google.android.gms.internal.zzajc.zzaC(r1);	 Catch:{ all -> 0x0046 }
    L_0x0044:
        monitor-exit(r0);	 Catch:{ all -> 0x0046 }
        return;
    L_0x0046:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0046 }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzfi.zzcq():void");
    }

    public final boolean zzcs() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzwY;
        }
        return z;
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing block: B:64:0x00cd, code skipped:
            return;
     */
    public final void zzg(int r8) {
        /*
        r7 = this;
        r0 = r7.mLock;
        monitor-enter(r0);
        r1 = r7.zzxd;	 Catch:{ all -> 0x00ce }
        r1 = r1.iterator();	 Catch:{ all -> 0x00ce }
    L_0x0009:
        r2 = r1.hasNext();	 Catch:{ all -> 0x00ce }
        r3 = 0;
        r4 = 1;
        if (r2 == 0) goto L_0x001f;
    L_0x0011:
        r2 = r1.next();	 Catch:{ all -> 0x00ce }
        r2 = (com.google.android.gms.internal.zzgd) r2;	 Catch:{ all -> 0x00ce }
        r2 = r2.zzcy();	 Catch:{ all -> 0x00ce }
        if (r2 == 0) goto L_0x0009;
    L_0x001d:
        r1 = 1;
        goto L_0x0020;
    L_0x001f:
        r1 = 0;
    L_0x0020:
        if (r1 == 0) goto L_0x00cc;
    L_0x0022:
        r1 = r7.zzwY;	 Catch:{ all -> 0x00ce }
        if (r1 != 0) goto L_0x0028;
    L_0x0026:
        goto L_0x00cc;
    L_0x0028:
        r1 = r7.zzwP;	 Catch:{ all -> 0x00ce }
        r1 = r1.zzcv();	 Catch:{ all -> 0x00ce }
        if (r1 == 0) goto L_0x0040;
    L_0x0030:
        r2 = com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ all -> 0x00ce }
        r5 = r7.zzwS;	 Catch:{ all -> 0x00ce }
        r6 = r7.zzwT;	 Catch:{ all -> 0x00ce }
        r2 = r2.zza(r1, r5, r6);	 Catch:{ all -> 0x00ce }
        if (r2 == 0) goto L_0x0040;
    L_0x003e:
        r2 = 1;
        goto L_0x0041;
    L_0x0040:
        r2 = 0;
    L_0x0041:
        if (r1 == 0) goto L_0x0053;
    L_0x0043:
        if (r2 == 0) goto L_0x0053;
    L_0x0045:
        r5 = new android.graphics.Rect;	 Catch:{ all -> 0x00ce }
        r5.<init>();	 Catch:{ all -> 0x00ce }
        r6 = 0;
        r5 = r1.getGlobalVisibleRect(r5, r6);	 Catch:{ all -> 0x00ce }
        if (r5 == 0) goto L_0x0053;
    L_0x0051:
        r5 = 1;
        goto L_0x0054;
    L_0x0053:
        r5 = 0;
    L_0x0054:
        r6 = r7.zzwP;	 Catch:{ all -> 0x00ce }
        r6 = r6.zzcw();	 Catch:{ all -> 0x00ce }
        if (r6 == 0) goto L_0x0061;
    L_0x005c:
        r7.zzcq();	 Catch:{ all -> 0x00ce }
        monitor-exit(r0);	 Catch:{ all -> 0x00ce }
        return;
    L_0x0061:
        if (r8 != r4) goto L_0x0071;
    L_0x0063:
        r6 = r7.zzwx;	 Catch:{ all -> 0x00ce }
        r6 = r6.tryAcquire();	 Catch:{ all -> 0x00ce }
        if (r6 != 0) goto L_0x0071;
    L_0x006b:
        r6 = r7.zzxa;	 Catch:{ all -> 0x00ce }
        if (r5 != r6) goto L_0x0071;
    L_0x006f:
        monitor-exit(r0);	 Catch:{ all -> 0x00ce }
        return;
    L_0x0071:
        if (r5 != 0) goto L_0x007b;
    L_0x0073:
        r6 = r7.zzxa;	 Catch:{ all -> 0x00ce }
        if (r6 != 0) goto L_0x007b;
    L_0x0077:
        if (r8 != r4) goto L_0x007b;
    L_0x0079:
        monitor-exit(r0);	 Catch:{ all -> 0x00ce }
        return;
    L_0x007b:
        r8 = java.lang.Boolean.valueOf(r2);	 Catch:{ RuntimeException | JSONException -> 0x0089, RuntimeException | JSONException -> 0x0089 }
        r8 = r7.zza(r1, r8);	 Catch:{ RuntimeException | JSONException -> 0x0089, RuntimeException | JSONException -> 0x0089 }
        r7.zza(r8, r3);	 Catch:{ RuntimeException | JSONException -> 0x0089, RuntimeException | JSONException -> 0x0089 }
        r7.zzxa = r5;	 Catch:{ RuntimeException | JSONException -> 0x0089, RuntimeException | JSONException -> 0x0089 }
        goto L_0x008f;
    L_0x0089:
        r8 = move-exception;
        r1 = "Active view update failed.";
        com.google.android.gms.internal.zzajc.zza(r1, r8);	 Catch:{ all -> 0x00ce }
    L_0x008f:
        r8 = r7.zzwP;	 Catch:{ all -> 0x00ce }
        r8 = r8.zzcx();	 Catch:{ all -> 0x00ce }
        r8 = r8.zzcv();	 Catch:{ all -> 0x00ce }
        if (r8 == 0) goto L_0x00c7;
    L_0x009b:
        r1 = r7.zzwO;	 Catch:{ all -> 0x00ce }
        r1 = r1.get();	 Catch:{ all -> 0x00ce }
        r1 = (android.view.ViewTreeObserver) r1;	 Catch:{ all -> 0x00ce }
        r8 = r8.getViewTreeObserver();	 Catch:{ all -> 0x00ce }
        if (r8 == r1) goto L_0x00c7;
    L_0x00a9:
        r7.zzct();	 Catch:{ all -> 0x00ce }
        r2 = r7.zzwW;	 Catch:{ all -> 0x00ce }
        if (r2 == 0) goto L_0x00b8;
    L_0x00b0:
        if (r1 == 0) goto L_0x00c0;
    L_0x00b2:
        r1 = r1.isAlive();	 Catch:{ all -> 0x00ce }
        if (r1 == 0) goto L_0x00c0;
    L_0x00b8:
        r7.zzwW = r4;	 Catch:{ all -> 0x00ce }
        r8.addOnScrollChangedListener(r7);	 Catch:{ all -> 0x00ce }
        r8.addOnGlobalLayoutListener(r7);	 Catch:{ all -> 0x00ce }
    L_0x00c0:
        r1 = new java.lang.ref.WeakReference;	 Catch:{ all -> 0x00ce }
        r1.<init>(r8);	 Catch:{ all -> 0x00ce }
        r7.zzwO = r1;	 Catch:{ all -> 0x00ce }
    L_0x00c7:
        r7.zzcr();	 Catch:{ all -> 0x00ce }
        monitor-exit(r0);	 Catch:{ all -> 0x00ce }
        return;
    L_0x00cc:
        monitor-exit(r0);	 Catch:{ all -> 0x00ce }
        return;
    L_0x00ce:
        r8 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x00ce }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzfi.zzg(int):void");
    }
}
