.class final Lcom/google/android/gms/internal/zzckv;
.super Lcom/google/android/gms/internal/zzclf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzclf<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwR:Lcom/google/android/gms/internal/zzcns;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcku;Lcom/google/android/gms/internal/zzcns;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckv;->zzbwR:Lcom/google/android/gms/internal/zzcns;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzclf;-><init>(Lcom/google/android/gms/internal/zzckn;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckv;->zzbwR:Lcom/google/android/gms/internal/zzcns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcns;->zzzF()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckv;->zzbwR:Lcom/google/android/gms/internal/zzcns;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcns;->getStatusCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckv;->zzbwR:Lcom/google/android/gms/internal/zzcns;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcns;->zzzI()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;->onConnectionResponse(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;[B)V

    return-void
.end method
