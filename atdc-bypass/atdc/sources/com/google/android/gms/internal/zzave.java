package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.RemoteException;
import com.google.android.gms.search.SearchAuth.StatusCodes;

public final class zzave extends AsyncTask<Uri, Long, Bitmap> {
    private static final zzayo zzarK = new zzayo("FetchBitmapTask");
    private final zzavj zzauV;
    private final zzavg zzauW;

    private zzave(Context context, int i, int i2, boolean z, long j, int i3, int i4, int i5, zzavg zzavg) {
        this.zzauV = zzauj.zza(context.getApplicationContext(), this, new zzavi(this), i, i2, z, 2097152, 5, 333, StatusCodes.AUTH_DISABLED);
        this.zzauW = zzavg;
    }

    public zzave(Context context, int i, int i2, boolean z, zzavg zzavg) {
        this(context, i, i2, false, 2097152, 5, 333, StatusCodes.AUTH_DISABLED, zzavg);
    }

    public zzave(Context context, zzavg zzavg) {
        this(context, 0, 0, false, 2097152, 5, 333, StatusCodes.AUTH_DISABLED, zzavg);
    }

    private final Bitmap doInBackground(Uri... uriArr) {
        if (uriArr.length != 1 || uriArr[0] == null) {
            return null;
        }
        try {
            return this.zzauV.zzn(uriArr[0]);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "doFetch", zzavj.class.getSimpleName());
            return null;
        }
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void onPostExecute(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        if (this.zzauW != null) {
            this.zzauW.onPostExecute(bitmap);
        }
    }
}
