package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.util.zzq;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
@TargetApi(14)
public final class zzgz extends Thread {
    private final Object mLock;
    private boolean mStarted = false;
    private boolean zzak = false;
    private final int zzxW;
    private final int zzxY;
    private final int zzyA;
    private final int zzyB;
    private final int zzyC;
    private final int zzyD;
    private final int zzyE;
    private final int zzyF;
    private final String zzyG;
    private final boolean zzyH;
    private boolean zzyx = false;
    private final zzgu zzyy;
    private final zzzl zzyz;

    public zzgz(zzgu zzgu, zzzl zzzl) {
        this.zzyy = zzgu;
        this.zzyz = zzzl;
        this.mLock = new Object();
        this.zzxW = ((Integer) zzbs.zzbL().zzd(zzmo.zzCU)).intValue();
        this.zzyB = ((Integer) zzbs.zzbL().zzd(zzmo.zzCV)).intValue();
        this.zzxY = ((Integer) zzbs.zzbL().zzd(zzmo.zzCW)).intValue();
        this.zzyC = ((Integer) zzbs.zzbL().zzd(zzmo.zzCX)).intValue();
        this.zzyD = ((Integer) zzbs.zzbL().zzd(zzmo.zzDa)).intValue();
        this.zzyE = ((Integer) zzbs.zzbL().zzd(zzmo.zzDc)).intValue();
        this.zzyF = ((Integer) zzbs.zzbL().zzd(zzmo.zzDd)).intValue();
        this.zzyA = ((Integer) zzbs.zzbL().zzd(zzmo.zzCY)).intValue();
        this.zzyG = (String) zzbs.zzbL().zzd(zzmo.zzDf);
        this.zzyH = ((Boolean) zzbs.zzbL().zzd(zzmo.zzDh)).booleanValue();
        setName("ContentFetchTask");
    }

    private final zzhd zza(@Nullable View view, zzgt zzgt) {
        int i = 0;
        if (view == null) {
            return new zzhd(this, 0, 0);
        }
        Context context = zzbs.zzbC().getContext();
        if (context != null) {
            String str = (String) view.getTag(context.getResources().getIdentifier((String) zzbs.zzbL().zzd(zzmo.zzDe), "id", context.getPackageName()));
            if (!(TextUtils.isEmpty(this.zzyG) || str == null || !str.equals(this.zzyG))) {
                return new zzhd(this, 0, 0);
            }
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zzhd(this, 0, 0);
            }
            zzgt.zzb(text.toString(), globalVisibleRect, view.getX(), view.getY(), (float) view.getWidth(), (float) view.getHeight());
            return new zzhd(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof zzaka)) {
            Object obj;
            zzgt.zzcI();
            WebView webView = (WebView) view;
            if (zzq.zzsc()) {
                zzgt.zzcI();
                webView.post(new zzhb(this, zzgt, webView, globalVisibleRect));
                obj = 1;
            } else {
                obj = null;
            }
            return obj != null ? new zzhd(this, 0, 1) : new zzhd(this, 0, 0);
        } else if (!(view instanceof ViewGroup)) {
            return new zzhd(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i2 = 0;
            int i3 = 0;
            while (i < viewGroup.getChildCount()) {
                zzhd zza = zza(viewGroup.getChildAt(i), zzgt);
                i2 += zza.zzyP;
                i3 += zza.zzyQ;
                i++;
            }
            return new zzhd(this, i2, i3);
        }
    }

    private static boolean zzcN() {
        boolean z = false;
        try {
            Context context = zzbs.zzbC().getContext();
            if (context == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager != null) {
                if (keyguardManager == null) {
                    return false;
                }
                List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses == null) {
                    return false;
                }
                for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (Process.myPid() == runningAppProcessInfo.pid) {
                        if (runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode()) {
                            PowerManager powerManager = (PowerManager) context.getSystemService("power");
                            if (powerManager == null ? false : powerManager.isScreenOn()) {
                                z = true;
                            }
                        }
                    }
                }
            }
            return z;
        } catch (Throwable th) {
            zzbs.zzbD().zza(th, "ContentFetchTask.isInForeground");
            return false;
        }
    }

    private final void zzcP() {
        synchronized (this.mLock) {
            this.zzyx = true;
            boolean z = this.zzyx;
            StringBuilder stringBuilder = new StringBuilder(42);
            stringBuilder.append("ContentFetchThread: paused, mPause = ");
            stringBuilder.append(z);
            zzajc.zzaC(stringBuilder.toString());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x007f A:{LOOP_START, SYNTHETIC, LOOP:1: B:30:0x007f->B:42:0x007f} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0076 A:{ExcHandler: InterruptedException (r0_15 'e' java.lang.InterruptedException), Splitter:B:0:0x0000} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x007f A:{LOOP_START, SYNTHETIC, LOOP:1: B:30:0x007f->B:42:0x007f} */
    /* JADX WARNING: Missing exception handler attribute for start block: B:30:0x007f */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing block: B:24:0x0068, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:25:0x0069, code skipped:
            com.google.android.gms.internal.zzajc.zzb("Error in ContentFetchTask", r0);
            r4.zzyz.zza(r0, "ContentFetchTask.run");
     */
    /* JADX WARNING: Missing block: B:26:0x0076, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:27:0x0077, code skipped:
            com.google.android.gms.internal.zzajc.zzb("Error in ContentFetchTask", r0);
     */
    public final void run() {
        /*
        r4 = this;
    L_0x0000:
        r0 = zzcN();	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        if (r0 == 0) goto L_0x0059;
    L_0x0006:
        r0 = com.google.android.gms.ads.internal.zzbs.zzbC();	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        r0 = r0.getActivity();	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        if (r0 != 0) goto L_0x0019;
    L_0x0010:
        r0 = "ContentFetchThread: no activity. Sleeping.";
        com.google.android.gms.internal.zzajc.zzaC(r0);	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
    L_0x0015:
        r4.zzcP();	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        goto L_0x005f;
    L_0x0019:
        if (r0 == 0) goto L_0x005f;
    L_0x001b:
        r1 = 0;
        r2 = r0.getWindow();	 Catch:{ Throwable -> 0x003d, InterruptedException -> 0x0076 }
        if (r2 == 0) goto L_0x004c;
    L_0x0022:
        r2 = r0.getWindow();	 Catch:{ Throwable -> 0x003d, InterruptedException -> 0x0076 }
        r2 = r2.getDecorView();	 Catch:{ Throwable -> 0x003d, InterruptedException -> 0x0076 }
        if (r2 == 0) goto L_0x004c;
    L_0x002c:
        r0 = r0.getWindow();	 Catch:{ Throwable -> 0x003d, InterruptedException -> 0x0076 }
        r0 = r0.getDecorView();	 Catch:{ Throwable -> 0x003d, InterruptedException -> 0x0076 }
        r2 = 16908290; // 0x1020002 float:2.3877235E-38 double:8.353805E-317;
        r0 = r0.findViewById(r2);	 Catch:{ Throwable -> 0x003d, InterruptedException -> 0x0076 }
        r1 = r0;
        goto L_0x004c;
    L_0x003d:
        r0 = move-exception;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbD();	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        r3 = "ContentFetchTask.extractContent";
        r2.zza(r0, r3);	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        r0 = "Failed getting root view of activity. Content not extracted.";
        com.google.android.gms.internal.zzajc.zzaC(r0);	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
    L_0x004c:
        if (r1 == 0) goto L_0x005f;
    L_0x004e:
        if (r1 == 0) goto L_0x005f;
    L_0x0050:
        r0 = new com.google.android.gms.internal.zzha;	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        r0.<init>(r4, r1);	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        r1.post(r0);	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        goto L_0x005f;
    L_0x0059:
        r0 = "ContentFetchTask: sleeping";
        com.google.android.gms.internal.zzajc.zzaC(r0);	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        goto L_0x0015;
    L_0x005f:
        r0 = r4.zzyA;	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        r0 = r0 * 1000;
        r0 = (long) r0;	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        java.lang.Thread.sleep(r0);	 Catch:{ InterruptedException -> 0x0076, Throwable -> 0x0068 }
        goto L_0x007c;
    L_0x0068:
        r0 = move-exception;
        r1 = "Error in ContentFetchTask";
        com.google.android.gms.internal.zzajc.zzb(r1, r0);
        r1 = r4.zzyz;
        r2 = "ContentFetchTask.run";
        r1.zza(r0, r2);
        goto L_0x007c;
    L_0x0076:
        r0 = move-exception;
        r1 = "Error in ContentFetchTask";
        com.google.android.gms.internal.zzajc.zzb(r1, r0);
    L_0x007c:
        r0 = r4.mLock;
        monitor-enter(r0);
    L_0x007f:
        r1 = r4.zzyx;	 Catch:{ all -> 0x0091 }
        if (r1 == 0) goto L_0x008e;
    L_0x0083:
        r1 = "ContentFetchTask: waiting";
        com.google.android.gms.internal.zzajc.zzaC(r1);	 Catch:{ InterruptedException -> 0x007f }
        r1 = r4.mLock;	 Catch:{ InterruptedException -> 0x007f }
        r1.wait();	 Catch:{ InterruptedException -> 0x007f }
        goto L_0x007f;
    L_0x008e:
        monitor-exit(r0);	 Catch:{ all -> 0x0091 }
        goto L_0x0000;
    L_0x0091:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0091 }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzgz.run():void");
    }

    public final void wakeup() {
        synchronized (this.mLock) {
            this.zzyx = false;
            this.mLock.notifyAll();
            zzajc.zzaC("ContentFetchThread: wakeup");
        }
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzgt zzgt, WebView webView, String str, boolean z) {
        zzgt.zzcH();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.zzyH || TextUtils.isEmpty(webView.getTitle())) {
                    zzgt.zza(optString, z, webView.getX(), webView.getY(), (float) webView.getWidth(), (float) webView.getHeight());
                } else {
                    str = String.valueOf(webView.getTitle());
                    StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(optString).length());
                    stringBuilder.append(str);
                    stringBuilder.append("\n");
                    stringBuilder.append(optString);
                    zzgt.zza(stringBuilder.toString(), z, webView.getX(), webView.getY(), (float) webView.getWidth(), (float) webView.getHeight());
                }
            }
            if (zzgt.zzcC()) {
                this.zzyy.zzb(zzgt);
            }
        } catch (JSONException unused) {
            zzajc.zzaC("Json string may be malformed.");
        } catch (Throwable th) {
            zzajc.zza("Failed to get webview content.", th);
            this.zzyz.zza(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void zzcM() {
        synchronized (this.mLock) {
            if (this.mStarted) {
                zzajc.zzaC("Content hash thread already started, quiting...");
                return;
            }
            this.mStarted = true;
            start();
        }
    }

    public final zzgt zzcO() {
        return this.zzyy.zzcL();
    }

    public final boolean zzcQ() {
        return this.zzyx;
    }

    /* Access modifiers changed, original: final */
    public final void zzf(View view) {
        try {
            zzgt zzgt = new zzgt(this.zzxW, this.zzyB, this.zzxY, this.zzyC, this.zzyD, this.zzyE, this.zzyF);
            zzhd zza = zza(view, zzgt);
            zzgt.zzcJ();
            if (zza.zzyP != 0 || zza.zzyQ != 0) {
                if (zza.zzyQ != 0 || zzgt.zzcK() != 0) {
                    if (zza.zzyQ != 0 || !this.zzyy.zza(zzgt)) {
                        this.zzyy.zzc(zzgt);
                    }
                }
            }
        } catch (Exception e) {
            zzajc.zzb("Exception in fetchContentOnUIThread", e);
            this.zzyz.zza(e, "ContentFetchTask.fetchContent");
        }
    }
}
