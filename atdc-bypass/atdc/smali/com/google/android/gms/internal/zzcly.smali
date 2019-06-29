.class final Lcom/google/android/gms/internal/zzcly;
.super Lcom/google/android/gms/internal/zzcmh;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzbxe:Ljava/lang/String;

.field private synthetic zzbxk:Lcom/google/android/gms/internal/zzbdw;

.field private synthetic zzbxl:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcly;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcly;->zzbxe:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcly;->zzbxk:Lcom/google/android/gms/internal/zzbdw;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcly;->zzbxl:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcmh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcln;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzckm;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcly;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcly;->zzbxe:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcly;->zzbxk:Lcom/google/android/gms/internal/zzbdw;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzcly;->zzbxl:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckm;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcnd;

    new-instance v9, Lcom/google/android/gms/internal/zzcox;

    new-instance v1, Lcom/google/android/gms/internal/zzcll;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcll;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcll;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcko;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzcko;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcko;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzcox;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Landroid/os/IBinder;)V

    invoke-interface {p1, v9}, Lcom/google/android/gms/internal/zzcnd;->zza(Lcom/google/android/gms/internal/zzcox;)V

    return-void
.end method
