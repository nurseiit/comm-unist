package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.internal.zzadd;
import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzafg;
import com.google.android.gms.internal.zzafh;
import com.google.android.gms.internal.zzafn;
import com.google.android.gms.internal.zzafp;
import com.google.android.gms.internal.zzahp;
import com.google.android.gms.internal.zzair;
import com.google.android.gms.internal.zzaiy;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzcu;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzjl;
import com.google.android.gms.internal.zzjo;
import com.google.android.gms.internal.zzke;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzky;
import com.google.android.gms.internal.zzlx;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zznh;
import com.google.android.gms.internal.zzon;
import com.google.android.gms.internal.zzpn;
import com.google.android.gms.internal.zzpq;
import com.google.android.gms.internal.zzpt;
import com.google.android.gms.internal.zzpw;
import com.google.android.gms.internal.zzpz;
import com.google.android.gms.internal.zzzn;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;

@zzzn
public final class zzbt implements OnGlobalLayoutListener, OnScrollChangedListener {
    public final Context zzqD;
    boolean zzur;
    final String zzvQ;
    public String zzvR;
    final zzcu zzvS;
    public final zzaje zzvT;
    @Nullable
    zzbu zzvU;
    @Nullable
    public zzafp zzvV;
    @Nullable
    public zzahp zzvW;
    public zziv zzvX;
    @Nullable
    public zzaff zzvY;
    public zzafg zzvZ;
    private boolean zzwA;
    @Nullable
    public zzafh zzwa;
    @Nullable
    zzjl zzwb;
    @Nullable
    zzjo zzwc;
    @Nullable
    zzke zzwd;
    @Nullable
    zzkk zzwe;
    @Nullable
    zzpn zzwf;
    @Nullable
    zzpq zzwg;
    SimpleArrayMap<String, zzpt> zzwh;
    SimpleArrayMap<String, zzpw> zzwi;
    zzon zzwj;
    @Nullable
    zzlx zzwk;
    @Nullable
    zzky zzwl;
    @Nullable
    zzpz zzwm;
    @Nullable
    List<Integer> zzwn;
    @Nullable
    zznh zzwo;
    @Nullable
    zzadd zzwp;
    @Nullable
    List<String> zzwq;
    @Nullable
    public zzafn zzwr;
    @Nullable
    View zzws;
    public int zzwt;
    private HashSet<zzafh> zzwu;
    private int zzwv;
    private int zzww;
    private zzair zzwx;
    private boolean zzwy;
    private boolean zzwz;

    public zzbt(Context context, zziv zziv, String str, zzaje zzaje) {
        this(context, zziv, str, zzaje, null);
    }

    private zzbt(Context context, zziv zziv, String str, zzaje zzaje, zzcu zzcu) {
        this.zzwr = null;
        this.zzws = null;
        this.zzwt = 0;
        this.zzur = false;
        this.zzwu = null;
        this.zzwv = -1;
        this.zzww = -1;
        this.zzwy = true;
        this.zzwz = true;
        this.zzwA = false;
        zzmo.initialize(context);
        if (zzbs.zzbD().zzhr() != null) {
            List zzdK = zzmo.zzdK();
            if (zzaje.zzaaO != 0) {
                zzdK.add(Integer.toString(zzaje.zzaaO));
            }
            zzbs.zzbD().zzhr().zze(zzdK);
        }
        this.zzvQ = UUID.randomUUID().toString();
        if (zziv.zzAt || zziv.zzAv) {
            this.zzvU = null;
        } else {
            this.zzvU = new zzbu(context, str, zzaje.zzaP, this, this);
            this.zzvU.setMinimumWidth(zziv.widthPixels);
            this.zzvU.setMinimumHeight(zziv.heightPixels);
            this.zzvU.setVisibility(4);
        }
        this.zzvX = zziv;
        this.zzvR = str;
        this.zzqD = context;
        this.zzvT = zzaje;
        this.zzvS = new zzcu(new zzah(this));
        this.zzwx = new zzair(200);
        this.zzwi = new SimpleArrayMap();
    }

    private final void zzd(boolean z) {
        if (this.zzvU != null && this.zzvY != null && this.zzvY.zzPg != null && this.zzvY.zzPg.zziw() != null) {
            if (!z || this.zzwx.tryAcquire()) {
                if (this.zzvY.zzPg.zziw().zzcn()) {
                    int[] iArr = new int[2];
                    this.zzvU.getLocationOnScreen(iArr);
                    zzji.zzds();
                    int zzd = zzaiy.zzd(this.zzqD, iArr[0]);
                    zzji.zzds();
                    int zzd2 = zzaiy.zzd(this.zzqD, iArr[1]);
                    if (!(zzd == this.zzwv && zzd2 == this.zzww)) {
                        this.zzwv = zzd;
                        this.zzww = zzd2;
                        this.zzvY.zzPg.zziw().zza(this.zzwv, this.zzww, z ^ 1);
                    }
                }
                if (this.zzvU != null) {
                    View findViewById = this.zzvU.getRootView().findViewById(16908290);
                    if (findViewById != null) {
                        Rect rect = new Rect();
                        Rect rect2 = new Rect();
                        this.zzvU.getGlobalVisibleRect(rect);
                        findViewById.getGlobalVisibleRect(rect2);
                        if (rect.top != rect2.top) {
                            this.zzwy = false;
                        }
                        if (rect.bottom != rect2.bottom) {
                            this.zzwz = false;
                        }
                    }
                }
            }
        }
    }

    public final void onGlobalLayout() {
        zzd(false);
    }

    public final void onScrollChanged() {
        zzd(true);
        this.zzwA = true;
    }

    public final void zza(HashSet<zzafh> hashSet) {
        this.zzwu = hashSet;
    }

    public final HashSet<zzafh> zzbZ() {
        return this.zzwu;
    }

    public final void zzca() {
        if (this.zzvY != null && this.zzvY.zzPg != null) {
            this.zzvY.zzPg.destroy();
        }
    }

    public final void zzcb() {
        if (!(this.zzvY == null || this.zzvY.zzMH == null)) {
            try {
                this.zzvY.zzMH.destroy();
            } catch (RemoteException unused) {
                zzajc.zzaT("Could not destroy mediation adapter.");
            }
        }
    }

    public final boolean zzcc() {
        return this.zzwt == 0;
    }

    public final boolean zzcd() {
        return this.zzwt == 1;
    }

    public final String zzce() {
        return (this.zzwy && this.zzwz) ? "" : this.zzwy ? this.zzwA ? "top-scrollable" : "top-locked" : this.zzwz ? this.zzwA ? "bottom-scrollable" : "bottom-locked" : "";
    }

    public final void zze(boolean z) {
        if (!(this.zzwt != 0 || this.zzvY == null || this.zzvY.zzPg == null)) {
            this.zzvY.zzPg.stopLoading();
        }
        if (this.zzvV != null) {
            this.zzvV.cancel();
        }
        if (this.zzvW != null) {
            this.zzvW.cancel();
        }
        if (z) {
            this.zzvY = null;
        }
    }
}
