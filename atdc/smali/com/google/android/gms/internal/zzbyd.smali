.class final Lcom/google/android/gms/internal/zzbyd;
.super Lcom/google/android/gms/internal/zzbvd;


# instance fields
.field private synthetic zzaVJ:Lcom/google/android/gms/fitness/request/DataUpdateRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbya;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataUpdateRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyd;->zzaVJ:Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbva;

    new-instance v0, Lcom/google/android/gms/internal/zzbzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbzi;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbva;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbwn;

    new-instance v1, Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyd;->zzaVJ:Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/DataUpdateRequest;-><init>(Lcom/google/android/gms/fitness/request/DataUpdateRequest;Landroid/os/IBinder;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbwn;->zza(Lcom/google/android/gms/fitness/request/DataUpdateRequest;)V

    return-void
.end method
