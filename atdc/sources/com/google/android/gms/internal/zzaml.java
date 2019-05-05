package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzbo;

public final class zzaml {
    private final Context mApplicationContext;
    private final Context zzagb;

    public zzaml(Context context) {
        zzbo.zzu(context);
        Object applicationContext = context.getApplicationContext();
        zzbo.zzb(applicationContext, (Object) "Application context can't be null");
        this.mApplicationContext = applicationContext;
        this.zzagb = applicationContext;
    }

    public final Context getApplicationContext() {
        return this.mApplicationContext;
    }

    public final Context zzkE() {
        return this.zzagb;
    }
}
