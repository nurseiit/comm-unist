.class final Lcom/google/android/gms/tagmanager/zzdh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzek;


# instance fields
.field private final zzaeX:Ljava/lang/String;

.field private final zzaih:J

.field private final zzaii:I

.field private zzaij:D

.field private zzaik:J

.field private final zzail:Ljava/lang/Object;

.field private final zzbFo:J

.field private final zzvw:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzail:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaii:I

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaij:D

    const-wide/32 p1, 0xdbba0

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaih:J

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzbFo:J

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaeX:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzvw:Lcom/google/android/gms/common/util/zze;

    return-void
.end method


# virtual methods
.method public final zzlL()Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzail:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaik:J

    const/4 v5, 0x0

    sub-long v5, v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzbFo:J

    cmp-long v7, v5, v3

    const/4 v3, 0x0

    if-gez v7, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaeX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdj;->zzaT(Ljava/lang/String;)V

    monitor-exit v0

    return v3

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaij:D

    iget v6, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaii:I

    int-to-double v6, v6

    cmpg-double v8, v4, v6

    if-gez v8, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaik:J

    const/4 v6, 0x0

    sub-long v6, v1, v4

    long-to-double v4, v6

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaih:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    iget v6, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaii:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaij:D

    const/4 v10, 0x0

    add-double/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaij:D

    :cond_1
    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaik:J

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaij:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v1, v4

    if-ltz v6, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaij:D

    const/4 v3, 0x0

    sub-double/2addr v1, v4

    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaij:D

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzaeX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdj;->zzaT(Ljava/lang/String;)V

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
