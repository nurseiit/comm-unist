.class final Lcom/google/android/gms/wearable/internal/zzfo;
.super Lcom/google/android/gms/wearable/internal/zzfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzfc<",
        "Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzfc;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/wearable/internal/zzde;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzef;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/zzde;->statusCode:I

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzev;->zzaY(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzde;->zzbSQ:Lcom/google/android/gms/wearable/internal/zzeg;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/wearable/internal/zzef;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Node;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzfo;->zzR(Ljava/lang/Object;)V

    return-void
.end method