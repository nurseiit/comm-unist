.class final Lcom/google/android/gms/games/internal/api/zzal;
.super Lcom/google/android/gms/games/internal/api/zzar;


# instance fields
.field private synthetic zzbaZ:I

.field private synthetic zzbba:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field private synthetic zzbbb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzal;->zzbba:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzal;->zzbaZ:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzal;->zzbbb:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzar;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzag;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzal;->zzbba:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/zzal;->zzbaZ:I

    iget v2, p0, Lcom/google/android/gms/games/internal/api/zzal;->zzbbb:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    return-void
.end method
