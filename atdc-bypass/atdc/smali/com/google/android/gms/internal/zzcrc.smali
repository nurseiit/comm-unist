.class final Lcom/google/android/gms/internal/zzcrc;
.super Lcom/google/android/gms/internal/zzcrg;


# instance fields
.field private synthetic zzbAP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcra;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcrc;->zzbAP:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcrg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcrb;)V

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

    check-cast p1, Lcom/google/android/gms/plus/internal/zzh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcrc;->zzbAP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/gms/plus/internal/zzh;->zza(Lcom/google/android/gms/internal/zzbaz;ILjava/lang/String;)Lcom/google/android/gms/common/internal/zzao;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcrc;->zza(Lcom/google/android/gms/common/internal/zzao;)V

    return-void
.end method
