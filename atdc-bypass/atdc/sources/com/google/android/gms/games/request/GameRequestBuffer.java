package com.google.android.gms.games.request;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzg;

@Deprecated
public final class GameRequestBuffer extends zzg<GameRequest> {
    public GameRequestBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzi(int i, int i2) {
        return new zzb(this.zzaCX, i, i2);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzqS() {
        return "external_request_id";
    }
}