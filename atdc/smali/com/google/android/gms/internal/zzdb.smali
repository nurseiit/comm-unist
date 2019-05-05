.class public Lcom/google/android/gms/internal/zzdb;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "zzdb"

.field private static zzqQ:Ljava/lang/Object;

.field private static zzqS:Lcom/google/android/gms/common/zze;


# instance fields
.field protected zzqD:Landroid/content/Context;

.field private zzqE:Landroid/content/Context;

.field private zzqF:Ljava/util/concurrent/ExecutorService;

.field private zzqG:Ldalvik/system/DexClassLoader;

.field private zzqH:Lcom/google/android/gms/internal/zzcw;

.field private zzqI:[B

.field private volatile zzqJ:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private zzqK:Ljava/util/concurrent/Future;

.field private volatile zzqL:Lcom/google/android/gms/internal/zzax;

.field private zzqM:Ljava/util/concurrent/Future;

.field private zzqN:Lcom/google/android/gms/internal/zzcn;

.field private zzqO:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected zzqP:Z

.field private zzqR:Z

.field protected zzqT:Z

.field private zzqU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzea;",
            ">;"
        }
    .end annotation
.end field

.field private zzqV:Z

.field private volatile zzqk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdb;->zzqQ:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqJ:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqk:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqK:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqL:Lcom/google/android/gms/internal/zzax;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqM:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqO:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqP:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqR:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqT:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqV:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdb;->zzqE:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdb;->zzqU:Ljava/util/Map;

    return-void
.end method

.method private final zzM()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqJ:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqE:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqE:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqJ:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqJ:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-void
.end method

.method private final zzN()Lcom/google/android/gms/internal/zzax;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzcaq;->zzn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzax;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzax;)Lcom/google/android/gms/internal/zzax;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdb;->zzqL:Lcom/google/android/gms/internal/zzax;

    return-object p1
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzdb;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zzdb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdb;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzdb;->zzqF:Ljava/util/concurrent/ExecutorService;

    iput-boolean p3, v0, Lcom/google/android/gms/internal/zzdb;->zzqk:Z

    if-eqz p3, :cond_0

    iget-object p0, v0, Lcom/google/android/gms/internal/zzdb;->zzqF:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/zzdc;

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/zzdc;-><init>(Lcom/google/android/gms/internal/zzdb;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzdb;->zzqK:Ljava/util/concurrent/Future;

    :cond_0
    iget-object p0, v0, Lcom/google/android/gms/internal/zzdb;->zzqF:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/zzde;

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/zzde;-><init>(Lcom/google/android/gms/internal/zzdb;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_0 .. :try_end_0} :catch_6

    const/4 p0, 0x1

    const/4 p3, 0x0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/zze;->zzoW()Lcom/google/android/gms/common/zze;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/zzdb;->zzqS:Lcom/google/android/gms/common/zze;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/zze;->zzau(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzdb;->zzqP:Z

    sget-object v1, Lcom/google/android/gms/internal/zzdb;->zzqS:Lcom/google/android/gms/common/zze;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/zze;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzdb;->zzqR:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/zzazn;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzdb;->zzqO:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_1 .. :try_end_1} :catch_6

    :catch_0
    :cond_3
    :try_start_2
    invoke-virtual {v0, p3, p0}, Lcom/google/android/gms/internal/zzdb;->zza(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/zzdg;->zzS()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/zzmo;->zzFa:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/zzcw;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzcw;-><init>(Ljava/security/SecureRandom;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzdb;->zzqH:Lcom/google/android/gms/internal/zzcw;
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzdb;->zzqH:Lcom/google/android/gms/internal/zzcw;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzcw;->zzl(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/zzdb;->zzqI:[B
    :try_end_3
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    iget-object p1, v0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, v0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    const-string v1, "dex"

    invoke-virtual {p1, v1, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p0, Lcom/google/android/gms/internal/zzcy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcy;-><init>()V

    throw p0

    :cond_5
    const-string v1, "1489418796403"

    new-instance v3, Ljava/io/File;

    const-string v4, "%s/%s.jar"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, p3

    aput-object v1, v6, p0

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/google/android/gms/internal/zzdb;->zzqH:Lcom/google/android/gms/internal/zzcw;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzdb;->zzqI:[B

    invoke-virtual {v4, v6, p2}, Lcom/google/android/gms/internal/zzcw;->zza([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v6, p2

    invoke-virtual {v4, p2, p3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzdb;->zzb(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    new-instance p2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {p2, v4, v6, v2, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p2, v0, Lcom/google/android/gms/internal/zzdb;->zzqG:Ldalvik/system/DexClassLoader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v3}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;Ljava/lang/String;)V

    const-string p2, "%s/%s.dex"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, p3

    aput-object v1, v2, p0

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdb;->zzm(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    new-instance p1, Lcom/google/android/gms/internal/zzcn;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzcn;-><init>(Lcom/google/android/gms/internal/zzdb;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/zzdb;->zzqN:Lcom/google/android/gms/internal/zzcn;

    iput-boolean p0, v0, Lcom/google/android/gms/internal/zzdb;->zzqV:Z
    :try_end_7
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_7 .. :try_end_7} :catch_6

    return-object v0

    :catchall_0
    move-exception p2

    :try_start_8
    invoke-static {v3}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "%s/%s.dex"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, p3

    aput-object v1, v3, p0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdb;->zzm(Ljava/lang/String;)V

    throw p2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_8 .. :try_end_8} :catch_6

    :catch_1
    move-exception p0

    :try_start_9
    new-instance p1, Lcom/google/android/gms/internal/zzcy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcy;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/zzcy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcy;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/zzcy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcy;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/zzcy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcy;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/zzcy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcy;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_9
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdb;->zzM()V

    return-void
.end method

.method private static zza(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzdb;->TAG:Ljava/lang/String;

    const-string v1, "File %s not found. No need for deletion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private final zza(Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%s.tmp"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "%s/%s.dex"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long p1, v2, v5

    if-gtz p1, :cond_2

    return-void

    :cond_2
    long-to-int p1, v2

    new-array p1, p1, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v5, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-static {v1}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;)V

    return-void

    :cond_3
    :try_start_3
    new-instance v5, Lcom/google/android/gms/internal/zzbc;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzbc;-><init>()V

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/zzbc;->zzcG:[B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v5, Lcom/google/android/gms/internal/zzbc;->zzcF:[B

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdb;->zzqH:Lcom/google/android/gms/internal/zzcw;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzdb;->zzqI:[B

    invoke-virtual {p2, v6, p1}, Lcom/google/android/gms/internal/zzcw;->zzc([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/zzbc;->data:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbv;->zzb([B)[B

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/zzbc;->zzcE:[B

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v5}, Lcom/google/android/gms/internal/adp;->zzc(Lcom/google/android/gms/internal/adp;)[B

    move-result-object p2

    array-length v0, p2

    invoke-virtual {p1, p2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    invoke-static {v1}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto :goto_0

    :catch_3
    move-object v2, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_4
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_5
    invoke-static {v1}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;)V

    throw p2

    :catch_6
    move-object v3, v2

    :catch_7
    :goto_1
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_6
    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :cond_7
    invoke-static {v1}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;)V

    return-void
.end method

.method private static zza(ILcom/google/android/gms/internal/zzax;)Z
    .locals 4

    const/4 v0, 0x4

    if-ge p0, v0, :cond_4

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzFd:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzax;->zzaT:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzax;->zzaT:Ljava/lang/String;

    const-string v1, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return p0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzFe:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzax;->zzbZ:Lcom/google/android/gms/internal/zzbd;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzax;->zzbZ:Lcom/google/android/gms/internal/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbd;->zzcx:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/internal/zzax;->zzbZ:Lcom/google/android/gms/internal/zzbd;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbd;->zzcx:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    :cond_3
    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzb(ILcom/google/android/gms/internal/zzax;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzdb;->zza(ILcom/google/android/gms/internal/zzax;)Z

    move-result p0

    return p0
.end method

.method private final zzb(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%s.tmp"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "%s/%s.dex"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gtz v8, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;)V

    return v4

    :cond_2
    long-to-int v2, v2

    new-array v2, v2, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/zzdb;->TAG:Ljava/lang/String;

    const-string v1, "Cannot read the cache data."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v4

    :cond_3
    :try_start_3
    new-instance v6, Lcom/google/android/gms/internal/zzbc;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzbc;-><init>()V

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/adp;->zza(Lcom/google/android/gms/internal/adp;[B)Lcom/google/android/gms/internal/adp;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbc;

    new-instance v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzbc;->zzcF:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v2, Lcom/google/android/gms/internal/zzbc;->zzcE:[B

    iget-object v6, v2, Lcom/google/android/gms/internal/zzbc;->data:[B

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbv;->zzb([B)[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v2, Lcom/google/android/gms/internal/zzbc;->zzcG:[B

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/zzdb;->zzqH:Lcom/google/android/gms/internal/zzcw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqI:[B

    new-instance v6, Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbc;->data:[B

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0, v6}, Lcom/google/android/gms/internal/zzcw;->zza([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    array-length p1, p2

    invoke-virtual {v0, p2, v4, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return v5

    :catchall_0
    move-exception p2

    move-object p1, v0

    goto :goto_1

    :catch_3
    move-object p1, v0

    goto :goto_2

    :cond_5
    :goto_0
    :try_start_7
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/google/android/gms/internal/zzcx; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    return v4

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v3, p1

    :goto_1
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :cond_6
    if-eqz p1, :cond_7

    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    :cond_7
    throw p2

    :catch_7
    move-object v3, p1

    :catch_8
    :goto_2
    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    :cond_8
    if-eqz p1, :cond_9

    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_9
    return v4
.end method

.method private static zzm(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdb;->zza(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqE:Landroid/content/Context;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqD:Landroid/content/Context;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqV:Z

    return v0
.end method

.method public final zzC()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqF:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final zzD()Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqG:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final zzE()Lcom/google/android/gms/internal/zzcw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqH:Lcom/google/android/gms/internal/zzcw;

    return-object v0
.end method

.method public final zzF()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqI:[B

    return-object v0
.end method

.method public final zzG()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqO:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public final zzH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqP:Z

    return v0
.end method

.method public final zzI()Lcom/google/android/gms/internal/zzcn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqN:Lcom/google/android/gms/internal/zzcn;

    return-object v0
.end method

.method public final zzJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqR:Z

    return v0
.end method

.method public final zzK()Lcom/google/android/gms/internal/zzax;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqL:Lcom/google/android/gms/internal/zzax;

    return-object v0
.end method

.method public final zzL()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqM:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final zzO()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqk:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqJ:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqJ:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqK:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqK:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqK:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqK:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :catch_1
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqJ:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method

.method public final zzP()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzdb;->zzqQ:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqT:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqO:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqO:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqT:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqT:Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public final zzQ()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzdb;->zzqQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqT:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqO:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqO:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdb;->zzqT:Z

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

.method final zza(IZ)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqR:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqF:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzdd;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzdd;-><init>(Lcom/google/android/gms/internal/zzdb;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdb;->zzqM:Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public final varargs zza(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqU:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqU:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzea;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzea;-><init>(Lcom/google/android/gms/internal/zzdb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final zzb(IZ)Lcom/google/android/gms/internal/zzax;
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdb;->zzN()Lcom/google/android/gms/internal/zzax;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqU:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzea;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzea;->zzY()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public final zzy()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzqN:Lcom/google/android/gms/internal/zzcn;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzcn;->zzy()I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method
