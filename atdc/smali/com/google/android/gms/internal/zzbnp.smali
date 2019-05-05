.class final Lcom/google/android/gms/internal/zzbnp;
.super Lcom/google/android/gms/internal/zzbmc;


# instance fields
.field private synthetic zzaOD:Lcom/google/android/gms/internal/zzbnn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnn;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnp;->zzaOD:Lcom/google/android/gms/internal/zzbnn;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbom;

    new-instance v0, Lcom/google/android/gms/internal/zzbov;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnp;->zzaOD:Lcom/google/android/gms/internal/zzbnn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbnn;->zzaLV:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbov;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbnv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbnv;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbov;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
