.class final Lcom/google/android/gms/games/internal/GamesClientImpl$zzak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbdz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzak"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbdz<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaZN:Ljava/lang/String;

.field private final zzaxu:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzak;->zzaxu:I

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzak;->zzaZN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzpT()V
    .locals 0

    return-void
.end method

.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iget v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzak;->zzaxu:I

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzak;->zzaZN:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onLeftRoom(ILjava/lang/String;)V

    return-void
.end method
