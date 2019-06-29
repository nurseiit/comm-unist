package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import com.google.android.gms.cast.framework.media.ImageHints;

public final class zzavc implements zzavg {
    private Bitmap mBitmap;
    private final Context zzarM;
    private final ImageHints zzauP;
    private Uri zzauQ;
    private zzave zzauR;
    private zzavh zzauS;
    private boolean zzauT;
    private zzavd zzauU;

    public zzavc(Context context) {
        this(context, new ImageHints(-1, 0, 0));
    }

    public zzavc(Context context, @NonNull ImageHints imageHints) {
        this.zzarM = context;
        this.zzauP = imageHints;
        this.zzauS = new zzavh();
        reset();
    }

    private final void reset() {
        if (this.zzauR != null) {
            this.zzauR.cancel(true);
            this.zzauR = null;
        }
        this.zzauQ = null;
        this.mBitmap = null;
        this.zzauT = false;
    }

    public final void clear() {
        reset();
        this.zzauU = null;
    }

    public final void onPostExecute(Bitmap bitmap) {
        this.mBitmap = bitmap;
        this.zzauT = true;
        if (this.zzauU != null) {
            this.zzauU.zzc(this.mBitmap);
        }
        this.zzauR = null;
    }

    public final void zza(zzavd zzavd) {
        this.zzauU = zzavd;
    }

    public final boolean zzm(Uri uri) {
        if (uri == null) {
            reset();
            return true;
        } else if (uri.equals(this.zzauQ)) {
            return this.zzauT;
        } else {
            reset();
            this.zzauQ = uri;
            if (this.zzauP.getWidthInPixels() == 0 || this.zzauP.getHeightInPixels() == 0) {
                this.zzauR = new zzave(this.zzarM, this);
            } else {
                this.zzauR = new zzave(this.zzarM, this.zzauP.getWidthInPixels(), this.zzauP.getHeightInPixels(), false, this);
            }
            zzave zzave = this.zzauR;
            Uri uri2 = this.zzauQ;
            zzave.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Uri[]{uri2});
            return false;
        }
    }
}
