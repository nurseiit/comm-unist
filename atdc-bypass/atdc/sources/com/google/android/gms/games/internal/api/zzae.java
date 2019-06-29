package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;

final class zzae implements LoadInvitationsResult {
    private /* synthetic */ Status zzakB;

    zzae(zzad zzad, Status status) {
        this.zzakB = status;
    }

    public final InvitationBuffer getInvitations() {
        return new InvitationBuffer(DataHolder.zzau(14));
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
