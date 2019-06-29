.class final Lcom/google/android/gms/internal/zzclo;
.super Lcom/google/android/gms/internal/zzcmj;


# instance fields
.field private synthetic zzbwZ:Ljava/util/List;

.field private synthetic zzbxa:Lcom/google/android/gms/nearby/connection/Payload;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Lcom/google/android/gms/nearby/connection/Payload;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzclo;->zzbwZ:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzclo;->zzbxa:Lcom/google/android/gms/nearby/connection/Payload;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcmj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcln;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzckm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclo;->zzbwZ:Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclo;->zzbxa:Lcom/google/android/gms/nearby/connection/Payload;

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/google/android/gms/internal/zzckm;->zza(Lcom/google/android/gms/internal/zzbaz;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V

    return-void
.end method
