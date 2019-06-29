.class public final Lcom/google/android/gms/internal/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field private final mStatus:Lcom/google/android/gms/common/api/Status;

.field private final zzBM:I

.field private final zzbKG:Lcom/google/android/gms/internal/cn;

.field private final zzbKH:Lcom/google/android/gms/internal/dj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/gms/internal/cm;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/cn;Lcom/google/android/gms/internal/dj;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/cn;Lcom/google/android/gms/internal/dj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cm;->mStatus:Lcom/google/android/gms/common/api/Status;

    iput p2, p0, Lcom/google/android/gms/internal/cm;->zzBM:I

    iput-object p3, p0, Lcom/google/android/gms/internal/cm;->zzbKG:Lcom/google/android/gms/internal/cn;

    iput-object p4, p0, Lcom/google/android/gms/internal/cm;->zzbKH:Lcom/google/android/gms/internal/dj;

    return-void
.end method


# virtual methods
.method public final getSource()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cm;->zzBM:I

    return v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final zzCQ()Lcom/google/android/gms/internal/cn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->zzbKG:Lcom/google/android/gms/internal/cn;

    return-object v0
.end method

.method public final zzCR()Lcom/google/android/gms/internal/dj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->zzbKH:Lcom/google/android/gms/internal/dj;

    return-object v0
.end method

.method public final zzCS()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/cm;->zzBM:I

    if-nez v0, :cond_0

    const-string v0, "Network"

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/cm;->zzBM:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Saved file on disk"

    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/cm;->zzBM:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "Default resource"

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource source is unknown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
