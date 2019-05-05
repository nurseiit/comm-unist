.class final Lcom/google/android/gms/internal/zzbmz;
.super Lcom/google/android/gms/internal/zzbnf;


# instance fields
.field private synthetic zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzaOv:Lcom/google/android/gms/internal/zzbmx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmz;->zzaOv:Lcom/google/android/gms/internal/zzbmx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmz;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmz;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbom;

    new-instance v0, Lcom/google/android/gms/internal/zzblh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmz;->zzaOv:Lcom/google/android/gms/internal/zzbmx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbmx;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbmz;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzblh;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbnb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbnb;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzblh;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
