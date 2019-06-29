package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

@zzzn
public final class zzpe extends NativeAppInstallAd {
    private final VideoController zzBd = new VideoController();
    private final zzpb zzIE;
    private final List<Image> zzIF = new ArrayList();
    private final zzov zzIG;

    /* JADX WARNING: Removed duplicated region for block: B:31:0x0020 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x004a A:{Catch:{ RemoteException -> 0x0055 }} */
    public zzpe(com.google.android.gms.internal.zzpb r5) {
        /*
        r4 = this;
        r4.<init>();
        r0 = new java.util.ArrayList;
        r0.<init>();
        r4.zzIF = r0;
        r0 = new com.google.android.gms.ads.VideoController;
        r0.<init>();
        r4.zzBd = r0;
        r4.zzIE = r5;
        r5 = 0;
        r0 = r4.zzIE;	 Catch:{ RemoteException -> 0x0055 }
        r0 = r0.getImages();	 Catch:{ RemoteException -> 0x0055 }
        if (r0 == 0) goto L_0x005b;
    L_0x001c:
        r0 = r0.iterator();	 Catch:{ RemoteException -> 0x0055 }
    L_0x0020:
        r1 = r0.hasNext();	 Catch:{ RemoteException -> 0x0055 }
        if (r1 == 0) goto L_0x005b;
    L_0x0026:
        r1 = r0.next();	 Catch:{ RemoteException -> 0x0055 }
        r2 = r1 instanceof android.os.IBinder;	 Catch:{ RemoteException -> 0x0055 }
        if (r2 == 0) goto L_0x0047;
    L_0x002e:
        r1 = (android.os.IBinder) r1;	 Catch:{ RemoteException -> 0x0055 }
        if (r1 == 0) goto L_0x0047;
    L_0x0032:
        r2 = "com.google.android.gms.ads.internal.formats.client.INativeAdImage";
        r2 = r1.queryLocalInterface(r2);	 Catch:{ RemoteException -> 0x0055 }
        r3 = r2 instanceof com.google.android.gms.internal.zzos;	 Catch:{ RemoteException -> 0x0055 }
        if (r3 == 0) goto L_0x0040;
    L_0x003c:
        r1 = r2;
        r1 = (com.google.android.gms.internal.zzos) r1;	 Catch:{ RemoteException -> 0x0055 }
        goto L_0x0048;
    L_0x0040:
        r2 = new com.google.android.gms.internal.zzou;	 Catch:{ RemoteException -> 0x0055 }
        r2.<init>(r1);	 Catch:{ RemoteException -> 0x0055 }
        r1 = r2;
        goto L_0x0048;
    L_0x0047:
        r1 = r5;
    L_0x0048:
        if (r1 == 0) goto L_0x0020;
    L_0x004a:
        r2 = r4.zzIF;	 Catch:{ RemoteException -> 0x0055 }
        r3 = new com.google.android.gms.internal.zzov;	 Catch:{ RemoteException -> 0x0055 }
        r3.<init>(r1);	 Catch:{ RemoteException -> 0x0055 }
        r2.add(r3);	 Catch:{ RemoteException -> 0x0055 }
        goto L_0x0020;
    L_0x0055:
        r0 = move-exception;
        r1 = "Failed to get image.";
        com.google.android.gms.internal.zzajc.zzb(r1, r0);
    L_0x005b:
        r0 = r4.zzIE;	 Catch:{ RemoteException -> 0x006a }
        r0 = r0.zzeh();	 Catch:{ RemoteException -> 0x006a }
        if (r0 == 0) goto L_0x0070;
    L_0x0063:
        r1 = new com.google.android.gms.internal.zzov;	 Catch:{ RemoteException -> 0x006a }
        r1.<init>(r0);	 Catch:{ RemoteException -> 0x006a }
        r5 = r1;
        goto L_0x0070;
    L_0x006a:
        r0 = move-exception;
        r1 = "Failed to get icon.";
        com.google.android.gms.internal.zzajc.zzb(r1, r0);
    L_0x0070:
        r4.zzIG = r5;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzpe.<init>(com.google.android.gms.internal.zzpb):void");
    }

    private final IObjectWrapper zzei() {
        try {
            return this.zzIE.zzei();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to retrieve native ad engine.", e);
            return null;
        }
    }

    public final void destroy() {
        try {
            this.zzIE.destroy();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to destroy", e);
        }
    }

    public final CharSequence getBody() {
        try {
            return this.zzIE.getBody();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get body.", e);
            return null;
        }
    }

    public final CharSequence getCallToAction() {
        try {
            return this.zzIE.getCallToAction();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get call to action.", e);
            return null;
        }
    }

    public final Bundle getExtras() {
        try {
            return this.zzIE.getExtras();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get extras", e);
            return null;
        }
    }

    public final CharSequence getHeadline() {
        try {
            return this.zzIE.getHeadline();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get headline.", e);
            return null;
        }
    }

    public final Image getIcon() {
        return this.zzIG;
    }

    public final List<Image> getImages() {
        return this.zzIF;
    }

    public final CharSequence getPrice() {
        try {
            return this.zzIE.getPrice();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get price.", e);
            return null;
        }
    }

    public final Double getStarRating() {
        try {
            double starRating = this.zzIE.getStarRating();
            return starRating == -1.0d ? null : Double.valueOf(starRating);
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get star rating.", e);
            return null;
        }
    }

    public final CharSequence getStore() {
        try {
            return this.zzIE.getStore();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get store", e);
            return null;
        }
    }

    public final VideoController getVideoController() {
        try {
            if (this.zzIE.getVideoController() != null) {
                this.zzBd.zza(this.zzIE.getVideoController());
            }
        } catch (RemoteException e) {
            zzajc.zzb("Exception occurred while getting video controller", e);
        }
        return this.zzBd;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzag() {
        return zzei();
    }
}
