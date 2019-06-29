package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public class zzc {
    protected final DataHolder zzaCX;
    protected int zzaFx;
    private int zzaFy;

    public zzc(DataHolder dataHolder, int i) {
        this.zzaCX = (DataHolder) zzbo.zzu(dataHolder);
        zzar(i);
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzc) {
            zzc zzc = (zzc) obj;
            if (zzbe.equal(Integer.valueOf(zzc.zzaFx), Integer.valueOf(this.zzaFx)) && zzbe.equal(Integer.valueOf(zzc.zzaFy), Integer.valueOf(this.zzaFy)) && zzc.zzaCX == this.zzaCX) {
                return true;
            }
        }
        return false;
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean getBoolean(String str) {
        return this.zzaCX.zze(str, this.zzaFx, this.zzaFy);
    }

    /* Access modifiers changed, original: protected|final */
    public final byte[] getByteArray(String str) {
        return this.zzaCX.zzg(str, this.zzaFx, this.zzaFy);
    }

    /* Access modifiers changed, original: protected|final */
    public final float getFloat(String str) {
        return this.zzaCX.zzf(str, this.zzaFx, this.zzaFy);
    }

    /* Access modifiers changed, original: protected|final */
    public final int getInteger(String str) {
        return this.zzaCX.zzc(str, this.zzaFx, this.zzaFy);
    }

    /* Access modifiers changed, original: protected|final */
    public final long getLong(String str) {
        return this.zzaCX.zzb(str, this.zzaFx, this.zzaFy);
    }

    /* Access modifiers changed, original: protected|final */
    public final String getString(String str) {
        return this.zzaCX.zzd(str, this.zzaFx, this.zzaFy);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzaFx), Integer.valueOf(this.zzaFy), this.zzaCX});
    }

    public boolean isDataValid() {
        return !this.zzaCX.isClosed();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(String str, CharArrayBuffer charArrayBuffer) {
        this.zzaCX.zza(str, this.zzaFx, this.zzaFy, charArrayBuffer);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzar(int i) {
        boolean z = i >= 0 && i < this.zzaCX.zzaFG;
        zzbo.zzae(z);
        this.zzaFx = i;
        this.zzaFy = this.zzaCX.zzat(this.zzaFx);
    }

    public final boolean zzcv(String str) {
        return this.zzaCX.zzcv(str);
    }

    /* Access modifiers changed, original: protected|final */
    public final Uri zzcw(String str) {
        str = this.zzaCX.zzd(str, this.zzaFx, this.zzaFy);
        return str == null ? null : Uri.parse(str);
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zzcx(String str) {
        return this.zzaCX.zzh(str, this.zzaFx, this.zzaFy);
    }
}
