.class final Lcom/google/android/gms/internal/zzbnk;
.super Lcom/google/android/gms/internal/zzbkt;


# instance fields
.field private final zzaIz:Lcom/google/android/gms/internal/zzbaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic zzaOz:Lcom/google/android/gms/internal/zzbnh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbnh;Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnk;->zzaOz:Lcom/google/android/gms/internal/zzbnh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbkt;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnk;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbnh;Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbni;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbnk;-><init>(Lcom/google/android/gms/internal/zzbnh;Lcom/google/android/gms/internal/zzbaz;)V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnk;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    new-instance v1, Lcom/google/android/gms/internal/zzbnl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnk;->zzaOz:Lcom/google/android/gms/internal/zzbnh;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/google/android/gms/internal/zzbnl;-><init>(Lcom/google/android/gms/internal/zzbnh;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/zzbni;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbaz;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbpb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnk;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    new-instance v1, Lcom/google/android/gms/internal/zzbnl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnk;->zzaOz:Lcom/google/android/gms/internal/zzbnh;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbpb;->zzaOW:Lcom/google/android/gms/internal/zzbog;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/zzbnl;-><init>(Lcom/google/android/gms/internal/zzbnh;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/zzbni;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbaz;->setResult(Ljava/lang/Object;)V

    return-void
.end method
