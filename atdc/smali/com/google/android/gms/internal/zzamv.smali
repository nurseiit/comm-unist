.class final Lcom/google/android/gms/internal/zzamv;
.super Lcom/google/android/gms/internal/zzamh;


# instance fields
.field private mStarted:Z

.field private final zzagA:Lcom/google/android/gms/internal/zzanm;

.field private final zzagB:Lcom/google/android/gms/internal/zzanm;

.field private final zzagC:Lcom/google/android/gms/internal/zzaoo;

.field private zzagD:J

.field private zzagE:Z

.field private final zzagv:Lcom/google/android/gms/internal/zzams;

.field private final zzagw:Lcom/google/android/gms/internal/zzaoe;

.field private final zzagx:Lcom/google/android/gms/internal/zzaod;

.field private final zzagy:Lcom/google/android/gms/internal/zzamn;

.field private zzagz:J


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzamj;Lcom/google/android/gms/internal/zzaml;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamh;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagz:J

    new-instance p2, Lcom/google/android/gms/internal/zzaod;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzaod;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagx:Lcom/google/android/gms/internal/zzaod;

    new-instance p2, Lcom/google/android/gms/internal/zzams;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzams;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    new-instance p2, Lcom/google/android/gms/internal/zzaoe;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzaoe;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagw:Lcom/google/android/gms/internal/zzaoe;

    new-instance p2, Lcom/google/android/gms/internal/zzamn;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzamn;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    new-instance p2, Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/zzaoo;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagC:Lcom/google/android/gms/internal/zzaoo;

    new-instance p2, Lcom/google/android/gms/internal/zzamw;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/zzamw;-><init>(Lcom/google/android/gms/internal/zzamv;Lcom/google/android/gms/internal/zzamj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagA:Lcom/google/android/gms/internal/zzanm;

    new-instance p2, Lcom/google/android/gms/internal/zzamx;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/zzamx;-><init>(Lcom/google/android/gms/internal/zzamv;Lcom/google/android/gms/internal/zzamj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagB:Lcom/google/android/gms/internal/zzanm;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzamm;Lcom/google/android/gms/internal/zzall;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkp()Lcom/google/android/gms/internal/zzamj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->zzaY(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkM()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->enableAdvertisingIdCollection(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zza;->zzjj()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzalt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzalt;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzalt;->zzbj(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzalt;->zzH(Z)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/zzi;->zza(Lcom/google/android/gms/analytics/zzj;)V

    const-class v2, Lcom/google/android/gms/internal/zzalo;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/zzi;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzalo;

    const-class v3, Lcom/google/android/gms/internal/zzalk;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/zzi;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzalk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzdV()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzalk;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzalk;->setAppVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzalk;->setAppId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzalk;->setAppInstallerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzalt;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/zzalo;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "Sending installation campaign to"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/zzamv;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaog;->zzlU()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/zzi;->zzl(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzi;->zzjt()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzamv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzkY()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzamv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzkZ()V

    return-void
.end method

.method private final zzbv(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbha;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbgz;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzkT()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->zzkT()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final zzkY()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzamz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzamz;-><init>(Lcom/google/android/gms/internal/zzamv;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzb(Lcom/google/android/gms/internal/zzanq;)V

    return-void
.end method

.method private final zzkZ()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->zzkS()I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagB:Lcom/google/android/gms/internal/zzanm;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzanm;->zzs(J)V

    return-void
.end method

.method private final zzla()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagE:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzlo()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamn;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzans;->zzahS:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzant;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamv;->zzagC:Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaoo;->zzu(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagC:Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoo;->start()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamn;->connect()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagC:Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoo;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->onServiceConnected()V

    :cond_3
    return-void
.end method

.method private final zzlb()Z
    .locals 11

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamn;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamv;->zzagw:Lcom/google/android/gms/internal/zzaoe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoe;->zzlQ()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzls()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzlt()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzams;->beginTransaction()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/internal/zzams;->zzo(J)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return v2

    :cond_1
    :try_start_3
    const-string v7, "Hits loaded from store. count"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/google/android/gms/internal/zzamv;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzanx;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzanx;->zzlF()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-nez v10, :cond_2

    const-string v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/internal/zzamv;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    return v2

    :catch_1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return v2

    :cond_3
    :try_start_6
    iget-object v7, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzamn;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "Service connected, sending hits to the service"

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzanx;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/zzamn;->zzb(Lcom/google/android/gms/internal/zzanx;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzanx;->zzlF()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v8, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v8, v7}, Lcom/google/android/gms/internal/zzamv;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v8, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzanx;->zzlF()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/zzams;->zzp(J)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzanx;->zzlF()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_8
    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3

    return v2

    :catch_3
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return v2

    :cond_4
    :try_start_a
    iget-object v7, p0, Lcom/google/android/gms/internal/zzamv;->zzagw:Lcom/google/android/gms/internal/zzaoe;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzaoe;->zzlQ()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzamv;->zzagw:Lcom/google/android/gms/internal/zzaoe;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzaoe;->zzu(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :cond_5
    :try_start_b
    iget-object v7, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzams;->zzs(Ljava/util/List;)V

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_c
    const-string v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    return v2

    :catch_5
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return v2

    :cond_6
    :goto_3
    :try_start_e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v6, :cond_7

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    return v2

    :catch_6
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return v2

    :cond_7
    :try_start_10
    iget-object v6, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzams;->setTransactionSuccessful()V

    iget-object v6, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return v2

    :catch_8
    move-exception v0

    :try_start_11
    const-string v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    return v2

    :catch_9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return v2

    :catchall_0
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzams;->setTransactionSuccessful()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    throw v0

    :catch_a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return v2
.end method

.method private final zzle()V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkw()Lcom/google/android/gms/internal/zzanp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanp;->zzlC()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanp;->zzbo()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzkT()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Lcom/google/android/gms/internal/zzans;->zzahr:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzant;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzlr()J

    move-result-wide v1

    const-string v3, "Dispatch alarm scheduled (ms)"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/zzamv;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanp;->schedule()V

    :cond_1
    return-void
.end method

.method private final zzlf()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagA:Lcom/google/android/gms/internal/zzanm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanm;->zzbo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagA:Lcom/google/android/gms/internal/zzanm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanm;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkw()Lcom/google/android/gms/internal/zzanp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanp;->zzbo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanp;->cancel()V

    :cond_1
    return-void
.end method

.method private final zzlg()J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagz:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagz:J

    return-wide v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzans;->zzahm:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzant;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkx()Lcom/google/android/gms/internal/zzaot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaot;->zzkD()V

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaot;->zzaiP:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkx()Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaot;->zzkD()V

    iget v0, v0, Lcom/google/android/gms/internal/zzaot;->zzahZ:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :cond_1
    return-wide v0
.end method

.method private final zzlh()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagE:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamn;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V

    return-void
.end method


# virtual methods
.method protected final onServiceConnected()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzlo()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbr(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamn;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzls()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzams;->zzo(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzanx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzamn;->zzb(Lcom/google/android/gms/internal/zzanx;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V

    return-void

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzanx;->zzlF()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzams;->zzp(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    :cond_5
    return-void
.end method

.method final start()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamv;->mStarted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzamv;->mStarted:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzamy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzamy;-><init>(Lcom/google/android/gms/internal/zzamv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzl;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzamm;Z)J
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzams;->beginTransaction()V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkK()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzjX()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzams;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzams;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "properties"

    const-string v7, "app_uid=? AND cid<>?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v4, v8, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const-string v3, "Deleted property records"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lcom/google/android/gms/internal/zzams;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkK()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzjX()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzams;->zza(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/zzamm;->zzm(J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzams;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzams;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzdV()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, ""

    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_uid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkK()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "cid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzjX()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "tid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "adid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkM()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "hits_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkN()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "params"

    invoke-virtual {v6, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "properties"

    const/4 v5, 0x0

    const/4 v7, 0x5

    invoke-virtual {v4, p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long p1, v4, v0

    if-nez p1, :cond_3

    const-string p1, "Failed to insert/update a property (got -1)"

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzams;->zzbs(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v4, "Error storing a property"

    invoke-virtual {p2, v4, p1}, Lcom/google/android/gms/internal/zzams;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzams;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    return-wide v2

    :catch_1
    move-exception p1

    const-string p2, "Failed to end transaction"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return-wide v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_4
    const-string p2, "Failed to update Analytics property"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    return-wide v0

    :catch_3
    move-exception p1

    const-string p2, "Failed to end transaction"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return-wide v0

    :goto_2
    :try_start_6
    iget-object p2, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzams;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p2

    const-string v0, "Failed to end transaction"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzanx;)V
    .locals 11

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagE:Z

    if-eqz v0, :cond_0

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbp(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzamv;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanx;->zzlK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaog;->zzlZ()Lcom/google/android/gms/internal/zzaoi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoi;->zzmb()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanx;->zzdV()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "_m"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzanx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanx;->zzlG()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanx;->zzlI()Z

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanx;->zzlF()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanx;->zzlE()I

    move-result v9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanx;->zzlH()Ljava/util/List;

    move-result-object v10

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzanx;-><init>(Lcom/google/android/gms/internal/zzamg;Ljava/util/Map;JZJILjava/util/List;)V

    move-object p1, v0

    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzla()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzamn;->zzb(Lcom/google/android/gms/internal/zzanx;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamv;->zzbp(Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzams;->zzc(Lcom/google/android/gms/internal/zzanx;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object v0

    const-string v1, "deliver: failed to insert hit to database"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaoc;->zza(Lcom/google/android/gms/internal/zzanx;Ljava/lang/String;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzamm;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    const-string v0, "Sending first hit to property"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamm;->zzkL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzamv;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaog;->zzlV()Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzly()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaoo;->zzu(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaog;->zzlY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzaos;->zza(Lcom/google/android/gms/internal/zzaoc;Ljava/lang/String;)Lcom/google/android/gms/internal/zzall;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzamv;->zza(Lcom/google/android/gms/internal/zzamm;Lcom/google/android/gms/internal/zzall;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzanq;)V
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagD:J

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaog;->zzlW()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    const-string v4, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/internal/zzamv;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzla()V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaog;->zzlX()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzanq;->zzc(Ljava/lang/Throwable;)V

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzamv;->zzagD:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagx:Lcom/google/android/gms/internal/zzaod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaod;->zzlP()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaog;->zzlX()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzanq;->zzc(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final zzbw(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaos;->zza(Lcom/google/android/gms/internal/zzaoc;Ljava/lang/String;)Lcom/google/android/gms/internal/zzall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzamv;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaog;->zzlY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Ignoring duplicate install campaign"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamv;->zzbr(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzamv;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzaog;->zzbz(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaog;->zzlV()Lcom/google/android/gms/internal/zzaoo;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzly()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzaoo;->zzu(J)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Campaign received too late, ignoring"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzamv;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p1, "Received installation campaign"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzamv;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzams;->zzq(J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzamm;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zza(Lcom/google/android/gms/internal/zzamm;Lcom/google/android/gms/internal/zzall;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected final zzjD()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagw:Lcom/google/android/gms/internal/zzaoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoe;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamn;->initialize()V

    return-void
.end method

.method protected final zzkX()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkp()Lcom/google/android/gms/internal/zzamj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaoj;->zzac(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzamv;->zzbr(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzaok;->zzad(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzamv;->zzbs(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzac(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbr(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zzad(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaog;->zzlU()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbs(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlh()V

    :cond_4
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbs(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlh()V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaok;->zzad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbr(Ljava/lang/String;)V

    :goto_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagE:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzla()V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V

    return-void
.end method

.method public final zzkk()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    const-string v0, "Delete all hits from local store"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->zzkD()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hits2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->zzkD()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "properties"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzla()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagy:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamn;->zzkO()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Device service unavailable. Can\'t clear hits stored on the device service."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zzko()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagD:J

    return-void
.end method

.method public final zzlc()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    const-string v0, "Sync dispatching local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamv;->zzbp(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagD:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzla()V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaog;->zzlX()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzamv;->zzagD:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagx:Lcom/google/android/gms/internal/zzaod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaod;->zzlP()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzamv;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V

    return-void
.end method

.method public final zzld()V
    .locals 10

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagE:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlg()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagx:Lcom/google/android/gms/internal/zzaod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaod;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagv:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagx:Lcom/google/android/gms/internal/zzaod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaod;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    return-void

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzans;->zzahN:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzant;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagx:Lcom/google/android/gms/internal/zzaod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaod;->zzlN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagx:Lcom/google/android/gms/internal/zzaod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaod;->isConnected()Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzle()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlg()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzky()Lcom/google/android/gms/internal/zzaog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaog;->zzlW()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v6, v0, v4

    cmp-long v4, v6, v2

    if-lez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzlq()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_1
    const-string v0, "Dispatch scheduled (ms)"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzamv;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagA:Lcom/google/android/gms/internal/zzanm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanm;->zzbo()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamv;->zzagA:Lcom/google/android/gms/internal/zzanm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzanm;->zzlz()J

    move-result-wide v2

    add-long v4, v6, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamv;->zzagA:Lcom/google/android/gms/internal/zzanm;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzanm;->zzt(J)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamv;->zzagA:Lcom/google/android/gms/internal/zzanm;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/zzanm;->zzs(J)V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzlf()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;->zzle()V

    return-void
.end method

.method public final zzr(J)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzamv;->zzagz:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamv;->zzld()V

    return-void
.end method
