.class final Lcom/google/android/gms/internal/zzatz;
.super Lcom/google/android/gms/internal/zzbjx;


# instance fields
.field private synthetic zzaon:I

.field private synthetic zzaoo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)V
    .locals 0

    const/16 p2, 0x2713

    iput p2, p0, Lcom/google/android/gms/internal/zzatz;->zzaon:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzatz;->zzaoo:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbjx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbka;

    new-instance v0, Lcom/google/android/gms/internal/zzaub;

    iget v1, p0, Lcom/google/android/gms/internal/zzatz;->zzaon:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzatz;->zzaoo:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaub;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzbka;->zza(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzaub;)V

    return-void
.end method
