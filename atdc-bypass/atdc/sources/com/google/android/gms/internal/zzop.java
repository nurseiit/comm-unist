package com.google.android.gms.internal;

import android.graphics.Point;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@zzzn
public final class zzop extends zzox implements OnClickListener, OnTouchListener, OnGlobalLayoutListener, OnScrollChangedListener {
    private static String[] zzIs = new String[]{"2011", "1009"};
    private final Object mLock = new Object();
    @Nullable
    private zzny zzHM;
    private final FrameLayout zzIt;
    private Map<String, WeakReference<View>> zzIu = new HashMap();
    @Nullable
    private View zzIv;
    private boolean zzIw = false;
    private Point zzIx = new Point();
    private Point zzIy = new Point();
    private WeakReference<zzge> zzIz = new WeakReference(null);
    @Nullable
    FrameLayout zzss;

    public zzop(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.zzIt = frameLayout;
        this.zzss = frameLayout2;
        zzbs.zzbX();
        zzajv.zza(this.zzIt, (OnGlobalLayoutListener) this);
        zzbs.zzbX();
        zzajv.zza(this.zzIt, (OnScrollChangedListener) this);
        this.zzIt.setOnTouchListener(this);
        this.zzIt.setOnClickListener(this);
        zzmo.initialize(this.zzIt.getContext());
    }

    private final void zza(zzoc zzoc) {
        synchronized (this.mLock) {
            View view;
            zzoc.zzd(this.zzIu);
            if (this.zzIu != null) {
                for (Object obj : zzIs) {
                    WeakReference weakReference = (WeakReference) this.zzIu.get(obj);
                    if (weakReference != null) {
                        view = (View) weakReference.get();
                        break;
                    }
                }
            }
            view = null;
            if (view instanceof FrameLayout) {
                zzoc.zza(view, new zzor(this, view));
                return;
            }
            zzoc.zzev();
        }
    }

    private final void zzg(@Nullable View view) {
        if (this.zzHM != null) {
            zzny zzer = this.zzHM instanceof zznx ? ((zznx) this.zzHM).zzer() : this.zzHM;
            if (zzer != null) {
                zzer.zzg(view);
            }
        }
    }

    private final int zzm(int i) {
        zzji.zzds();
        return zzaiy.zzd(this.zzHM.getContext(), i);
    }

    public final void destroy() {
        synchronized (this.mLock) {
            if (this.zzss != null) {
                this.zzss.removeAllViews();
            }
            this.zzss = null;
            this.zzIu = null;
            this.zzIv = null;
            this.zzHM = null;
            this.zzIx = null;
            this.zzIy = null;
            this.zzIz = null;
        }
    }

    /* JADX WARNING: Missing block: B:20:0x0088, code skipped:
            return;
     */
    public final void onClick(android.view.View r8) {
        /*
        r7 = this;
        r0 = r7.mLock;
        monitor-enter(r0);
        r1 = r7.zzHM;	 Catch:{ all -> 0x0089 }
        if (r1 != 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r0);	 Catch:{ all -> 0x0089 }
        return;
    L_0x0009:
        r4 = new android.os.Bundle;	 Catch:{ all -> 0x0089 }
        r4.<init>();	 Catch:{ all -> 0x0089 }
        r1 = "x";
        r2 = r7.zzIx;	 Catch:{ all -> 0x0089 }
        r2 = r2.x;	 Catch:{ all -> 0x0089 }
        r2 = r7.zzm(r2);	 Catch:{ all -> 0x0089 }
        r2 = (float) r2;	 Catch:{ all -> 0x0089 }
        r4.putFloat(r1, r2);	 Catch:{ all -> 0x0089 }
        r1 = "y";
        r2 = r7.zzIx;	 Catch:{ all -> 0x0089 }
        r2 = r2.y;	 Catch:{ all -> 0x0089 }
        r2 = r7.zzm(r2);	 Catch:{ all -> 0x0089 }
        r2 = (float) r2;	 Catch:{ all -> 0x0089 }
        r4.putFloat(r1, r2);	 Catch:{ all -> 0x0089 }
        r1 = "start_x";
        r2 = r7.zzIy;	 Catch:{ all -> 0x0089 }
        r2 = r2.x;	 Catch:{ all -> 0x0089 }
        r2 = r7.zzm(r2);	 Catch:{ all -> 0x0089 }
        r2 = (float) r2;	 Catch:{ all -> 0x0089 }
        r4.putFloat(r1, r2);	 Catch:{ all -> 0x0089 }
        r1 = "start_y";
        r2 = r7.zzIy;	 Catch:{ all -> 0x0089 }
        r2 = r2.y;	 Catch:{ all -> 0x0089 }
        r2 = r7.zzm(r2);	 Catch:{ all -> 0x0089 }
        r2 = (float) r2;	 Catch:{ all -> 0x0089 }
        r4.putFloat(r1, r2);	 Catch:{ all -> 0x0089 }
        r1 = r7.zzIv;	 Catch:{ all -> 0x0089 }
        if (r1 == 0) goto L_0x007e;
    L_0x004a:
        r1 = r7.zzIv;	 Catch:{ all -> 0x0089 }
        r1 = r1.equals(r8);	 Catch:{ all -> 0x0089 }
        if (r1 == 0) goto L_0x007e;
    L_0x0052:
        r1 = r7.zzHM;	 Catch:{ all -> 0x0089 }
        r1 = r1 instanceof com.google.android.gms.internal.zznx;	 Catch:{ all -> 0x0089 }
        if (r1 == 0) goto L_0x0075;
    L_0x0058:
        r1 = r7.zzHM;	 Catch:{ all -> 0x0089 }
        r1 = (com.google.android.gms.internal.zznx) r1;	 Catch:{ all -> 0x0089 }
        r1 = r1.zzer();	 Catch:{ all -> 0x0089 }
        if (r1 == 0) goto L_0x0087;
    L_0x0062:
        r1 = r7.zzHM;	 Catch:{ all -> 0x0089 }
        r1 = (com.google.android.gms.internal.zznx) r1;	 Catch:{ all -> 0x0089 }
        r1 = r1.zzer();	 Catch:{ all -> 0x0089 }
        r3 = "1007";
        r5 = r7.zzIu;	 Catch:{ all -> 0x0089 }
        r6 = r7.zzIt;	 Catch:{ all -> 0x0089 }
    L_0x0070:
        r2 = r8;
        r1.zza(r2, r3, r4, r5, r6);	 Catch:{ all -> 0x0089 }
        goto L_0x0087;
    L_0x0075:
        r1 = r7.zzHM;	 Catch:{ all -> 0x0089 }
        r3 = "1007";
        r5 = r7.zzIu;	 Catch:{ all -> 0x0089 }
        r6 = r7.zzIt;	 Catch:{ all -> 0x0089 }
        goto L_0x0070;
    L_0x007e:
        r1 = r7.zzHM;	 Catch:{ all -> 0x0089 }
        r2 = r7.zzIu;	 Catch:{ all -> 0x0089 }
        r3 = r7.zzIt;	 Catch:{ all -> 0x0089 }
        r1.zza(r8, r2, r4, r3);	 Catch:{ all -> 0x0089 }
    L_0x0087:
        monitor-exit(r0);	 Catch:{ all -> 0x0089 }
        return;
    L_0x0089:
        r8 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0089 }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzop.onClick(android.view.View):void");
    }

    public final void onGlobalLayout() {
        synchronized (this.mLock) {
            if (this.zzIw) {
                int measuredWidth = this.zzIt.getMeasuredWidth();
                int measuredHeight = this.zzIt.getMeasuredHeight();
                if (!(measuredWidth == 0 || measuredHeight == 0 || this.zzss == null)) {
                    this.zzss.setLayoutParams(new LayoutParams(measuredWidth, measuredHeight));
                    this.zzIw = false;
                }
            }
            if (this.zzHM != null) {
                this.zzHM.zzc(this.zzIt, this.zzIu);
            }
        }
    }

    public final void onScrollChanged() {
        synchronized (this.mLock) {
            if (this.zzHM != null) {
                this.zzHM.zzc(this.zzIt, this.zzIu);
            }
        }
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this.mLock) {
            if (this.zzHM == null) {
                return false;
            }
            int[] iArr = new int[2];
            this.zzIt.getLocationOnScreen(iArr);
            Point point = new Point((int) (motionEvent.getRawX() - ((float) iArr[0])), (int) (motionEvent.getRawY() - ((float) iArr[1])));
            this.zzIx = point;
            if (motionEvent.getAction() == 0) {
                this.zzIy = point;
            }
            motionEvent = MotionEvent.obtain(motionEvent);
            motionEvent.setLocation((float) point.x, (float) point.y);
            this.zzHM.zzd(motionEvent);
            motionEvent.recycle();
            return false;
        }
    }

    public final IObjectWrapper zzL(String str) {
        synchronized (this.mLock) {
            Object obj = null;
            if (this.zzIu == null) {
                return null;
            }
            WeakReference weakReference = (WeakReference) this.zzIu.get(str);
            if (weakReference != null) {
                obj = (View) weakReference.get();
            }
            IObjectWrapper zzw = zzn.zzw(obj);
            return zzw;
        }
    }

    public final void zzb(IObjectWrapper iObjectWrapper, int i) {
        if (zzbs.zzbY().zzr(this.zzIt.getContext()) && this.zzIz != null) {
            zzge zzge = (zzge) this.zzIz.get();
            if (zzge != null) {
                zzge.zzcB();
            }
        }
    }

    /* JADX WARNING: Missing block: B:15:0x0036, code skipped:
            return;
     */
    public final void zzd(java.lang.String r4, com.google.android.gms.dynamic.IObjectWrapper r5) {
        /*
        r3 = this;
        r5 = com.google.android.gms.dynamic.zzn.zzE(r5);
        r5 = (android.view.View) r5;
        r0 = r3.mLock;
        monitor-enter(r0);
        r1 = r3.zzIu;	 Catch:{ all -> 0x0037 }
        if (r1 != 0) goto L_0x000f;
    L_0x000d:
        monitor-exit(r0);	 Catch:{ all -> 0x0037 }
        return;
    L_0x000f:
        if (r5 != 0) goto L_0x0017;
    L_0x0011:
        r5 = r3.zzIu;	 Catch:{ all -> 0x0037 }
        r5.remove(r4);	 Catch:{ all -> 0x0037 }
        goto L_0x0035;
    L_0x0017:
        r1 = r3.zzIu;	 Catch:{ all -> 0x0037 }
        r2 = new java.lang.ref.WeakReference;	 Catch:{ all -> 0x0037 }
        r2.<init>(r5);	 Catch:{ all -> 0x0037 }
        r1.put(r4, r2);	 Catch:{ all -> 0x0037 }
        r1 = "1098";
        r4 = r1.equals(r4);	 Catch:{ all -> 0x0037 }
        if (r4 == 0) goto L_0x002b;
    L_0x0029:
        monitor-exit(r0);	 Catch:{ all -> 0x0037 }
        return;
    L_0x002b:
        r5.setOnTouchListener(r3);	 Catch:{ all -> 0x0037 }
        r4 = 1;
        r5.setClickable(r4);	 Catch:{ all -> 0x0037 }
        r5.setOnClickListener(r3);	 Catch:{ all -> 0x0037 }
    L_0x0035:
        monitor-exit(r0);	 Catch:{ all -> 0x0037 }
        return;
    L_0x0037:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0037 }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzop.zzd(java.lang.String, com.google.android.gms.dynamic.IObjectWrapper):void");
    }

    /* JADX WARNING: Missing block: B:81:0x0198, code skipped:
            return;
     */
    public final void zze(com.google.android.gms.dynamic.IObjectWrapper r8) {
        /*
        r7 = this;
        r0 = r7.mLock;
        monitor-enter(r0);
        r1 = 0;
        r7.zzg(r1);	 Catch:{ all -> 0x0199 }
        r8 = com.google.android.gms.dynamic.zzn.zzE(r8);	 Catch:{ all -> 0x0199 }
        r2 = r8 instanceof com.google.android.gms.internal.zzoc;	 Catch:{ all -> 0x0199 }
        if (r2 != 0) goto L_0x0016;
    L_0x000f:
        r8 = "Not an instance of native engine. This is most likely a transient error";
        com.google.android.gms.internal.zzajc.zzaT(r8);	 Catch:{ all -> 0x0199 }
        monitor-exit(r0);	 Catch:{ all -> 0x0199 }
        return;
    L_0x0016:
        r2 = r7.zzss;	 Catch:{ all -> 0x0199 }
        r3 = 0;
        if (r2 == 0) goto L_0x002a;
    L_0x001b:
        r2 = r7.zzss;	 Catch:{ all -> 0x0199 }
        r4 = new android.widget.FrameLayout$LayoutParams;	 Catch:{ all -> 0x0199 }
        r4.<init>(r3, r3);	 Catch:{ all -> 0x0199 }
        r2.setLayoutParams(r4);	 Catch:{ all -> 0x0199 }
        r2 = r7.zzIt;	 Catch:{ all -> 0x0199 }
        r2.requestLayout();	 Catch:{ all -> 0x0199 }
    L_0x002a:
        r2 = 1;
        r7.zzIw = r2;	 Catch:{ all -> 0x0199 }
        r8 = (com.google.android.gms.internal.zzoc) r8;	 Catch:{ all -> 0x0199 }
        r4 = r7.zzHM;	 Catch:{ all -> 0x0199 }
        if (r4 == 0) goto L_0x004e;
    L_0x0033:
        r4 = com.google.android.gms.internal.zzmo.zzFw;	 Catch:{ all -> 0x0199 }
        r5 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x0199 }
        r4 = r5.zzd(r4);	 Catch:{ all -> 0x0199 }
        r4 = (java.lang.Boolean) r4;	 Catch:{ all -> 0x0199 }
        r4 = r4.booleanValue();	 Catch:{ all -> 0x0199 }
        if (r4 == 0) goto L_0x004e;
    L_0x0045:
        r4 = r7.zzHM;	 Catch:{ all -> 0x0199 }
        r5 = r7.zzIt;	 Catch:{ all -> 0x0199 }
        r6 = r7.zzIu;	 Catch:{ all -> 0x0199 }
        r4.zzb(r5, r6);	 Catch:{ all -> 0x0199 }
    L_0x004e:
        r4 = r7.zzHM;	 Catch:{ all -> 0x0199 }
        r4 = r4 instanceof com.google.android.gms.internal.zzoc;	 Catch:{ all -> 0x0199 }
        if (r4 == 0) goto L_0x0088;
    L_0x0054:
        r4 = r7.zzHM;	 Catch:{ all -> 0x0199 }
        r4 = (com.google.android.gms.internal.zzoc) r4;	 Catch:{ all -> 0x0199 }
        if (r4 == 0) goto L_0x0088;
    L_0x005a:
        r5 = r4.getContext();	 Catch:{ all -> 0x0199 }
        if (r5 == 0) goto L_0x0088;
    L_0x0060:
        r5 = com.google.android.gms.ads.internal.zzbs.zzbY();	 Catch:{ all -> 0x0199 }
        r6 = r7.zzIt;	 Catch:{ all -> 0x0199 }
        r6 = r6.getContext();	 Catch:{ all -> 0x0199 }
        r5 = r5.zzr(r6);	 Catch:{ all -> 0x0199 }
        if (r5 == 0) goto L_0x0088;
    L_0x0070:
        r4 = r4.zzew();	 Catch:{ all -> 0x0199 }
        if (r4 == 0) goto L_0x0079;
    L_0x0076:
        r4.zzu(r3);	 Catch:{ all -> 0x0199 }
    L_0x0079:
        r5 = r7.zzIz;	 Catch:{ all -> 0x0199 }
        r5 = r5.get();	 Catch:{ all -> 0x0199 }
        r5 = (com.google.android.gms.internal.zzge) r5;	 Catch:{ all -> 0x0199 }
        if (r5 == 0) goto L_0x0088;
    L_0x0083:
        if (r4 == 0) goto L_0x0088;
    L_0x0085:
        r5.zzb(r4);	 Catch:{ all -> 0x0199 }
    L_0x0088:
        r4 = r7.zzHM;	 Catch:{ all -> 0x0199 }
        r4 = r4 instanceof com.google.android.gms.internal.zznx;	 Catch:{ all -> 0x0199 }
        if (r4 == 0) goto L_0x00a0;
    L_0x008e:
        r4 = r7.zzHM;	 Catch:{ all -> 0x0199 }
        r4 = (com.google.android.gms.internal.zznx) r4;	 Catch:{ all -> 0x0199 }
        r4 = r4.zzeq();	 Catch:{ all -> 0x0199 }
        if (r4 == 0) goto L_0x00a0;
    L_0x0098:
        r4 = r7.zzHM;	 Catch:{ all -> 0x0199 }
        r4 = (com.google.android.gms.internal.zznx) r4;	 Catch:{ all -> 0x0199 }
        r4.zzc(r8);	 Catch:{ all -> 0x0199 }
        goto L_0x00ac;
    L_0x00a0:
        r7.zzHM = r8;	 Catch:{ all -> 0x0199 }
        r4 = r8 instanceof com.google.android.gms.internal.zznx;	 Catch:{ all -> 0x0199 }
        if (r4 == 0) goto L_0x00ac;
    L_0x00a6:
        r4 = r8;
        r4 = (com.google.android.gms.internal.zznx) r4;	 Catch:{ all -> 0x0199 }
        r4.zzc(r1);	 Catch:{ all -> 0x0199 }
    L_0x00ac:
        r4 = com.google.android.gms.internal.zzmo.zzFw;	 Catch:{ all -> 0x0199 }
        r5 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x0199 }
        r4 = r5.zzd(r4);	 Catch:{ all -> 0x0199 }
        r4 = (java.lang.Boolean) r4;	 Catch:{ all -> 0x0199 }
        r4 = r4.booleanValue();	 Catch:{ all -> 0x0199 }
        if (r4 == 0) goto L_0x00c3;
    L_0x00be:
        r4 = r7.zzss;	 Catch:{ all -> 0x0199 }
        r4.setClickable(r3);	 Catch:{ all -> 0x0199 }
    L_0x00c3:
        r4 = r7.zzss;	 Catch:{ all -> 0x0199 }
        r4.removeAllViews();	 Catch:{ all -> 0x0199 }
        r4 = r8.zzep();	 Catch:{ all -> 0x0199 }
        if (r4 == 0) goto L_0x00ed;
    L_0x00ce:
        r5 = r7.zzIu;	 Catch:{ all -> 0x0199 }
        if (r5 == 0) goto L_0x00ed;
    L_0x00d2:
        r5 = r7.zzIu;	 Catch:{ all -> 0x0199 }
        r6 = "1098";
        r5 = r5.get(r6);	 Catch:{ all -> 0x0199 }
        r5 = (java.lang.ref.WeakReference) r5;	 Catch:{ all -> 0x0199 }
        if (r5 == 0) goto L_0x00e5;
    L_0x00de:
        r5 = r5.get();	 Catch:{ all -> 0x0199 }
        r5 = (android.view.View) r5;	 Catch:{ all -> 0x0199 }
        goto L_0x00e6;
    L_0x00e5:
        r5 = r1;
    L_0x00e6:
        r6 = r5 instanceof android.view.ViewGroup;	 Catch:{ all -> 0x0199 }
        if (r6 == 0) goto L_0x00ed;
    L_0x00ea:
        r1 = r5;
        r1 = (android.view.ViewGroup) r1;	 Catch:{ all -> 0x0199 }
    L_0x00ed:
        if (r4 == 0) goto L_0x00f2;
    L_0x00ef:
        if (r1 == 0) goto L_0x00f2;
    L_0x00f1:
        goto L_0x00f3;
    L_0x00f2:
        r2 = 0;
    L_0x00f3:
        r3 = r8.zza(r7, r2);	 Catch:{ all -> 0x0199 }
        r7.zzIv = r3;	 Catch:{ all -> 0x0199 }
        r3 = r7.zzIv;	 Catch:{ all -> 0x0199 }
        if (r3 == 0) goto L_0x013a;
    L_0x00fd:
        r3 = r7.zzIu;	 Catch:{ all -> 0x0199 }
        if (r3 == 0) goto L_0x010f;
    L_0x0101:
        r3 = r7.zzIu;	 Catch:{ all -> 0x0199 }
        r4 = "1007";
        r5 = new java.lang.ref.WeakReference;	 Catch:{ all -> 0x0199 }
        r6 = r7.zzIv;	 Catch:{ all -> 0x0199 }
        r5.<init>(r6);	 Catch:{ all -> 0x0199 }
        r3.put(r4, r5);	 Catch:{ all -> 0x0199 }
    L_0x010f:
        if (r2 == 0) goto L_0x011a;
    L_0x0111:
        r1.removeAllViews();	 Catch:{ all -> 0x0199 }
        r2 = r7.zzIv;	 Catch:{ all -> 0x0199 }
        r1.addView(r2);	 Catch:{ all -> 0x0199 }
        goto L_0x013a;
    L_0x011a:
        r1 = r8.getContext();	 Catch:{ all -> 0x0199 }
        r2 = new com.google.android.gms.ads.formats.AdChoicesView;	 Catch:{ all -> 0x0199 }
        r2.<init>(r1);	 Catch:{ all -> 0x0199 }
        r1 = new android.widget.FrameLayout$LayoutParams;	 Catch:{ all -> 0x0199 }
        r3 = -1;
        r1.<init>(r3, r3);	 Catch:{ all -> 0x0199 }
        r2.setLayoutParams(r1);	 Catch:{ all -> 0x0199 }
        r1 = r7.zzIv;	 Catch:{ all -> 0x0199 }
        r2.addView(r1);	 Catch:{ all -> 0x0199 }
        r1 = r7.zzss;	 Catch:{ all -> 0x0199 }
        if (r1 == 0) goto L_0x013a;
    L_0x0135:
        r1 = r7.zzss;	 Catch:{ all -> 0x0199 }
        r1.addView(r2);	 Catch:{ all -> 0x0199 }
    L_0x013a:
        r1 = r7.zzIt;	 Catch:{ all -> 0x0199 }
        r2 = r7.zzIu;	 Catch:{ all -> 0x0199 }
        r8.zza(r1, r2, r7, r7);	 Catch:{ all -> 0x0199 }
        r1 = com.google.android.gms.internal.zzagz.zzZr;	 Catch:{ all -> 0x0199 }
        r2 = new com.google.android.gms.internal.zzoq;	 Catch:{ all -> 0x0199 }
        r2.<init>(r7, r8);	 Catch:{ all -> 0x0199 }
        r1.post(r2);	 Catch:{ all -> 0x0199 }
        r8 = r7.zzIt;	 Catch:{ all -> 0x0199 }
        r7.zzg(r8);	 Catch:{ all -> 0x0199 }
        r8 = r7.zzHM;	 Catch:{ all -> 0x0199 }
        r8 = r8 instanceof com.google.android.gms.internal.zzoc;	 Catch:{ all -> 0x0199 }
        if (r8 == 0) goto L_0x0197;
    L_0x0156:
        r8 = r7.zzHM;	 Catch:{ all -> 0x0199 }
        r8 = (com.google.android.gms.internal.zzoc) r8;	 Catch:{ all -> 0x0199 }
        if (r8 == 0) goto L_0x0197;
    L_0x015c:
        r1 = r8.getContext();	 Catch:{ all -> 0x0199 }
        if (r1 == 0) goto L_0x0197;
    L_0x0162:
        r1 = com.google.android.gms.ads.internal.zzbs.zzbY();	 Catch:{ all -> 0x0199 }
        r2 = r7.zzIt;	 Catch:{ all -> 0x0199 }
        r2 = r2.getContext();	 Catch:{ all -> 0x0199 }
        r1 = r1.zzr(r2);	 Catch:{ all -> 0x0199 }
        if (r1 == 0) goto L_0x0197;
    L_0x0172:
        r1 = r7.zzIz;	 Catch:{ all -> 0x0199 }
        r1 = r1.get();	 Catch:{ all -> 0x0199 }
        r1 = (com.google.android.gms.internal.zzge) r1;	 Catch:{ all -> 0x0199 }
        if (r1 != 0) goto L_0x0190;
    L_0x017c:
        r1 = new com.google.android.gms.internal.zzge;	 Catch:{ all -> 0x0199 }
        r2 = r7.zzIt;	 Catch:{ all -> 0x0199 }
        r2 = r2.getContext();	 Catch:{ all -> 0x0199 }
        r3 = r7.zzIt;	 Catch:{ all -> 0x0199 }
        r1.<init>(r2, r3);	 Catch:{ all -> 0x0199 }
        r2 = new java.lang.ref.WeakReference;	 Catch:{ all -> 0x0199 }
        r2.<init>(r1);	 Catch:{ all -> 0x0199 }
        r7.zzIz = r2;	 Catch:{ all -> 0x0199 }
    L_0x0190:
        r8 = r8.zzew();	 Catch:{ all -> 0x0199 }
        r1.zza(r8);	 Catch:{ all -> 0x0199 }
    L_0x0197:
        monitor-exit(r0);	 Catch:{ all -> 0x0199 }
        return;
    L_0x0199:
        r8 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0199 }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzop.zze(com.google.android.gms.dynamic.IObjectWrapper):void");
    }
}
