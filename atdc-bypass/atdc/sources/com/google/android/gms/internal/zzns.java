package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import java.util.List;

@zzzn
public final class zzns extends zzpg implements zzob {
    private Bundle mExtras;
    private Object mLock = new Object();
    private String zzHB;
    private List<zznp> zzHC;
    private String zzHD;
    private String zzHF;
    @Nullable
    private zznn zzHJ;
    @Nullable
    private zzks zzHK;
    @Nullable
    private View zzHL;
    private zzny zzHM;
    private zzos zzHO;
    private String zzHP;

    public zzns(String str, List list, String str2, zzos zzos, String str3, String str4, @Nullable zznn zznn, Bundle bundle, zzks zzks, View view) {
        this.zzHB = str;
        this.zzHC = list;
        this.zzHD = str2;
        this.zzHO = zzos;
        this.zzHF = str3;
        this.zzHP = str4;
        this.zzHJ = zznn;
        this.mExtras = bundle;
        this.zzHK = zzks;
        this.zzHL = view;
    }

    public final void destroy() {
        zzagz.zzZr.post(new zznt(this));
        this.zzHB = null;
        this.zzHC = null;
        this.zzHD = null;
        this.zzHO = null;
        this.zzHF = null;
        this.zzHP = null;
        this.zzHJ = null;
        this.mExtras = null;
        this.mLock = null;
        this.zzHK = null;
        this.zzHL = null;
    }

    public final String getAdvertiser() {
        return this.zzHP;
    }

    public final String getBody() {
        return this.zzHD;
    }

    public final String getCallToAction() {
        return this.zzHF;
    }

    public final String getCustomTemplateId() {
        return "";
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }

    public final String getHeadline() {
        return this.zzHB;
    }

    public final List getImages() {
        return this.zzHC;
    }

    public final zzks getVideoController() {
        return this.zzHK;
    }

    public final void zzb(zzny zzny) {
        synchronized (this.mLock) {
            this.zzHM = zzny;
        }
    }

    public final void zzc(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzHM == null) {
                zzajc.e("Attempt to perform click before content ad initialized.");
                return;
            }
            this.zzHM.zzc(bundle);
        }
    }

    public final boolean zzd(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzHM == null) {
                zzajc.e("Attempt to record impression before content ad initialized.");
                return false;
            }
            boolean zzd = this.zzHM.zzd(bundle);
            return zzd;
        }
    }

    public final void zze(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzHM == null) {
                zzajc.e("Attempt to perform click before app install ad initialized.");
                return;
            }
            this.zzHM.zze(bundle);
        }
    }

    public final IObjectWrapper zzei() {
        return zzn.zzw(this.zzHM);
    }

    public final String zzej() {
        return "1";
    }

    public final zznn zzek() {
        return this.zzHJ;
    }

    public final View zzel() {
        return this.zzHL;
    }

    public final zzos zzem() {
        return this.zzHO;
    }
}
