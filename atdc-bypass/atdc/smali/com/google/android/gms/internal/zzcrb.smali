.class final Lcom/google/android/gms/internal/zzcrb;
.super Lcom/google/android/gms/internal/zzcrg;


# instance fields
.field private synthetic zzbAO:I

.field private synthetic zzbAP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcra;Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/zzcrb;->zzbAO:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcrb;->zzbAP:Ljava/lang/String;

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

    iget v0, p0, Lcom/google/android/gms/internal/zzcrb;->zzbAO:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcrb;->zzbAP:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/zzh;->zza(Lcom/google/android/gms/internal/zzbaz;ILjava/lang/String;)Lcom/google/android/gms/common/internal/zzao;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcrb;->zza(Lcom/google/android/gms/common/internal/zzao;)V

    return-void
.end method
