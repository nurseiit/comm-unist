package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd.Image;
import java.util.List;

public class NativeAppInstallAdMapper extends NativeAdMapper {
    private VideoController zzBd;
    private String zzHB;
    private List<Image> zzHC;
    private String zzHD;
    private String zzHF;
    private double zzHG;
    private String zzHH;
    private String zzHI;
    private Image zzacM;

    public final String getBody() {
        return this.zzHD;
    }

    public final String getCallToAction() {
        return this.zzHF;
    }

    public final String getHeadline() {
        return this.zzHB;
    }

    public final Image getIcon() {
        return this.zzacM;
    }

    public final List<Image> getImages() {
        return this.zzHC;
    }

    public final String getPrice() {
        return this.zzHI;
    }

    public final double getStarRating() {
        return this.zzHG;
    }

    public final String getStore() {
        return this.zzHH;
    }

    public final VideoController getVideoController() {
        return this.zzBd;
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

    public final void setIcon(Image image) {
        this.zzacM = image;
    }

    public final void setImages(List<Image> list) {
        this.zzHC = list;
    }

    public final void setPrice(String str) {
        this.zzHI = str;
    }

    public final void setStarRating(double d) {
        this.zzHG = d;
    }

    public final void setStore(String str) {
        this.zzHH = str;
    }

    public final void zza(VideoController videoController) {
        this.zzBd = videoController;
    }
}
