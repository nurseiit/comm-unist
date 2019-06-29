.class public Lcom/google/android/gms/internal/qd;
.super Ljava/lang/Object;


# instance fields
.field protected cacheSize:J

.field protected zzbZt:Lcom/google/firebase/FirebaseApp;

.field private zzcaD:Lcom/google/android/gms/internal/wm;

.field protected zzcaE:Z

.field private zzcaG:Ljava/lang/String;

.field private zzccB:Z

.field protected zzccO:Lcom/google/android/gms/internal/qk;

.field protected zzccP:Lcom/google/android/gms/internal/pu;

.field protected zzccQ:Lcom/google/android/gms/internal/sd;

.field protected zzccR:Ljava/lang/String;

.field protected zzccS:Lcom/google/android/gms/internal/wn;

.field private zzccT:Z

.field private zzccU:Lcom/google/android/gms/internal/qt;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/wn;->zzchI:Lcom/google/android/gms/internal/wn;

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccS:Lcom/google/android/gms/internal/wn;

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/google/android/gms/internal/qd;->cacheSize:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qd;->zzccB:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qd;->zzccT:Z

    return-void
.end method

.method private final zzFV()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccQ:Lcom/google/android/gms/internal/sd;

    instance-of v1, v0, Lcom/google/android/gms/internal/yu;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Custom run loops are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/yu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yu;->zzFV()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private final zzGM()Lcom/google/android/gms/internal/qt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccU:Lcom/google/android/gms/internal/qt;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/yp;->zzJD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qd;->zzGN()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ql;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ql;->zzcda:Lcom/google/android/gms/internal/ql;

    sget-object v1, Lcom/google/android/gms/internal/ql;->zzcdb:Ljava/util/concurrent/ThreadFactory;

    new-instance v2, Lcom/google/android/gms/internal/qn;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/qn;-><init>(Lcom/google/android/gms/internal/ql;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/yd;->zza(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/yc;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccU:Lcom/google/android/gms/internal/qt;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/qp;->zzcde:Lcom/google/android/gms/internal/qp;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccU:Lcom/google/android/gms/internal/qt;

    return-object v0
.end method

.method private final declared-synchronized zzGN()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/mx;

    iget-object v1, p0, Lcom/google/android/gms/internal/qd;->zzbZt:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mx;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccU:Lcom/google/android/gms/internal/qt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qd;->zzccT:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccO:Lcom/google/android/gms/internal/qk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qk;->shutdown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccQ:Lcom/google/android/gms/internal/sd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sd;->shutdown()V

    return-void
.end method

.method public final zzFW()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qd;->zzcaE:Z

    return v0
.end method

.method final declared-synchronized zzGD()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/qd;->zzccB:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qd;->zzccB:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzcaD:Lcom/google/android/gms/internal/wm;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qd;->zzGM()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/qd;->zzccS:Lcom/google/android/gms/internal/wn;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/gms/internal/qt;->zza(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/wn;Ljava/util/List;)Lcom/google/android/gms/internal/wm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->zzcaD:Lcom/google/android/gms/internal/wm;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/qd;->zzGM()Lcom/google/android/gms/internal/qt;

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzcaG:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/qd;->zzGM()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/qt;->zzc(Lcom/google/android/gms/internal/qd;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firebase/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "5/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->zzcaG:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccO:Lcom/google/android/gms/internal/qk;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/qd;->zzGM()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/qt;->zza(Lcom/google/android/gms/internal/qd;)Lcom/google/android/gms/internal/qk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccO:Lcom/google/android/gms/internal/qk;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccQ:Lcom/google/android/gms/internal/sd;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccU:Lcom/google/android/gms/internal/qt;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/qt;->zzb(Lcom/google/android/gms/internal/qd;)Lcom/google/android/gms/internal/sd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccQ:Lcom/google/android/gms/internal/sd;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccR:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "default"

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccR:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccP:Lcom/google/android/gms/internal/pu;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/qd;->zzGM()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qd;->zzFV()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/qt;->zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/pu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccP:Lcom/google/android/gms/internal/pu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzGO()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qd;->zzccT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccO:Lcom/google/android/gms/internal/qk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qk;->restart()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccQ:Lcom/google/android/gms/internal/sd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sd;->restart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qd;->zzccT:Z

    :cond_0
    return-void
.end method

.method protected final zzGP()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qd;->zzccB:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Modifications to DatabaseConfig objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final zzGQ()Lcom/google/android/gms/internal/wn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccS:Lcom/google/android/gms/internal/wn;

    return-object v0
.end method

.method public final zzGR()Lcom/google/android/gms/internal/oj;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/oj;

    iget-object v1, p0, Lcom/google/android/gms/internal/qd;->zzcaD:Lcom/google/android/gms/internal/wm;

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccP:Lcom/google/android/gms/internal/pu;

    new-instance v2, Lcom/google/android/gms/internal/qe;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/qe;-><init>(Lcom/google/android/gms/internal/pu;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/qd;->zzFV()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/qd;->zzcaE:Z

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/qd;->zzcaG:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/oj;-><init>(Lcom/google/android/gms/internal/wm;Lcom/google/android/gms/internal/oh;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public final zzGS()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/qd;->cacheSize:J

    return-wide v0
.end method

.method public final zzGT()Lcom/google/android/gms/internal/qk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccO:Lcom/google/android/gms/internal/qk;

    return-object v0
.end method

.method public final zzGU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccR:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/on;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/qd;->zzGM()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qd;->zzGR()Lcom/google/android/gms/internal/oj;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/google/android/gms/internal/qt;->zza(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/on;

    move-result-object p1

    return-object p1
.end method

.method public final zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/wl;

    iget-object v1, p0, Lcom/google/android/gms/internal/qd;->zzcaD:Lcom/google/android/gms/internal/wm;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/wl;-><init>(Lcom/google/android/gms/internal/wm;Ljava/lang/String;)V

    return-object v0
.end method

.method final zzgQ(Ljava/lang/String;)Lcom/google/android/gms/internal/uh;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qd;->zzcaE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzccU:Lcom/google/android/gms/internal/qt;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/qt;->zza(Lcom/google/android/gms/internal/qd;Ljava/lang/String;)Lcom/google/android/gms/internal/uh;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You have enabled persistence, but persistence is not supported on this platform."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ug;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ug;-><init>()V

    return-object p1
.end method

.method public final zzht()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->zzcaG:Ljava/lang/String;

    return-object v0
.end method
