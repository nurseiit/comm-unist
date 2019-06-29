package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzbs;
import java.util.LinkedList;

public abstract class zzcq implements zzcp {
    protected MotionEvent zzpP;
    protected LinkedList<MotionEvent> zzpQ = new LinkedList();
    protected long zzpR = 0;
    protected long zzpS = 0;
    protected long zzpT = 0;
    protected long zzpU = 0;
    protected long zzpV = 0;
    protected long zzpW = 0;
    protected long zzpX = 0;
    protected double zzpY;
    private double zzpZ;
    private double zzqa;
    protected float zzqb;
    protected float zzqc;
    protected float zzqd;
    protected float zzqe;
    private boolean zzqf = false;
    protected boolean zzqg = false;
    protected DisplayMetrics zzqh;

    protected zzcq(Context context) {
        try {
            zzbv.zzw();
            this.zzqh = context.getResources().getDisplayMetrics();
        } catch (Throwable unused) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x001c A:{Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }} */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0015 A:{SYNTHETIC, Splitter:B:9:0x0015} */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0022 A:{Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }} */
    private final java.lang.String zza(android.content.Context r2, java.lang.String r3, boolean r4, android.view.View r5, byte[] r6) {
        /*
        r1 = this;
        if (r6 == 0) goto L_0x0011;
    L_0x0002:
        r0 = r6.length;
        if (r0 <= 0) goto L_0x0011;
    L_0x0005:
        r0 = new com.google.android.gms.internal.zzau;	 Catch:{ ado -> 0x0011 }
        r0.<init>();	 Catch:{ ado -> 0x0011 }
        r6 = com.google.android.gms.internal.adp.zza(r0, r6);	 Catch:{ ado -> 0x0011 }
        r6 = (com.google.android.gms.internal.zzau) r6;	 Catch:{ ado -> 0x0011 }
        goto L_0x0012;
    L_0x0011:
        r6 = 0;
    L_0x0012:
        r0 = 1;
        if (r4 == 0) goto L_0x001c;
    L_0x0015:
        r2 = r1.zza(r2, r5);	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
        r1.zzqf = r0;	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
        goto L_0x0020;
    L_0x001c:
        r2 = r1.zza(r2, r6);	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
    L_0x0020:
        if (r2 == 0) goto L_0x0047;
    L_0x0022:
        r5 = r2.zzLV();	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
        if (r5 != 0) goto L_0x0029;
    L_0x0028:
        goto L_0x0047;
    L_0x0029:
        r5 = com.google.android.gms.internal.zzmo.zzEO;	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
        r6 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
        r5 = r6.zzd(r5);	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
        r5 = (java.lang.Boolean) r5;	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
        r5 = r5.booleanValue();	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
        if (r5 == 0) goto L_0x0040;
    L_0x003b:
        if (r4 == 0) goto L_0x003e;
    L_0x003d:
        goto L_0x0040;
    L_0x003e:
        r4 = 0;
        goto L_0x0041;
    L_0x0040:
        r4 = 1;
    L_0x0041:
        r4 = r4 ^ r0;
        r2 = com.google.android.gms.internal.zzbv.zza(r2, r3, r4);	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
        return r2;
    L_0x0047:
        r2 = 5;
        r2 = java.lang.Integer.toString(r2);	 Catch:{ UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, UnsupportedEncodingException | NoSuchAlgorithmException -> 0x004f, Throwable -> 0x004d }
        return r2;
    L_0x004d:
        r2 = 3;
        goto L_0x0050;
    L_0x004f:
        r2 = 7;
    L_0x0050:
        r2 = java.lang.Integer.toString(r2);
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcq.zza(android.content.Context, java.lang.String, boolean, android.view.View, byte[]):java.lang.String");
    }

    public abstract long zza(StackTraceElement[] stackTraceElementArr) throws zzcy;

    public abstract zzax zza(Context context, View view);

    public abstract zzax zza(Context context, zzau zzau);

    public final String zza(Context context) {
        if (zzdg.zzS()) {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFb)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return zza(context, null, false, null, null);
    }

    public final String zza(Context context, String str) {
        return zza(context, str, null);
    }

    public final String zza(Context context, String str, View view) {
        return zza(context, str, true, view, null);
    }

    public final String zza(Context context, byte[] bArr) {
        if (zzdg.zzS()) {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFb)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return zza(context, null, false, null, bArr);
    }

    public final void zza(int i, int i2, int i3) {
        MotionEvent obtain;
        if (this.zzpP != null) {
            this.zzpP.recycle();
        }
        if (this.zzqh != null) {
            obtain = MotionEvent.obtain(0, (long) i3, 1, this.zzqh.density * ((float) i), this.zzqh.density * ((float) i2), 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            obtain = null;
        }
        this.zzpP = obtain;
        this.zzqg = false;
    }

    public final void zza(android.view.MotionEvent r13) {
        /*
        r12 = this;
        r0 = r12.zzqf;
        r1 = 0;
        if (r0 == 0) goto L_0x0035;
    L_0x0005:
        r2 = 0;
        r12.zzpU = r2;
        r12.zzpT = r2;
        r12.zzpS = r2;
        r12.zzpR = r2;
        r12.zzpV = r2;
        r12.zzpX = r2;
        r12.zzpW = r2;
        r0 = r12.zzpQ;
        r0 = r0.iterator();
    L_0x001b:
        r2 = r0.hasNext();
        if (r2 == 0) goto L_0x002b;
    L_0x0021:
        r2 = r0.next();
        r2 = (android.view.MotionEvent) r2;
        r2.recycle();
        goto L_0x001b;
    L_0x002b:
        r0 = r12.zzpQ;
        r0.clear();
        r0 = 0;
        r12.zzpP = r0;
        r12.zzqf = r1;
    L_0x0035:
        r0 = com.google.android.gms.internal.zzmo.zzEU;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r0 = r2.zzd(r0);
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 == 0) goto L_0x0086;
    L_0x0047:
        r0 = r13.getAction();
        switch(r0) {
            case 0: goto L_0x0074;
            case 1: goto L_0x004f;
            case 2: goto L_0x004f;
            default: goto L_0x004e;
        };
    L_0x004e:
        goto L_0x0086;
    L_0x004f:
        r0 = r13.getRawX();
        r2 = (double) r0;
        r0 = r13.getRawY();
        r4 = (double) r0;
        r6 = r12.zzpZ;
        r6 = r2 - r6;
        r8 = r12.zzqa;
        r8 = r4 - r8;
        r10 = r12.zzpY;
        r6 = r6 * r6;
        r8 = r8 * r8;
        r6 = r6 + r8;
        r6 = java.lang.Math.sqrt(r6);
        r10 = r10 + r6;
        r12.zzpY = r10;
        r12.zzpZ = r2;
        r12.zzqa = r4;
        goto L_0x0086;
    L_0x0074:
        r2 = 0;
        r12.zzpY = r2;
        r0 = r13.getRawX();
        r2 = (double) r0;
        r12.zzpZ = r2;
        r0 = r13.getRawY();
        r2 = (double) r0;
        r12.zzqa = r2;
    L_0x0086:
        r0 = r13.getAction();
        r2 = 1;
        r4 = 1;
        switch(r0) {
            case 0: goto L_0x012c;
            case 1: goto L_0x00f5;
            case 2: goto L_0x009a;
            case 3: goto L_0x0092;
            default: goto L_0x0090;
        };
    L_0x0090:
        goto L_0x015c;
    L_0x0092:
        r0 = r12.zzpU;
        r5 = r0 + r2;
        r12.zzpU = r5;
        goto L_0x015c;
    L_0x009a:
        r2 = r12.zzpS;
        r0 = r13.getHistorySize();
        r0 = r0 + r4;
        r5 = (long) r0;
        r7 = r2 + r5;
        r12.zzpS = r7;
        r13 = r12.zzb(r13);	 Catch:{ zzcy -> 0x015c }
        if (r13 == 0) goto L_0x00b6;
    L_0x00ac:
        r0 = r13.zzcd;	 Catch:{ zzcy -> 0x015c }
        if (r0 == 0) goto L_0x00b6;
    L_0x00b0:
        r0 = r13.zzrd;	 Catch:{ zzcy -> 0x015c }
        if (r0 == 0) goto L_0x00b6;
    L_0x00b4:
        r0 = 1;
        goto L_0x00b7;
    L_0x00b6:
        r0 = 0;
    L_0x00b7:
        if (r0 == 0) goto L_0x00ce;
    L_0x00b9:
        r2 = r12.zzpW;	 Catch:{ zzcy -> 0x015c }
        r0 = r13.zzcd;	 Catch:{ zzcy -> 0x015c }
        r5 = r0.longValue();	 Catch:{ zzcy -> 0x015c }
        r0 = r13.zzrd;	 Catch:{ zzcy -> 0x015c }
        r7 = r0.longValue();	 Catch:{ zzcy -> 0x015c }
        r0 = 0;
        r9 = r5 + r7;
        r5 = r2 + r9;
        r12.zzpW = r5;	 Catch:{ zzcy -> 0x015c }
    L_0x00ce:
        r0 = r12.zzqh;	 Catch:{ zzcy -> 0x015c }
        if (r0 == 0) goto L_0x00dd;
    L_0x00d2:
        if (r13 == 0) goto L_0x00dd;
    L_0x00d4:
        r0 = r13.zzcb;	 Catch:{ zzcy -> 0x015c }
        if (r0 == 0) goto L_0x00dd;
    L_0x00d8:
        r0 = r13.zzre;	 Catch:{ zzcy -> 0x015c }
        if (r0 == 0) goto L_0x00dd;
    L_0x00dc:
        r1 = 1;
    L_0x00dd:
        if (r1 == 0) goto L_0x015c;
    L_0x00df:
        r0 = r12.zzpX;	 Catch:{ zzcy -> 0x015c }
        r2 = r13.zzcb;	 Catch:{ zzcy -> 0x015c }
        r2 = r2.longValue();	 Catch:{ zzcy -> 0x015c }
        r13 = r13.zzre;	 Catch:{ zzcy -> 0x015c }
        r5 = r13.longValue();	 Catch:{ zzcy -> 0x015c }
        r13 = 0;
        r7 = r2 + r5;
        r2 = r0 + r7;
        r12.zzpX = r2;	 Catch:{ zzcy -> 0x015c }
        goto L_0x015c;
    L_0x00f5:
        r13 = android.view.MotionEvent.obtain(r13);
        r12.zzpP = r13;
        r13 = r12.zzpQ;
        r0 = r12.zzpP;
        r13.add(r0);
        r13 = r12.zzpQ;
        r13 = r13.size();
        r0 = 6;
        if (r13 <= r0) goto L_0x0116;
    L_0x010b:
        r13 = r12.zzpQ;
        r13 = r13.remove();
        r13 = (android.view.MotionEvent) r13;
        r13.recycle();
    L_0x0116:
        r0 = r12.zzpT;
        r5 = r0 + r2;
        r12.zzpT = r5;
        r13 = new java.lang.Throwable;	 Catch:{ zzcy -> 0x015c }
        r13.<init>();	 Catch:{ zzcy -> 0x015c }
        r13 = r13.getStackTrace();	 Catch:{ zzcy -> 0x015c }
        r0 = r12.zza(r13);	 Catch:{ zzcy -> 0x015c }
        r12.zzpV = r0;	 Catch:{ zzcy -> 0x015c }
        goto L_0x015c;
    L_0x012c:
        r0 = com.google.android.gms.internal.zzmo.zzEV;
        r1 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r0 = r1.zzd(r0);
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 == 0) goto L_0x0156;
    L_0x013e:
        r0 = r13.getX();
        r12.zzqb = r0;
        r0 = r13.getY();
        r12.zzqc = r0;
        r0 = r13.getRawX();
        r12.zzqd = r0;
        r13 = r13.getRawY();
        r12.zzqe = r13;
    L_0x0156:
        r0 = r12.zzpR;
        r5 = r0 + r2;
        r12.zzpR = r5;
    L_0x015c:
        r12.zzqg = r4;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcq.zza(android.view.MotionEvent):void");
    }

    public abstract zzdf zzb(MotionEvent motionEvent) throws zzcy;
}
