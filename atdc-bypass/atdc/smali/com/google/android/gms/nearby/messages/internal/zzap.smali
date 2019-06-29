.class final Lcom/google/android/gms/nearby/messages/internal/zzap;
.super Lcom/google/android/gms/nearby/messages/internal/zzav;


# instance fields
.field private synthetic zzbhE:Lcom/google/android/gms/internal/zzbdw;

.field private synthetic zzbzl:Lcom/google/android/gms/internal/zzbdw;

.field private synthetic zzbzn:Lcom/google/android/gms/nearby/messages/SubscribeOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzap;->zzbhE:Lcom/google/android/gms/internal/zzbdw;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzap;->zzbzl:Lcom/google/android/gms/internal/zzbdw;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzap;->zzbzn:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

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

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzah;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzap;->zzzX()Lcom/google/android/gms/internal/zzbdw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzap;->zzbhE:Lcom/google/android/gms/internal/zzbdw;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzap;->zzbzl:Lcom/google/android/gms/internal/zzbdw;

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/zzap;->zzbzn:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/nearby/messages/SubscribeOptions;[B)V

    return-void
.end method
