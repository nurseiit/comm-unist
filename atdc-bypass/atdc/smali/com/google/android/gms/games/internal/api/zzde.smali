.class final Lcom/google/android/gms/games/internal/api/zzde;
.super Lcom/google/android/gms/games/internal/api/zzdn;


# instance fields
.field private synthetic zzbbB:I

.field private synthetic zzbbC:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzcu;Lcom/google/android/gms/common/api/GoogleApiClient;I[I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/games/internal/api/zzde;->zzbbB:I

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/zzde;->zzbbC:[I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzdn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzcv;)V

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

    iget v0, p0, Lcom/google/android/gms/games/internal/api/zzde;->zzbbB:I

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/zzde;->zzbbC:[I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzbaz;I[I)V

    return-void
.end method
