.class final Lcom/google/android/gms/internal/zzcmc;
.super Lcom/google/android/gms/internal/zzcmj;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzbxb:Ljava/lang/String;

.field private synthetic zzbxk:Lcom/google/android/gms/internal/zzbdw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbdw;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcmc;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcmc;->zzbxb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcmc;->zzbxk:Lcom/google/android/gms/internal/zzbdw;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcmj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcln;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzckm;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcmc;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcmc;->zzbxb:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmc;->zzbxk:Lcom/google/android/gms/internal/zzbdw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckm;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcnd;

    new-instance v8, Lcom/google/android/gms/internal/zzcot;

    new-instance v1, Lcom/google/android/gms/internal/zzclj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzclj;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclj;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcko;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzcko;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcko;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcot;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {p1, v8}, Lcom/google/android/gms/internal/zzcnd;->zza(Lcom/google/android/gms/internal/zzcot;)V

    return-void
.end method
