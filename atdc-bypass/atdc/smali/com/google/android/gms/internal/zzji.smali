.class public final Lcom/google/android/gms/internal/zzji;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static zzAL:Lcom/google/android/gms/internal/zzji;

.field private static final zzuF:Ljava/lang/Object;


# instance fields
.field private final zzAM:Lcom/google/android/gms/internal/zzaiy;

.field private final zzAN:Lcom/google/android/gms/internal/zziz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzji;->zzuF:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzji;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzji;->zzuF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/zzji;->zzAL:Lcom/google/android/gms/internal/zzji;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzaiy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaiy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzAM:Lcom/google/android/gms/internal/zzaiy;

    new-instance v0, Lcom/google/android/gms/internal/zziz;

    new-instance v2, Lcom/google/android/gms/internal/zziq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zziq;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzip;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzip;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzli;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzli;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zzqc;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzqc;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/zzadh;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzadh;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzww;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzww;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zziz;-><init>(Lcom/google/android/gms/internal/zziq;Lcom/google/android/gms/internal/zzip;Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/internal/zzadh;Lcom/google/android/gms/internal/zzww;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzAN:Lcom/google/android/gms/internal/zziz;

    return-void
.end method

.method private static zzdr()Lcom/google/android/gms/internal/zzji;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzji;->zzuF:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzji;->zzAL:Lcom/google/android/gms/internal/zzji;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static zzds()Lcom/google/android/gms/internal/zzaiy;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzdr()Lcom/google/android/gms/internal/zzji;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji;->zzAM:Lcom/google/android/gms/internal/zzaiy;

    return-object v0
.end method

.method public static zzdt()Lcom/google/android/gms/internal/zziz;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzdr()Lcom/google/android/gms/internal/zzji;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji;->zzAN:Lcom/google/android/gms/internal/zziz;

    return-object v0
.end method
