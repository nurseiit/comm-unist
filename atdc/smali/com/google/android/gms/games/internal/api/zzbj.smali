.class final Lcom/google/android/gms/games/internal/api/zzbj;
.super Lcom/google/android/gms/games/internal/api/zzbo;


# instance fields
.field private synthetic zzbbf:Ljava/lang/String;

.field private synthetic zzbbg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzbh;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzbj;->zzbbf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/zzbj;->zzbbg:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzbo;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzbi;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzbj;->zzbbf:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/zzbj;->zzbbg:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzbaz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
