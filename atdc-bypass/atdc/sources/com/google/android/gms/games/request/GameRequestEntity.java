package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.zzc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Deprecated
public final class GameRequestEntity extends zzc implements GameRequest {
    public static final Creator<GameRequestEntity> CREATOR = new zza();
    private final long mCreationTimestamp;
    private final int zzLe;
    private final String zzQx;
    private final int zzamr;
    private final GameEntity zzbbN;
    private final byte[] zzbdY;
    private final PlayerEntity zzbes;
    private final ArrayList<PlayerEntity> zzbet;
    private final long zzbeu;
    private final Bundle zzbev;

    GameRequestEntity(GameEntity gameEntity, PlayerEntity playerEntity, byte[] bArr, String str, ArrayList<PlayerEntity> arrayList, int i, long j, long j2, Bundle bundle, int i2) {
        this.zzbbN = gameEntity;
        this.zzbes = playerEntity;
        this.zzbdY = bArr;
        this.zzQx = str;
        this.zzbet = arrayList;
        this.zzamr = i;
        this.mCreationTimestamp = j;
        this.zzbeu = j2;
        this.zzbev = bundle;
        this.zzLe = i2;
    }

    public GameRequestEntity(GameRequest gameRequest) {
        this.zzbbN = new GameEntity(gameRequest.getGame());
        this.zzbes = new PlayerEntity(gameRequest.getSender());
        this.zzQx = gameRequest.getRequestId();
        this.zzamr = gameRequest.getType();
        this.mCreationTimestamp = gameRequest.getCreationTimestamp();
        this.zzbeu = gameRequest.getExpirationTimestamp();
        this.zzLe = gameRequest.getStatus();
        byte[] data = gameRequest.getData();
        int i = 0;
        if (data == null) {
            this.zzbdY = null;
        } else {
            this.zzbdY = new byte[data.length];
            System.arraycopy(data, 0, this.zzbdY, 0, data.length);
        }
        List recipients = gameRequest.getRecipients();
        int size = recipients.size();
        this.zzbet = new ArrayList(size);
        this.zzbev = new Bundle();
        while (i < size) {
            Player player = (Player) ((Player) recipients.get(i)).freeze();
            String playerId = player.getPlayerId();
            this.zzbet.add((PlayerEntity) player);
            this.zzbev.putInt(playerId, gameRequest.getRecipientStatus(playerId));
            i++;
        }
    }

    static int zza(GameRequest gameRequest) {
        return Arrays.hashCode(new Object[]{gameRequest.getGame(), gameRequest.getRecipients(), gameRequest.getRequestId(), gameRequest.getSender(), zzb(gameRequest), Integer.valueOf(gameRequest.getType()), Long.valueOf(gameRequest.getCreationTimestamp()), Long.valueOf(gameRequest.getExpirationTimestamp())});
    }

    static boolean zza(GameRequest gameRequest, Object obj) {
        if (!(obj instanceof GameRequest)) {
            return false;
        }
        if (gameRequest == obj) {
            return true;
        }
        GameRequest gameRequest2 = (GameRequest) obj;
        return zzbe.equal(gameRequest2.getGame(), gameRequest.getGame()) && zzbe.equal(gameRequest2.getRecipients(), gameRequest.getRecipients()) && zzbe.equal(gameRequest2.getRequestId(), gameRequest.getRequestId()) && zzbe.equal(gameRequest2.getSender(), gameRequest.getSender()) && Arrays.equals(zzb(gameRequest2), zzb(gameRequest)) && zzbe.equal(Integer.valueOf(gameRequest2.getType()), Integer.valueOf(gameRequest.getType())) && zzbe.equal(Long.valueOf(gameRequest2.getCreationTimestamp()), Long.valueOf(gameRequest.getCreationTimestamp())) && zzbe.equal(Long.valueOf(gameRequest2.getExpirationTimestamp()), Long.valueOf(gameRequest.getExpirationTimestamp()));
    }

    private static int[] zzb(GameRequest gameRequest) {
        List recipients = gameRequest.getRecipients();
        int size = recipients.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = gameRequest.getRecipientStatus(((Player) recipients.get(i)).getPlayerId());
        }
        return iArr;
    }

    static String zzc(GameRequest gameRequest) {
        return zzbe.zzt(gameRequest).zzg("Game", gameRequest.getGame()).zzg("Sender", gameRequest.getSender()).zzg("Recipients", gameRequest.getRecipients()).zzg("Data", gameRequest.getData()).zzg("RequestId", gameRequest.getRequestId()).zzg("Type", Integer.valueOf(gameRequest.getType())).zzg("CreationTimestamp", Long.valueOf(gameRequest.getCreationTimestamp())).zzg("ExpirationTimestamp", Long.valueOf(gameRequest.getExpirationTimestamp())).toString();
    }

    public final boolean equals(Object obj) {
        return zza(this, obj);
    }

    public final GameRequest freeze() {
        return this;
    }

    public final long getCreationTimestamp() {
        return this.mCreationTimestamp;
    }

    public final byte[] getData() {
        return this.zzbdY;
    }

    public final long getExpirationTimestamp() {
        return this.zzbeu;
    }

    public final Game getGame() {
        return this.zzbbN;
    }

    public final int getRecipientStatus(String str) {
        return this.zzbev.getInt(str, 0);
    }

    public final List<Player> getRecipients() {
        return new ArrayList(this.zzbet);
    }

    public final String getRequestId() {
        return this.zzQx;
    }

    public final Player getSender() {
        return this.zzbes;
    }

    public final int getStatus() {
        return this.zzLe;
    }

    public final int getType() {
        return this.zzamr;
    }

    public final int hashCode() {
        return zza(this);
    }

    public final boolean isConsumed(String str) {
        return getRecipientStatus(str) == 1;
    }

    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return zzc(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getGame(), i, false);
        zzd.zza(parcel, 2, getSender(), i, false);
        zzd.zza(parcel, 3, getData(), false);
        zzd.zza(parcel, 4, getRequestId(), false);
        zzd.zzc(parcel, 5, getRecipients(), false);
        zzd.zzc(parcel, 7, getType());
        zzd.zza(parcel, 9, getCreationTimestamp());
        zzd.zza(parcel, 10, getExpirationTimestamp());
        zzd.zza(parcel, 11, this.zzbev, false);
        zzd.zzc(parcel, 12, getStatus());
        zzd.zzI(parcel, zze);
    }
}
