.class public final Lcom/google/android/gms/internal/zzamn;
.super Lcom/google/android/gms/internal/zzamh;


# instance fields
.field private final zzagg:Lcom/google/android/gms/internal/zzamp;

.field private zzagh:Lcom/google/android/gms/internal/zzany;

.field private final zzagi:Lcom/google/android/gms/internal/zzanm;

.field private zzagj:Lcom/google/android/gms/internal/zzaoo;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzamj;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamh;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamj;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaoo;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagj:Lcom/google/android/gms/internal/zzaoo;

    new-instance v0, Lcom/google/android/gms/internal/zzamp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzamp;-><init>(Lcom/google/android/gms/internal/zzamn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagg:Lcom/google/android/gms/internal/zzamp;

    new-instance v0, Lcom/google/android/gms/internal/zzamo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzamo;-><init>(Lcom/google/android/gms/internal/zzamn;Lcom/google/android/gms/internal/zzamj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagi:Lcom/google/android/gms/internal/zzanm;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagh:Lcom/google/android/gms/internal/zzany;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagh:Lcom/google/android/gms/internal/zzany;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzamn;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->zzkv()Lcom/google/android/gms/internal/zzaly;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzkn()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzamn;)Lcom/google/android/gms/internal/zzamp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzamn;->zzagg:Lcom/google/android/gms/internal/zzamp;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzamn;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamn;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzamn;Lcom/google/android/gms/internal/zzany;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamn;->zza(Lcom/google/android/gms/internal/zzany;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzany;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamn;->zzagh:Lcom/google/android/gms/internal/zzany;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->zzkP()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->zzkv()Lcom/google/android/gms/internal/zzaly;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->onServiceConnected()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzamn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->zzkQ()V

    return-void
.end method

.method private final zzkP()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagj:Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoo;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagi:Lcom/google/android/gms/internal/zzanm;

    sget-object v1, Lcom/google/android/gms/internal/zzans;->zzahO:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzant;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzanm;->zzs(J)V

    return-void
.end method

.method private final zzkQ()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamn;->zzbo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->disconnect()V

    return-void
.end method


# virtual methods
.method public final connect()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagh:Lcom/google/android/gms/internal/zzany;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagg:Lcom/google/android/gms/internal/zzamp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamp;->zzkR()Lcom/google/android/gms/internal/zzany;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagh:Lcom/google/android/gms/internal/zzany;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->zzkP()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final disconnect()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->zzkD()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzrU()Lcom/google/android/gms/common/stats/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->zzagg:Lcom/google/android/gms/internal/zzamp;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagh:Lcom/google/android/gms/internal/zzany;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagh:Lcom/google/android/gms/internal/zzany;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->zzkv()Lcom/google/android/gms/internal/zzaly;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaly;->zzkn()V

    :cond_0
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagh:Lcom/google/android/gms/internal/zzany;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzanx;)Z
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagh:Lcom/google/android/gms/internal/zzany;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanx;->zzlI()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzlu()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzlv()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanx;->zzdV()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanx;->zzlG()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzany;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->zzkP()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamn;->zzbo(Ljava/lang/String;)V

    return v6
.end method

.method protected final zzjD()V
    .locals 0

    return-void
.end method

.method public final zzkO()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamn;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzagh:Lcom/google/android/gms/internal/zzany;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzany;->zzkk()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->zzkP()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamn;->zzbo(Ljava/lang/String;)V

    return v1
.end method
