.class final Lcom/google/android/gms/internal/zzbmp;
.super Lcom/google/android/gms/internal/zzbmg;


# instance fields
.field private synthetic zzaOj:Lcom/google/android/gms/internal/zzbmn;

.field private synthetic zzaOk:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzaOl:Lcom/google/android/gms/drive/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmn;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmp;->zzaOj:Lcom/google/android/gms/internal/zzbmn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmp;->zzaOk:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmp;->zzaOl:Lcom/google/android/gms/drive/zzp;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzaOk:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbom;

    new-instance v6, Lcom/google/android/gms/internal/zzbkw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzaOj:Lcom/google/android/gms/internal/zzbmn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbmn;->zza(Lcom/google/android/gms/internal/zzbmn;)Lcom/google/android/gms/drive/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzaOk:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzaOj:Lcom/google/android/gms/internal/zzbmn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbmn;->zza(Lcom/google/android/gms/internal/zzbmn;)Lcom/google/android/gms/drive/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzaOj:Lcom/google/android/gms/internal/zzbmn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbmn;->zza(Lcom/google/android/gms/internal/zzbmn;)Lcom/google/android/gms/drive/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->zzsK()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbmp;->zzaOl:Lcom/google/android/gms/drive/zzp;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkw;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzp;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {p1, v6, v0}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbkw;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
