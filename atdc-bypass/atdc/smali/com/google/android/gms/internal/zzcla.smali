.class final Lcom/google/android/gms/internal/zzcla;
.super Lcom/google/android/gms/internal/zzclf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzclf<",
        "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwS:Lcom/google/android/gms/internal/zzcny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckz;Lcom/google/android/gms/internal/zzcny;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcla;->zzbwS:Lcom/google/android/gms/internal/zzcny;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzclf;-><init>(Lcom/google/android/gms/internal/zzckn;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcla;->zzbwS:Lcom/google/android/gms/internal/zzcny;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcny;->zzzJ()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcla;->zzbwS:Lcom/google/android/gms/internal/zzcny;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcny;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcla;->zzbwS:Lcom/google/android/gms/internal/zzcny;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcny;->getEndpointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;->onEndpointFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
