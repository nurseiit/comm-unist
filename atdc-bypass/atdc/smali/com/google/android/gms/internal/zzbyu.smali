.class final Lcom/google/android/gms/internal/zzbyu;
.super Lcom/google/android/gms/internal/zzbvn;


# instance fields
.field private synthetic zzaVV:Lcom/google/android/gms/fitness/request/SensorRequest;

.field private synthetic zzaVW:Lcom/google/android/gms/fitness/data/zzt;

.field private synthetic zzaVX:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbys;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyu;->zzaVV:Lcom/google/android/gms/fitness/request/SensorRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbyu;->zzaVW:Lcom/google/android/gms/fitness/data/zzt;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbyu;->zzaVX:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzA(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbvk;

    new-instance v0, Lcom/google/android/gms/internal/zzbzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbzi;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbvk;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbwt;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzan;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyu;->zzaVV:Lcom/google/android/gms/fitness/request/SensorRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyu;->zzaVW:Lcom/google/android/gms/fitness/data/zzt;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbyu;->zzaVX:Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/fitness/request/zzan;-><init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbxg;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbwt;->zza(Lcom/google/android/gms/fitness/request/zzan;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method
