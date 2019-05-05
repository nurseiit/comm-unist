package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.zzn;
import java.util.List;

@zzzn
public final class zzpm implements NativeCustomTemplateAd {
    private final VideoController zzBd = new VideoController();
    private final zzpj zzIJ;
    private final MediaView zzIK;

    public zzpm(zzpj zzpj) {
        Context context;
        this.zzIJ = zzpj;
        MediaView mediaView = null;
        try {
            context = (Context) zzn.zzE(zzpj.zzen());
        } catch (RemoteException | NullPointerException e) {
            zzajc.zzb("Unable to inflate MediaView.", e);
            context = null;
        }
        if (context != null) {
            MediaView mediaView2 = new MediaView(context);
            try {
                if (this.zzIJ.zzj(zzn.zzw(mediaView2))) {
                    mediaView = mediaView2;
                }
            } catch (RemoteException e2) {
                zzajc.zzb("Unable to render video in MediaView.", e2);
            }
        }
        this.zzIK = mediaView;
    }

    public final void destroy() {
        try {
            this.zzIJ.destroy();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to destroy ad.", e);
        }
    }

    public final List<String> getAvailableAssetNames() {
        try {
            return this.zzIJ.getAvailableAssetNames();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get available asset names.", e);
            return null;
        }
    }

    public final String getCustomTemplateId() {
        try {
            return this.zzIJ.getCustomTemplateId();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get custom template id.", e);
            return null;
        }
    }

    public final Image getImage(String str) {
        try {
            zzos zzQ = this.zzIJ.zzQ(str);
            if (zzQ != null) {
                return new zzov(zzQ);
            }
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get image.", e);
        }
        return null;
    }

    public final CharSequence getText(String str) {
        try {
            return this.zzIJ.zzP(str);
        } catch (RemoteException e) {
            zzajc.zzb("Failed to get string.", e);
            return null;
        }
    }

    public final VideoController getVideoController() {
        try {
            zzks videoController = this.zzIJ.getVideoController();
            if (videoController != null) {
                this.zzBd.zza(videoController);
            }
        } catch (RemoteException e) {
            zzajc.zzb("Exception occurred while getting video controller", e);
        }
        return this.zzBd;
    }

    public final MediaView getVideoMediaView() {
        return this.zzIK;
    }

    public final void performClick(String str) {
        try {
            this.zzIJ.performClick(str);
        } catch (RemoteException e) {
            zzajc.zzb("Failed to perform click.", e);
        }
    }

    public final void recordImpression() {
        try {
            this.zzIJ.recordImpression();
        } catch (RemoteException e) {
            zzajc.zzb("Failed to record impression.", e);
        }
    }

    public final zzpj zzex() {
        return this.zzIJ;
    }
}
