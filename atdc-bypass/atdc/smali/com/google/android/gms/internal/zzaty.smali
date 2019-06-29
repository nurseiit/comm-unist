.class final Lcom/google/android/gms/internal/zzaty;
.super Lcom/google/android/gms/internal/zzbjx;


# instance fields
.field private synthetic zzaon:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/zzaty;->zzaon:I

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

    iget v1, p0, Lcom/google/android/gms/internal/zzaty;->zzaon:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaub;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzbka;->zza(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzaub;)V

    return-void
.end method
