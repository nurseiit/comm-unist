.class final Lcom/google/android/gms/internal/zzcbu;
.super Lcom/google/android/gms/internal/zzcbw;


# instance fields
.field private synthetic zzbiy:J

.field private synthetic zzbiz:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcbt;Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)V
    .locals 0

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcbu;->zzbiy:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcbu;->zzbiz:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcbw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzcdj;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcbu;->zzbiy:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcbu;->zzbiz:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzcdj;->zza(JLandroid/app/PendingIntent;)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcbu;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
