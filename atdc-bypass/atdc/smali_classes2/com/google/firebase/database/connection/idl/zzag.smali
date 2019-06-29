.class final Lcom/google/firebase/database/connection/idl/zzag;
.super Lcom/google/firebase/database/connection/idl/zzo;


# instance fields
.field private synthetic zzccl:Lcom/google/android/gms/internal/oi;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzaf;Lcom/google/android/gms/internal/oi;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzag;->zzccl:Lcom/google/android/gms/internal/oi;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzo;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzag;->zzccl:Lcom/google/android/gms/internal/oi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oi;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public final zzgF(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzag;->zzccl:Lcom/google/android/gms/internal/oi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oi;->zzgF(Ljava/lang/String;)V

    return-void
.end method
