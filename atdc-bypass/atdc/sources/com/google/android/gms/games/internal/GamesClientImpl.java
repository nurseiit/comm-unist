package com.google.android.gms.games.internal;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Games.GamesOptions;
import com.google.android.gms.games.Games.GetServerAuthCodeResult;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players.LoadPlayersResult;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events.LoadEventsResult;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardEntity;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScoreEntity;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LeaveMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestEntity;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests.AcceptQuestResult;
import com.google.android.gms.games.quest.Quests.ClaimMilestoneResult;
import com.google.android.gms.games.quest.Quests.LoadQuestsResult;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.games.snapshot.Snapshots.CommitSnapshotResult;
import com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult;
import com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult;
import com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult;
import com.google.android.gms.games.stats.PlayerStats;
import com.google.android.gms.games.stats.PlayerStatsBuffer;
import com.google.android.gms.games.stats.Stats.LoadPlayerStatsResult;
import com.google.android.gms.games.video.CaptureState;
import com.google.android.gms.games.video.VideoCapabilities;
import com.google.android.gms.games.video.Videos.CaptureAvailableResult;
import com.google.android.gms.games.video.Videos.CaptureCapabilitiesResult;
import com.google.android.gms.games.video.Videos.CaptureOverlayStateListener;
import com.google.android.gms.games.video.Videos.CaptureStateResult;
import com.google.android.gms.games.video.Videos.CaptureStreamingUrlResult;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.internal.zzbbx;
import com.google.android.gms.internal.zzbby;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbdz;
import com.google.android.gms.internal.zzcaj;
import com.google.android.gms.internal.zzcal;
import com.google.android.gms.internal.zzcam;
import com.google.android.gms.internal.zzctu;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public final class GamesClientImpl extends com.google.android.gms.common.internal.zzz<zzj> {
    private zzcal zzaZp = new zzd(this);
    private final String zzaZq;
    private PlayerEntity zzaZr;
    private GameEntity zzaZs;
    private final zzn zzaZt;
    private boolean zzaZu = false;
    private final Binder zzaZv;
    private final long zzaZw;
    private final GamesOptions zzaZx;
    private boolean zzaZy = false;

    static final class zzac implements zzbdz<OnInvitationReceivedListener> {
        private final Invitation zzaZL;

        zzac(Invitation invitation) {
            this.zzaZL = invitation;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((OnInvitationReceivedListener) obj).onInvitationReceived(this.zzaZL);
        }
    }

    static final class zzad implements zzbdz<OnInvitationReceivedListener> {
        private final String zzajX;

        zzad(String str) {
            this.zzajX = str;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((OnInvitationReceivedListener) obj).onInvitationRemoved(this.zzajX);
        }
    }

    static final class zzak implements zzbdz<RoomUpdateListener> {
        private final String zzaZN;
        private final int zzaxu;

        zzak(int i, String str) {
            this.zzaxu = i;
            this.zzaZN = str;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((RoomUpdateListener) obj).onLeftRoom(this.zzaxu, this.zzaZN);
        }
    }

    static final class zzay implements zzbdz<OnTurnBasedMatchUpdateReceivedListener> {
        private final String zzaZZ;

        zzay(String str) {
            this.zzaZZ = str;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((OnTurnBasedMatchUpdateReceivedListener) obj).onTurnBasedMatchRemoved(this.zzaZZ);
        }
    }

    static final class zzba implements zzbdz<OnTurnBasedMatchUpdateReceivedListener> {
        private final TurnBasedMatch zzbaa;

        zzba(TurnBasedMatch turnBasedMatch) {
            this.zzbaa = turnBasedMatch;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((OnTurnBasedMatchUpdateReceivedListener) obj).onTurnBasedMatchReceived(this.zzbaa);
        }
    }

    static final class zzbb implements zzbdz<RealTimeMessageReceivedListener> {
        private final RealTimeMessage zzbab;

        zzbb(RealTimeMessage realTimeMessage) {
            this.zzbab = realTimeMessage;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((RealTimeMessageReceivedListener) obj).onRealTimeMessageReceived(this.zzbab);
        }
    }

    static final class zzbd implements zzbdz<RoomStatusUpdateListener> {
        private final String zzbah;

        zzbd(String str) {
            this.zzbah = str;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((RoomStatusUpdateListener) obj).onP2PConnected(this.zzbah);
        }
    }

    static final class zzbe implements zzbdz<RoomStatusUpdateListener> {
        private final String zzbah;

        zzbe(String str) {
            this.zzbah = str;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((RoomStatusUpdateListener) obj).onP2PDisconnected(this.zzbah);
        }
    }

    static final class zzbq implements zzbdz<QuestUpdateListener> {
        private final Quest zzaZB;

        zzbq(Quest quest) {
            this.zzaZB = quest;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((QuestUpdateListener) obj).onQuestCompleted(this.zzaZB);
        }
    }

    static final class zzbu implements zzbdz<ReliableMessageSentCallback> {
        private final int zzaxu;
        private final String zzbam;
        private final int zzban;

        zzbu(int i, int i2, String str) {
            this.zzaxu = i;
            this.zzban = i2;
            this.zzbam = str;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ReliableMessageSentCallback reliableMessageSentCallback = (ReliableMessageSentCallback) obj;
            if (reliableMessageSentCallback != null) {
                reliableMessageSentCallback.onRealTimeMessageSent(this.zzaxu, this.zzban, this.zzbam);
            }
        }
    }

    static final class zzbx implements zzbdz<OnRequestReceivedListener> {
        private final GameRequest zzbap;

        zzbx(GameRequest gameRequest) {
            this.zzbap = gameRequest;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((OnRequestReceivedListener) obj).onRequestReceived(this.zzbap);
        }
    }

    static final class zzby implements zzbdz<OnRequestReceivedListener> {
        private final String zzQx;

        zzby(String str) {
            this.zzQx = str;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((OnRequestReceivedListener) obj).onRequestRemoved(this.zzQx);
        }
    }

    static final class zzm implements zzbdz<CaptureOverlayStateListener> {
        private final int zzaZF;

        zzm(int i) {
            this.zzaZF = i;
        }

        public final void zzpT() {
        }

        public final /* synthetic */ void zzq(Object obj) {
            ((CaptureOverlayStateListener) obj).onCaptureOverlayStateChanged(this.zzaZF);
        }
    }

    class zzv extends zzcaj {
        public zzv() {
            super(GamesClientImpl.this.getContext().getMainLooper(), 1000);
        }

        /* Access modifiers changed, original: protected|final */
        public final void zzq(String str, int i) {
            try {
                if (GamesClientImpl.this.isConnected()) {
                    ((zzj) GamesClientImpl.this.zzrf()).zzn(str, i);
                    return;
                }
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 89);
                stringBuilder.append("Unable to increment event ");
                stringBuilder.append(str);
                stringBuilder.append(" by ");
                stringBuilder.append(i);
                stringBuilder.append(" because the games client is no longer connected");
                zze.zzz("GamesClientImpl", stringBuilder.toString());
            } catch (RemoteException e) {
                GamesClientImpl.zzd(e);
            }
        }
    }

    static final class CaptureStreamingUrlResultImpl implements CaptureStreamingUrlResult {
        private final Status mStatus;
        private final String zzD;

        public final Status getStatus() {
            return this.mStatus;
        }

        public final String getUrl() {
            return this.zzD;
        }
    }

    static final class zzaq implements LoadMatchesResult {
        private final Status mStatus;
        private final LoadMatchesResponse zzaZS;

        zzaq(Status status, Bundle bundle) {
            this.mStatus = status;
            this.zzaZS = new LoadMatchesResponse(bundle);
        }

        public final LoadMatchesResponse getMatches() {
            return this.zzaZS;
        }

        public final Status getStatus() {
            return this.mStatus;
        }

        public final void release() {
            this.zzaZS.release();
        }
    }

    static final class zzav implements LoadRequestsResult {
        private final Status mStatus;
        private final Bundle zzaZW;

        zzav(Status status, Bundle bundle) {
            this.mStatus = status;
            this.zzaZW = bundle;
        }

        public final GameRequestBuffer getRequests(int i) {
            String str;
            switch (i) {
                case 1:
                    str = "GIFT";
                    break;
                case 2:
                    str = "WISH";
                    break;
                default:
                    StringBuilder stringBuilder = new StringBuilder(33);
                    stringBuilder.append("Unknown request type: ");
                    stringBuilder.append(i);
                    zze.zzz("RequestType", stringBuilder.toString());
                    str = "UNKNOWN_TYPE";
                    break;
            }
            return !this.zzaZW.containsKey(str) ? null : new GameRequestBuffer((DataHolder) this.zzaZW.get(str));
        }

        public final Status getStatus() {
            return this.mStatus;
        }

        public final void release() {
            for (String parcelable : this.zzaZW.keySet()) {
                DataHolder dataHolder = (DataHolder) this.zzaZW.getParcelable(parcelable);
                if (dataHolder != null) {
                    dataHolder.close();
                }
            }
        }
    }

    static abstract class zzb extends zzbbx<RoomUpdateListener> {
        zzb(DataHolder dataHolder) {
            super(dataHolder);
        }

        public abstract void zza(RoomUpdateListener roomUpdateListener, Room room, int i);

        /* Access modifiers changed, original: protected|final|synthetic */
        public final /* synthetic */ void zza(Object obj, DataHolder dataHolder) {
            zza((RoomUpdateListener) obj, GamesClientImpl.zzK(dataHolder), dataHolder.getStatusCode());
        }
    }

    static abstract class zzc extends zzbbx<RoomStatusUpdateListener> {
        zzc(DataHolder dataHolder) {
            super(dataHolder);
        }

        public abstract void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room);
    }

    static final class zzcu implements UpdateAchievementResult {
        private final Status mStatus;
        private final String zzaZb;

        zzcu(int i, String str) {
            this.mStatus = GamesStatusCodes.zzaY(i);
            this.zzaZb = str;
        }

        public final String getAchievementId() {
            return this.zzaZb;
        }

        public final Status getStatus() {
            return this.mStatus;
        }
    }

    static final class zzg implements CancelMatchResult {
        private final Status mStatus;
        private final String zzaZC;

        zzg(Status status, String str) {
            this.mStatus = status;
            this.zzaZC = str;
        }

        public final String getMatchId() {
            return this.zzaZC;
        }

        public final Status getStatus() {
            return this.mStatus;
        }
    }

    static final class zzi implements CaptureAvailableResult {
        private final Status mStatus;
        private final boolean zzaZD;

        zzi(Status status, boolean z) {
            this.mStatus = status;
            this.zzaZD = z;
        }

        public final Status getStatus() {
            return this.mStatus;
        }

        public final boolean isAvailable() {
            return this.zzaZD;
        }
    }

    static final class zzk implements CaptureCapabilitiesResult {
        private final Status mStatus;
        private final VideoCapabilities zzaZE;

        zzk(Status status, VideoCapabilities videoCapabilities) {
            this.mStatus = status;
            this.zzaZE = videoCapabilities;
        }

        public final VideoCapabilities getCapabilities() {
            return this.zzaZE;
        }

        public final Status getStatus() {
            return this.mStatus;
        }
    }

    static final class zzo implements CaptureStateResult {
        private final Status mStatus;
        private final CaptureState zzaZG;

        zzo(Status status, CaptureState captureState) {
            this.mStatus = status;
            this.zzaZG = captureState;
        }

        public final CaptureState getCaptureState() {
            return this.zzaZG;
        }

        public final Status getStatus() {
            return this.mStatus;
        }
    }

    static final class zzs implements DeleteSnapshotResult {
        private final Status mStatus;
        private final String zzaZJ;

        zzs(int i, String str) {
            this.mStatus = GamesStatusCodes.zzaY(i);
            this.zzaZJ = str;
        }

        public final String getSnapshotId() {
            return this.zzaZJ;
        }

        public final Status getStatus() {
            return this.mStatus;
        }
    }

    static abstract class zzw extends zzbby {
        protected zzw(DataHolder dataHolder) {
            super(dataHolder, GamesStatusCodes.zzaY(dataHolder.getStatusCode()));
        }
    }

    static final class zzz implements GetServerAuthCodeResult {
        private final Status mStatus;
        private final String zzaZK;

        zzz(Status status, String str) {
            this.mStatus = status;
            this.zzaZK = str;
        }

        public final String getCode() {
            return this.zzaZK;
        }

        public final Status getStatus() {
            return this.mStatus;
        }
    }

    static abstract class zza extends zzc {
        private final ArrayList<String> zzaZA = new ArrayList();

        zza(DataHolder dataHolder, String[] strArr) {
            super(dataHolder);
            for (Object add : strArr) {
                this.zzaZA.add(add);
            }
        }

        /* Access modifiers changed, original: protected|final */
        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            zza(roomStatusUpdateListener, room, this.zzaZA);
        }

        public abstract void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList);
    }

    static final class zzab extends zza {
        private final zzbdw<OnInvitationReceivedListener> zzaOo;

        zzab(zzbdw<OnInvitationReceivedListener> zzbdw) {
            this.zzaOo = zzbdw;
        }

        public final void onInvitationRemoved(String str) {
            this.zzaOo.zza(new zzad(str));
        }

        public final void zzn(DataHolder dataHolder) {
            InvitationBuffer invitationBuffer = new InvitationBuffer(dataHolder);
            try {
                Invitation invitation = invitationBuffer.getCount() > 0 ? (Invitation) ((Invitation) invitationBuffer.get(0)).freeze() : null;
                invitationBuffer.release();
                if (invitation != null) {
                    this.zzaOo.zza(new zzac(invitation));
                }
            } catch (Throwable th) {
                invitationBuffer.release();
            }
        }
    }

    static final class zzae extends zza {
        private final zzbaz<LoadInvitationsResult> zzaIz;

        zzae(zzbaz<LoadInvitationsResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzm(DataHolder dataHolder) {
            this.zzaIz.setResult(new zzao(dataHolder));
        }
    }

    static final class zzaf extends zzb {
        public zzaf(DataHolder dataHolder) {
            super(dataHolder);
        }

        public final void zza(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onJoinedRoom(i, room);
        }
    }

    static final class zzag extends zzw implements LeaderboardMetadataResult {
        private final LeaderboardBuffer zzaZM;

        zzag(DataHolder dataHolder) {
            super(dataHolder);
            this.zzaZM = new LeaderboardBuffer(dataHolder);
        }

        public final LeaderboardBuffer getLeaderboards() {
            return this.zzaZM;
        }
    }

    static final class zzah extends zza {
        private final zzbaz<LoadScoresResult> zzaIz;

        zzah(zzbaz<LoadScoresResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zza(DataHolder dataHolder, DataHolder dataHolder2) {
            this.zzaIz.setResult(new zzaw(dataHolder, dataHolder2));
        }
    }

    static final class zzai extends zza {
        private final zzbaz<LeaderboardMetadataResult> zzaIz;

        zzai(zzbaz<LeaderboardMetadataResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzh(DataHolder dataHolder) {
            this.zzaIz.setResult(new zzag(dataHolder));
        }
    }

    static final class zzal extends zzw implements LoadAchievementsResult {
        private final AchievementBuffer zzaZO;

        zzal(DataHolder dataHolder) {
            super(dataHolder);
            this.zzaZO = new AchievementBuffer(dataHolder);
        }

        public final AchievementBuffer getAchievements() {
            return this.zzaZO;
        }
    }

    static final class zzam extends zzw implements LoadEventsResult {
        private final EventBuffer zzaZP;

        zzam(DataHolder dataHolder) {
            super(dataHolder);
            this.zzaZP = new EventBuffer(dataHolder);
        }

        public final EventBuffer getEvents() {
            return this.zzaZP;
        }
    }

    static final class zzan extends zzw implements LoadGamesResult {
        private final GameBuffer zzaZQ;

        zzan(DataHolder dataHolder) {
            super(dataHolder);
            this.zzaZQ = new GameBuffer(dataHolder);
        }

        public final GameBuffer getGames() {
            return this.zzaZQ;
        }
    }

    static final class zzao extends zzw implements LoadInvitationsResult {
        private final InvitationBuffer zzaZR;

        zzao(DataHolder dataHolder) {
            super(dataHolder);
            this.zzaZR = new InvitationBuffer(dataHolder);
        }

        public final InvitationBuffer getInvitations() {
            return this.zzaZR;
        }
    }

    static final class zzar extends zzw implements LoadPlayerScoreResult {
        private final LeaderboardScoreEntity zzaZT;

        zzar(DataHolder dataHolder) {
            super(dataHolder);
            LeaderboardScoreBuffer leaderboardScoreBuffer = new LeaderboardScoreBuffer(dataHolder);
            try {
                if (leaderboardScoreBuffer.getCount() > 0) {
                    this.zzaZT = (LeaderboardScoreEntity) ((LeaderboardScore) leaderboardScoreBuffer.get(0)).freeze();
                } else {
                    this.zzaZT = null;
                }
                leaderboardScoreBuffer.release();
            } catch (Throwable th) {
                leaderboardScoreBuffer.release();
            }
        }

        public final LeaderboardScore getScore() {
            return this.zzaZT;
        }
    }

    static final class zzas extends zzw implements LoadPlayerStatsResult {
        private final PlayerStats zzaZU;

        zzas(DataHolder dataHolder) {
            super(dataHolder);
            PlayerStatsBuffer playerStatsBuffer = new PlayerStatsBuffer(dataHolder);
            try {
                if (playerStatsBuffer.getCount() > 0) {
                    this.zzaZU = new com.google.android.gms.games.stats.zza((PlayerStats) playerStatsBuffer.get(0));
                } else {
                    this.zzaZU = null;
                }
                playerStatsBuffer.release();
            } catch (Throwable th) {
                playerStatsBuffer.release();
            }
        }

        public final PlayerStats getPlayerStats() {
            return this.zzaZU;
        }
    }

    static final class zzat extends zzw implements LoadPlayersResult {
        private final PlayerBuffer zzaZV;

        zzat(DataHolder dataHolder) {
            super(dataHolder);
            this.zzaZV = new PlayerBuffer(dataHolder);
        }

        public final PlayerBuffer getPlayers() {
            return this.zzaZV;
        }
    }

    static final class zzau extends zzw implements LoadQuestsResult {
        private final DataHolder zzaCX;

        zzau(DataHolder dataHolder) {
            super(dataHolder);
            this.zzaCX = dataHolder;
        }

        public final QuestBuffer getQuests() {
            return new QuestBuffer(this.zzaCX);
        }
    }

    static final class zzaw extends zzw implements LoadScoresResult {
        private final LeaderboardEntity zzaZX;
        private final LeaderboardScoreBuffer zzaZY;

        zzaw(DataHolder dataHolder, DataHolder dataHolder2) {
            super(dataHolder2);
            LeaderboardBuffer leaderboardBuffer = new LeaderboardBuffer(dataHolder);
            try {
                if (leaderboardBuffer.getCount() > 0) {
                    this.zzaZX = (LeaderboardEntity) ((Leaderboard) leaderboardBuffer.get(0)).freeze();
                } else {
                    this.zzaZX = null;
                }
                leaderboardBuffer.release();
                this.zzaZY = new LeaderboardScoreBuffer(dataHolder2);
            } catch (Throwable th) {
                leaderboardBuffer.release();
            }
        }

        public final Leaderboard getLeaderboard() {
            return this.zzaZX;
        }

        public final LeaderboardScoreBuffer getScores() {
            return this.zzaZY;
        }
    }

    static final class zzax extends zzw implements LoadSnapshotsResult {
        zzax(DataHolder dataHolder) {
            super(dataHolder);
        }

        public final SnapshotMetadataBuffer getSnapshots() {
            return new SnapshotMetadataBuffer(this.zzaCX);
        }
    }

    static final class zzaz extends zza {
        private final zzbdw<OnTurnBasedMatchUpdateReceivedListener> zzaOo;

        zzaz(zzbdw<OnTurnBasedMatchUpdateReceivedListener> zzbdw) {
            this.zzaOo = zzbdw;
        }

        public final void onTurnBasedMatchRemoved(String str) {
            this.zzaOo.zza(new zzay(str));
        }

        public final void zzt(DataHolder dataHolder) {
            TurnBasedMatchBuffer turnBasedMatchBuffer = new TurnBasedMatchBuffer(dataHolder);
            try {
                TurnBasedMatch turnBasedMatch = turnBasedMatchBuffer.getCount() > 0 ? (TurnBasedMatch) ((TurnBasedMatch) turnBasedMatchBuffer.get(0)).freeze() : null;
                turnBasedMatchBuffer.release();
                if (turnBasedMatch != null) {
                    this.zzaOo.zza(new zzba(turnBasedMatch));
                }
            } catch (Throwable th) {
                turnBasedMatchBuffer.release();
            }
        }
    }

    static final class zzbc extends zzw implements OpenSnapshotResult {
        private final Snapshot zzbac;
        private final String zzbad;
        private final Snapshot zzbae;
        private final com.google.android.gms.drive.zzc zzbaf;
        private final SnapshotContents zzbag;

        zzbc(DataHolder dataHolder, com.google.android.gms.drive.zzc zzc) {
            this(dataHolder, null, zzc, null, null);
        }

        zzbc(DataHolder dataHolder, String str, com.google.android.gms.drive.zzc zzc, com.google.android.gms.drive.zzc zzc2, com.google.android.gms.drive.zzc zzc3) {
            super(dataHolder);
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                if (snapshotMetadataBuffer.getCount() == 0) {
                    this.zzbac = null;
                } else {
                    boolean z = true;
                    if (snapshotMetadataBuffer.getCount() == 1) {
                        if (dataHolder.getStatusCode() == 4004) {
                            z = false;
                        }
                        com.google.android.gms.common.internal.zzc.zzae(z);
                        this.zzbac = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(0)), new com.google.android.gms.games.snapshot.zza(zzc));
                    } else {
                        this.zzbac = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(0)), new com.google.android.gms.games.snapshot.zza(zzc));
                        this.zzbae = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(1)), new com.google.android.gms.games.snapshot.zza(zzc2));
                        snapshotMetadataBuffer.release();
                        this.zzbad = str;
                        this.zzbaf = zzc3;
                        this.zzbag = new com.google.android.gms.games.snapshot.zza(zzc3);
                    }
                }
                this.zzbae = null;
                snapshotMetadataBuffer.release();
                this.zzbad = str;
                this.zzbaf = zzc3;
                this.zzbag = new com.google.android.gms.games.snapshot.zza(zzc3);
            } catch (Throwable th) {
                snapshotMetadataBuffer.release();
            }
        }

        public final String getConflictId() {
            return this.zzbad;
        }

        public final Snapshot getConflictingSnapshot() {
            return this.zzbae;
        }

        public final SnapshotContents getResolutionSnapshotContents() {
            return this.zzbag;
        }

        public final Snapshot getSnapshot() {
            return this.zzbac;
        }
    }

    static final class zzbl extends zza {
        private final zzbaz<LoadPlayerScoreResult> zzaIz;

        zzbl(zzbaz<LoadPlayerScoreResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzB(DataHolder dataHolder) {
            this.zzaIz.setResult(new zzar(dataHolder));
        }
    }

    static final class zzbm extends zza {
        private final zzbaz<LoadPlayerStatsResult> zzaIz;

        public zzbm(zzbaz<LoadPlayerStatsResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzJ(DataHolder dataHolder) {
            this.zzaIz.setResult(new zzas(dataHolder));
        }
    }

    static final class zzbn extends zza {
        private final zzbaz<LoadPlayersResult> zzaIz;

        zzbn(zzbaz<LoadPlayersResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzj(DataHolder dataHolder) {
            this.zzaIz.setResult(new zzat(dataHolder));
        }

        public final void zzk(DataHolder dataHolder) {
            this.zzaIz.setResult(new zzat(dataHolder));
        }
    }

    static final class zzbo extends zzb {
        private final zzn zzaZt;

        public zzbo(zzn zzn) {
            this.zzaZt = zzn;
        }

        public final zzl zzur() {
            return new zzl(this.zzaZt.zzbaL);
        }
    }

    static final class zzbp extends zza {
        private final zzbaz<AcceptQuestResult> zzbai;

        public zzbp(zzbaz<AcceptQuestResult> zzbaz) {
            this.zzbai = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzG(DataHolder dataHolder) {
            this.zzbai.setResult(new zzd(dataHolder));
        }
    }

    static final class zzbr extends zza {
        private final zzbaz<ClaimMilestoneResult> zzbaj;
        private final String zzbak;

        public zzbr(zzbaz<ClaimMilestoneResult> zzbaz, String str) {
            this.zzbaj = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
            this.zzbak = (String) com.google.android.gms.common.internal.zzbo.zzb((Object) str, (Object) "MilestoneId must not be null");
        }

        public final void zzF(DataHolder dataHolder) {
            this.zzbaj.setResult(new zzp(dataHolder, this.zzbak));
        }
    }

    static final class zzbs extends zza {
        private final zzbdw<QuestUpdateListener> zzaOo;

        zzbs(zzbdw<QuestUpdateListener> zzbdw) {
            this.zzaOo = zzbdw;
        }

        private static Quest zzM(DataHolder dataHolder) {
            QuestBuffer questBuffer = new QuestBuffer(dataHolder);
            try {
                Quest quest = questBuffer.getCount() > 0 ? (Quest) ((Quest) questBuffer.get(0)).freeze() : null;
                questBuffer.release();
                return quest;
            } catch (Throwable th) {
                questBuffer.release();
            }
        }

        public final void zzH(DataHolder dataHolder) {
            Quest zzM = zzM(dataHolder);
            if (zzM != null) {
                this.zzaOo.zza(new zzbq(zzM));
            }
        }
    }

    static final class zzbt extends zza {
        private final zzbaz<LoadQuestsResult> zzbal;

        public zzbt(zzbaz<LoadQuestsResult> zzbaz) {
            this.zzbal = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzI(DataHolder dataHolder) {
            this.zzbal.setResult(new zzau(dataHolder));
        }
    }

    static final class zzbv extends zza {
        private zzbdw<ReliableMessageSentCallback> zzbao;

        public zzbv(zzbdw<ReliableMessageSentCallback> zzbdw) {
            this.zzbao = zzbdw;
        }

        public final void zzb(int i, int i2, String str) {
            if (this.zzbao != null) {
                this.zzbao.zza(new zzbu(i, i2, str));
            }
        }
    }

    static final class zzbw extends zza {
        private final zzbdw<OnRequestReceivedListener> zzaOo;

        zzbw(zzbdw<OnRequestReceivedListener> zzbdw) {
            this.zzaOo = zzbdw;
        }

        public final void onRequestRemoved(String str) {
            this.zzaOo.zza(new zzby(str));
        }

        public final void zzo(DataHolder dataHolder) {
            GameRequestBuffer gameRequestBuffer = new GameRequestBuffer(dataHolder);
            try {
                GameRequest gameRequest = gameRequestBuffer.getCount() > 0 ? (GameRequest) ((GameRequest) gameRequestBuffer.get(0)).freeze() : null;
                gameRequestBuffer.release();
                if (gameRequest != null) {
                    this.zzaOo.zza(new zzbx(gameRequest));
                }
            } catch (Throwable th) {
                gameRequestBuffer.release();
            }
        }
    }

    static final class zzbz extends zza {
        private final zzbaz<LoadRequestsResult> zzbaq;

        public zzbz(zzbaz<LoadRequestsResult> zzbaz) {
            this.zzbaq = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzc(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.zzbaq.setResult(new zzav(GamesStatusCodes.zzaY(i), bundle));
        }
    }

    static final class zzca extends zza {
        private final zzbaz<UpdateRequestsResult> zzbar;

        public zzca(zzbaz<UpdateRequestsResult> zzbaz) {
            this.zzbar = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzC(DataHolder dataHolder) {
            this.zzbar.setResult(new zzcw(dataHolder));
        }
    }

    static final class zzcb extends zzc {
        zzcb(DataHolder dataHolder) {
            super(dataHolder);
        }

        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onRoomAutoMatching(room);
        }
    }

    static final class zzcc extends zza {
        private final zzbdw<? extends RoomUpdateListener> zzbas;
        private final zzbdw<? extends RoomStatusUpdateListener> zzbat;
        private final zzbdw<RealTimeMessageReceivedListener> zzbau;

        public zzcc(zzbdw<RoomUpdateListener> zzbdw) {
            this.zzbas = (zzbdw) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbdw, (Object) "Callbacks must not be null");
            this.zzbat = null;
            this.zzbau = null;
        }

        public zzcc(zzbdw<? extends RoomUpdateListener> zzbdw, zzbdw<? extends RoomStatusUpdateListener> zzbdw2, zzbdw<RealTimeMessageReceivedListener> zzbdw3) {
            this.zzbas = (zzbdw) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbdw, (Object) "Callbacks must not be null");
            this.zzbat = zzbdw2;
            this.zzbau = zzbdw3;
        }

        public final void onLeftRoom(int i, String str) {
            this.zzbas.zza(new zzak(i, str));
        }

        public final void onP2PConnected(String str) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzbd(str));
            }
        }

        public final void onP2PDisconnected(String str) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzbe(str));
            }
        }

        public final void onRealTimeMessageReceived(RealTimeMessage realTimeMessage) {
            if (this.zzbau != null) {
                this.zzbau.zza(new zzbb(realTimeMessage));
            }
        }

        public final void zzA(DataHolder dataHolder) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzt(dataHolder));
            }
        }

        public final void zza(DataHolder dataHolder, String[] strArr) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzbi(dataHolder, strArr));
            }
        }

        public final void zzb(DataHolder dataHolder, String[] strArr) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzbj(dataHolder, strArr));
            }
        }

        public final void zzc(DataHolder dataHolder, String[] strArr) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzbk(dataHolder, strArr));
            }
        }

        public final void zzd(DataHolder dataHolder, String[] strArr) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzbg(dataHolder, strArr));
            }
        }

        public final void zze(DataHolder dataHolder, String[] strArr) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzbf(dataHolder, strArr));
            }
        }

        public final void zzf(DataHolder dataHolder, String[] strArr) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzbh(dataHolder, strArr));
            }
        }

        public final void zzu(DataHolder dataHolder) {
            this.zzbas.zza(new zzcf(dataHolder));
        }

        public final void zzv(DataHolder dataHolder) {
            this.zzbas.zza(new zzaf(dataHolder));
        }

        public final void zzw(DataHolder dataHolder) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzce(dataHolder));
            }
        }

        public final void zzx(DataHolder dataHolder) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzcb(dataHolder));
            }
        }

        public final void zzy(DataHolder dataHolder) {
            this.zzbas.zza(new zzcd(dataHolder));
        }

        public final void zzz(DataHolder dataHolder) {
            if (this.zzbat != null) {
                this.zzbat.zza(new zzr(dataHolder));
            }
        }
    }

    static final class zzcd extends zzb {
        zzcd(DataHolder dataHolder) {
            super(dataHolder);
        }

        public final void zza(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onRoomConnected(i, room);
        }
    }

    static final class zzce extends zzc {
        zzce(DataHolder dataHolder) {
            super(dataHolder);
        }

        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onRoomConnecting(room);
        }
    }

    static final class zzcf extends zzb {
        public zzcf(DataHolder dataHolder) {
            super(dataHolder);
        }

        public final void zza(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onRoomCreated(i, room);
        }
    }

    static final class zzcg extends zza {
        private final zzbaz<Status> zzaIz;

        public zzcg(zzbaz<Status> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzuq() {
            this.zzaIz.setResult(GamesStatusCodes.zzaY(0));
        }
    }

    static final class zzch extends zza {
        private final zzbaz<CommitSnapshotResult> zzbav;

        public zzch(zzbaz<CommitSnapshotResult> zzbaz) {
            this.zzbav = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzE(DataHolder dataHolder) {
            this.zzbav.setResult(new zzq(dataHolder));
        }
    }

    static final class zzci extends zza {
        private final zzbaz<DeleteSnapshotResult> zzaIz;

        public zzci(zzbaz<DeleteSnapshotResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzj(int i, String str) {
            this.zzaIz.setResult(new zzs(i, str));
        }
    }

    static final class zzcj extends zza {
        private final zzbaz<OpenSnapshotResult> zzbaw;

        public zzcj(zzbaz<OpenSnapshotResult> zzbaz) {
            this.zzbaw = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zza(DataHolder dataHolder, com.google.android.gms.drive.zzc zzc) {
            this.zzbaw.setResult(new zzbc(dataHolder, zzc));
        }

        public final void zza(DataHolder dataHolder, String str, com.google.android.gms.drive.zzc zzc, com.google.android.gms.drive.zzc zzc2, com.google.android.gms.drive.zzc zzc3) {
            this.zzbaw.setResult(new zzbc(dataHolder, str, zzc, zzc2, zzc3));
        }
    }

    static final class zzck extends zza {
        private final zzbaz<LoadSnapshotsResult> zzbax;

        public zzck(zzbaz<LoadSnapshotsResult> zzbaz) {
            this.zzbax = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzD(DataHolder dataHolder) {
            this.zzbax.setResult(new zzax(dataHolder));
        }
    }

    static final class zzcl extends zza {
        private final zzbaz<SubmitScoreResult> zzaIz;

        public zzcl(zzbaz<SubmitScoreResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzi(DataHolder dataHolder) {
            this.zzaIz.setResult(new zzcm(dataHolder));
        }
    }

    static final class zzcm extends zzw implements SubmitScoreResult {
        private final ScoreSubmissionData zzbay;

        public zzcm(DataHolder dataHolder) {
            super(dataHolder);
            try {
                this.zzbay = new ScoreSubmissionData(dataHolder);
            } finally {
                dataHolder.close();
            }
        }

        public final ScoreSubmissionData getScoreData() {
            return this.zzbay;
        }
    }

    static final class zzcn extends zza {
        private final zzbaz<CancelMatchResult> zzbaz;

        public zzcn(zzbaz<CancelMatchResult> zzbaz) {
            this.zzbaz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzi(int i, String str) {
            this.zzbaz.setResult(new zzg(GamesStatusCodes.zzaY(i), str));
        }
    }

    static final class zzco extends zza {
        private final zzbaz<InitiateMatchResult> zzbaA;

        public zzco(zzbaz<InitiateMatchResult> zzbaz) {
            this.zzbaA = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzq(DataHolder dataHolder) {
            this.zzbaA.setResult(new zzaa(dataHolder));
        }
    }

    static final class zzcp extends zza {
        private final zzbaz<LeaveMatchResult> zzbaB;

        public zzcp(zzbaz<LeaveMatchResult> zzbaz) {
            this.zzbaB = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzs(DataHolder dataHolder) {
            this.zzbaB.setResult(new zzaj(dataHolder));
        }
    }

    static final class zzcq extends zza {
        private final zzbaz<LoadMatchResult> zzbaC;

        public zzcq(zzbaz<LoadMatchResult> zzbaz) {
            this.zzbaC = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzp(DataHolder dataHolder) {
            this.zzbaC.setResult(new zzap(dataHolder));
        }
    }

    static abstract class zzcr extends zzw {
        private TurnBasedMatch zzbaa;

        zzcr(DataHolder dataHolder) {
            super(dataHolder);
            TurnBasedMatchBuffer turnBasedMatchBuffer = new TurnBasedMatchBuffer(dataHolder);
            try {
                if (turnBasedMatchBuffer.getCount() > 0) {
                    this.zzbaa = (TurnBasedMatch) ((TurnBasedMatch) turnBasedMatchBuffer.get(0)).freeze();
                } else {
                    this.zzbaa = null;
                }
                turnBasedMatchBuffer.release();
            } catch (Throwable th) {
                turnBasedMatchBuffer.release();
            }
        }

        public TurnBasedMatch getMatch() {
            return this.zzbaa;
        }
    }

    static final class zzcs extends zza {
        private final zzbaz<UpdateMatchResult> zzbaD;

        public zzcs(zzbaz<UpdateMatchResult> zzbaz) {
            this.zzbaD = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzr(DataHolder dataHolder) {
            this.zzbaD.setResult(new zzcv(dataHolder));
        }
    }

    static final class zzct extends zza {
        private final zzbaz<LoadMatchesResult> zzbaE;

        public zzct(zzbaz<LoadMatchesResult> zzbaz) {
            this.zzbaE = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzb(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.zzbaE.setResult(new zzaq(GamesStatusCodes.zzaY(i), bundle));
        }
    }

    static final class zzcw extends zzw implements UpdateRequestsResult {
        private final zzcam zzbaF;

        zzcw(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbaF = zzcam.zzN(dataHolder);
        }

        public final Set<String> getRequestIds() {
            return this.zzbaF.getRequestIds();
        }

        public final int getRequestOutcome(String str) {
            return this.zzbaF.getRequestOutcome(str);
        }
    }

    static final class zzd extends zzw implements AcceptQuestResult {
        private final Quest zzaZB;

        zzd(DataHolder dataHolder) {
            super(dataHolder);
            QuestBuffer questBuffer = new QuestBuffer(dataHolder);
            try {
                if (questBuffer.getCount() > 0) {
                    this.zzaZB = new QuestEntity((Quest) questBuffer.get(0));
                } else {
                    this.zzaZB = null;
                }
                questBuffer.release();
            } catch (Throwable th) {
                questBuffer.release();
            }
        }

        public final Quest getQuest() {
            return this.zzaZB;
        }
    }

    static final class zze extends zza {
        private final zzbaz<UpdateAchievementResult> zzaIz;

        zze(zzbaz<UpdateAchievementResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzh(int i, String str) {
            this.zzaIz.setResult(new zzcu(i, str));
        }
    }

    static final class zzf extends zza {
        private final zzbaz<LoadAchievementsResult> zzaIz;

        zzf(zzbaz<LoadAchievementsResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzf(DataHolder dataHolder) {
            this.zzaIz.setResult(new zzal(dataHolder));
        }
    }

    static final class zzh extends zza {
        private final zzbaz<CaptureAvailableResult> zzaIz;

        zzh(zzbaz<CaptureAvailableResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzh(int i, boolean z) {
            this.zzaIz.setResult(new zzi(new Status(i), z));
        }
    }

    static final class zzj extends zza {
        private final zzbaz<CaptureCapabilitiesResult> zzaIz;

        zzj(zzbaz<CaptureCapabilitiesResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zza(int i, VideoCapabilities videoCapabilities) {
            this.zzaIz.setResult(new zzk(new Status(i), videoCapabilities));
        }
    }

    static final class zzl extends zza {
        private final zzbdw<CaptureOverlayStateListener> zzaOo;

        zzl(zzbdw<CaptureOverlayStateListener> zzbdw) {
            this.zzaOo = (zzbdw) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbdw, (Object) "Callback must not be null");
        }

        public final void onCaptureOverlayStateChanged(int i) {
            this.zzaOo.zza(new zzm(i));
        }
    }

    static final class zzn extends zza {
        private final zzbaz<CaptureStateResult> zzaIz;

        public zzn(zzbaz<CaptureStateResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzd(int i, Bundle bundle) {
            this.zzaIz.setResult(new zzo(new Status(i), CaptureState.zzs(bundle)));
        }
    }

    static final class zzp extends zzw implements ClaimMilestoneResult {
        private final Quest zzaZB;
        private final Milestone zzaZH;

        zzp(DataHolder dataHolder, String str) {
            super(dataHolder);
            QuestBuffer questBuffer = new QuestBuffer(dataHolder);
            try {
                if (questBuffer.getCount() > 0) {
                    int i = 0;
                    this.zzaZB = new QuestEntity((Quest) questBuffer.get(0));
                    List zzvt = this.zzaZB.zzvt();
                    int size = zzvt.size();
                    while (i < size) {
                        if (((Milestone) zzvt.get(i)).getMilestoneId().equals(str)) {
                            this.zzaZH = (Milestone) zzvt.get(i);
                            return;
                        }
                        i++;
                    }
                    this.zzaZH = null;
                } else {
                    this.zzaZH = null;
                    this.zzaZB = null;
                }
                questBuffer.release();
            } finally {
                questBuffer.release();
            }
        }

        public final Milestone getMilestone() {
            return this.zzaZH;
        }

        public final Quest getQuest() {
            return this.zzaZB;
        }
    }

    static final class zzq extends zzw implements CommitSnapshotResult {
        private final SnapshotMetadata zzaZI;

        zzq(DataHolder dataHolder) {
            super(dataHolder);
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                if (snapshotMetadataBuffer.getCount() > 0) {
                    this.zzaZI = new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(0));
                } else {
                    this.zzaZI = null;
                }
                snapshotMetadataBuffer.release();
            } catch (Throwable th) {
                snapshotMetadataBuffer.release();
            }
        }

        public final SnapshotMetadata getSnapshotMetadata() {
            return this.zzaZI;
        }
    }

    static final class zzr extends zzc {
        zzr(DataHolder dataHolder) {
            super(dataHolder);
        }

        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onConnectedToRoom(room);
        }
    }

    static final class zzt extends zzc {
        zzt(DataHolder dataHolder) {
            super(dataHolder);
        }

        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onDisconnectedFromRoom(room);
        }
    }

    static final class zzu extends zza {
        private final zzbaz<LoadEventsResult> zzaIz;

        zzu(zzbaz<LoadEventsResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzg(DataHolder dataHolder) {
            this.zzaIz.setResult(new zzam(dataHolder));
        }
    }

    static final class zzx extends zza {
        private final zzbaz<LoadGamesResult> zzaIz;

        zzx(zzbaz<LoadGamesResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzl(DataHolder dataHolder) {
            this.zzaIz.setResult(new zzan(dataHolder));
        }
    }

    static final class zzy extends zza {
        private final zzbaz<GetServerAuthCodeResult> zzaIz;

        public zzy(zzbaz<GetServerAuthCodeResult> zzbaz) {
            this.zzaIz = (zzbaz) com.google.android.gms.common.internal.zzbo.zzb((Object) zzbaz, (Object) "Holder must not be null");
        }

        public final void zzg(int i, String str) {
            this.zzaIz.setResult(new zzz(GamesStatusCodes.zzaY(i), str));
        }
    }

    static final class zzaa extends zzcr implements InitiateMatchResult {
        zzaa(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    static final class zzaj extends zzcr implements LeaveMatchResult {
        zzaj(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    static final class zzap extends zzcr implements LoadMatchResult {
        zzap(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    static final class zzbf extends zza {
        zzbf(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        /* Access modifiers changed, original: protected|final */
        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeersConnected(room, arrayList);
        }
    }

    static final class zzbg extends zza {
        zzbg(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        /* Access modifiers changed, original: protected|final */
        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerDeclined(room, arrayList);
        }
    }

    static final class zzbh extends zza {
        zzbh(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        /* Access modifiers changed, original: protected|final */
        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeersDisconnected(room, arrayList);
        }
    }

    static final class zzbi extends zza {
        zzbi(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        /* Access modifiers changed, original: protected|final */
        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerInvitedToRoom(room, arrayList);
        }
    }

    static final class zzbj extends zza {
        zzbj(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        /* Access modifiers changed, original: protected|final */
        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerJoined(room, arrayList);
        }
    }

    static final class zzbk extends zza {
        zzbk(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        /* Access modifiers changed, original: protected|final */
        public final void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerLeft(room, arrayList);
        }
    }

    static final class zzcv extends zzcr implements UpdateMatchResult {
        zzcv(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    public GamesClientImpl(Context context, Looper looper, com.google.android.gms.common.internal.zzq zzq, GamesOptions gamesOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 1, zzq, connectionCallbacks, onConnectionFailedListener);
        this.zzaZq = zzq.zzrq();
        this.zzaZv = new Binder();
        this.zzaZt = new zzq(this, zzq.zzrm());
        this.zzaZw = (long) hashCode();
        this.zzaZx = gamesOptions;
        if (!this.zzaZx.zzaYC) {
            zzs(zzq.zzrs());
        }
    }

    private static Room zzK(DataHolder dataHolder) {
        com.google.android.gms.games.multiplayer.realtime.zzb zzb = new com.google.android.gms.games.multiplayer.realtime.zzb(dataHolder);
        try {
            Room room = zzb.getCount() > 0 ? (Room) ((Room) zzb.get(0)).freeze() : null;
            zzb.release();
            return room;
        } catch (Throwable th) {
            zzb.release();
        }
    }

    private static void zzd(RemoteException remoteException) {
        zze.zzc("GamesClientImpl", "service died", remoteException);
    }

    public final void disconnect() {
        this.zzaZu = false;
        if (isConnected()) {
            try {
                zzj zzj = (zzj) zzrf();
                zzj.zzuP();
                this.zzaZp.flush();
                zzj.zzC(this.zzaZw);
            } catch (RemoteException unused) {
                zze.zzy("GamesClientImpl", "Failed to notify client disconnect.");
            }
        }
        super.disconnect();
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        this.zzaZu = false;
    }

    public final int zza(zzbdw<ReliableMessageSentCallback> zzbdw, byte[] bArr, String str, String str2) {
        try {
            return ((zzj) zzrf()).zza(new zzbv(zzbdw), bArr, str, str2);
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public final int zza(byte[] bArr, String str, String[] strArr) {
        com.google.android.gms.common.internal.zzbo.zzb((Object) strArr, (Object) "Participant IDs must not be null");
        try {
            return ((zzj) zzrf()).zzb(bArr, str, strArr);
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public final Intent zza(int i, byte[] bArr, int i2, Bitmap bitmap, String str) {
        try {
            Intent zza = ((zzj) zzrf()).zza(i, bArr, i2, str);
            com.google.android.gms.common.internal.zzbo.zzb((Object) bitmap, (Object) "Must provide a non null icon");
            zza.putExtra("com.google.android.gms.games.REQUEST_ITEM_ICON", bitmap);
            return zza;
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final Intent zza(PlayerEntity playerEntity) {
        try {
            return ((zzj) zzrf()).zza(playerEntity);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final Intent zza(Room room, int i) {
        try {
            return ((zzj) zzrf()).zza((RoomEntity) room.freeze(), i);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final Intent zza(String str, boolean z, boolean z2, int i) {
        try {
            return ((zzj) zzrf()).zza(str, z, z2, i);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (i == 0 && bundle != null) {
            bundle.setClassLoader(GamesClientImpl.class.getClassLoader());
            this.zzaZu = bundle.getBoolean("show_welcome_popup");
            this.zzaZy = this.zzaZu;
            this.zzaZr = (PlayerEntity) bundle.getParcelable("com.google.android.gms.games.current_player");
            this.zzaZs = (GameEntity) bundle.getParcelable("com.google.android.gms.games.current_game");
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public final void zza(IBinder iBinder, Bundle bundle) {
        if (isConnected()) {
            try {
                ((zzj) zzrf()).zza(iBinder, bundle);
            } catch (RemoteException e) {
                zzd(e);
            }
        }
    }

    public final void zza(com.google.android.gms.common.internal.zzj zzj) {
        this.zzaZr = null;
        this.zzaZs = null;
        super.zza(zzj);
    }

    public final void zza(Snapshot snapshot) {
        SnapshotContents snapshotContents = snapshot.getSnapshotContents();
        com.google.android.gms.common.internal.zzbo.zza(snapshotContents.isClosed() ^ 1, (Object) "Snapshot already closed");
        com.google.android.gms.drive.zzc zzsM = snapshotContents.zzsM();
        snapshotContents.close();
        try {
            ((zzj) zzrf()).zza(zzsM);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zza(zzbaz<LoadInvitationsResult> zzbaz, int i) throws RemoteException {
        ((zzj) zzrf()).zza(new zzae(zzbaz), i);
    }

    public final void zza(zzbaz<LoadRequestsResult> zzbaz, int i, int i2, int i3) throws RemoteException {
        ((zzj) zzrf()).zza(new zzbz(zzbaz), i, i2, i3);
    }

    public final void zza(zzbaz<LoadPlayersResult> zzbaz, int i, boolean z, boolean z2) throws RemoteException {
        ((zzj) zzrf()).zza(new zzbn(zzbaz), i, z, z2);
    }

    public final void zza(zzbaz<LoadMatchesResult> zzbaz, int i, int[] iArr) throws RemoteException {
        ((zzj) zzrf()).zza(new zzct(zzbaz), i, iArr);
    }

    public final void zza(zzbaz<LoadScoresResult> zzbaz, LeaderboardScoreBuffer leaderboardScoreBuffer, int i, int i2) throws RemoteException {
        ((zzj) zzrf()).zza(new zzah(zzbaz), leaderboardScoreBuffer.zzvn().asBundle(), i, i2);
    }

    public final void zza(zzbaz<InitiateMatchResult> zzbaz, TurnBasedMatchConfig turnBasedMatchConfig) throws RemoteException {
        ((zzj) zzrf()).zza(new zzco(zzbaz), turnBasedMatchConfig.getVariant(), turnBasedMatchConfig.zzvs(), turnBasedMatchConfig.getInvitedPlayerIds(), turnBasedMatchConfig.getAutoMatchCriteria());
    }

    public final void zza(zzbaz<CommitSnapshotResult> zzbaz, Snapshot snapshot, SnapshotMetadataChange snapshotMetadataChange) throws RemoteException {
        SnapshotContents snapshotContents = snapshot.getSnapshotContents();
        com.google.android.gms.common.internal.zzbo.zza(snapshotContents.isClosed() ^ 1, (Object) "Snapshot already closed");
        BitmapTeleporter zzvv = snapshotMetadataChange.zzvv();
        if (zzvv != null) {
            zzvv.zzc(getContext().getCacheDir());
        }
        com.google.android.gms.drive.zzc zzsM = snapshotContents.zzsM();
        snapshotContents.close();
        ((zzj) zzrf()).zza(new zzch(zzbaz), snapshot.getMetadata().getSnapshotId(), (com.google.android.gms.games.snapshot.zze) snapshotMetadataChange, zzsM);
    }

    public final void zza(zzbaz<UpdateAchievementResult> zzbaz, String str) throws RemoteException {
        ((zzj) zzrf()).zza(zzbaz == null ? null : new zze(zzbaz), str, this.zzaZt.zzbaL.zzbaM, this.zzaZt.zzbaL.zzuW());
    }

    public final void zza(zzbaz<UpdateAchievementResult> zzbaz, String str, int i) throws RemoteException {
        ((zzj) zzrf()).zza(zzbaz == null ? null : new zze(zzbaz), str, i, this.zzaZt.zzbaL.zzbaM, this.zzaZt.zzbaL.zzuW());
    }

    public final void zza(zzbaz<LoadScoresResult> zzbaz, String str, int i, int i2, int i3, boolean z) throws RemoteException {
        ((zzj) zzrf()).zza(new zzah(zzbaz), str, i, i2, i3, z);
    }

    public final void zza(zzbaz<LoadPlayersResult> zzbaz, String str, int i, boolean z, boolean z2) throws RemoteException {
        Object obj = (str.hashCode() == 156408498 && str.equals("played_with")) ? null : -1;
        if (obj != null) {
            String str2 = "Invalid player collection: ";
            str = String.valueOf(str);
            throw new IllegalArgumentException(str.length() != 0 ? str2.concat(str) : new String(str2));
        }
        ((zzj) zzrf()).zza(new zzbn(zzbaz), str, i, z, z2);
    }

    public final void zza(zzbaz<SubmitScoreResult> zzbaz, String str, long j, String str2) throws RemoteException {
        ((zzj) zzrf()).zza(zzbaz == null ? null : new zzcl(zzbaz), str, j, str2);
    }

    public final void zza(zzbaz<LeaveMatchResult> zzbaz, String str, String str2) throws RemoteException {
        ((zzj) zzrf()).zza(new zzcp(zzbaz), str, str2);
    }

    public final void zza(zzbaz<LoadPlayerScoreResult> zzbaz, String str, String str2, int i, int i2) throws RemoteException {
        ((zzj) zzrf()).zza(new zzbl(zzbaz), null, str2, i, i2);
    }

    public final void zza(zzbaz<OpenSnapshotResult> zzbaz, String str, String str2, SnapshotMetadataChange snapshotMetadataChange, SnapshotContents snapshotContents) throws RemoteException {
        com.google.android.gms.common.internal.zzbo.zza(snapshotContents.isClosed() ^ 1, (Object) "SnapshotContents already closed");
        BitmapTeleporter zzvv = snapshotMetadataChange.zzvv();
        if (zzvv != null) {
            zzvv.zzc(getContext().getCacheDir());
        }
        com.google.android.gms.drive.zzc zzsM = snapshotContents.zzsM();
        snapshotContents.close();
        ((zzj) zzrf()).zza(new zzcj(zzbaz), str, str2, (com.google.android.gms.games.snapshot.zze) snapshotMetadataChange, zzsM);
    }

    public final void zza(zzbaz<LoadPlayersResult> zzbaz, String str, boolean z) throws RemoteException {
        ((zzj) zzrf()).zzb(new zzbn(zzbaz), str, z);
    }

    public final void zza(zzbaz<OpenSnapshotResult> zzbaz, String str, boolean z, int i) throws RemoteException {
        ((zzj) zzrf()).zza(new zzcj(zzbaz), str, z, i);
    }

    public final void zza(zzbaz<UpdateMatchResult> zzbaz, String str, byte[] bArr, String str2, ParticipantResult[] participantResultArr) throws RemoteException {
        ((zzj) zzrf()).zza(new zzcs(zzbaz), str, bArr, str2, participantResultArr);
    }

    public final void zza(zzbaz<UpdateMatchResult> zzbaz, String str, byte[] bArr, ParticipantResult[] participantResultArr) throws RemoteException {
        ((zzj) zzrf()).zza(new zzcs(zzbaz), str, bArr, participantResultArr);
    }

    public final void zza(zzbaz<LoadPlayersResult> zzbaz, boolean z) throws RemoteException {
        ((zzj) zzrf()).zzc(new zzbn(zzbaz), z);
    }

    public final void zza(zzbaz<LoadEventsResult> zzbaz, boolean z, String... strArr) throws RemoteException {
        this.zzaZp.flush();
        ((zzj) zzrf()).zza(new zzu(zzbaz), z, strArr);
    }

    public final void zza(zzbaz<LoadQuestsResult> zzbaz, int[] iArr, int i, boolean z) throws RemoteException {
        this.zzaZp.flush();
        ((zzj) zzrf()).zza(new zzbt(zzbaz), iArr, i, z);
    }

    public final void zza(zzbaz<UpdateRequestsResult> zzbaz, String[] strArr) throws RemoteException {
        ((zzj) zzrf()).zza(new zzca(zzbaz), strArr);
    }

    public final void zza(zzbdw<OnInvitationReceivedListener> zzbdw) {
        try {
            ((zzj) zzrf()).zza(new zzab(zzbdw), this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zza(zzbdw<RoomUpdateListener> zzbdw, zzbdw<RoomStatusUpdateListener> zzbdw2, zzbdw<RealTimeMessageReceivedListener> zzbdw3, RoomConfig roomConfig) {
        try {
            ((zzj) zzrf()).zza(new zzcc(zzbdw, zzbdw2, zzbdw3), this.zzaZv, roomConfig.getVariant(), roomConfig.getInvitedPlayerIds(), roomConfig.getAutoMatchCriteria(), false, this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zza(zzbdw<RoomUpdateListener> zzbdw, String str) {
        try {
            ((zzj) zzrf()).zza(new zzcc(zzbdw), str);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zzaZ(int i) {
        this.zzaZt.zzbaL.gravity = i;
    }

    public final String zzah(boolean z) {
        if (this.zzaZr != null) {
            return this.zzaZr.getPlayerId();
        }
        try {
            return ((zzj) zzrf()).zzuR();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final Intent zzb(int i, int i2, boolean z) {
        try {
            return ((zzj) zzrf()).zzb(i, i2, z);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final Intent zzb(int[] iArr) {
        try {
            return ((zzj) zzrf()).zzb(iArr);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final Set<Scope> zzb(Set<Scope> set) {
        Scope scope = new Scope(Scopes.GAMES);
        Scope scope2 = new Scope("https://www.googleapis.com/auth/games.firstparty");
        Object obj = null;
        int i = 0;
        for (Scope scope3 : set) {
            if (scope3.equals(scope)) {
                i = 1;
            } else if (scope3.equals(scope2)) {
                obj = 1;
            }
        }
        if (obj != null) {
            com.google.android.gms.common.internal.zzbo.zza(i ^ 1, "Cannot have both %s and %s!", Scopes.GAMES, "https://www.googleapis.com/auth/games.firstparty");
            return set;
        }
        com.google.android.gms.common.internal.zzbo.zza(i, "Games APIs requires %s to function.", Scopes.GAMES);
        return set;
    }

    public final void zzb(zzbaz<CaptureAvailableResult> zzbaz, int i) throws RemoteException {
        ((zzj) zzrf()).zzb(new zzh(zzbaz), i);
    }

    public final void zzb(zzbaz<UpdateAchievementResult> zzbaz, String str) throws RemoteException {
        ((zzj) zzrf()).zzb(zzbaz == null ? null : new zze(zzbaz), str, this.zzaZt.zzbaL.zzbaM, this.zzaZt.zzbaL.zzuW());
    }

    public final void zzb(zzbaz<UpdateAchievementResult> zzbaz, String str, int i) throws RemoteException {
        ((zzj) zzrf()).zzb(zzbaz == null ? null : new zze(zzbaz), str, i, this.zzaZt.zzbaL.zzbaM, this.zzaZt.zzbaL.zzuW());
    }

    public final void zzb(zzbaz<LoadScoresResult> zzbaz, String str, int i, int i2, int i3, boolean z) throws RemoteException {
        ((zzj) zzrf()).zzb(new zzah(zzbaz), str, i, i2, i3, z);
    }

    public final void zzb(zzbaz<ClaimMilestoneResult> zzbaz, String str, String str2) throws RemoteException {
        this.zzaZp.flush();
        ((zzj) zzrf()).zzb(new zzbr(zzbaz, str2), str, str2);
    }

    public final void zzb(zzbaz<LeaderboardMetadataResult> zzbaz, String str, boolean z) throws RemoteException {
        ((zzj) zzrf()).zza(new zzai(zzbaz), str, z);
    }

    public final void zzb(zzbaz<LeaderboardMetadataResult> zzbaz, boolean z) throws RemoteException {
        ((zzj) zzrf()).zzb(new zzai(zzbaz), z);
    }

    public final void zzb(zzbaz<LoadQuestsResult> zzbaz, boolean z, String[] strArr) throws RemoteException {
        this.zzaZp.flush();
        ((zzj) zzrf()).zza(new zzbt(zzbaz), strArr, z);
    }

    public final void zzb(zzbaz<UpdateRequestsResult> zzbaz, String[] strArr) throws RemoteException {
        ((zzj) zzrf()).zzb(new zzca(zzbaz), strArr);
    }

    public final void zzb(zzbdw<OnTurnBasedMatchUpdateReceivedListener> zzbdw) {
        try {
            ((zzj) zzrf()).zzb(new zzaz(zzbdw), this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zzb(zzbdw<RoomUpdateListener> zzbdw, zzbdw<RoomStatusUpdateListener> zzbdw2, zzbdw<RealTimeMessageReceivedListener> zzbdw3, RoomConfig roomConfig) {
        try {
            ((zzj) zzrf()).zza(new zzcc(zzbdw, zzbdw2, zzbdw3), this.zzaZv, roomConfig.getInvitationId(), false, this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zzb(String str, zzbaz<GetServerAuthCodeResult> zzbaz) throws RemoteException {
        com.google.android.gms.common.internal.zzbo.zzh(str, "Please provide a valid serverClientId");
        ((zzj) zzrf()).zza(str, new zzy(zzbaz));
    }

    public final void zzba(int i) {
        try {
            ((zzj) zzrf()).zzba(i);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final int zzc(byte[] bArr, String str) {
        try {
            return ((zzj) zzrf()).zzb(bArr, str, null);
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public final Intent zzc(int i, int i2, boolean z) {
        try {
            return ((zzj) zzrf()).zzc(i, i2, z);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final void zzc(zzbaz<InitiateMatchResult> zzbaz, String str) throws RemoteException {
        ((zzj) zzrf()).zzb(new zzco(zzbaz), str);
    }

    public final void zzc(zzbaz<LoadAchievementsResult> zzbaz, boolean z) throws RemoteException {
        ((zzj) zzrf()).zza(new zzf(zzbaz), z);
    }

    public final void zzc(zzbdw<QuestUpdateListener> zzbdw) {
        try {
            ((zzj) zzrf()).zzd(new zzbs(zzbdw), this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zzd(zzbaz<InitiateMatchResult> zzbaz, String str) throws RemoteException {
        ((zzj) zzrf()).zzc(new zzco(zzbaz), str);
    }

    public final void zzd(zzbaz<LoadEventsResult> zzbaz, boolean z) throws RemoteException {
        this.zzaZp.flush();
        ((zzj) zzrf()).zze(new zzu(zzbaz), z);
    }

    public final void zzd(zzbdw<OnRequestReceivedListener> zzbdw) {
        try {
            ((zzj) zzrf()).zzc(new zzbw(zzbdw), this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.games.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.games.internal.IGamesService";
    }

    public final void zzdj(String str) {
        try {
            ((zzj) zzrf()).zzdm(str);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final Intent zzdk(String str) {
        try {
            return ((zzj) zzrf()).zzdk(str);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final void zzdl(String str) {
        try {
            ((zzj) zzrf()).zza(str, this.zzaZt.zzbaL.zzbaM, this.zzaZt.zzbaL.zzuW());
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zze(zzbaz<LeaveMatchResult> zzbaz, String str) throws RemoteException {
        ((zzj) zzrf()).zze(new zzcp(zzbaz), str);
    }

    public final void zze(zzbaz<LoadPlayerStatsResult> zzbaz, boolean z) throws RemoteException {
        ((zzj) zzrf()).zzf(new zzbm(zzbaz), z);
    }

    public final void zze(zzbdw<CaptureOverlayStateListener> zzbdw) {
        try {
            ((zzj) zzrf()).zze(new zzl(zzbdw), this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zzf(zzbaz<LoadGamesResult> zzbaz) throws RemoteException {
        ((zzj) zzrf()).zzb(new zzx(zzbaz));
    }

    public final void zzf(zzbaz<CancelMatchResult> zzbaz, String str) throws RemoteException {
        ((zzj) zzrf()).zzd(new zzcn(zzbaz), str);
    }

    public final void zzf(zzbaz<LoadSnapshotsResult> zzbaz, boolean z) throws RemoteException {
        ((zzj) zzrf()).zzd(new zzck(zzbaz), z);
    }

    public final void zzg(zzbaz<Status> zzbaz) throws RemoteException {
        this.zzaZp.flush();
        ((zzj) zzrf()).zza(new zzcg(zzbaz));
    }

    public final void zzg(zzbaz<LoadMatchResult> zzbaz, String str) throws RemoteException {
        ((zzj) zzrf()).zzf(new zzcq(zzbaz), str);
    }

    public final void zzh(zzbaz<CaptureCapabilitiesResult> zzbaz) throws RemoteException {
        ((zzj) zzrf()).zzc(new zzj(zzbaz));
    }

    public final void zzh(zzbaz<AcceptQuestResult> zzbaz, String str) throws RemoteException {
        this.zzaZp.flush();
        ((zzj) zzrf()).zzh(new zzbp(zzbaz), str);
    }

    public final String zzhl() {
        try {
            return ((zzj) zzrf()).zzhl();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final void zzi(zzbaz<CaptureStateResult> zzbaz) throws RemoteException {
        ((zzj) zzrf()).zzd(new zzn(zzbaz));
    }

    public final void zzi(zzbaz<DeleteSnapshotResult> zzbaz, String str) throws RemoteException {
        ((zzj) zzrf()).zzg(new zzci(zzbaz), str);
    }

    public final Intent zzj(String str, int i, int i2) {
        try {
            return ((zzj) zzrf()).zzk(str, i, i2);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final Bundle zzmo() {
        String locale = getContext().getResources().getConfiguration().locale.toString();
        Bundle zzui = this.zzaZx.zzui();
        zzui.putString("com.google.android.gms.games.key.gamePackageName", this.zzaZq);
        zzui.putString("com.google.android.gms.games.key.desiredLocale", locale);
        zzui.putParcelable("com.google.android.gms.games.key.popupWindowToken", new BinderWrapper(this.zzaZt.zzbaL.zzbaM));
        zzui.putInt("com.google.android.gms.games.key.API_VERSION", 6);
        zzui.putBundle("com.google.android.gms.games.key.signInOptions", zzctu.zza(zzry()));
        return zzui;
    }

    public final boolean zzmv() {
        return true;
    }

    public final void zzn(String str, int i) {
        this.zzaZp.zzn(str, i);
    }

    public final void zzo(String str, int i) {
        try {
            ((zzj) zzrf()).zzo(str, i);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final Bundle zzoC() {
        try {
            Bundle zzoC = ((zzj) zzrf()).zzoC();
            if (zzoC != null) {
                zzoC.setClassLoader(GamesClientImpl.class.getClassLoader());
            }
            return zzoC;
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final void zzp(String str, int i) {
        try {
            ((zzj) zzrf()).zzp(str, i);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zzs(View view) {
        this.zzaZt.zzt(view);
    }

    public final void zzuA() {
        try {
            ((zzj) zzrf()).zzE(this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zzuB() {
        try {
            ((zzj) zzrf()).zzG(this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zzuC() {
        try {
            ((zzj) zzrf()).zzF(this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final Intent zzuD() {
        try {
            return ((zzj) zzrf()).zzuD();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final Intent zzuE() {
        try {
            return ((zzj) zzrf()).zzuE();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final int zzuF() {
        try {
            return ((zzj) zzrf()).zzuF();
        } catch (RemoteException e) {
            zzd(e);
            return 4368;
        }
    }

    public final int zzuG() {
        try {
            return ((zzj) zzrf()).zzuG();
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public final Intent zzuH() {
        try {
            return ((zzj) zzrf()).zzuH();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final int zzuI() {
        try {
            return ((zzj) zzrf()).zzuI();
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public final int zzuJ() {
        try {
            return ((zzj) zzrf()).zzuJ();
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public final int zzuK() {
        try {
            return ((zzj) zzrf()).zzuK();
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public final int zzuL() {
        try {
            return ((zzj) zzrf()).zzuL();
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public final Intent zzuM() {
        try {
            return ((zzj) zzrf()).zzuU();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final boolean zzuN() {
        try {
            return ((zzj) zzrf()).zzuN();
        } catch (RemoteException e) {
            zzd(e);
            return false;
        }
    }

    public final void zzuO() {
        try {
            ((zzj) zzrf()).zzH(this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public final void zzuP() {
        if (isConnected()) {
            try {
                ((zzj) zzrf()).zzuP();
            } catch (RemoteException e) {
                zzd(e);
            }
        }
    }

    public final String zzus() {
        try {
            return ((zzj) zzrf()).zzus();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final Player zzut() {
        zzre();
        synchronized (this) {
            if (this.zzaZr == null) {
                PlayerBuffer playerBuffer;
                try {
                    playerBuffer = new PlayerBuffer(((zzj) zzrf()).zzuS());
                    if (playerBuffer.getCount() > 0) {
                        this.zzaZr = (PlayerEntity) ((Player) playerBuffer.get(0)).freeze();
                    }
                    playerBuffer.release();
                } catch (RemoteException e) {
                    zzd(e);
                } catch (Throwable th) {
                    playerBuffer.release();
                }
            }
        }
        return this.zzaZr;
    }

    public final Game zzuu() {
        zzre();
        synchronized (this) {
            if (this.zzaZs == null) {
                GameBuffer gameBuffer;
                try {
                    gameBuffer = new GameBuffer(((zzj) zzrf()).zzuT());
                    if (gameBuffer.getCount() > 0) {
                        this.zzaZs = (GameEntity) ((Game) gameBuffer.get(0)).freeze();
                    }
                    gameBuffer.release();
                } catch (RemoteException e) {
                    zzd(e);
                } catch (Throwable th) {
                    gameBuffer.release();
                }
            }
        }
        return this.zzaZs;
    }

    public final Intent zzuv() {
        try {
            return ((zzj) zzrf()).zzuv();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final Intent zzuw() {
        try {
            return ((zzj) zzrf()).zzuw();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final Intent zzux() {
        try {
            return ((zzj) zzrf()).zzux();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final Intent zzuy() {
        try {
            return ((zzj) zzrf()).zzuy();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public final void zzuz() {
        try {
            ((zzj) zzrf()).zzD(this.zzaZw);
        } catch (RemoteException e) {
            zzd(e);
        }
    }
}
