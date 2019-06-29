.class public final Lcom/androidnetworking/internal/InternalNetworking;
.super Ljava/lang/Object;
.source "InternalNetworking.java"


# static fields
.field public static sHttpClient:Lokhttp3/OkHttpClient;

.field public static sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/androidnetworking/internal/InternalNetworking;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHeadersToRequestBuilder(Lokhttp3/Request$Builder;Lcom/androidnetworking/common/ANRequest;)V
    .locals 2

    .line 273
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "User-Agent"

    .line 274
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 275
    :cond_0
    sget-object v0, Lcom/androidnetworking/internal/InternalNetworking;->sUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 276
    sget-object v0, Lcom/androidnetworking/internal/InternalNetworking;->sUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest;->setUserAgent(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    .line 277
    sget-object v1, Lcom/androidnetworking/internal/InternalNetworking;->sUserAgent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 279
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 282
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "User-Agent"

    .line 283
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_2
    return-void
.end method

.method public static enableLogging(Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;)V
    .locals 1

    .line 314
    new-instance v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;

    invoke-direct {v0}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;-><init>()V

    .line 315
    invoke-virtual {v0, p0}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->setLevel(Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;)Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;

    .line 316
    invoke-static {}, Lcom/androidnetworking/internal/InternalNetworking;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    .line 317
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 318
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 266
    sget-object v0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Lcom/androidnetworking/internal/InternalNetworking;->getDefaultClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    sget-object v0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static getDefaultClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 289
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    .line 290
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 291
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 292
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static performDownloadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidnetworking/error/ANError;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 151
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 152
    invoke-static {v2, v1}, Lcom/androidnetworking/internal/InternalNetworking;->addHeadersToRequestBuilder(Lokhttp3/Request$Builder;Lcom/androidnetworking/common/ANRequest;)V

    .line 153
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 157
    :cond_0
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    sget-object v4, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/androidnetworking/internal/InternalNetworking$1;

    invoke-direct {v4, v1}, Lcom/androidnetworking/internal/InternalNetworking$1;-><init>(Lcom/androidnetworking/common/ANRequest;)V

    .line 163
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    goto :goto_0

    .line 174
    :cond_1
    sget-object v3, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/androidnetworking/internal/InternalNetworking$2;

    invoke-direct {v4, v1}, Lcom/androidnetworking/internal/InternalNetworking$2;-><init>(Lcom/androidnetworking/common/ANRequest;)V

    .line 175
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 186
    :goto_0
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidnetworking/common/ANRequest;->setCall(Lokhttp3/Call;)V

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 188
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCall()Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getDirPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/androidnetworking/utils/Utils;->saveFile(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long v11, v7, v2

    .line 192
    invoke-virtual {v6}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v2

    if-nez v2, :cond_4

    .line 193
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v9, v4, v7

    if-eqz v9, :cond_3

    cmp-long v9, v2, v7

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    sub-long v7, v2, v4

    goto :goto_2

    .line 196
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    .line 200
    :goto_2
    invoke-static {}, Lcom/androidnetworking/common/ConnectionClassManager;->getInstance()Lcom/androidnetworking/common/ConnectionClassManager;

    move-result-object v2

    invoke-virtual {v2, v7, v8, v11, v12}, Lcom/androidnetworking/common/ConnectionClassManager;->updateBandwidth(JJ)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v10

    const-wide/16 v13, -0x1

    .line 202
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v15

    const/16 v17, 0x0

    .line 201
    invoke-static/range {v10 .. v17}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V

    goto :goto_3

    .line 203
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v10

    const-wide/16 v13, -0x1

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    invoke-static/range {v10 .. v17}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    return-object v6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 208
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 210
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 213
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    :cond_6
    :goto_4
    new-instance v1, Lcom/androidnetworking/error/ANError;

    invoke-direct {v1, v2}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static performSimpleRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidnetworking/error/ANError;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 68
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 69
    invoke-static {v2, v1}, Lcom/androidnetworking/internal/InternalNetworking;->addHeadersToRequestBuilder(Lokhttp3/Request$Builder;Lcom/androidnetworking/common/ANRequest;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getMethod()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "OPTIONS"

    .line 96
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v4

    .line 101
    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v2

    goto :goto_0

    .line 87
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    goto :goto_0

    .line 82
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v4

    .line 83
    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    goto :goto_0

    .line 77
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v4

    .line 78
    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    goto :goto_0

    .line 73
    :pswitch_6
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 105
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 108
    :cond_0
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    sget-object v5, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v5

    invoke-virtual {v3, v5}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidnetworking/common/ANRequest;->setCall(Lokhttp3/Call;)V

    goto :goto_1

    .line 113
    :cond_1
    sget-object v3, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidnetworking/common/ANRequest;->setCall(Lokhttp3/Call;)V

    .line 115
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 116
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v5

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCall()Lokhttp3/Call;

    move-result-object v7

    invoke-interface {v7}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long v12, v8, v2

    .line 119
    invoke-virtual {v7}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v2

    const-wide/16 v8, 0x0

    const-wide/16 v10, -0x1

    if-nez v2, :cond_5

    .line 120
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    cmp-long v14, v5, v10

    if-eqz v14, :cond_3

    cmp-long v14, v2, v10

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    sub-long v14, v2, v5

    goto :goto_3

    .line 123
    :cond_3
    :goto_2
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v14

    .line 127
    :goto_3
    invoke-static {}, Lcom/androidnetworking/common/ConnectionClassManager;->getInstance()Lcom/androidnetworking/common/ConnectionClassManager;

    move-result-object v2

    invoke-virtual {v2, v14, v15, v12, v13}, Lcom/androidnetworking/common/ConnectionClassManager;->updateBandwidth(JJ)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v1

    if-eqz v4, :cond_4

    .line 130
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    cmp-long v5, v2, v8

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    move-wide v14, v2

    goto :goto_4

    :cond_4
    move-wide v14, v10

    .line 131
    :goto_4
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v11, v1

    .line 128
    invoke-static/range {v11 .. v18}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V

    goto :goto_6

    .line 132
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 133
    invoke-virtual {v7}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v2

    if-nez v2, :cond_6

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v11

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    invoke-static/range {v11 .. v18}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V

    goto :goto_6

    .line 136
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v1

    if-eqz v4, :cond_7

    .line 137
    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    cmp-long v5, v2, v8

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    move-wide v14, v2

    goto :goto_5

    :cond_7
    move-wide v14, v10

    :goto_5
    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    move-object v11, v1

    .line 136
    invoke-static/range {v11 .. v18}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_6
    return-object v7

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 142
    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static performUploadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidnetworking/error/ANError;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 225
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 226
    invoke-static {v2, v1}, Lcom/androidnetworking/internal/InternalNetworking;->addHeadersToRequestBuilder(Lokhttp3/Request$Builder;Lcom/androidnetworking/common/ANRequest;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getMultiPartRequestBody()Lokhttp3/RequestBody;

    move-result-object v3

    .line 228
    invoke-virtual {v3}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    .line 229
    new-instance v4, Lcom/androidnetworking/internal/RequestProgressBody;

    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getUploadProgressListener()Lcom/androidnetworking/interfaces/UploadProgressListener;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/androidnetworking/internal/RequestProgressBody;-><init>(Lokhttp3/RequestBody;Lcom/androidnetworking/interfaces/UploadProgressListener;)V

    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 233
    :cond_0
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    sget-object v4, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    .line 237
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 239
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Lcom/androidnetworking/common/ANRequest;->setCall(Lokhttp3/Call;)V

    goto :goto_0

    .line 241
    :cond_1
    sget-object v3, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidnetworking/common/ANRequest;->setCall(Lokhttp3/Call;)V

    .line 243
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCall()Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v12

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long v14, v4, v2

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 247
    invoke-virtual {v12}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v2

    if-nez v2, :cond_2

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v4

    .line 249
    invoke-virtual {v12}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v5, v14

    .line 248
    invoke-static/range {v4 .. v11}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V

    goto :goto_3

    .line 251
    :cond_2
    invoke-virtual {v12}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v2

    if-nez v2, :cond_3

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v13

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    invoke-static/range {v13 .. v20}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V

    goto :goto_3

    .line 254
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v13

    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-eqz v3, :cond_4

    :goto_1
    move-wide/from16 v16, v7

    goto :goto_2

    :cond_4
    const-wide/16 v7, -0x1

    goto :goto_1

    :goto_2
    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    invoke-static/range {v13 .. v20}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    return-object v12

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 260
    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 310
    sput-object p0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static setClientWithCache(Landroid/content/Context;)V
    .locals 3

    .line 297
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-string v1, "cache_an"

    const/high16 v2, 0xa00000

    .line 298
    invoke-static {p0, v2, v1}, Lcom/androidnetworking/utils/Utils;->getCache(Landroid/content/Context;ILjava/lang/String;)Lokhttp3/Cache;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    .line 299
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 300
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 301
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 302
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 306
    sput-object p0, Lcom/androidnetworking/internal/InternalNetworking;->sUserAgent:Ljava/lang/String;

    return-void
.end method
