.class final Lcom/google/android/gms/wearable/internal/zzan;
.super Lcom/google/android/gms/wearable/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzn<",
        "Lcom/google/android/gms/wearable/Channel$GetInputStreamResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbSk:Lcom/google/android/gms/wearable/internal/zzak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzan;->zzbSk:Lcom/google/android/gms/wearable/internal/zzak;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfw;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzan;->zzbSk:Lcom/google/android/gms/wearable/internal/zzak;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzak;->zza(Lcom/google/android/gms/wearable/internal/zzak;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbd;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/internal/zzbd;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzfw;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdn;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzfi;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/wearable/internal/zzfi;-><init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/wearable/internal/zzbd;)V

    invoke-interface {p1, v2, v1, v0}, Lcom/google/android/gms/wearable/internal/zzdn;->zza(Lcom/google/android/gms/wearable/internal/zzdi;Lcom/google/android/gms/wearable/internal/zzdg;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzas;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzas;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/io/InputStream;)V

    return-object v0
.end method
