.class final Lcom/google/android/gms/games/internal/api/zzbk;
.super Lcom/google/android/gms/games/internal/api/zzbq;


# instance fields
.field private synthetic zzbaP:Z

.field private synthetic zzbaV:I

.field private synthetic zzbbh:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzbh;Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzbk;->zzbbh:[I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzbk;->zzbaV:I

    iput-boolean p5, p0, Lcom/google/android/gms/games/internal/api/zzbk;->zzbaP:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzbq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzbi;)V

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

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzbk;->zzbbh:[I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/zzbk;->zzbaV:I

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/zzbk;->zzbaP:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzbaz;[IIZ)V

    return-void
.end method
