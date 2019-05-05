.class public final Lcom/google/android/gms/internal/zzbmn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveContents;


# instance fields
.field private mClosed:Z

.field private final zzaOg:Lcom/google/android/gms/drive/zzc;

.field private zzaOh:Z

.field private zzaOi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/zzc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->mClosed:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOi:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/zzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzp;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/zzp;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance p3, Lcom/google/android/gms/drive/zzr;

    invoke-direct {p3}, Lcom/google/android/gms/drive/zzr;-><init>()V

    invoke-virtual {p3}, Lcom/google/android/gms/drive/zzr;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/drive/zzp;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getMode()I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot commit contents opened with MODE_READ_ONLY"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/drive/zzp;->zzsR()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->zzsK()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DriveContents must be valid for conflict detection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p3, p1}, Lcom/google/android/gms/drive/zzp;->zze(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->mClosed:Z

    if-eqz v0, :cond_4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DriveContents already closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmn;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only DriveContents obtained through DriveFile.open can be committed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    sget-object p2, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaMz:Lcom/google/android/gms/drive/MetadataChangeSet;

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmn;->zzsN()V

    new-instance v0, Lcom/google/android/gms/internal/zzbmp;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbmp;-><init>(Lcom/google/android/gms/internal/zzbmn;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzp;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbmn;)Lcom/google/android/gms/drive/zzc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    return-object p0
.end method


# virtual methods
.method public final commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbmn;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzp;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public final commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/ExecutionOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/drive/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzr;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/drive/ExecutionOptions;->zzsR()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/zzr;->setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    invoke-virtual {p3}, Lcom/google/android/gms/drive/ExecutionOptions;->zzsQ()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/zzr;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    invoke-virtual {p3}, Lcom/google/android/gms/drive/ExecutionOptions;->zzsP()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Lcom/google/android/gms/drive/zzr;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzr;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/drive/zzp;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbmn;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzp;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public final discard(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DriveContents already closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmn;->zzsN()V

    new-instance v0, Lcom/google/android/gms/internal/zzbmr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbmr;-><init>(Lcom/google/android/gms/internal/zzbmn;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbmr;

    new-instance v0, Lcom/google/android/gms/internal/zzbmq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbmq;-><init>(Lcom/google/android/gms/internal/zzbmn;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbmr;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public final getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contents have been closed, cannot access the input stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getMode()I

    move-result v0

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getInputStream() can only be used with contents opened with MODE_READ_ONLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOh:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getInputStream() can only be called once per Contents instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getMode()I

    move-result v0

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contents have been closed, cannot access the output stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getMode()I

    move-result v0

    const/high16 v1, 0x20000000

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOi:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() can only be called once per Contents instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOi:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contents have been closed, cannot access the output stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final reopenForWrite(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DriveContents already closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getMode()I

    move-result v0

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "reopenForWrite can only be used with DriveContents opened with MODE_READ_ONLY."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmn;->zzsN()V

    new-instance v0, Lcom/google/android/gms/internal/zzbmo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbmo;-><init>(Lcom/google/android/gms/internal/zzbmn;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object p1

    return-object p1
.end method

.method public final zzsM()Lcom/google/android/gms/drive/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    return-object v0
.end method

.method public final zzsN()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzn;->zza(Landroid/os/ParcelFileDescriptor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->mClosed:Z

    return-void
.end method

.method public final zzsO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmn;->mClosed:Z

    return v0
.end method
