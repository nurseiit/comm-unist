.class final Lcom/google/android/gms/games/internal/api/zzdg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;


# instance fields
.field private synthetic zzakB:Lcom/google/android/gms/common/api/Status;

.field private synthetic zzbbD:Lcom/google/android/gms/games/internal/api/zzdf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzdf;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/zzdg;->zzbbD:Lcom/google/android/gms/games/internal/api/zzdf;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/zzdg;->zzakB:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMatchId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzdg;->zzbbD:Lcom/google/android/gms/games/internal/api/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/games/internal/api/zzdf;->zza(Lcom/google/android/gms/games/internal/api/zzdf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzdg;->zzakB:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
