.class public Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"


# instance fields
.field private final zzaLX:Lcom/google/android/gms/internal/zzblc;

.field private zzaLY:Lcom/google/android/gms/drive/DriveContents;

.field private zzaLZ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzblc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzblc;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLX:Lcom/google/android/gms/internal/zzblc;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLZ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Must call setInitialDriveContents to CreateFileActivityBuilder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLY:Lcom/google/android/gms/drive/DriveContents;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLY:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->zzsN()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLX:Lcom/google/android/gms/internal/zzblc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzblc;->build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;

    move-result-object p1

    return-object p1
.end method

.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLX:Lcom/google/android/gms/internal/zzblc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzblc;->zza(Lcom/google/android/gms/drive/DriveId;)V

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLX:Lcom/google/android/gms/internal/zzblc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzblc;->zzcQ(Ljava/lang/String;)V

    return-object p0
.end method

.method public setInitialDriveContents(Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/google/android/gms/internal/zzbmn;

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only DriveContents obtained from the Drive API are accepted."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzsO()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DriveContents are already closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLX:Lcom/google/android/gms/internal/zzblc;

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzsM()Lcom/google/android/gms/drive/zzc;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/drive/zzc;->zzaLT:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzblc;->zzaM(I)V

    iput-object p1, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLY:Lcom/google/android/gms/drive/DriveContents;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLX:Lcom/google/android/gms/internal/zzblc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzblc;->zzaM(I)V

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLZ:Z

    return-object p0
.end method

.method public setInitialMetadata(Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaLX:Lcom/google/android/gms/internal/zzblc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzblc;->zza(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    return-object p0
.end method
