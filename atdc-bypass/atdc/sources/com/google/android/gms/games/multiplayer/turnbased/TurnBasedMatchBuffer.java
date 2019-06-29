package com.google.android.gms.games.multiplayer.turnbased;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzg;

public final class TurnBasedMatchBuffer extends zzg<TurnBasedMatch> {
    public TurnBasedMatchBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzi(int i, int i2) {
        return new zzd(this.zzaCX, i, i2);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzqS() {
        return "external_match_id";
    }
}
