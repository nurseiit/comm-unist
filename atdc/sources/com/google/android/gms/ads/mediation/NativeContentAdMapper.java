package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd.Image;
import java.util.List;

public class NativeContentAdMapper extends NativeAdMapper {
    private VideoController zzBd;
    private String zzHB;
    private List<Image> zzHC;
    private String zzHD;
    private String zzHF;
    private String zzHP;
    private Image zzacN;

    public final String getAdvertiser() {
        return this.zzHP;
    }

    public final String getBody() {
        return this.zzHD;
    }

    public final String getCallToAction() {
        return this.zzHF;
    }

    public final String getHeadline() {
        return this.zzHB;
    }

    public final List<Image> getImages() {
        return this.zzHC;
    }

    public final Image getLogo() {
        return this.zzacN;
    }

    public final VideoController getVideoController() {
        return this.zzBd;
    }

    public final void setAdvertiser(String str) {
        this.zzHP = str;
    }

    public final void setBody(String str) {
        this.zzHD = str;
    }

    public final void setCallToAction(String str) {
        this.zzHF = str;
    }

    public final void setHeadline(String str) {
        this.zzHB = str;
    }

    public final void setImages(List<Image> list) {
        this.zzHC = list;
    }

    public final void setLogo(Image image) {
        this.zzacN = image;
    }

    public final void zza(VideoController videoController) {
        this.zzBd = videoController;
    }
}
