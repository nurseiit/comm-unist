.class final Lcom/google/android/gms/internal/zzblz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$DriveIdResult;


# instance fields
.field private final mStatus:Lcom/google/android/gms/common/api/Status;

.field private final zzaLV:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblz;->mStatus:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzblz;->zzaLV:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public final getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblz;->zzaLV:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblz;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
