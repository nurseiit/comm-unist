.class final Lcom/google/android/gms/games/internal/api/zzbw;
.super Lcom/google/android/gms/games/internal/api/zzbx;


# instance fields
.field private synthetic zzbaV:I

.field private synthetic zzbbk:I

.field private synthetic zzbbl:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzbt;Lcom/google/android/gms/common/api/GoogleApiClient;III)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/games/internal/api/zzbw;->zzbbk:I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzbw;->zzbbl:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzbw;->zzbaV:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzbx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzbu;)V

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

    iget v0, p0, Lcom/google/android/gms/games/internal/api/zzbw;->zzbbk:I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/zzbw;->zzbbl:I

    iget v2, p0, Lcom/google/android/gms/games/internal/api/zzbw;->zzbaV:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzbaz;III)V

    return-void
.end method
