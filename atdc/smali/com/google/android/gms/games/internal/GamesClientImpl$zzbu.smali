.class final Lcom/google/android/gms/games/internal/GamesClientImpl$zzbu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbdz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzbu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbdz<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaxu:I

.field private final zzbam:Ljava/lang/String;

.field private final zzban:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzbu;->zzaxu:I

    iput p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzbu;->zzban:I

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzbu;->zzbam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzpT()V
    .locals 0

    return-void
.end method

.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzbu;->zzaxu:I

    iget v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzbu;->zzban:I

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzbu;->zzbam:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;->onRealTimeMessageSent(IILjava/lang/String;)V

    :cond_0
    return-void
.end method
