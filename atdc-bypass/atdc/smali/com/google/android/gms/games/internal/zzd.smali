.class final Lcom/google/android/gms/games/internal/zzd;
.super Lcom/google/android/gms/internal/zzcal;


# instance fields
.field private synthetic zzaZz:Lcom/google/android/gms/games/internal/GamesClientImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzd;->zzaZz:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcal;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzuQ()Lcom/google/android/gms/internal/zzcaj;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzv;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzd;->zzaZz:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl$zzv;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-object v0
.end method
