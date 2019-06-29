.class final Lcom/google/android/gms/internal/zzcky;
.super Lcom/google/android/gms/internal/zzclf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzclf<",
        "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwT:Lcom/google/android/gms/internal/zzcoa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckw;Lcom/google/android/gms/internal/zzcoa;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcky;->zzbwT:Lcom/google/android/gms/internal/zzcoa;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzclf;-><init>(Lcom/google/android/gms/internal/zzckn;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzbwT:Lcom/google/android/gms/internal/zzcoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcoa;->zzzJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;->onEndpointLost(Ljava/lang/String;)V

    return-void
.end method
