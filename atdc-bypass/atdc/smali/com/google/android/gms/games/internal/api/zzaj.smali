.class final Lcom/google/android/gms/games/internal/api/zzaj;
.super Lcom/google/android/gms/games/internal/api/zzar;


# instance fields
.field private synthetic zzbaP:Z

.field private synthetic zzbaW:Ljava/lang/String;

.field private synthetic zzbaX:I

.field private synthetic zzbaY:I

.field private synthetic zzbaZ:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzaj;->zzbaW:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzaj;->zzbaX:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzaj;->zzbaY:I

    iput p6, p0, Lcom/google/android/gms/games/internal/api/zzaj;->zzbaZ:I

    iput-boolean p7, p0, Lcom/google/android/gms/games/internal/api/zzaj;->zzbaP:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzar;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzag;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/zzaj;->zzbaW:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/games/internal/api/zzaj;->zzbaX:I

    iget v4, p0, Lcom/google/android/gms/games/internal/api/zzaj;->zzbaY:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/zzaj;->zzbaZ:I

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/zzaj;->zzbaP:Z

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzbaz;Ljava/lang/String;IIIZ)V

    return-void
.end method
