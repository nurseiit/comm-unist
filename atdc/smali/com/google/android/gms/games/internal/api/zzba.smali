.class final Lcom/google/android/gms/games/internal/api/zzba;
.super Lcom/google/android/gms/games/internal/api/zzbf;


# instance fields
.field private synthetic zzbaP:Z

.field private synthetic zzbbe:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzax;Lcom/google/android/gms/common/api/GoogleApiClient;IZ)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/games/internal/api/zzba;->zzbbe:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/zzba;->zzbaP:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/zzbf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget v0, p0, Lcom/google/android/gms/games/internal/api/zzba;->zzbbe:I

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/api/zzba;->zzbaP:Z

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzbaz;IZZ)V

    return-void
.end method
