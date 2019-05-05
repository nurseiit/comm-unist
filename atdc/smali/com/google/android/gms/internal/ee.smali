.class public final Lcom/google/android/gms/internal/ee;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj<",
        "Lcom/google/android/gms/internal/ee;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbLG:J

.field public zzbLH:Lcom/google/android/gms/internal/zzbq;

.field public zzlB:Lcom/google/android/gms/internal/zzbn;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ee;->zzbLG:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ee;->zzcso:Lcom/google/android/gms/internal/adl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ee;->zzcsx:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ee;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ee;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ee;->zzbLG:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ee;->zzbLG:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    iget-object v3, p1, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    if-eqz v1, :cond_6

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    iget-object v3, p1, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ee;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_a

    iget-object p1, p1, Lcom/google/android/gms/internal/ee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    return v0

    :cond_9
    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ee;->zzbLG:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ee;->zzbLG:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbn;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbq;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v2

    :cond_3
    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzbq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzbn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLG()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ee;->zzbLG:J

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/ee;->zzbLG:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/adh;->zzb(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ee;->zzbLG:J

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/adh;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
