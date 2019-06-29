package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.zzo;

public abstract class zzp<T> {
    private final String zzaSC;
    private T zzaSD;

    protected zzp(String str) {
        this.zzaSC = str;
    }

    /* Access modifiers changed, original: protected|final */
    public final T zzaS(Context context) throws zzq {
        if (this.zzaSD == null) {
            zzbo.zzu(context);
            context = zzo.getRemoteContext(context);
            if (context == null) {
                throw new zzq("Could not get remote context.");
            }
            try {
                this.zzaSD = zzb((IBinder) context.getClassLoader().loadClass(this.zzaSC).newInstance());
            } catch (ClassNotFoundException e) {
                throw new zzq("Could not load creator class.", e);
            } catch (InstantiationException e2) {
                throw new zzq("Could not instantiate creator.", e2);
            } catch (IllegalAccessException e3) {
                throw new zzq("Could not access creator.", e3);
            }
        }
        return this.zzaSD;
    }

    public abstract T zzb(IBinder iBinder);
}
