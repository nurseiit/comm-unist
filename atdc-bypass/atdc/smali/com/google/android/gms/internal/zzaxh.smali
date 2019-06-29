.class public abstract Lcom/google/android/gms/internal/zzaxh;
.super Lcom/google/android/gms/internal/zzaxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaxg<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaxd:Lcom/google/android/gms/internal/zzawy;

.field private zzaxl:Lcom/google/android/gms/cast/games/GameManagerClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzawy;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxd:Lcom/google/android/gms/internal/zzawy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxg;-><init>(Lcom/google/android/gms/internal/zzawy;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxl:Lcom/google/android/gms/cast/games/GameManagerClient;

    new-instance p2, Lcom/google/android/gms/internal/zzaxi;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/zzaxi;-><init>(Lcom/google/android/gms/internal/zzaxh;Lcom/google/android/gms/internal/zzawy;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxh;->zzarw:Lcom/google/android/gms/internal/zzayt;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaxh;)Lcom/google/android/gms/cast/games/GameManagerClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxl:Lcom/google/android/gms/cast/games/GameManagerClient;

    return-object p0
.end method

.method public static zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzaxj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzaxj;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaxh;->zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p1

    return-object p1
.end method
