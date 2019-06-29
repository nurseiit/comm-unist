.class final Lcom/google/android/gms/internal/zq;
.super Lcom/google/android/gms/internal/zzbeq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbeq<",
        "Lcom/google/android/gms/internal/zm;",
        "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzcjY:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbeq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zq;->zzcjY:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zm;

    new-instance v0, Lcom/google/android/gms/internal/zp;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zp;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zq;->zzcjY:Landroid/os/Bundle;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zm;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zv;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/zv;->zza(Lcom/google/android/gms/internal/zt;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
