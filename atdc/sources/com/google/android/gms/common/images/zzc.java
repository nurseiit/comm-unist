package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.internal.zzbfg;
import com.google.android.gms.internal.zzbfl;
import java.lang.ref.WeakReference;

public final class zzc extends zza {
    private WeakReference<ImageView> zzaGm;

    public zzc(ImageView imageView, int i) {
        super(null, i);
        com.google.android.gms.common.internal.zzc.zzr(imageView);
        this.zzaGm = new WeakReference(imageView);
    }

    public zzc(ImageView imageView, Uri uri) {
        super(uri, 0);
        com.google.android.gms.common.internal.zzc.zzr(imageView);
        this.zzaGm = new WeakReference(imageView);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzc)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ImageView imageView = (ImageView) this.zzaGm.get();
        ImageView imageView2 = (ImageView) ((zzc) obj).zzaGm.get();
        return (imageView2 == null || imageView == null || !zzbe.equal(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
        ImageView imageView = (ImageView) this.zzaGm.get();
        if (imageView != null) {
            int i = 0;
            Object obj = (z2 || z3) ? null : 1;
            if (obj != null && (imageView instanceof zzbfl)) {
                int zzqY = ((zzbfl) imageView).zzqY();
                if (this.zzaGh != 0 && zzqY == this.zzaGh) {
                    return;
                }
            }
            z = zzc(z, z2);
            Uri uri = null;
            if (z) {
                Drawable drawable2 = imageView.getDrawable();
                if (drawable2 == null) {
                    drawable2 = null;
                } else if (drawable2 instanceof zzbfg) {
                    drawable2 = ((zzbfg) drawable2).zzqW();
                }
                drawable = new zzbfg(drawable2, drawable);
            }
            imageView.setImageDrawable(drawable);
            if (imageView instanceof zzbfl) {
                zzbfl zzbfl = (zzbfl) imageView;
                if (z3) {
                    uri = this.zzaGf.uri;
                }
                zzbfl.zzo(uri);
                if (obj != null) {
                    i = this.zzaGh;
                }
                zzbfl.zzax(i);
            }
            if (z) {
                ((zzbfg) drawable).startTransition(250);
            }
        }
    }
}
