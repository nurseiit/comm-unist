.class final Lcom/google/android/gms/internal/zzbmr;
.super Lcom/google/android/gms/internal/zzbmg;


# instance fields
.field private synthetic zzaOj:Lcom/google/android/gms/internal/zzbmn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmn;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmr;->zzaOj:Lcom/google/android/gms/internal/zzbmn;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbom;

    new-instance v0, Lcom/google/android/gms/internal/zzbky;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmr;->zzaOj:Lcom/google/android/gms/internal/zzbmn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbmn;->zza(Lcom/google/android/gms/internal/zzbmn;)Lcom/google/android/gms/drive/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbky;-><init>(IZ)V

    new-instance v1, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbky;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
