.class public final Lcom/google/android/gms/internal/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzk;


# static fields
.field private static DEBUG:Z = false

.field private static zzam:I = 0xbb8

.field private static zzan:I = 0x1000


# instance fields
.field private zzao:Lcom/google/android/gms/internal/zzan;

.field private zzap:Lcom/google/android/gms/internal/zzae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzab;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/zzad;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzan;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzae;

    sget v1, Lcom/google/android/gms/internal/zzad;->zzan:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzae;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzad;-><init>(Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzae;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzad;->zzao:Lcom/google/android/gms/internal/zzan;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzad;->zzap:Lcom/google/android/gms/internal/zzae;

    return-void
.end method

.method private static zza([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzp;Lcom/google/android/gms/internal/zzaa;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzp<",
            "*>;",
            "Lcom/google/android/gms/internal/zzaa;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaa;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzp;->zzj()Lcom/google/android/gms/internal/zzx;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzp;->zzi()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzx;->zza(Lcom/google/android/gms/internal/zzaa;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzaa; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "%s-retry [timeout=%s]"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzp;->zzb(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    const-string v0, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzp;->zzb(Ljava/lang/String;)V

    throw p2
.end method

.method private final zza(Lorg/apache/http/HttpEntity;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzy;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad;->zzap:Lcom/google/android/gms/internal/zzae;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaq;-><init>(Lcom/google/android/gms/internal/zzae;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/zzy;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzy;-><init>()V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzad;->zzap:Lcom/google/android/gms/internal/zzae;

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzae;->zzb(I)[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/zzaq;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaq;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Error occured when calling consumingContent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzab;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzad;->zzap:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/zzae;->zza([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaq;->close()V

    return-object v2

    :catchall_0
    move-exception v3

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v3

    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    const-string p1, "Error occured when calling consumingContent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzab;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzad;->zzap:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzae;->zza([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaq;->close()V

    throw v3
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzp;)Lcom/google/android/gms/internal/zzn;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzp<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaa;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzp;->zze()Lcom/google/android/gms/internal/zzc;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v12, v11, Lcom/google/android/gms/internal/zzc;->zza:Ljava/lang/String;

    if-eqz v12, :cond_0

    const-string v12, "If-None-Match"

    iget-object v13, v11, Lcom/google/android/gms/internal/zzc;->zza:Ljava/lang/String;

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v12, v11, Lcom/google/android/gms/internal/zzc;->zzc:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_1

    new-instance v12, Ljava/util/Date;

    iget-wide v13, v11, Lcom/google/android/gms/internal/zzc;->zzc:J

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    const-string v11, "If-Modified-Since"

    invoke-static {v12}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v11, v1, Lcom/google/android/gms/internal/zzad;->zzao:Lcom/google/android/gms/internal/zzan;

    invoke-interface {v11, v2, v10}, Lcom/google/android/gms/internal/zzan;->zza(Lcom/google/android/gms/internal/zzp;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v10
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/internal/zzad;->zza([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v12
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    const/16 v5, 0x130

    if-ne v13, v5, :cond_3

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzp;->zze()Lcom/google/android/gms/internal/zzc;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/zzn;

    const/16 v15, 0x130

    const/16 v16, 0x0

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/4 v11, 0x0

    sub-long v19, v13, v3

    move-object v14, v5

    move-object/from16 v17, v12

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/zzn;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v5

    :cond_2
    iget-object v11, v5, Lcom/google/android/gms/internal/zzc;->zzf:Ljava/util/Map;

    invoke-interface {v11, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v11, Lcom/google/android/gms/internal/zzn;

    const/16 v14, 0x130

    iget-object v15, v5, Lcom/google/android/gms/internal/zzc;->data:[B

    iget-object v5, v5, Lcom/google/android/gms/internal/zzc;->zzf:Ljava/util/Map;

    const/16 v17, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const/4 v13, 0x0

    sub-long v20, v18, v3

    move-object v13, v11

    move-object/from16 v16, v5

    move-wide/from16 v18, v20

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/zzn;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v11

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v13, v8

    move-object v14, v12

    goto/16 :goto_7

    :cond_3
    :try_start_3
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v5, :cond_4

    :try_start_4
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/zzad;->zza(Lorg/apache/http/HttpEntity;)[B

    move-result-object v5
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_4
    :try_start_5
    new-array v5, v9, [B
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_1
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const/4 v8, 0x0

    sub-long v6, v14, v3

    sget-boolean v8, Lcom/google/android/gms/internal/zzad;->DEBUG:Z
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    if-nez v8, :cond_5

    :try_start_7
    sget v8, Lcom/google/android/gms/internal/zzad;->zzam:I
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    int-to-long v14, v8

    cmp-long v8, v6, v14

    if-lez v8, :cond_7

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v13, v5

    move-object v14, v12

    goto/16 :goto_6

    :cond_5
    :goto_2
    :try_start_8
    const-string v8, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v2, v14, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v14, v7
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    if-eqz v5, :cond_6

    :try_start_9
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :cond_6
    :try_start_a
    const-string v6, "null"

    :goto_3
    const/4 v7, 0x2

    aput-object v6, v14, v7

    const/4 v6, 0x3

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v14, v6

    const/4 v6, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzp;->zzj()Lcom/google/android/gms/internal/zzx;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/internal/zzx;->zzb()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v14, v6

    invoke-static {v8, v14}, Lcom/google/android/gms/internal/zzab;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    const/16 v6, 0xc8

    if-lt v13, v6, :cond_9

    const/16 v6, 0x12b

    if-le v13, v6, :cond_8

    goto :goto_4

    :cond_8
    new-instance v6, Lcom/google/android/gms/internal/zzn;

    const/16 v16, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    const/4 v11, 0x0

    sub-long v17, v7, v3

    move-object v7, v12

    move-object v12, v6

    move-object v14, v5

    move-object v15, v7

    :try_start_b
    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/zzn;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v6

    :cond_9
    :goto_4
    move-object v7, v12

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v7, v12

    :goto_5
    move-object v13, v5

    move-object v14, v7

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v7, v12

    move-object v5, v0

    move-object v14, v7

    move-object v13, v8

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v14, v5

    move-object v13, v8

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v14, v5

    move-object v10, v8

    move-object v13, v10

    :goto_6
    move-object v5, v0

    :goto_7
    if-eqz v10, :cond_f

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const-string v6, "Unexpected response code %d for %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzp;->getUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/zzab;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_e

    new-instance v6, Lcom/google/android/gms/internal/zzn;

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v16, v7, v3

    move-object v11, v6

    move v12, v5

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/zzn;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v7, 0x191

    if-eq v5, v7, :cond_d

    const/16 v7, 0x193

    if-ne v5, v7, :cond_a

    goto :goto_8

    :cond_a
    const/16 v2, 0x190

    if-lt v5, v2, :cond_b

    const/16 v2, 0x1f3

    if-gt v5, v2, :cond_b

    new-instance v2, Lcom/google/android/gms/internal/zzf;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/zzf;-><init>(Lcom/google/android/gms/internal/zzn;)V

    throw v2

    :cond_b
    const/16 v2, 0x1f4

    if-lt v5, v2, :cond_c

    const/16 v2, 0x257

    if-gt v5, v2, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/zzy;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/zzy;-><init>(Lcom/google/android/gms/internal/zzn;)V

    throw v2

    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/zzy;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/zzy;-><init>(Lcom/google/android/gms/internal/zzn;)V

    throw v2

    :cond_d
    :goto_8
    const-string v5, "auth"

    new-instance v7, Lcom/google/android/gms/internal/zza;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/zza;-><init>(Lcom/google/android/gms/internal/zzn;)V

    invoke-static {v5, v2, v7}, Lcom/google/android/gms/internal/zzad;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzp;Lcom/google/android/gms/internal/zzaa;)V

    goto/16 :goto_0

    :cond_e
    const-string v5, "network"

    new-instance v6, Lcom/google/android/gms/internal/zzm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzm;-><init>()V

    goto :goto_a

    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/zzo;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/zzo;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    move-exception v0

    move-object v3, v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Bad URL "

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzp;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_10
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-direct {v4, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_8
    const-string v5, "connection"

    new-instance v6, Lcom/google/android/gms/internal/zzz;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzz;-><init>()V

    goto :goto_a

    :catch_9
    const-string v5, "socket"

    new-instance v6, Lcom/google/android/gms/internal/zzz;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzz;-><init>()V

    :goto_a
    invoke-static {v5, v2, v6}, Lcom/google/android/gms/internal/zzad;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzp;Lcom/google/android/gms/internal/zzaa;)V

    goto/16 :goto_0
.end method
