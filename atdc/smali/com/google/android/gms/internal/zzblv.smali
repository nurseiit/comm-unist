.class final Lcom/google/android/gms/internal/zzblv;
.super Lcom/google/android/gms/internal/zzbkt;


# instance fields
.field private final zzaIz:Lcom/google/android/gms/internal/zzbaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbkt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblv;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    new-instance v1, Lcom/google/android/gms/internal/zzblw;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/zzblw;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbaz;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzboz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblv;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    new-instance v1, Lcom/google/android/gms/internal/zzblw;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/internal/zzbmn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzboz;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzbmn;-><init>(Lcom/google/android/gms/drive/zzc;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzblw;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbaz;->setResult(Ljava/lang/Object;)V

    return-void
.end method
