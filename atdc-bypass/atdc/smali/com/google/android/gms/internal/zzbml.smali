.class final Lcom/google/android/gms/internal/zzbml;
.super Lcom/google/android/gms/internal/zzbmg;


# instance fields
.field private synthetic zzaOd:Lcom/google/android/gms/drive/DriveId;

.field private synthetic zzaOe:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbml;->zzaOd:Lcom/google/android/gms/drive/DriveId;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzbml;->zzaOe:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbom;

    new-instance v0, Lcom/google/android/gms/internal/zzbqk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbml;->zzaOd:Lcom/google/android/gms/drive/DriveId;

    iget v2, p0, Lcom/google/android/gms/internal/zzbml;->zzaOe:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqk;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    new-instance v1, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbqk;Lcom/google/android/gms/internal/zzboq;Ljava/lang/String;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
