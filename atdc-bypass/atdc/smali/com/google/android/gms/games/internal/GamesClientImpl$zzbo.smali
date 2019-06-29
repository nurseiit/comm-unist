.class final Lcom/google/android/gms/games/internal/GamesClientImpl$zzbo;
.super Lcom/google/android/gms/games/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzbo"
.end annotation


# instance fields
.field private final zzaZt:Lcom/google/android/gms/games/internal/zzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/zzn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzbo;->zzaZt:Lcom/google/android/gms/games/internal/zzn;

    return-void
.end method


# virtual methods
.method public final zzur()Lcom/google/android/gms/games/internal/zzl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzbo;->zzaZt:Lcom/google/android/gms/games/internal/zzn;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/zzn;->zzbaL:Lcom/google/android/gms/games/internal/zzp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/zzl;-><init>(Lcom/google/android/gms/games/internal/zzp;)V

    return-object v0
.end method
