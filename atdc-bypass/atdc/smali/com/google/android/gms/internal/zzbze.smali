.class final Lcom/google/android/gms/internal/zzbze;
.super Lcom/google/android/gms/internal/zzbvr;


# instance fields
.field private synthetic zzaVX:Landroid/app/PendingIntent;

.field private synthetic zzaWg:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbyz;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbze;->zzaVX:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzbze;->zzaWg:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvr;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbvo;

    new-instance v0, Lcom/google/android/gms/internal/zzbzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbzi;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbvo;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbwv;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzaw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbze;->zzaVX:Landroid/app/PendingIntent;

    iget v3, p0, Lcom/google/android/gms/internal/zzbze;->zzaWg:I

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/fitness/request/zzaw;-><init>(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbxg;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbwv;->zza(Lcom/google/android/gms/fitness/request/zzaw;)V

    return-void
.end method
