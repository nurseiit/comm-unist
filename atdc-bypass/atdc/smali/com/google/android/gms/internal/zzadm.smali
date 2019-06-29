.class public final Lcom/google/android/gms/internal/zzadm;
.super Lcom/google/android/gms/internal/zzafp;

# interfaces
.implements Lcom/google/android/gms/internal/zzads;
.implements Lcom/google/android/gms/internal/zzadv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private final mLock:Ljava/lang/Object;

.field private final zzMs:Ljava/lang/String;

.field private final zzQQ:Lcom/google/android/gms/internal/zzafg;

.field private final zzWA:Ljava/lang/String;

.field private final zzWB:Lcom/google/android/gms/internal/zzua;

.field private final zzWC:J

.field private zzWD:I

.field private zzWE:Lcom/google/android/gms/internal/zzadp;

.field private final zzWy:Lcom/google/android/gms/internal/zzadz;

.field private final zzWz:Lcom/google/android/gms/internal/zzadv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzadz;Lcom/google/android/gms/internal/zzadv;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWD:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzadm;->mErrorCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzadm;->zzMs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzadm;->zzWA:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzadm;->zzWB:Lcom/google/android/gms/internal/zzua;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzadm;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzadm;->zzWy:Lcom/google/android/gms/internal/zzadz;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadm;->mLock:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzadm;->zzWz:Lcom/google/android/gms/internal/zzadv;

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzadm;->zzWC:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzadm;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzadm;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzadm;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzut;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzadm;->zza(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzut;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzut;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWy:Lcom/google/android/gms/internal/zzadz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzadz;->zzgX()Lcom/google/android/gms/internal/zzadu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzadu;->zza(Lcom/google/android/gms/internal/zzadv;)V

    :try_start_0
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadm;->zzMs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWA:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadm;->zzWB:Lcom/google/android/gms/internal/zzua;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzua;->zzLH:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/zzut;->zza(Lcom/google/android/gms/internal/zzir;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWA:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzut;->zzc(Lcom/google/android/gms/internal/zzir;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Fail to load ad from adapter."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzadm;->zzMs:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzadm;->zza(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzadm;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzadm;->zzWA:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzadm;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzadm;->zzMs:Ljava/lang/String;

    return-object p0
.end method

.method private final zzf(J)Z
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWC:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, p1

    sub-long p1, v0, v4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x0

    if-gtz v2, :cond_0

    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/zzadm;->mErrorCode:I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzadm;->mLock:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x5

    goto :goto_0
.end method


# virtual methods
.method public final onStop()V
    .locals 0

    return-void
.end method

.method public final zza(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzadm;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWD:I

    iput p2, p0, Lcom/google/android/gms/internal/zzadm;->mErrorCode:I

    iget-object p2, p0, Lcom/google/android/gms/internal/zzadm;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final zzaw(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzadm;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWD:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzbd()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWy:Lcom/google/android/gms/internal/zzadz;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWy:Lcom/google/android/gms/internal/zzadz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzadz;->zzgX()Lcom/google/android/gms/internal/zzadu;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWy:Lcom/google/android/gms/internal/zzadz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzadz;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWy:Lcom/google/android/gms/internal/zzadz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzadz;->zzgX()Lcom/google/android/gms/internal/zzadu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzadu;->zza(Lcom/google/android/gms/internal/zzadv;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzadu;->zza(Lcom/google/android/gms/internal/zzads;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadm;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzadm;->zzWy:Lcom/google/android/gms/internal/zzadz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzadz;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/zzut;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/zzaiy;->zzaaH:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzadn;

    invoke-direct {v5, p0, v2, v3}, Lcom/google/android/gms/internal/zzadn;-><init>(Lcom/google/android/gms/internal/zzadm;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzut;)V

    :goto_0
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/zzaiy;->zzaaH:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzado;

    invoke-direct {v5, p0, v3, v2, v0}, Lcom/google/android/gms/internal/zzado;-><init>(Lcom/google/android/gms/internal/zzadm;Lcom/google/android/gms/internal/zzut;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzadu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Fail to check if adapter is initialized."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadm;->zzMs:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzadm;->zza(Ljava/lang/String;I)V

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzadm;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v5, p0, Lcom/google/android/gms/internal/zzadm;->zzWD:I

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/zzadr;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzadr;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long v9, v7, v2

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/zzadr;->zzg(J)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzadm;->zzWD:I

    if-ne v6, v3, :cond_2

    const/4 v3, 0x6

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/google/android/gms/internal/zzadm;->mErrorCode:I

    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzadr;->zzw(I)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzadm;->zzMs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzadr;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzadm;->zzWB:Lcom/google/android/gms/internal/zzua;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzua;->zzLK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzadr;->zzay(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzadr;->zzgU()Lcom/google/android/gms/internal/zzadp;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzadm;->zzWE:Lcom/google/android/gms/internal/zzadp;

    :goto_4
    monitor-exit v4

    goto :goto_5

    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzadm;->zzf(J)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/google/android/gms/internal/zzadr;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzadr;-><init>()V

    iget v7, p0, Lcom/google/android/gms/internal/zzadm;->mErrorCode:I

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzadr;->zzw(I)Lcom/google/android/gms/internal/zzadr;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long v9, v7, v2

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/zzadr;->zzg(J)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzadm;->zzMs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzadr;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzadm;->zzWB:Lcom/google/android/gms/internal/zzua;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzua;->zzLK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzadr;->zzay(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzadr;->zzgU()Lcom/google/android/gms/internal/zzadp;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzadm;->zzWE:Lcom/google/android/gms/internal/zzadp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzadu;->zza(Lcom/google/android/gms/internal/zzadv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzadu;->zza(Lcom/google/android/gms/internal/zzads;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWD:I

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWz:Lcom/google/android/gms/internal/zzadv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadm;->zzMs:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzadv;->zzaw(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWz:Lcom/google/android/gms/internal/zzadv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadm;->zzMs:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzadm;->mErrorCode:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzadv;->zza(Ljava/lang/String;I)V

    return-void

    :cond_5
    :try_start_2
    monitor-exit v4

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    return-void
.end method

.method public final zzgR()Lcom/google/android/gms/internal/zzadp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzadm;->zzWE:Lcom/google/android/gms/internal/zzadp;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzgS()Lcom/google/android/gms/internal/zzua;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzWB:Lcom/google/android/gms/internal/zzua;

    return-object v0
.end method

.method public final zzgT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadm;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadm;->zzWy:Lcom/google/android/gms/internal/zzadz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzadz;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzadm;->zza(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzut;)V

    return-void
.end method

.method public final zzv(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzadm;->zzMs:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzadm;->zza(Ljava/lang/String;I)V

    return-void
.end method
