.class final Lcom/google/android/gms/internal/zzbyw;
.super Lcom/google/android/gms/internal/zzbvn;


# instance fields
.field private synthetic zzaVL:Landroid/app/PendingIntent;

.field private synthetic zzaVZ:Lcom/google/android/gms/internal/zzbyx;

.field private synthetic zzaWa:Lcom/google/android/gms/fitness/data/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbys;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbyx;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyw;->zzaVZ:Lcom/google/android/gms/internal/zzbyx;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbyw;->zzaWa:Lcom/google/android/gms/fitness/data/zzt;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbyw;->zzaVL:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzA(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbvk;

    new-instance v0, Lcom/google/android/gms/internal/zzbyy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyw;->zzaVZ:Lcom/google/android/gms/internal/zzbyx;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzbyy;-><init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbyx;Lcom/google/android/gms/internal/zzbyt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbvk;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbwt;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzaq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyw;->zzaWa:Lcom/google/android/gms/fitness/data/zzt;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyw;->zzaVL:Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/fitness/request/zzaq;-><init>(Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbxg;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbwt;->zza(Lcom/google/android/gms/fitness/request/zzaq;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method
