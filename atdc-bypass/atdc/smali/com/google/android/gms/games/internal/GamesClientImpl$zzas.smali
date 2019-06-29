.class final Lcom/google/android/gms/games/internal/GamesClientImpl$zzas;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$zzw;

# interfaces
.implements Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzas"
.end annotation


# instance fields
.field private final zzaZU:Lcom/google/android/gms/games/stats/PlayerStats;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$zzw;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/games/stats/zza;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/stats/PlayerStats;

    invoke-direct {p1, v1}, Lcom/google/android/gms/games/stats/zza;-><init>(Lcom/google/android/gms/games/stats/PlayerStats;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzas;->zzaZU:Lcom/google/android/gms/games/stats/PlayerStats;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzas;->zzaZU:Lcom/google/android/gms/games/stats/PlayerStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->release()V

    throw p1
.end method


# virtual methods
.method public final getPlayerStats()Lcom/google/android/gms/games/stats/PlayerStats;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzas;->zzaZU:Lcom/google/android/gms/games/stats/PlayerStats;

    return-object v0
.end method
