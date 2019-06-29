.class public final Lcom/google/android/gms/games/multiplayer/realtime/zzb;
.super Lcom/google/android/gms/common/data/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/zzg<",
        "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/zzg;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzi(II)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/zzf;

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzb;->zzaCX:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/zzf;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method protected final zzqS()Ljava/lang/String;
    .locals 1

    const-string v0, "external_match_id"

    return-object v0
.end method
