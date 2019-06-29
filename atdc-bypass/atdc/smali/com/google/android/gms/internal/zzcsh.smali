.class final Lcom/google/android/gms/internal/zzcsh;
.super Lcom/google/android/gms/internal/zzcsa$zze;


# instance fields
.field private synthetic zzbBU:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcsa;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcsh;->zzbBU:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcsa$zze;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcsn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsh;->zzbBW:Lcom/google/android/gms/internal/zzcrw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcsh;->zzbBU:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcsn;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcry;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzcry;->zza(Lcom/google/android/gms/internal/zzcrw;Ljava/lang/String;)V

    return-void
.end method
