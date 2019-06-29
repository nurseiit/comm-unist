package com.google.android.gms.internal;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import java.io.IOException;

final class zzawh implements OnClickListener {
    private /* synthetic */ zzawf zzavF;

    zzawh(zzawf zzawf) {
        this.zzavF = zzawf;
    }

    public final void onClick(View view) {
        CastSession currentCastSession = CastContext.getSharedInstance(this.zzavF.zzarM).getSessionManager().getCurrentCastSession();
        if (currentCastSession != null && currentCastSession.isConnected()) {
            try {
                if (currentCastSession.isMute()) {
                    currentCastSession.setMute(false);
                    this.zzavF.zzW(true);
                    return;
                }
                currentCastSession.setMute(true);
                this.zzavF.zzW(false);
            } catch (IOException | IllegalArgumentException e) {
                zzawf.zzarK.zzc("Unable to call CastSession.setMute(boolean).", e);
            }
        }
    }
}
