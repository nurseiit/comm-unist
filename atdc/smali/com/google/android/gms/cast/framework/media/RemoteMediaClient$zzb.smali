.class Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;
.super Lcom/google/android/gms/internal/zzaxs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaxs<",
        "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field zzarw:Lcom/google/android/gms/internal/zzayt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxs;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance p1, Lcom/google/android/gms/cast/framework/media/zzag;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/zzag;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzarw:Lcom/google/android/gms/internal/zzayt;

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaxs;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaxx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zza(Lcom/google/android/gms/internal/zzaxx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaxx;)V
    .locals 0

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzah;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzah;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
