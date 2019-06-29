.class final Lcom/google/android/gms/internal/zzclu;
.super Lcom/google/android/gms/internal/zzcmj;


# instance fields
.field private synthetic zzbxb:Ljava/lang/String;

.field private synthetic zzbxg:[B

.field private synthetic zzbxi:Lcom/google/android/gms/internal/zzbdw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/internal/zzbdw;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzclu;->zzbxb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzclu;->zzbxg:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzclu;->zzbxi:Lcom/google/android/gms/internal/zzbdw;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcmj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcln;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzckm;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzclu;->zzbxb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzclu;->zzbxg:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzbxi:Lcom/google/android/gms/internal/zzbdw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckm;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcnd;

    new-instance v6, Lcom/google/android/gms/internal/zzcki;

    new-instance v1, Lcom/google/android/gms/internal/zzclj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzclj;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclj;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzclc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzclc;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzclc;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcki;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/zzcnd;->zza(Lcom/google/android/gms/internal/zzcki;)V

    return-void
.end method
