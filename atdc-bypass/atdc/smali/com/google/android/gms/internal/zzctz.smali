.class public final Lcom/google/android/gms/internal/zzctz;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "WakeLock"

.field private static zzbCW:Ljava/lang/String; = "*gcore*:"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaJp:Ljava/lang/String;

.field private final zzaJr:Ljava/lang/String;

.field private final zzbCX:Landroid/os/PowerManager$WakeLock;

.field private zzbCY:Landroid/os/WorkSource;

.field private final zzbCZ:I

.field private final zzbDa:Ljava/lang/String;

.field private zzbDb:Z

.field private zzbDc:I

.field private zzbDd:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v5, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzctz;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzctz;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzctz;->zzbDb:Z

    const-string p4, "Wake lock name can NOT be empty"

    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzctz;->zzbCZ:I

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/zzctz;->zzbDa:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzctz;->zzaJr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/zzctz;->mContext:Landroid/content/Context;

    const-string p4, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    sget-object p4, Lcom/google/android/gms/internal/zzctz;->zzbCW:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    new-instance p6, Ljava/lang/String;

    invoke-direct {p6, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p4, p6

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzctz;->zzaJp:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/internal/zzctz;->zzaJp:Ljava/lang/String;

    :goto_1
    const-string p4, "power"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/PowerManager;

    invoke-virtual {p4, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzctz;->zzbCX:Landroid/os/PowerManager$WakeLock;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzctz;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/util/zzx;->zzaM(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p5}, Lcom/google/android/gms/common/util/zzt;->zzcL(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    :cond_2
    invoke-static {p1, p5}, Lcom/google/android/gms/common/util/zzx;->zzD(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbCY:Landroid/os/WorkSource;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbCY:Landroid/os/WorkSource;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/zzctz;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/util/zzx;->zzaM(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/zzctz;->zzbCY:Landroid/os/WorkSource;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/zzctz;->zzbCY:Landroid/os/WorkSource;

    invoke-virtual {p2, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_2

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbCY:Landroid/os/WorkSource;

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbCY:Landroid/os/WorkSource;

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzctz;->zzbCX:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/zzctz;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private final zzeV(Ljava/lang/String;)Z
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbDa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzi(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbDb:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbDa:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbDa:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final acquire(J)V
    .locals 10

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzctz;->zzeV(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzctz;->zzi(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbDb:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbDc:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbDc:I

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbDb:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbDd:I

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/stats/zze;->zzrX()Lcom/google/android/gms/common/stats/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctz;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbCX:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1, v4}, Lcom/google/android/gms/common/stats/zzc;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzctz;->zzaJp:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/gms/internal/zzctz;->zzbCZ:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbCY:Landroid/os/WorkSource;

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzx;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/common/stats/zze;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbDd:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbDd:I

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbCX:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final isHeld()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbCX:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 11

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzctz;->zzeV(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzctz;->zzi(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbDb:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbDc:I

    sub-int/2addr v0, v10

    iput v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbDc:I

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbDb:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbDd:I

    if-ne v0, v10, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/stats/zze;->zzrX()Lcom/google/android/gms/common/stats/zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzctz;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbCX:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v6}, Lcom/google/android/gms/common/stats/zzc;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/android/gms/internal/zzctz;->zzaJp:Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lcom/google/android/gms/internal/zzctz;->zzbCZ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbCY:Landroid/os/WorkSource;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzx;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/common/stats/zze;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbDd:I

    sub-int/2addr v0, v10

    iput v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbDd:I

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbCX:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setReferenceCounted(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzctz;->zzbCX:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzctz;->zzbDb:Z

    return-void
.end method
