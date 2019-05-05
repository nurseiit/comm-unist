package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.games.multiplayer.Multiplayer;
import java.util.ArrayList;
import java.util.Arrays;

public abstract class RoomConfig {

    public static final class Builder {
        final RoomUpdateListener zzbdG;
        RoomStatusUpdateListener zzbdH;
        RealTimeMessageReceivedListener zzbdI;
        String zzbdJ;
        ArrayList<String> zzbdK;
        Bundle zzbdL;
        int zzbdu;

        private Builder(RoomUpdateListener roomUpdateListener) {
            this.zzbdJ = null;
            this.zzbdu = -1;
            this.zzbdK = new ArrayList();
            this.zzbdG = (RoomUpdateListener) zzbo.zzb((Object) roomUpdateListener, (Object) "Must provide a RoomUpdateListener");
        }

        /* synthetic */ Builder(RoomUpdateListener roomUpdateListener, zzc zzc) {
            this(roomUpdateListener);
        }

        public final Builder addPlayersToInvite(ArrayList<String> arrayList) {
            zzbo.zzu(arrayList);
            this.zzbdK.addAll(arrayList);
            return this;
        }

        public final Builder addPlayersToInvite(String... strArr) {
            zzbo.zzu(strArr);
            this.zzbdK.addAll(Arrays.asList(strArr));
            return this;
        }

        public final RoomConfig build() {
            return new zzd(this);
        }

        public final Builder setAutoMatchCriteria(Bundle bundle) {
            this.zzbdL = bundle;
            return this;
        }

        public final Builder setInvitationIdToAccept(String str) {
            zzbo.zzu(str);
            this.zzbdJ = str;
            return this;
        }

        public final Builder setMessageReceivedListener(RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            this.zzbdI = realTimeMessageReceivedListener;
            return this;
        }

        public final Builder setRoomStatusUpdateListener(RoomStatusUpdateListener roomStatusUpdateListener) {
            this.zzbdH = roomStatusUpdateListener;
            return this;
        }

        public final Builder setVariant(int i) {
            boolean z = i == -1 || i > 0;
            zzbo.zzb(z, (Object) "Variant must be a positive integer or Room.ROOM_VARIANT_ANY");
            this.zzbdu = i;
            return this;
        }
    }

    protected RoomConfig() {
    }

    public static Builder builder(RoomUpdateListener roomUpdateListener) {
        return new Builder(roomUpdateListener, null);
    }

    public static Bundle createAutoMatchCriteria(int i, int i2, long j) {
        Bundle bundle = new Bundle();
        bundle.putInt(Multiplayer.EXTRA_MIN_AUTOMATCH_PLAYERS, i);
        bundle.putInt(Multiplayer.EXTRA_MAX_AUTOMATCH_PLAYERS, i2);
        bundle.putLong(Multiplayer.EXTRA_EXCLUSIVE_BIT_MASK, j);
        return bundle;
    }

    public abstract Bundle getAutoMatchCriteria();

    public abstract String getInvitationId();

    public abstract String[] getInvitedPlayerIds();

    public abstract RealTimeMessageReceivedListener getMessageReceivedListener();

    public abstract RoomStatusUpdateListener getRoomStatusUpdateListener();

    public abstract RoomUpdateListener getRoomUpdateListener();

    public abstract int getVariant();
}
