.class final Lcom/google/android/gms/internal/zzcce;
.super Lcom/google/android/gms/internal/zzccm;


# instance fields
.field private synthetic zzbiG:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzccb;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcce;->zzbiG:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdj;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcce;->zzbiG:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcdj;->zzai(Z)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcce;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
