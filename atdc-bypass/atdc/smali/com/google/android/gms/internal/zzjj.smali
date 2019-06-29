.class public final Lcom/google/android/gms/internal/zzjj;
.super Lcom/google/android/gms/internal/zzkl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private mLock:Ljava/lang/Object;

.field private final zzAO:Ljava/util/Random;

.field private zzAP:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkl;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjj;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjj;->zzAO:Ljava/util/Random;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjj;->zzdu()V

    return-void
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzjj;->zzAP:J

    return-wide v0
.end method

.method public final zzdu()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzjj;->zzAO:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0x80000000L

    add-long v8, v4, v6

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjj;->zzAP:J

    cmp-long v6, v8, v4

    if-eqz v6, :cond_0

    cmp-long v4, v8, v2

    if-eqz v4, :cond_0

    move-wide v4, v8

    goto :goto_1

    :cond_0
    move-wide v4, v8

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzjj;->zzAP:J

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
