.class public final Lcom/google/android/gms/internal/zzcom;
.super Ljava/lang/Object;


# instance fields
.field private final zzbxv:Ljava/util/concurrent/ExecutorService;

.field private volatile zzbxw:Ljava/io/InputStream;

.field private volatile zzbxx:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxv:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxw:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxx:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcom;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcom;->zzbxw:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcom;Ljava/io/OutputStream;ZJ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcom;->zza(Ljava/io/OutputStream;ZJ)V

    return-void
.end method

.method private static zza(Ljava/io/OutputStream;ZJ)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "NearbyConnections"

    const-string v1, "Unable to deliver status for Payload %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcom;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxx:Z

    return p0
.end method


# virtual methods
.method final shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxv:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxw:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method final zza(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;J)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcom;->zzbxv:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/google/android/gms/internal/zzcon;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzcon;-><init>(Lcom/google/android/gms/internal/zzcom;Ljava/io/InputStream;Ljava/io/OutputStream;JLjava/io/OutputStream;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
