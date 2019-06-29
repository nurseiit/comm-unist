.class public Lcom/google/android/gms/internal/zzamj;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzafM:Lcom/google/android/gms/internal/zzamj;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzafN:Landroid/content/Context;

.field private final zzafO:Lcom/google/android/gms/internal/zzank;

.field private final zzafP:Lcom/google/android/gms/internal/zzaoc;

.field private final zzafQ:Lcom/google/android/gms/analytics/zzl;

.field private final zzafR:Lcom/google/android/gms/internal/zzaly;

.field private final zzafS:Lcom/google/android/gms/internal/zzanp;

.field private final zzafT:Lcom/google/android/gms/internal/zzaot;

.field private final zzafU:Lcom/google/android/gms/internal/zzaog;

.field private final zzafV:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzafW:Lcom/google/android/gms/internal/zzanb;

.field private final zzafX:Lcom/google/android/gms/internal/zzalx;

.field private final zzafY:Lcom/google/android/gms/internal/zzamu;

.field private final zzafZ:Lcom/google/android/gms/internal/zzano;

.field private final zzvw:Lcom/google/android/gms/common/util/zze;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaml;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaml;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaml;->zzkE()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamj;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamj;->zzafN:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamj;->zzvw:Lcom/google/android/gms/common/util/zze;

    new-instance v1, Lcom/google/android/gms/internal/zzank;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzank;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamj;->zzafO:Lcom/google/android/gms/internal/zzank;

    new-instance v1, Lcom/google/android/gms/internal/zzaoc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaoc;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoc;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamj;->zzafP:Lcom/google/android/gms/internal/zzaoc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzami;->VERSION:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x86

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Google Analytics "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaoc;->zzbq(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzaog;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaog;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaog;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamj;->zzafU:Lcom/google/android/gms/internal/zzaog;

    new-instance v1, Lcom/google/android/gms/internal/zzaot;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaot;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaot;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamj;->zzafT:Lcom/google/android/gms/internal/zzaot;

    new-instance v1, Lcom/google/android/gms/internal/zzaly;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzaly;-><init>(Lcom/google/android/gms/internal/zzamj;Lcom/google/android/gms/internal/zzaml;)V

    new-instance p1, Lcom/google/android/gms/internal/zzanb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzanb;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    new-instance v2, Lcom/google/android/gms/internal/zzalx;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzalx;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    new-instance v3, Lcom/google/android/gms/internal/zzamu;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzamu;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    new-instance v4, Lcom/google/android/gms/internal/zzano;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzano;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzl;->zzae(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/zzamk;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzamk;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/analytics/zzl;->zza(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafQ:Lcom/google/android/gms/analytics/zzl;

    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanb;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamj;->zzafW:Lcom/google/android/gms/internal/zzanb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzalx;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamj;->zzafX:Lcom/google/android/gms/internal/zzalx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzamu;->initialize()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzamj;->zzafY:Lcom/google/android/gms/internal/zzamu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzano;->initialize()V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzamj;->zzafZ:Lcom/google/android/gms/internal/zzano;

    new-instance p1, Lcom/google/android/gms/internal/zzanp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzanp;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanp;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamj;->zzafS:Lcom/google/android/gms/internal/zzanp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaly;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamj;->zzafR:Lcom/google/android/gms/internal/zzaly;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafV:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaly;->start()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzamh;)V
    .locals 1

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamh;->isInitialized()Z

    move-result p0

    const-string v0, "Analytics service not initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    return-void
.end method

.method public static zzaf(Landroid/content/Context;)Lcom/google/android/gms/internal/zzamj;
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzamj;->zzafM:Lcom/google/android/gms/internal/zzamj;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/zzamj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzamj;->zzafM:Lcom/google/android/gms/internal/zzamj;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/zzaml;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzaml;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/zzamj;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzamj;-><init>(Lcom/google/android/gms/internal/zzaml;)V

    sput-object p0, Lcom/google/android/gms/internal/zzamj;->zzafM:Lcom/google/android/gms/internal/zzamj;

    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzjo()V

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    const/4 v1, 0x0

    sub-long v6, v4, v2

    sget-object v1, Lcom/google/android/gms/internal/zzans;->zzahU:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzant;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v6, v1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object p0

    const-string v3, "Slow initialization (ms)"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/gms/internal/zzaoc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/zzamj;->zzafM:Lcom/google/android/gms/internal/zzamj;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final zzkB()Lcom/google/android/gms/internal/zzamu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafY:Lcom/google/android/gms/internal/zzamu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamj;->zza(Lcom/google/android/gms/internal/zzamh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafY:Lcom/google/android/gms/internal/zzamu;

    return-object v0
.end method

.method public final zzkC()Lcom/google/android/gms/internal/zzano;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafZ:Lcom/google/android/gms/internal/zzano;

    return-object v0
.end method

.method public final zzkE()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafN:Landroid/content/Context;

    return-object v0
.end method

.method public final zzkF()Lcom/google/android/gms/internal/zzaoc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafP:Lcom/google/android/gms/internal/zzaoc;

    return-object v0
.end method

.method public final zzkG()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafV:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafV:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafV:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method public final zzkH()Lcom/google/android/gms/internal/zzaog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafU:Lcom/google/android/gms/internal/zzaog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafU:Lcom/google/android/gms/internal/zzaog;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaog;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafU:Lcom/google/android/gms/internal/zzaog;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkI()Lcom/google/android/gms/internal/zzalx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafX:Lcom/google/android/gms/internal/zzalx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamj;->zza(Lcom/google/android/gms/internal/zzamh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafX:Lcom/google/android/gms/internal/zzalx;

    return-object v0
.end method

.method public final zzkJ()Lcom/google/android/gms/internal/zzanb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafW:Lcom/google/android/gms/internal/zzanb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamj;->zza(Lcom/google/android/gms/internal/zzamh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafW:Lcom/google/android/gms/internal/zzanb;

    return-object v0
.end method

.method public final zzkq()Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzvw:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method public final zzkr()Lcom/google/android/gms/internal/zzaoc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafP:Lcom/google/android/gms/internal/zzaoc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamj;->zza(Lcom/google/android/gms/internal/zzamh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafP:Lcom/google/android/gms/internal/zzaoc;

    return-object v0
.end method

.method public final zzks()Lcom/google/android/gms/internal/zzank;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafO:Lcom/google/android/gms/internal/zzank;

    return-object v0
.end method

.method public final zzkt()Lcom/google/android/gms/analytics/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafQ:Lcom/google/android/gms/analytics/zzl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafQ:Lcom/google/android/gms/analytics/zzl;

    return-object v0
.end method

.method public final zzkv()Lcom/google/android/gms/internal/zzaly;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafR:Lcom/google/android/gms/internal/zzaly;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamj;->zza(Lcom/google/android/gms/internal/zzamh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafR:Lcom/google/android/gms/internal/zzaly;

    return-object v0
.end method

.method public final zzkw()Lcom/google/android/gms/internal/zzanp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafS:Lcom/google/android/gms/internal/zzanp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamj;->zza(Lcom/google/android/gms/internal/zzamh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafS:Lcom/google/android/gms/internal/zzanp;

    return-object v0
.end method

.method public final zzkx()Lcom/google/android/gms/internal/zzaot;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafT:Lcom/google/android/gms/internal/zzaot;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamj;->zza(Lcom/google/android/gms/internal/zzamh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafT:Lcom/google/android/gms/internal/zzaot;

    return-object v0
.end method

.method public final zzky()Lcom/google/android/gms/internal/zzaog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafU:Lcom/google/android/gms/internal/zzaog;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamj;->zza(Lcom/google/android/gms/internal/zzamh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamj;->zzafU:Lcom/google/android/gms/internal/zzaog;

    return-object v0
.end method
