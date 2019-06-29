.class final Lcom/google/android/gms/games/internal/GamesClientImpl$zzcw;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$zzw;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzcw"
.end annotation


# instance fields
.field private final zzbaF:Lcom/google/android/gms/internal/zzcam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$zzw;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcam;->zzN(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/internal/zzcam;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzcw;->zzbaF:Lcom/google/android/gms/internal/zzcam;

    return-void
.end method


# virtual methods
.method public final getRequestIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzcw;->zzbaF:Lcom/google/android/gms/internal/zzcam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcam;->getRequestIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestOutcome(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzcw;->zzbaF:Lcom/google/android/gms/internal/zzcam;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcam;->getRequestOutcome(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
