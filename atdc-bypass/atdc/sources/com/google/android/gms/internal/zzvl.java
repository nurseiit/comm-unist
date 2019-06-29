package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import java.util.ArrayList;
import java.util.List;

@zzzn
public final class zzvl extends zzvd {
    private final NativeAppInstallAdMapper zzNf;

    public zzvl(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.zzNf = nativeAppInstallAdMapper;
    }

    public final String getBody() {
        return this.zzNf.getBody();
    }

    public final String getCallToAction() {
        return this.zzNf.getCallToAction();
    }

    public final Bundle getExtras() {
        return this.zzNf.getExtras();
    }

    public final String getHeadline() {
        return this.zzNf.getHeadline();
    }

    public final List getImages() {
        List<Image> images = this.zzNf.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Image image : images) {
            arrayList.add(new zznp(image.getDrawable(), image.getUri(), image.getScale()));
        }
        return arrayList;
    }

    public final boolean getOverrideClickHandling() {
        return this.zzNf.getOverrideClickHandling();
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzNf.getOverrideImpressionRecording();
    }

    public final String getPrice() {
        return this.zzNf.getPrice();
    }

    public final double getStarRating() {
        return this.zzNf.getStarRating();
    }

    public final String getStore() {
        return this.zzNf.getStore();
    }

    public final zzks getVideoController() {
        return this.zzNf.getVideoController() != null ? this.zzNf.getVideoController().zzae() : null;
    }

    public final void recordImpression() {
        this.zzNf.recordImpression();
    }

    public final zzos zzeh() {
        Image icon = this.zzNf.getIcon();
        return icon != null ? new zznp(icon.getDrawable(), icon.getUri(), icon.getScale()) : null;
    }

    public final IObjectWrapper zzfw() {
        View adChoicesContent = this.zzNf.getAdChoicesContent();
        return adChoicesContent == null ? null : zzn.zzw(adChoicesContent);
    }

    public final void zzl(IObjectWrapper iObjectWrapper) {
        this.zzNf.handleClick((View) zzn.zzE(iObjectWrapper));
    }

    public final void zzm(IObjectWrapper iObjectWrapper) {
        this.zzNf.trackView((View) zzn.zzE(iObjectWrapper));
    }

    public final void zzn(IObjectWrapper iObjectWrapper) {
        this.zzNf.untrackView((View) zzn.zzE(iObjectWrapper));
    }
}
