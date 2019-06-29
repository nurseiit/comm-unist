.class final Lcom/google/android/gms/internal/zzsn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzth;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzti;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzti;->zztK:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzti;->zztK:Lcom/google/android/gms/internal/zzjo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzjo;->onAdLeftApplication()V

    :cond_0
    return-void
.end method
