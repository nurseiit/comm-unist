package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzeu;
import com.google.android.gms.internal.zzmo;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class zzbq extends AsyncTask<Void, Void, String> {
    private /* synthetic */ zzbm zzvf;

    private zzbq(zzbm zzbm) {
        this.zzvf = zzbm;
    }

    /* synthetic */ zzbq(zzbm zzbm, zzbn zzbn) {
        this(zzbm);
    }

    private final String zza(Void... voidArr) {
        try {
            this.zzvf.zzvd = (zzeu) this.zzvf.zzva.get(((Long) zzbs.zzbL().zzd(zzmo.zzFX)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException e) {
            zzajc.zzc("Failed to load ad data", e);
        } catch (TimeoutException unused) {
            zzajc.zzaT("Timed out waiting for ad data");
        }
        return this.zzvf.zzbp();
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return zza((Void[]) objArr);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        if (this.zzvf.zzvc != null && str != null) {
            this.zzvf.zzvc.loadUrl(str);
        }
    }
}
