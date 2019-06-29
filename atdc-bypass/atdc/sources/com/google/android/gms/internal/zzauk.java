package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionProvider;

public final class zzauk extends SessionProvider {
    private final CastOptions zzarQ;
    private final zzavb zzasB;

    public zzauk(Context context, CastOptions castOptions, zzavb zzavb) {
        super(context, castOptions.getSupportedNamespaces().isEmpty() ? CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId()) : CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId(), castOptions.getSupportedNamespaces()));
        this.zzarQ = castOptions;
        this.zzasB = zzavb;
    }

    public final Session createSession(String str) {
        return new CastSession(getContext(), getCategory(), str, this.zzarQ, Cast.CastApi, new zzaul(), new zzavn(getContext(), this.zzarQ, this.zzasB));
    }

    public final boolean isSessionRecoverable() {
        return this.zzarQ.getResumeSavedSession();
    }
}
