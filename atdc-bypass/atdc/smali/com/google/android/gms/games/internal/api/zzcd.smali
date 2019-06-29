.class final Lcom/google/android/gms/games/internal/api/zzcd;
.super Lcom/google/android/gms/games/internal/api/zzcn;


# instance fields
.field private synthetic zzbbm:Ljava/lang/String;

.field private synthetic zzbbn:Z

.field private synthetic zzbbo:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzcb;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzcd;->zzbbm:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/zzcd;->zzbbn:Z

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzcd;->zzbbo:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzcn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzcc;)V

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

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzcd;->zzbbm:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/api/zzcd;->zzbbn:Z

    iget v2, p0, Lcom/google/android/gms/games/internal/api/zzcd;->zzbbo:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzbaz;Ljava/lang/String;ZI)V

    return-void
.end method
