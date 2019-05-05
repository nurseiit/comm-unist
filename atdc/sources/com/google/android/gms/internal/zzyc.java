package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.widget.PopupWindow;

@zzzn
@TargetApi(19)
public final class zzyc extends zzxz {
    private Object zzQZ = new Object();
    private PopupWindow zzRa;
    private boolean zzRb = false;

    zzyc(Context context, zzafg zzafg, zzaka zzaka, zzxy zzxy) {
        super(context, zzafg, zzaka, zzxy);
    }

    private final void zzgr() {
        synchronized (this.zzQZ) {
            this.zzRb = true;
            if ((this.mContext instanceof Activity) && ((Activity) this.mContext).isDestroyed()) {
                this.zzRa = null;
            }
            if (this.zzRa != null) {
                if (this.zzRa.isShowing()) {
                    this.zzRa.dismiss();
                }
                this.zzRa = null;
            }
        }
    }

    public final void cancel() {
        zzgr();
        super.cancel();
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:21:0x0069 */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:18|19|20|21|22) */
    public final void zzgq() {
        /*
        r8 = this;
        r0 = r8.mContext;
        r0 = r0 instanceof android.app.Activity;
        r1 = 0;
        if (r0 == 0) goto L_0x0010;
    L_0x0007:
        r0 = r8.mContext;
        r0 = (android.app.Activity) r0;
        r0 = r0.getWindow();
        goto L_0x0011;
    L_0x0010:
        r0 = r1;
    L_0x0011:
        if (r0 == 0) goto L_0x0070;
    L_0x0013:
        r2 = r0.getDecorView();
        if (r2 != 0) goto L_0x001a;
    L_0x0019:
        return;
    L_0x001a:
        r2 = r8.mContext;
        r2 = (android.app.Activity) r2;
        r2 = r2.isDestroyed();
        if (r2 == 0) goto L_0x0025;
    L_0x0024:
        return;
    L_0x0025:
        r2 = new android.widget.FrameLayout;
        r3 = r8.mContext;
        r2.<init>(r3);
        r3 = new android.view.ViewGroup$LayoutParams;
        r4 = -1;
        r3.<init>(r4, r4);
        r2.setLayoutParams(r3);
        r3 = r8.zzJH;
        r3 = r3.getView();
        r2.addView(r3, r4, r4);
        r3 = r8.zzQZ;
        monitor-enter(r3);
        r5 = r8.zzRb;	 Catch:{ all -> 0x006d }
        if (r5 == 0) goto L_0x0047;
    L_0x0045:
        monitor-exit(r3);	 Catch:{ all -> 0x006d }
        return;
    L_0x0047:
        r5 = new android.widget.PopupWindow;	 Catch:{ all -> 0x006d }
        r6 = 0;
        r7 = 1;
        r5.<init>(r2, r7, r7, r6);	 Catch:{ all -> 0x006d }
        r8.zzRa = r5;	 Catch:{ all -> 0x006d }
        r2 = r8.zzRa;	 Catch:{ all -> 0x006d }
        r2.setOutsideTouchable(r7);	 Catch:{ all -> 0x006d }
        r2 = r8.zzRa;	 Catch:{ all -> 0x006d }
        r2.setClippingEnabled(r6);	 Catch:{ all -> 0x006d }
        r2 = "Displaying the 1x1 popup off the screen.";
        com.google.android.gms.internal.zzajc.zzaC(r2);	 Catch:{ all -> 0x006d }
        r2 = r8.zzRa;	 Catch:{ Exception -> 0x0069 }
        r0 = r0.getDecorView();	 Catch:{ Exception -> 0x0069 }
        r2.showAtLocation(r0, r6, r4, r4);	 Catch:{ Exception -> 0x0069 }
        goto L_0x006b;
    L_0x0069:
        r8.zzRa = r1;	 Catch:{ all -> 0x006d }
    L_0x006b:
        monitor-exit(r3);	 Catch:{ all -> 0x006d }
        return;
    L_0x006d:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x006d }
        throw r0;
    L_0x0070:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzyc.zzgq():void");
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzr(int i) {
        zzgr();
        super.zzr(i);
    }
}
