.class final Lcom/google/android/gms/internal/zzckt;
.super Lcom/google/android/gms/internal/zzclf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzclf<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwP:Lcom/google/android/gms/internal/zzcnq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcks;Lcom/google/android/gms/internal/zzcnq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckt;->zzbwP:Lcom/google/android/gms/internal/zzcnq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzclf;-><init>(Lcom/google/android/gms/internal/zzckn;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckt;->zzbwP:Lcom/google/android/gms/internal/zzcnq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcnq;->zzzF()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckt;->zzbwP:Lcom/google/android/gms/internal/zzcnq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcnq;->zzzG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckt;->zzbwP:Lcom/google/android/gms/internal/zzcnq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcnq;->zzzI()[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
