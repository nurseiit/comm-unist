.class public final Lcom/google/android/gms/internal/zzhs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final zzzp:Ljava/lang/Runnable;

.field private zzzq:Lcom/google/android/gms/internal/zzhz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzzr:Lcom/google/android/gms/internal/zzid;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzht;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzht;-><init>(Lcom/google/android/gms/internal/zzhs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzzp:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private final connect()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzzq:Lcom/google/android/gms/internal/zzhz;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzhv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzhv;-><init>(Lcom/google/android/gms/internal/zzhs;)V

    new-instance v2, Lcom/google/android/gms/internal/zzhw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzhw;-><init>(Lcom/google/android/gms/internal/zzhs;)V

    new-instance v3, Lcom/google/android/gms/internal/zzhz;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhs;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbP()Lcom/google/android/gms/internal/zzaio;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzaio;->zzie()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/gms/internal/zzhz;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzhs;->zzzq:Lcom/google/android/gms/internal/zzhz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzzq:Lcom/google/android/gms/internal/zzhz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhz;->zzrb()V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzzq:Lcom/google/android/gms/internal/zzhz;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzzq:Lcom/google/android/gms/internal/zzhz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhz;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzzq:Lcom/google/android/gms/internal/zzhz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhz;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzzq:Lcom/google/android/gms/internal/zzhz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhz;->disconnect()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzzq:Lcom/google/android/gms/internal/zzhz;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzzr:Lcom/google/android/gms/internal/zzid;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzhz;)Lcom/google/android/gms/internal/zzhz;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhs;->zzzq:Lcom/google/android/gms/internal/zzhz;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/internal/zzid;)Lcom/google/android/gms/internal/zzid;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhs;->zzzr:Lcom/google/android/gms/internal/zzid;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhs;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzhs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhs;->connect()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzhs;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzhs;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzhs;)Lcom/google/android/gms/internal/zzhz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzhs;->zzzq:Lcom/google/android/gms/internal/zzhz;

    return-object p0
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhs;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/zzmo;->zzGk:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhs;->connect()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/zzmo;->zzGj:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzhu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzhu;-><init>(Lcom/google/android/gms/internal/zzhs;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbC()Lcom/google/android/gms/internal/zzgv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzgv;->zza(Lcom/google/android/gms/internal/zzgy;)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/internal/zzhx;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzzr:Lcom/google/android/gms/internal/zzid;

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzhx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzhx;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs;->zzzr:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/internal/zzhx;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/zzhx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzhx;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzcX()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGl:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhs;->connect()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhs;->zzzp:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhs;->zzzp:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/zzmo;->zzGm:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method
