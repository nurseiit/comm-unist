.class final Lcom/google/android/gms/nearby/messages/internal/zzan;
.super Lcom/google/android/gms/nearby/messages/internal/zzav;


# instance fields
.field private synthetic zzbzk:Lcom/google/android/gms/nearby/messages/Message;

.field private synthetic zzbzl:Lcom/google/android/gms/internal/zzbdw;

.field private synthetic zzbzm:Lcom/google/android/gms/nearby/messages/PublishOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/nearby/messages/PublishOptions;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzan;->zzbzk:Lcom/google/android/gms/nearby/messages/Message;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzan;->zzbzl:Lcom/google/android/gms/internal/zzbdw;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzan;->zzbzm:Lcom/google/android/gms/nearby/messages/PublishOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzav;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzah;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzan;->zzzX()Lcom/google/android/gms/internal/zzbdw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzan;->zzbzk:Lcom/google/android/gms/nearby/messages/Message;

    invoke-static {v1}, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zza(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/nearby/messages/internal/zzaf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzan;->zzbzl:Lcom/google/android/gms/internal/zzbdw;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzan;->zzbzm:Lcom/google/android/gms/nearby/messages/PublishOptions;

    new-instance v4, Lcom/google/android/gms/nearby/messages/internal/zzax;

    invoke-virtual {v3}, Lcom/google/android/gms/nearby/messages/PublishOptions;->getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/internal/zzcpq;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/zzcpq;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzcpt;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzcpt;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    :goto_0
    invoke-direct {v4, v1, v3, v5, v0}, Lcom/google/android/gms/nearby/messages/internal/zzax;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzaf;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-interface {p1, v4}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zza(Lcom/google/android/gms/nearby/messages/internal/zzax;)V

    return-void
.end method
