package com.google.android.gms.tagmanager;

import android.content.Context;

public final class zzbb implements zzby {
    private static final Object zzbDk = new Object();
    private static zzbb zzbEy;
    private zzek zzbDM;
    private zzbz zzbEz;

    private zzbb(Context context) {
        this(zzca.zzbs(context), new zzfm());
    }

    private zzbb(zzbz zzbz, zzek zzek) {
        this.zzbEz = zzbz;
        this.zzbDM = zzek;
    }

    public static zzby zzbm(Context context) {
        zzbb zzbb;
        synchronized (zzbDk) {
            if (zzbEy == null) {
                zzbEy = new zzbb(context);
            }
            zzbb = zzbEy;
        }
        return zzbb;
    }

    public final boolean zzfh(String str) {
        if (this.zzbDM.zzlL()) {
            this.zzbEz.zzfm(str);
            return true;
        }
        zzdj.zzaT("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
        return false;
    }
}
