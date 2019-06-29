.class final Lcom/google/android/gms/internal/zzcwj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcus;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzJP:Ljava/lang/String;

.field private final zzbJc:Lcom/google/android/gms/internal/zzcwm;

.field private final zzbJd:Lcom/google/android/gms/internal/zzcwl;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcwl;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcwk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcwk;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzcwj;-><init>(Lcom/google/android/gms/internal/zzcwm;Landroid/content/Context;Lcom/google/android/gms/internal/zzcwl;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcwm;Landroid/content/Context;Lcom/google/android/gms/internal/zzcwl;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwj;->zzbJc:Lcom/google/android/gms/internal/zzcwm;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwj;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcwj;->zzbJd:Lcom/google/android/gms/internal/zzcwl;

    const-string p1, "GoogleTagManager"

    const-string p2, "5.05"

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v3, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 p1, 0x2

    aput-object p3, v4, p1

    const/4 p1, 0x3

    aput-object v1, v4, p1

    const/4 p1, 0x4

    aput-object v0, v4, p1

    const/4 p1, 0x5

    aput-object v2, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwj;->zzJP:Ljava/lang/String;

    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/zzcuw;)Ljava/net/URL;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcuw;->zzBo()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, "Error trying to parse the GTM url."

    invoke-static {p0}, Lcom/google/android/gms/internal/zzcvk;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final zzBf()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwj;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzK(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcuw;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x28

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v5, v2, :cond_12

    move-object/from16 v7, p1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcuw;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzcwj;->zzd(Lcom/google/android/gms/internal/zzcuw;)Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcuw;->zzCo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcuw;->zzCp()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcuw;->zzCq()Ljava/lang/String;

    move-result-object v12

    if-nez v9, :cond_0

    const-string v9, "No destination: discarding hit."

    invoke-static {v9}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/zzcwj;->zzbJd:Lcom/google/android/gms/internal/zzcwl;

    invoke-interface {v9, v8}, Lcom/google/android/gms/internal/zzcwl;->zzb(Lcom/google/android/gms/internal/zzcuw;)V

    goto/16 :goto_f

    :cond_0
    :try_start_0
    iget-object v13, v1, Lcom/google/android/gms/internal/zzcwj;->zzbJc:Lcom/google/android/gms/internal/zzcwm;

    invoke-interface {v13, v9}, Lcom/google/android/gms/internal/zzcwm;->zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v15, v1, Lcom/google/android/gms/internal/zzcwj;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/google/android/gms/internal/zzcvm;->zzbt(Landroid/content/Context;)V

    const/4 v6, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move v10, v6

    const/4 v14, 0x0

    :goto_1
    move-object v6, v0

    goto/16 :goto_c

    :cond_1
    :goto_2
    const-string v15, "User-Agent"

    iget-object v14, v1, Lcom/google/android/gms/internal/zzcwj;->zzJP:Ljava/lang/String;

    invoke-virtual {v13, v15, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v15, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-nez v10, :cond_4

    const-string v10, "Hit %d retrieved from the store has null HTTP method."

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcuw;->zzBm()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/google/android/gms/internal/zzcwj;->zzbJd:Lcom/google/android/gms/internal/zzcwl;

    invoke-interface {v10, v8}, Lcom/google/android/gms/internal/zzcwl;->zzb(Lcom/google/android/gms/internal/zzcuw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_4
    :try_start_2
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_f

    :cond_4
    :try_start_3
    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "HEAD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "PUT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "Unrecongnized HTTP method %s. Supported methods are GET, HEAD, PUT and/or POST"

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v10, v12, v3

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/google/android/gms/internal/zzcwj;->zzbJd:Lcom/google/android/gms/internal/zzcwl;

    invoke-interface {v10, v8}, Lcom/google/android/gms/internal/zzcwl;->zzb(Lcom/google/android/gms/internal/zzcuw;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, 0x11336

    const/4 v11, 0x2

    if-eq v14, v15, :cond_9

    const v15, 0x136ef

    if-eq v14, v15, :cond_8

    const v15, 0x21c5e0

    if-eq v14, v15, :cond_7

    const v15, 0x2590a0

    if-eq v14, v15, :cond_6

    goto :goto_5

    :cond_6
    const-string v14, "POST"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x2

    goto :goto_6

    :cond_7
    const-string v14, "HEAD"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    goto :goto_6

    :cond_8
    const-string v14, "PUT"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x3

    goto :goto_6

    :cond_9
    const-string v14, "GET"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v14, -0x1

    :goto_6
    packed-switch v14, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    invoke-virtual {v13, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz v12, :cond_c

    invoke-virtual {v13, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v11, "UTF-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    array-length v12, v11

    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v12, v11}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_7

    :pswitch_1
    if-eqz v12, :cond_b

    const-string v14, "Body of %s hit is ignored: %s."

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v3

    aput-object v12, v11, v4

    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v13, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_c
    :goto_7
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x27

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Bad response received for "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_8
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_d
    const-string v11, "Error Message: "

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_e
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-static {v10}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    iget-object v10, v1, Lcom/google/android/gms/internal/zzcwj;->zzbJd:Lcom/google/android/gms/internal/zzcwl;

    invoke-interface {v10, v8}, Lcom/google/android/gms/internal/zzcwl;->zzc(Lcom/google/android/gms/internal/zzcuw;)V

    const/4 v14, 0x0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v10, v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v10, v0

    const/4 v14, 0x0

    :goto_a
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    :cond_f
    throw v10

    :cond_10
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x17

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v12, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Hit sent to "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(method = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/google/android/gms/internal/zzcwj;->zzbJd:Lcom/google/android/gms/internal/zzcwl;

    invoke-interface {v10, v8}, Lcom/google/android/gms/internal/zzcwl;->zza(Lcom/google/android/gms/internal/zzcuw;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_b
    if-eqz v14, :cond_3

    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    move v10, v6

    goto/16 :goto_1

    :goto_c
    if-eqz v14, :cond_11

    :try_start_9
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_e

    :cond_11
    :goto_d
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_1
    move-exception v0

    move v10, v6

    :goto_e
    move-object v6, v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1b

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Exception sending hit to "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/zzcwj;->zzbJd:Lcom/google/android/gms/internal/zzcwl;

    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/zzcwl;->zzc(Lcom/google/android/gms/internal/zzcuw;)V

    move v6, v10

    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
