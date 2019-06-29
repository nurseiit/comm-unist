.class public final Lcom/google/android/gms/internal/zzbkn;
.super Ljava/lang/Object;


# instance fields
.field private final zzaNo:Lcom/google/android/gms/drive/events/zzk;

.field private final zzaNp:J

.field private final zzaNq:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbkp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbko;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbko;-><init>(Lcom/google/android/gms/internal/zzbkp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNo:Lcom/google/android/gms/drive/events/zzk;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzbkp;->zzaNp:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNp:J

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzbkp;->zzaNq:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNq:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbkn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNo:Lcom/google/android/gms/drive/events/zzk;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbkn;->zzaNo:Lcom/google/android/gms/drive/events/zzk;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNp:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbkn;->zzaNp:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNq:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbkn;->zzaNq:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNq:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNq:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "FileTransferProgress[FileTransferState: %s, BytesTransferred: %d, TotalBytes: %d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNo:Lcom/google/android/gms/drive/events/zzk;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbkn;->zzaNq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
