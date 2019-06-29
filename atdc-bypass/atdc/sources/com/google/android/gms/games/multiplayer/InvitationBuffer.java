package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzg;

public final class InvitationBuffer extends zzg<Invitation> {
    public InvitationBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzi(int i, int i2) {
        return new zzb(this.zzaCX, i, i2);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzqS() {
        return "external_invitation_id";
    }
}
