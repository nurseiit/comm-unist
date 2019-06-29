package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import java.io.IOException;

public class zzaxw {
    private final String zzanR;
    protected final zzayo zzarK;
    private zzays zzaxK;

    protected zzaxw(String str, String str2, String str3) {
        zzaye.zzci(str);
        this.zzanR = str;
        this.zzarK = new zzayo(str2);
        setSessionLabel(str3);
    }

    public final String getNamespace() {
        return this.zzanR;
    }

    public final void setSessionLabel(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.zzarK.zzcn(str);
        }
    }

    public final void zza(zzays zzays) {
        this.zzaxK = zzays;
        if (this.zzaxK == null) {
            zzoz();
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(String str, long j, String str2) throws IOException {
        Object[] objArr = new Object[]{str, null};
        this.zzaxK.zza(this.zzanR, str, j, null);
    }

    public void zzc(long j, int i) {
    }

    public void zzch(@NonNull String str) {
    }

    /* Access modifiers changed, original: protected|final */
    public final long zzoA() {
        return this.zzaxK.zznl();
    }

    public void zzoz() {
    }
}
