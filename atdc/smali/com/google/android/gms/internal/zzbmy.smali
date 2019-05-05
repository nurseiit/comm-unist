.class final Lcom/google/android/gms/internal/zzbmy;
.super Lcom/google/android/gms/internal/zzbnd;


# instance fields
.field private synthetic zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzaOs:I

.field private synthetic zzaOt:I

.field private synthetic zzaOu:Lcom/google/android/gms/drive/zzm;

.field private synthetic zzaOv:Lcom/google/android/gms/internal/zzbmx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/zzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOv:Lcom/google/android/gms/internal/zzbmx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput p4, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOs:I

    iput p5, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOt:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOu:Lcom/google/android/gms/drive/zzm;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzblf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOv:Lcom/google/android/gms/internal/zzbmx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbmx;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOs:I

    iget v6, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOt:I

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOu:Lcom/google/android/gms/drive/zzm;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzblf;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/zzm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbom;

    new-instance v1, Lcom/google/android/gms/internal/zzbna;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbna;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzblf;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
