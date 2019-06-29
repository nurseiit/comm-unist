.class final Lcom/google/firebase/storage/StreamDownloadTask$zza;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StreamDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private zzcpt:Lcom/google/firebase/storage/StreamDownloadTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzcpu:Ljava/io/InputStream;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzcpv:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private zzcpw:Ljava/io/IOException;

.field private zzcpx:I

.field private zzcpy:I

.field private zzcpz:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/storage/StreamDownloadTask;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/StreamDownloadTask;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/firebase/storage/StreamDownloadTask;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpt:Lcom/google/firebase/storage/StreamDownloadTask;

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpv:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private final zzKX()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpt:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpt:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzKR()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/firebase/storage/StorageException;->zzcos:Ljava/io/IOException;

    throw v0

    :cond_0
    return-void
.end method

.method private final zzKY()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzKX()V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    iget v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpy:I

    iget v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpx:I

    if-ne v1, v2, :cond_1

    const-string v0, "StreamDownloadTask"

    const-string v1, "Encountered exception during stream operation. Aborting."

    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v1, "StreamDownloadTask"

    iget v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpx:I

    const/16 v3, 0x46

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Encountered exception during stream operation. Retrying at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpx:I

    iput v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpy:I

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    :cond_2
    iget-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpz:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t perform operation on closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpv:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to open stream"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StreamDownloadTask$zza;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzKY()Z

    move-result p0

    return p0
.end method

.method private final zzaN(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpt:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpt:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/storage/StreamDownloadTask;->zzaN(J)V

    :cond_0
    iget v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpx:I

    int-to-long v0, v0

    add-long v2, v0, p1

    long-to-int p1, v2

    iput p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpx:I

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzKY()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpz:Z

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpt:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpt:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzb(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/android/gms/internal/acf;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpt:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzb(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/android/gms/internal/acf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acf;->zzLf()V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpt:Lcom/google/firebase/storage/StreamDownloadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StreamDownloadTask;->zza(Lcom/google/firebase/storage/StreamDownloadTask;Lcom/google/android/gms/internal/acf;)Lcom/google/android/gms/internal/acf;

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzKX()V

    return-void
.end method

.method public final mark(I)V
    .locals 0

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzKY()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzaN(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    throw v0
.end method

.method public final read([BII)I
    .locals 6
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzKY()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    int-to-long v1, p3

    const-wide/32 v3, 0x40000

    cmp-long v5, v1, v3

    const/4 v1, -0x1

    if-lez v5, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    const/high16 v3, 0x40000

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_2

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    int-to-long v1, v2

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzaN(J)V

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzKX()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    if-lez p3, :cond_6

    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_5

    if-nez v0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    add-int/2addr p2, v2

    add-int/2addr v0, v2

    sub-int/2addr p3, v2

    int-to-long v1, v2

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzaN(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iput-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    goto :goto_0

    :cond_6
    :goto_3
    if-nez p3, :cond_0

    return v0

    :cond_7
    iget-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    throw p1
.end method

.method public final skip(J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzKY()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    const-wide/32 v1, 0x40000

    cmp-long v3, p1, v1

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    if-lez v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v3, v1, v6

    if-gez v3, :cond_2

    if-nez v0, :cond_1

    return-wide v4

    :cond_1
    int-to-long p1, v0

    return-wide p1

    :cond_2
    int-to-long v3, v0

    add-long v5, v3, v1

    long-to-int v0, v5

    sub-long v3, p1, v1

    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzaN(J)V

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzKX()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide p1, v3

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    move-wide p1, v3

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    cmp-long v1, p1, v6

    if-lez v1, :cond_6

    :try_start_2
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpu:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    cmp-long v3, v1, v6

    if-gez v3, :cond_5

    if-nez v0, :cond_4

    return-wide v4

    :cond_4
    int-to-long p1, v0

    return-wide p1

    :cond_5
    int-to-long v3, v0

    add-long v8, v3, v1

    long-to-int v0, v8

    sub-long v3, p1, v1

    :try_start_3
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzaN(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-wide p1, v3

    goto :goto_3

    :goto_2
    iput-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    goto :goto_0

    :cond_6
    :goto_3
    cmp-long v1, p1, v6

    if-nez v1, :cond_0

    int-to-long p1, v0

    return-wide p1

    :cond_7
    iget-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcpw:Ljava/io/IOException;

    throw p1
.end method
