.class Lcom/google/android/gms/internal/zzazb;
.super Lcom/google/android/gms/internal/zzbay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbay<",
        "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
        "Lcom/google/android/gms/internal/zzazf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzayZ:Lcom/google/android/gms/internal/zzayw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzayw;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazb;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzayw;->zzc(Lcom/google/android/gms/internal/zzayw;)Lcom/google/android/gms/common/api/Api;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbay;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbay;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzazf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzazb;->zza(Lcom/google/android/gms/internal/zzazf;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzazf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaze;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaze;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
