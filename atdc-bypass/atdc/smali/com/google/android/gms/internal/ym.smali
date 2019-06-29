.class final Lcom/google/android/gms/internal/ym;
.super Ljava/lang/Object;


# instance fields
.field private zzciO:Lcom/google/android/gms/internal/yi;

.field private zzcjj:Ljava/io/DataInputStream;

.field private zzcjk:Lcom/google/android/gms/internal/yd;

.field private zzcjl:[B

.field private zzcjm:Lcom/google/android/gms/internal/xy;

.field private volatile zzcjn:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ym;->zzcjj:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/ym;->zzcjk:Lcom/google/android/gms/internal/yd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ym;->zzciO:Lcom/google/android/gms/internal/yi;

    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ym;->zzcjn:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ym;->zzcjk:Lcom/google/android/gms/internal/yd;

    return-void
.end method

.method private final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ym;->zzcjj:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return p3
.end method

.method private final zzc(Lcom/google/android/gms/internal/yj;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ym;->zzcjn:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ym;->zzcjk:Lcom/google/android/gms/internal/yd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/yd;->zzb(Lcom/google/android/gms/internal/yj;)V

    return-void
.end method


# virtual methods
.method final run()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjk:Lcom/google/android/gms/internal/yd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/yd;->zzJp()Lcom/google/android/gms/internal/yi;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ym;->zzciO:Lcom/google/android/gms/internal/yi;

    :catch_0
    :cond_0
    :goto_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ym;->zzcjn:Z

    if-nez v2, :cond_13

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ym;->read([BII)I

    move-result v2

    add-int/2addr v2, v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-object v6, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    aget-byte v6, v6, v4

    and-int/lit8 v6, v6, 0x70

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/yj;

    const-string v3, "Invalid frame received"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v6, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    aget-byte v6, v6, v4

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    invoke-direct {v1, v7, v2, v3}, Lcom/google/android/gms/internal/ym;->read([BII)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    aget-byte v7, v7, v3

    const-wide/16 v8, 0x0

    const/16 v10, 0x18

    const/16 v11, 0x7e

    const/16 v12, 0x8

    const/4 v13, 0x2

    if-ge v7, v11, :cond_4

    int-to-long v8, v7

    goto/16 :goto_3

    :cond_4
    if-ne v7, v11, :cond_5

    iget-object v7, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    invoke-direct {v1, v7, v2, v13}, Lcom/google/android/gms/internal/ym;->read([BII)I

    iget-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    aget-byte v2, v2, v13

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v12

    iget-object v7, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    int-to-long v8, v2

    goto :goto_3

    :cond_5
    const/16 v11, 0x7f

    if-ne v7, v11, :cond_6

    iget-object v7, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    invoke-direct {v1, v7, v2, v12}, Lcom/google/android/gms/internal/ym;->read([BII)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, v1, Lcom/google/android/gms/internal/ym;->zzcjl:[B

    sub-int/2addr v2, v12

    aget-byte v8, v7, v2

    int-to-long v8, v8

    const/16 v11, 0x38

    shl-long/2addr v8, v11

    add-int/lit8 v11, v2, 0x1

    aget-byte v11, v7, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v14, v11

    const/16 v11, 0x30

    shl-long/2addr v14, v11

    add-long v16, v8, v14

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v11, 0x28

    shl-long/2addr v8, v11

    add-long v14, v16, v8

    add-int/lit8 v8, v2, 0x3

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v11, 0x20

    shl-long/2addr v8, v11

    add-long v16, v14, v8

    add-int/lit8 v8, v2, 0x4

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    shl-long/2addr v8, v10

    add-long v14, v16, v8

    add-int/lit8 v8, v2, 0x5

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long v16, v14, v8

    add-int/lit8 v8, v2, 0x6

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v12

    int-to-long v8, v8

    add-long v14, v16, v8

    add-int/lit8 v2, v2, 0x7

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v7, v2

    add-long v16, v14, v7

    move-wide/from16 v8, v16

    :cond_6
    :goto_3
    long-to-int v2, v8

    new-array v7, v2, [B

    invoke-direct {v1, v7, v4, v2}, Lcom/google/android/gms/internal/ym;->read([BII)I

    if-ne v6, v12, :cond_7

    iget-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjk:Lcom/google/android/gms/internal/yd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/yd;->zzJq()V

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xa

    if-eq v6, v2, :cond_0

    const/16 v2, 0x9

    if-eq v6, v3, :cond_9

    if-eq v6, v13, :cond_9

    if-eq v6, v2, :cond_9

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/yj;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unsupported opcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_4
    if-ne v6, v2, :cond_c

    if-eqz v5, :cond_b

    array-length v2, v7

    const/16 v3, 0x7d

    if-gt v2, v3, :cond_a

    iget-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjk:Lcom/google/android/gms/internal/yd;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/yd;->zzE([B)V

    goto/16 :goto_0

    :cond_a
    new-instance v2, Lcom/google/android/gms/internal/yj;

    const-string v3, "PING frame too long"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    new-instance v2, Lcom/google/android/gms/internal/yj;

    const-string v3, "PING must not fragment across frames"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    iget-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjm:Lcom/google/android/gms/internal/xy;

    if-eqz v2, :cond_d

    if-eqz v6, :cond_d

    new-instance v2, Lcom/google/android/gms/internal/yj;

    const-string v3, "Failed to continue outstanding frame"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    iget-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjm:Lcom/google/android/gms/internal/xy;

    if-nez v2, :cond_e

    if-nez v6, :cond_e

    new-instance v2, Lcom/google/android/gms/internal/yj;

    const-string v3, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    iget-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjm:Lcom/google/android/gms/internal/xy;

    if-nez v2, :cond_10

    if-ne v6, v13, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/xx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/xx;-><init>()V

    goto :goto_5

    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/xz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/xz;-><init>()V

    :goto_5
    iput-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjm:Lcom/google/android/gms/internal/xy;

    :cond_10
    iget-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjm:Lcom/google/android/gms/internal/xy;

    invoke-interface {v2, v7}, Lcom/google/android/gms/internal/xy;->zzC([B)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/yj;

    const-string v3, "Failed to decode frame"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    if-eqz v5, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ym;->zzcjm:Lcom/google/android/gms/internal/xy;

    invoke-interface {v2}, Lcom/google/android/gms/internal/xy;->zzJn()Lcom/google/android/gms/internal/yl;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/gms/internal/ym;->zzcjm:Lcom/google/android/gms/internal/xy;

    if-nez v2, :cond_12

    new-instance v2, Lcom/google/android/gms/internal/yj;

    const-string v3, "Failed to decode whole message"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    iget-object v3, v1, Lcom/google/android/gms/internal/ym;->zzciO:Lcom/google/android/gms/internal/yi;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/yi;->zza(Lcom/google/android/gms/internal/yl;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/yj; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ym;->zzc(Lcom/google/android/gms/internal/yj;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v2, v0

    new-instance v3, Lcom/google/android/gms/internal/yj;

    const-string v4, "IO Error"

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ym;->zzc(Lcom/google/android/gms/internal/yj;)V

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method final zzJx()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ym;->zzcjn:Z

    return-void
.end method

.method final zza(Ljava/io/DataInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ym;->zzcjj:Ljava/io/DataInputStream;

    return-void
.end method
