package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.Nullable;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.InputDeviceCompat;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.internal.zzc;
import com.google.android.gms.internal.zzafr;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zznb;
import com.google.android.gms.internal.zzzn;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@zzzn
public final class zzaa extends FrameLayout implements zzx {
    private final zzaka zzJH;
    private String zzJM;
    private long zzPA;
    private long zzPB;
    private Bitmap zzPC;
    private ImageView zzPD;
    private boolean zzPE;
    private final FrameLayout zzPr;
    private final zznb zzPs;
    private final zzas zzPt;
    private final long zzPu;
    @Nullable
    private zzy zzPv;
    private boolean zzPw;
    private boolean zzPx;
    private boolean zzPy;
    private boolean zzPz;

    public zzaa(Context context, zzaka zzaka, int i, boolean z, zznb zznb, zzaq zzaq) {
        Context context2 = context;
        super(context2);
        zzaka zzaka2 = zzaka;
        this.zzJH = zzaka2;
        zznb zznb2 = zznb;
        this.zzPs = zznb2;
        this.zzPr = new FrameLayout(context2);
        addView(this.zzPr, new LayoutParams(-1, -1));
        zzc.zzr(zzaka2.zzak());
        this.zzPv = zzaka2.zzak().zztn.zza(context2, zzaka2, i, z, zznb2, zzaq);
        if (this.zzPv != null) {
            this.zzPr.addView(this.zzPv, new LayoutParams(-1, -1, 17));
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzCw)).booleanValue()) {
                zzgb();
            }
        }
        this.zzPD = new ImageView(context2);
        this.zzPu = ((Long) zzbs.zzbL().zzd(zzmo.zzCA)).longValue();
        this.zzPz = ((Boolean) zzbs.zzbL().zzd(zzmo.zzCy)).booleanValue();
        if (this.zzPs != null) {
            this.zzPs.zzh("spinner_used", this.zzPz ? "1" : "0");
        }
        this.zzPt = new zzas(this);
        if (this.zzPv != null) {
            this.zzPv.zza(this);
        }
        if (this.zzPv == null) {
            zzj("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public static void zza(zzaka zzaka, String str) {
        Map hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, str);
        zzaka.zza("onVideoEvent", hashMap);
    }

    private final void zza(String str, String... strArr) {
        Map hashMap = new HashMap();
        hashMap.put("event", str);
        Object obj = null;
        for (Object obj2 : strArr) {
            if (obj == null) {
                obj = obj2;
            } else {
                hashMap.put(obj, obj2);
                obj = null;
            }
        }
        this.zzJH.zza("onVideoEvent", hashMap);
    }

    public static void zzc(zzaka zzaka, Map<String, List<Map<String, Object>>> map) {
        Map hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("mimeTypes", map);
        zzaka.zza("onVideoEvent", hashMap);
    }

    private final boolean zzgd() {
        return this.zzPD.getParent() != null;
    }

    private final void zzge() {
        if (!(this.zzJH.zzis() == null || !this.zzPx || this.zzPy)) {
            this.zzJH.zzis().getWindow().clearFlags(128);
            this.zzPx = false;
        }
    }

    public static void zzh(zzaka zzaka) {
        Map hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        zzaka.zza("onVideoEvent", hashMap);
    }

    public final void destroy() {
        this.zzPt.pause();
        if (this.zzPv != null) {
            this.zzPv.stop();
        }
        zzge();
    }

    public final void onPaused() {
        zza("pause", new String[0]);
        zzge();
        this.zzPw = false;
    }

    public final void pause() {
        if (this.zzPv != null) {
            this.zzPv.pause();
        }
    }

    public final void play() {
        if (this.zzPv != null) {
            this.zzPv.play();
        }
    }

    public final void seekTo(int i) {
        if (this.zzPv != null) {
            this.zzPv.seekTo(i);
        }
    }

    public final void zza(float f, float f2) {
        if (this.zzPv != null) {
            this.zzPv.zza(f, f2);
        }
    }

    public final void zzaq(String str) {
        this.zzJM = str;
    }

    public final void zzb(float f) {
        if (this.zzPv != null) {
            zzy zzy = this.zzPv;
            zzy.zzPq.zzb(f);
            zzy.zzfH();
        }
    }

    public final void zzd(int i, int i2) {
        if (this.zzPz) {
            i = Math.max(i / ((Integer) zzbs.zzbL().zzd(zzmo.zzCz)).intValue(), 1);
            i2 = Math.max(i2 / ((Integer) zzbs.zzbL().zzd(zzmo.zzCz)).intValue(), 1);
            if (this.zzPC == null || this.zzPC.getWidth() != i || this.zzPC.getHeight() != i2) {
                this.zzPC = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
                this.zzPE = false;
            }
        }
    }

    public final void zzd(int i, int i2, int i3, int i4) {
        if (i3 != 0 && i4 != 0) {
            LayoutParams layoutParams = new LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this.zzPr.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    @TargetApi(14)
    public final void zze(MotionEvent motionEvent) {
        if (this.zzPv != null) {
            this.zzPv.dispatchTouchEvent(motionEvent);
        }
    }

    public final void zzfS() {
        this.zzPt.resume();
        zzagz.zzZr.post(new zzab(this));
    }

    public final void zzfT() {
        if (this.zzPv != null && this.zzPB == 0) {
            float duration = ((float) this.zzPv.getDuration()) / 1000.0f;
            int videoWidth = this.zzPv.getVideoWidth();
            int videoHeight = this.zzPv.getVideoHeight();
            zza("canplaythrough", "duration", String.valueOf(duration), "videoWidth", String.valueOf(videoWidth), "videoHeight", String.valueOf(videoHeight));
        }
    }

    public final void zzfU() {
        if (!(this.zzJH.zzis() == null || this.zzPx)) {
            this.zzPy = (this.zzJH.zzis().getWindow().getAttributes().flags & 128) != 0;
            if (!this.zzPy) {
                this.zzJH.zzis().getWindow().addFlags(128);
                this.zzPx = true;
            }
        }
        this.zzPw = true;
    }

    public final void zzfV() {
        zza("ended", new String[0]);
        zzge();
    }

    public final void zzfW() {
        if (!(!this.zzPE || this.zzPC == null || zzgd())) {
            this.zzPD.setImageBitmap(this.zzPC);
            this.zzPD.invalidate();
            this.zzPr.addView(this.zzPD, new LayoutParams(-1, -1));
            this.zzPr.bringChildToFront(this.zzPD);
        }
        this.zzPt.pause();
        this.zzPB = this.zzPA;
        zzagz.zzZr.post(new zzac(this));
    }

    public final void zzfX() {
        if (this.zzPw && zzgd()) {
            this.zzPr.removeView(this.zzPD);
        }
        if (this.zzPC != null) {
            long elapsedRealtime = zzbs.zzbF().elapsedRealtime();
            if (this.zzPv.getBitmap(this.zzPC) != null) {
                this.zzPE = true;
            }
            long elapsedRealtime2 = zzbs.zzbF().elapsedRealtime() - elapsedRealtime;
            if (zzafr.zzhM()) {
                StringBuilder stringBuilder = new StringBuilder(46);
                stringBuilder.append("Spinner frame grab took ");
                stringBuilder.append(elapsedRealtime2);
                stringBuilder.append("ms");
                zzafr.v(stringBuilder.toString());
            }
            if (elapsedRealtime2 > this.zzPu) {
                zzajc.zzaT("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.zzPz = false;
                this.zzPC = null;
                if (this.zzPs != null) {
                    this.zzPs.zzh("spinner_jank", Long.toString(elapsedRealtime2));
                }
            }
        }
    }

    public final void zzfY() {
        if (this.zzPv != null) {
            if (TextUtils.isEmpty(this.zzJM)) {
                zza("no_src", new String[0]);
            } else {
                this.zzPv.setVideoPath(this.zzJM);
            }
        }
    }

    public final void zzfZ() {
        if (this.zzPv != null) {
            zzy zzy = this.zzPv;
            zzy.zzPq.setMuted(true);
            zzy.zzfH();
        }
    }

    public final void zzga() {
        if (this.zzPv != null) {
            zzy zzy = this.zzPv;
            zzy.zzPq.setMuted(false);
            zzy.zzfH();
        }
    }

    @TargetApi(14)
    public final void zzgb() {
        if (this.zzPv != null) {
            TextView textView = new TextView(this.zzPv.getContext());
            String str = "AdMob - ";
            String valueOf = String.valueOf(this.zzPv.zzfD());
            textView.setText(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            textView.setTextColor(SupportMenu.CATEGORY_MASK);
            textView.setBackgroundColor(InputDeviceCompat.SOURCE_ANY);
            this.zzPr.addView(textView, new LayoutParams(-2, -2, 17));
            this.zzPr.bringChildToFront(textView);
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzgc() {
        if (this.zzPv != null) {
            long currentPosition = (long) this.zzPv.getCurrentPosition();
            if (this.zzPA != currentPosition && currentPosition > 0) {
                float f = ((float) currentPosition) / 1000.0f;
                zza("timeupdate", "time", String.valueOf(f));
                this.zzPA = currentPosition;
            }
        }
    }

    public final void zzj(String str, @Nullable String str2) {
        zza(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, "what", str, "extra", str2);
    }
}
