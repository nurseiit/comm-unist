.class final Lcom/google/android/gms/internal/zzccl;
.super Lcom/google/android/gms/internal/zzccm;


# instance fields
.field private synthetic zzbiz:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccb;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzccl;->zzbiz:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdj;

    new-instance v0, Lcom/google/android/gms/internal/zzccn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzccn;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccl;->zzbiz:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzcdj;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method
