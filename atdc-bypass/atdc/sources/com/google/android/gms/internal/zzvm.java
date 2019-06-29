package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import java.util.ArrayList;
import java.util.List;

@zzzn
public final class zzvm extends zzvg {
    private final NativeContentAdMapper zzNg;

    public zzvm(NativeContentAdMapper nativeContentAdMapper) {
        this.zzNg = nativeContentAdMapper;
    }

    public final String getAdvertiser() {
        return this.zzNg.getAdvertiser();
    }

    public final String getBody() {
        return this.zzNg.getBody();
    }

    public final String getCallToAction() {
        return this.zzNg.getCallToAction();
    }

    public final Bundle getExtras() {
        return this.zzNg.getExtras();
    }

    public final String getHeadline() {
        return this.zzNg.getHeadline();
    }

    public final List getImages() {
        List<Image> images = this.zzNg.getImages();
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
        return this.zzNg.getOverrideClickHandling();
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzNg.getOverrideImpressionRecording();
    }

    public final zzks getVideoController() {
        return this.zzNg.getVideoController() != null ? this.zzNg.getVideoController().zzae() : null;
    }

    public final void recordImpression() {
        this.zzNg.recordImpression();
    }

    public final zzos zzem() {
        Image logo = this.zzNg.getLogo();
        return logo != null ? new zznp(logo.getDrawable(), logo.getUri(), logo.getScale()) : null;
    }

    public final IObjectWrapper zzfw() {
        View adChoicesContent = this.zzNg.getAdChoicesContent();
        return adChoicesContent == null ? null : zzn.zzw(adChoicesContent);
    }

    public final void zzl(IObjectWrapper iObjectWrapper) {
        this.zzNg.handleClick((View) zzn.zzE(iObjectWrapper));
    }

    public final void zzm(IObjectWrapper iObjectWrapper) {
        this.zzNg.trackView((View) zzn.zzE(iObjectWrapper));
    }

    public final void zzn(IObjectWrapper iObjectWrapper) {
        this.zzNg.untrackView((View) zzn.zzE(iObjectWrapper));
    }
}
