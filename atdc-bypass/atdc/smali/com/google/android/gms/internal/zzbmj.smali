.class final Lcom/google/android/gms/internal/zzbmj;
.super Lcom/google/android/gms/internal/zzbmg;


# instance fields
.field private synthetic zzaOb:Lcom/google/android/gms/internal/zzboc;

.field private synthetic zzaOc:Lcom/google/android/gms/internal/zzbqk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbqk;Lcom/google/android/gms/internal/zzboc;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmj;->zzaOc:Lcom/google/android/gms/internal/zzbqk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmj;->zzaOb:Lcom/google/android/gms/internal/zzboc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbom;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzaOc:Lcom/google/android/gms/internal/zzbqk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmj;->zzaOb:Lcom/google/android/gms/internal/zzboc;

    new-instance v2, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbqk;Lcom/google/android/gms/internal/zzboq;Ljava/lang/String;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
