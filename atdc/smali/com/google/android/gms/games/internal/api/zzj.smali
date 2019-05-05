.class final Lcom/google/android/gms/games/internal/api/zzj;
.super Lcom/google/android/gms/games/internal/api/zzm;


# instance fields
.field private synthetic val$id:Ljava/lang/String;

.field private synthetic zzbaQ:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zza;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/zzj;->val$id:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzj;->zzbaQ:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/games/internal/api/zzm;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzj;->val$id:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/zzj;->zzbaQ:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzbaz;Ljava/lang/String;I)V

    return-void
.end method
