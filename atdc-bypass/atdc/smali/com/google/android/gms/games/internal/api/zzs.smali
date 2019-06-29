.class final Lcom/google/android/gms/games/internal/api/zzs;
.super Lcom/google/android/gms/games/internal/api/zzv;


# instance fields
.field private synthetic zzbaT:Ljava/lang/String;

.field private synthetic zzbaU:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzp;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzs;->zzbaT:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzs;->zzbaU:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzv;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzq;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzs;->zzbaT:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/zzs;->zzbaU:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzn(Ljava/lang/String;I)V

    return-void
.end method
