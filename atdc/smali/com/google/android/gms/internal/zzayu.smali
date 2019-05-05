.class public final Lcom/google/android/gms/internal/zzayu;
.super Ljava/lang/Object;


# static fields
.field private static final zzapq:Lcom/google/android/gms/internal/zzayo;

.field public static final zzrl:Ljava/lang/Object;


# instance fields
.field private zzaxo:J

.field private zzayR:J

.field private zzayS:J

.field private zzayT:Lcom/google/android/gms/internal/zzayt;

.field private final zzvw:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzayo;

    const-string v1, "RequestTracker"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzayo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzayu;->zzapq:Lcom/google/android/gms/internal/zzayo;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzayu;->zzrl:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/util/zze;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayu;->zzvw:Lcom/google/android/gms/common/util/zze;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzayu;->zzayR:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzayu;->zzayS:J

    return-void
.end method

.method private final zzoN()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayu;->zzayT:Lcom/google/android/gms/internal/zzayt;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzayu;->zzayS:J

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzayu;->zzrl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayu;->zzoN()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final test(J)Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzayu;->zzrl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(JLcom/google/android/gms/internal/zzayt;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzayu;->zzrl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzayu;->zzayT:Lcom/google/android/gms/internal/zzayt;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayu;->zzayT:Lcom/google/android/gms/internal/zzayt;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzayu;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzayu;->zzayS:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzayt;->zzx(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzc(JILjava/lang/Object;)Z
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/zzayu;->zzrl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v5, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/zzayu;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v4, "request %d completed"

    new-array v5, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayu;->zzayT:Lcom/google/android/gms/internal/zzayt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayu;->zzoN()V

    move-object v1, v2

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzayt;->zza(JILjava/lang/Object;)V

    :cond_1
    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzd(JI)Z
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/zzayu;->zzrl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v5, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzayu;->zzayS:J

    const/4 v6, 0x0

    sub-long v6, p1, v4

    iget-wide p1, p0, Lcom/google/android/gms/internal/zzayu;->zzayR:J

    cmp-long v4, v6, p1

    if-ltz v4, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzayu;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string p2, "request %d timed out"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1, p2, v4}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    iget-object v3, p0, Lcom/google/android/gms/internal/zzayu;->zzayT:Lcom/google/android/gms/internal/zzayt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayu;->zzoN()V

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    move-object v3, v2

    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3, p1, p2, p3, v2}, Lcom/google/android/gms/internal/zzayt;->zza(JILjava/lang/Object;)V

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzoO()Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzayu;->zzrl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzayu;->zzaxo:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
