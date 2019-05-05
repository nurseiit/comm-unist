package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.view.Surface;
import android.view.TextureView.SurfaceTextureListener;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.internal.zzafr;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzia;
import com.google.android.gms.internal.zzzn;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@zzzn
@TargetApi(14)
public final class zzd extends zzy implements OnBufferingUpdateListener, OnCompletionListener, OnErrorListener, OnInfoListener, OnPreparedListener, OnVideoSizeChangedListener, SurfaceTextureListener {
    private static final Map<Integer, String> zzOk = new HashMap();
    private final zzar zzOl;
    private final boolean zzOm;
    private int zzOn = 0;
    private int zzOo = 0;
    private MediaPlayer zzOp;
    private Uri zzOq;
    private int zzOr;
    private int zzOs;
    private int zzOt;
    private int zzOu;
    private int zzOv;
    private zzap zzOw;
    private boolean zzOx;
    private int zzOy;
    private zzx zzOz;

    static {
        if (VERSION.SDK_INT >= 17) {
            zzOk.put(Integer.valueOf(-1004), "MEDIA_ERROR_IO");
            zzOk.put(Integer.valueOf(-1007), "MEDIA_ERROR_MALFORMED");
            zzOk.put(Integer.valueOf(-1010), "MEDIA_ERROR_UNSUPPORTED");
            zzOk.put(Integer.valueOf(-110), "MEDIA_ERROR_TIMED_OUT");
            zzOk.put(Integer.valueOf(3), "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        zzOk.put(Integer.valueOf(100), "MEDIA_ERROR_SERVER_DIED");
        zzOk.put(Integer.valueOf(1), "MEDIA_ERROR_UNKNOWN");
        zzOk.put(Integer.valueOf(1), "MEDIA_INFO_UNKNOWN");
        zzOk.put(Integer.valueOf(700), "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        zzOk.put(Integer.valueOf(701), "MEDIA_INFO_BUFFERING_START");
        zzOk.put(Integer.valueOf(702), "MEDIA_INFO_BUFFERING_END");
        zzOk.put(Integer.valueOf(800), "MEDIA_INFO_BAD_INTERLEAVING");
        zzOk.put(Integer.valueOf(801), "MEDIA_INFO_NOT_SEEKABLE");
        zzOk.put(Integer.valueOf(802), "MEDIA_INFO_METADATA_UPDATE");
        if (VERSION.SDK_INT >= 19) {
            zzOk.put(Integer.valueOf(901), "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            zzOk.put(Integer.valueOf(902), "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public zzd(Context context, boolean z, boolean z2, zzaq zzaq, zzar zzar) {
        super(context);
        setSurfaceTextureListener(this);
        this.zzOl = zzar;
        this.zzOx = z;
        this.zzOm = z2;
        this.zzOl.zza(this);
    }

    private final void zza(float f) {
        if (this.zzOp != null) {
            try {
                this.zzOp.setVolume(f, f);
            } catch (IllegalStateException unused) {
            }
        } else {
            zzajc.zzaT("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        }
    }

    private final void zzfE() {
        zzafr.v("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.zzOq != null && surfaceTexture != null) {
            zzq(false);
            try {
                zzbs.zzbQ();
                this.zzOp = new MediaPlayer();
                this.zzOp.setOnBufferingUpdateListener(this);
                this.zzOp.setOnCompletionListener(this);
                this.zzOp.setOnErrorListener(this);
                this.zzOp.setOnInfoListener(this);
                this.zzOp.setOnPreparedListener(this);
                this.zzOp.setOnVideoSizeChangedListener(this);
                this.zzOt = 0;
                if (this.zzOx) {
                    this.zzOw = new zzap(getContext());
                    this.zzOw.zza(surfaceTexture, getWidth(), getHeight());
                    this.zzOw.start();
                    SurfaceTexture zzgg = this.zzOw.zzgg();
                    if (zzgg != null) {
                        surfaceTexture = zzgg;
                    } else {
                        this.zzOw.zzgf();
                        this.zzOw = null;
                    }
                }
                this.zzOp.setDataSource(getContext(), this.zzOq);
                zzbs.zzbR();
                this.zzOp.setSurface(new Surface(surfaceTexture));
                this.zzOp.setAudioStreamType(3);
                this.zzOp.setScreenOnWhilePlaying(true);
                this.zzOp.prepareAsync();
                zzq(1);
            } catch (IOException | IllegalArgumentException | IllegalStateException e) {
                String valueOf = String.valueOf(this.zzOq);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 36);
                stringBuilder.append("Failed to initialize MediaPlayer at ");
                stringBuilder.append(valueOf);
                zzajc.zzc(stringBuilder.toString(), e);
                onError(this.zzOp, 1, 0);
            }
        }
    }

    private final void zzfF() {
        if (this.zzOm && zzfG() && this.zzOp.getCurrentPosition() > 0 && this.zzOo != 3) {
            zzafr.v("AdMediaPlayerView nudging MediaPlayer");
            zza(0.0f);
            this.zzOp.start();
            int currentPosition = this.zzOp.getCurrentPosition();
            long currentTimeMillis = zzbs.zzbF().currentTimeMillis();
            while (zzfG() && this.zzOp.getCurrentPosition() == currentPosition) {
                if (zzbs.zzbF().currentTimeMillis() - currentTimeMillis > 250) {
                    break;
                }
            }
            this.zzOp.pause();
            zzfH();
        }
    }

    private final boolean zzfG() {
        return (this.zzOp == null || this.zzOn == -1 || this.zzOn == 0 || this.zzOn == 1) ? false : true;
    }

    private final void zzq(int i) {
        if (i == 3) {
            this.zzOl.zzgj();
            this.zzPq.zzgj();
        } else if (this.zzOn == 3) {
            this.zzOl.zzgk();
            this.zzPq.zzgk();
        }
        this.zzOn = i;
    }

    private final void zzq(boolean z) {
        zzafr.v("AdMediaPlayerView release");
        if (this.zzOw != null) {
            this.zzOw.zzgf();
            this.zzOw = null;
        }
        if (this.zzOp != null) {
            this.zzOp.reset();
            this.zzOp.release();
            this.zzOp = null;
            zzq(0);
            if (z) {
                this.zzOo = 0;
                this.zzOo = 0;
            }
        }
    }

    public final int getCurrentPosition() {
        return zzfG() ? this.zzOp.getCurrentPosition() : 0;
    }

    public final int getDuration() {
        return zzfG() ? this.zzOp.getDuration() : -1;
    }

    public final int getVideoHeight() {
        return this.zzOp != null ? this.zzOp.getVideoHeight() : 0;
    }

    public final int getVideoWidth() {
        return this.zzOp != null ? this.zzOp.getVideoWidth() : 0;
    }

    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.zzOt = i;
    }

    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzafr.v("AdMediaPlayerView completion");
        zzq(5);
        this.zzOo = 5;
        zzagz.zzZr.post(new zzf(this));
    }

    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str = (String) zzOk.get(Integer.valueOf(i));
        String str2 = (String) zzOk.get(Integer.valueOf(i2));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 38) + String.valueOf(str2).length());
        stringBuilder.append("AdMediaPlayerView MediaPlayer error: ");
        stringBuilder.append(str);
        stringBuilder.append(":");
        stringBuilder.append(str2);
        zzajc.zzaT(stringBuilder.toString());
        zzq(-1);
        this.zzOo = -1;
        zzagz.zzZr.post(new zzg(this, str, str2));
        return true;
    }

    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str = (String) zzOk.get(Integer.valueOf(i));
        String str2 = (String) zzOk.get(Integer.valueOf(i2));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 37) + String.valueOf(str2).length());
        stringBuilder.append("AdMediaPlayerView MediaPlayer info: ");
        stringBuilder.append(str);
        stringBuilder.append(":");
        stringBuilder.append(str2);
        zzafr.v(stringBuilder.toString());
        return true;
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:51:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:51:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Missing block: B:13:0x004a, code skipped:
            if ((r5.zzOr * r7) > (r5.zzOs * r6)) goto L_0x004c;
     */
    /* JADX WARNING: Missing block: B:24:0x0072, code skipped:
            if (r1 > r6) goto L_0x0090;
     */
    /* JADX WARNING: Missing block: B:32:0x008b, code skipped:
            if (r1 > r6) goto L_0x004c;
     */
    public final void onMeasure(int r6, int r7) {
        /*
        r5 = this;
        r0 = r5.zzOr;
        r0 = getDefaultSize(r0, r6);
        r1 = r5.zzOs;
        r1 = getDefaultSize(r1, r7);
        r2 = r5.zzOr;
        if (r2 <= 0) goto L_0x008e;
    L_0x0010:
        r2 = r5.zzOs;
        if (r2 <= 0) goto L_0x008e;
    L_0x0014:
        r2 = r5.zzOw;
        if (r2 != 0) goto L_0x008e;
    L_0x0018:
        r0 = android.view.View.MeasureSpec.getMode(r6);
        r6 = android.view.View.MeasureSpec.getSize(r6);
        r1 = android.view.View.MeasureSpec.getMode(r7);
        r7 = android.view.View.MeasureSpec.getSize(r7);
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r0 != r2) goto L_0x0055;
    L_0x002c:
        if (r1 != r2) goto L_0x0055;
    L_0x002e:
        r0 = r5.zzOr;
        r0 = r0 * r7;
        r1 = r5.zzOs;
        r1 = r1 * r6;
        if (r0 >= r1) goto L_0x0042;
    L_0x0038:
        r6 = r5.zzOr;
        r6 = r6 * r7;
        r0 = r5.zzOs;
        r0 = r6 / r0;
        r6 = r0;
        goto L_0x0090;
    L_0x0042:
        r0 = r5.zzOr;
        r0 = r0 * r7;
        r1 = r5.zzOs;
        r1 = r1 * r6;
        if (r0 <= r1) goto L_0x0090;
    L_0x004c:
        r7 = r5.zzOs;
        r7 = r7 * r6;
        r0 = r5.zzOr;
        r1 = r7 / r0;
        goto L_0x008f;
    L_0x0055:
        r3 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r0 != r2) goto L_0x0067;
    L_0x0059:
        r0 = r5.zzOs;
        r0 = r0 * r6;
        r2 = r5.zzOr;
        r0 = r0 / r2;
        if (r1 != r3) goto L_0x0065;
    L_0x0062:
        if (r0 <= r7) goto L_0x0065;
    L_0x0064:
        goto L_0x0090;
    L_0x0065:
        r7 = r0;
        goto L_0x0090;
    L_0x0067:
        if (r1 != r2) goto L_0x0077;
    L_0x0069:
        r1 = r5.zzOr;
        r1 = r1 * r7;
        r2 = r5.zzOs;
        r1 = r1 / r2;
        if (r0 != r3) goto L_0x0075;
    L_0x0072:
        if (r1 <= r6) goto L_0x0075;
    L_0x0074:
        goto L_0x0090;
    L_0x0075:
        r6 = r1;
        goto L_0x0090;
    L_0x0077:
        r2 = r5.zzOr;
        r4 = r5.zzOs;
        if (r1 != r3) goto L_0x0087;
    L_0x007d:
        if (r4 <= r7) goto L_0x0087;
    L_0x007f:
        r1 = r5.zzOr;
        r1 = r1 * r7;
        r2 = r5.zzOs;
        r1 = r1 / r2;
        goto L_0x0089;
    L_0x0087:
        r1 = r2;
        r7 = r4;
    L_0x0089:
        if (r0 != r3) goto L_0x0075;
    L_0x008b:
        if (r1 <= r6) goto L_0x0075;
    L_0x008d:
        goto L_0x004c;
    L_0x008e:
        r6 = r0;
    L_0x008f:
        r7 = r1;
    L_0x0090:
        r5.setMeasuredDimension(r6, r7);
        r0 = r5.zzOw;
        if (r0 == 0) goto L_0x009c;
    L_0x0097:
        r0 = r5.zzOw;
        r0.zzf(r6, r7);
    L_0x009c:
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 16;
        if (r0 != r1) goto L_0x00b9;
    L_0x00a2:
        r0 = r5.zzOu;
        if (r0 <= 0) goto L_0x00aa;
    L_0x00a6:
        r0 = r5.zzOu;
        if (r0 != r6) goto L_0x00b2;
    L_0x00aa:
        r0 = r5.zzOv;
        if (r0 <= 0) goto L_0x00b5;
    L_0x00ae:
        r0 = r5.zzOv;
        if (r0 == r7) goto L_0x00b5;
    L_0x00b2:
        r5.zzfF();
    L_0x00b5:
        r5.zzOu = r6;
        r5.zzOv = r7;
    L_0x00b9:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzd.onMeasure(int, int):void");
    }

    public final void onPrepared(MediaPlayer mediaPlayer) {
        zzafr.v("AdMediaPlayerView prepared");
        zzq(2);
        this.zzOl.zzfT();
        zzagz.zzZr.post(new zze(this));
        this.zzOr = mediaPlayer.getVideoWidth();
        this.zzOs = mediaPlayer.getVideoHeight();
        if (this.zzOy != 0) {
            seekTo(this.zzOy);
        }
        zzfF();
        int i = this.zzOr;
        int i2 = this.zzOs;
        StringBuilder stringBuilder = new StringBuilder(62);
        stringBuilder.append("AdMediaPlayerView stream dimensions: ");
        stringBuilder.append(i);
        stringBuilder.append(" x ");
        stringBuilder.append(i2);
        zzajc.zzaS(stringBuilder.toString());
        if (this.zzOo == 3) {
            play();
        }
        zzfH();
    }

    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzafr.v("AdMediaPlayerView surface created");
        zzfE();
        zzagz.zzZr.post(new zzh(this));
    }

    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzafr.v("AdMediaPlayerView surface destroyed");
        if (this.zzOp != null && this.zzOy == 0) {
            this.zzOy = this.zzOp.getCurrentPosition();
        }
        if (this.zzOw != null) {
            this.zzOw.zzgf();
        }
        zzagz.zzZr.post(new zzj(this));
        zzq(true);
        return true;
    }

    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzafr.v("AdMediaPlayerView surface changed");
        Object obj = null;
        Object obj2 = this.zzOo == 3 ? 1 : null;
        if (this.zzOr == i && this.zzOs == i2) {
            obj = 1;
        }
        if (!(this.zzOp == null || obj2 == null || obj == null)) {
            if (this.zzOy != 0) {
                seekTo(this.zzOy);
            }
            play();
        }
        if (this.zzOw != null) {
            this.zzOw.zzf(i, i2);
        }
        zzagz.zzZr.post(new zzi(this, i, i2));
    }

    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzOl.zzb(this);
        this.zzPp.zza(surfaceTexture, this.zzOz);
    }

    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder stringBuilder = new StringBuilder(57);
        stringBuilder.append("AdMediaPlayerView size changed: ");
        stringBuilder.append(i);
        stringBuilder.append(" x ");
        stringBuilder.append(i2);
        zzafr.v(stringBuilder.toString());
        this.zzOr = mediaPlayer.getVideoWidth();
        this.zzOs = mediaPlayer.getVideoHeight();
        if (this.zzOr != 0 && this.zzOs != 0) {
            requestLayout();
        }
    }

    public final void pause() {
        zzafr.v("AdMediaPlayerView pause");
        if (zzfG() && this.zzOp.isPlaying()) {
            this.zzOp.pause();
            zzq(4);
            zzagz.zzZr.post(new zzl(this));
        }
        this.zzOo = 4;
    }

    public final void play() {
        zzafr.v("AdMediaPlayerView play");
        if (zzfG()) {
            this.zzOp.start();
            zzq(3);
            this.zzPp.zzfU();
            zzagz.zzZr.post(new zzk(this));
        }
        this.zzOo = 3;
    }

    public final void seekTo(int i) {
        StringBuilder stringBuilder = new StringBuilder(34);
        stringBuilder.append("AdMediaPlayerView seek ");
        stringBuilder.append(i);
        zzafr.v(stringBuilder.toString());
        if (zzfG()) {
            this.zzOp.seekTo(i);
            this.zzOy = 0;
            return;
        }
        this.zzOy = i;
    }

    public final void setVideoPath(String str) {
        Uri parse = Uri.parse(str);
        zzia zze = zzia.zze(parse);
        if (zze != null) {
            parse = Uri.parse(zze.url);
        }
        this.zzOq = parse;
        this.zzOy = 0;
        zzfE();
        requestLayout();
        invalidate();
    }

    public final void stop() {
        zzafr.v("AdMediaPlayerView stop");
        if (this.zzOp != null) {
            this.zzOp.stop();
            this.zzOp.release();
            this.zzOp = null;
            zzq(0);
            this.zzOo = 0;
        }
        this.zzOl.onStop();
    }

    public final String toString() {
        String valueOf = String.valueOf(getClass().getName());
        String valueOf2 = String.valueOf(Integer.toHexString(hashCode()));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length());
        stringBuilder.append(valueOf);
        stringBuilder.append("@");
        stringBuilder.append(valueOf2);
        return stringBuilder.toString();
    }

    public final void zza(float f, float f2) {
        if (this.zzOw != null) {
            this.zzOw.zzb(f, f2);
        }
    }

    public final void zza(zzx zzx) {
        this.zzOz = zzx;
    }

    public final String zzfD() {
        String str = "MediaPlayer";
        String valueOf = String.valueOf(this.zzOx ? " spherical" : "");
        return valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
    }

    public final void zzfH() {
        zza(this.zzPq.zzgm());
    }
}
