.class final Lcom/google/android/gms/internal/zzazg;
.super Lcom/google/android/gms/internal/zzazm;


# instance fields
.field private synthetic zzaze:Lcom/google/android/gms/internal/zzazl;

.field private synthetic zzazf:Lcom/google/android/gms/internal/zzazf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazf;Lcom/google/android/gms/internal/zzazl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazg;->zzazf:Lcom/google/android/gms/internal/zzazf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazg;->zzaze:Lcom/google/android/gms/internal/zzazl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzah(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzazf;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazg;->zzaze:Lcom/google/android/gms/internal/zzazl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazg;->zzaze:Lcom/google/android/gms/internal/zzazl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzazl;->zzah(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazg;->zzazf:Lcom/google/android/gms/internal/zzazf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazf;->zzb(Lcom/google/android/gms/internal/zzazf;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazg;->zzazf:Lcom/google/android/gms/internal/zzazf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazf;->zzb(Lcom/google/android/gms/internal/zzazf;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;->onRemoteDisplayEnded(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    return-void
.end method
