.class public Lcom/androidnetworking/AndroidNetworking;
.super Ljava/lang/Object;
.source "AndroidNetworking.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Ljava/lang/Object;)V
    .locals 2

    .line 223
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/androidnetworking/internal/ANRequestQueue;->cancelRequestWithGivenTag(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static cancelAll()V
    .locals 2

    .line 239
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidnetworking/internal/ANRequestQueue;->cancelAll(Z)V

    return-void
.end method

.method public static delete(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DeleteRequestBuilder;
    .locals 1

    .line 171
    new-instance v0, Lcom/androidnetworking/common/ANRequest$DeleteRequestBuilder;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest$DeleteRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1

    .line 193
    new-instance v0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static enableLogging()V
    .locals 1

    .line 253
    sget-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->BASIC:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->enableLogging(Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;)V

    return-void
.end method

.method public static enableLogging(Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;)V
    .locals 0

    .line 262
    invoke-static {p0}, Lcom/androidnetworking/internal/InternalNetworking;->enableLogging(Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;)V

    return-void
.end method

.method public static evictAllBitmap()V
    .locals 1

    .line 281
    invoke-static {}, Lcom/androidnetworking/internal/ANImageLoader;->getInstance()Lcom/androidnetworking/internal/ANImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/internal/ANImageLoader;->getImageCache()Lcom/androidnetworking/internal/ANImageLoader$ImageCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Lcom/androidnetworking/internal/ANImageLoader$ImageCache;->evictAllBitmap()V

    :cond_0
    return-void
.end method

.method public static evictBitmap(Ljava/lang/String;)V
    .locals 1

    .line 271
    invoke-static {}, Lcom/androidnetworking/internal/ANImageLoader;->getInstance()Lcom/androidnetworking/internal/ANImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/internal/ANImageLoader;->getImageCache()Lcom/androidnetworking/internal/ANImageLoader$ImageCache;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 273
    invoke-interface {v0, p0}, Lcom/androidnetworking/internal/ANImageLoader$ImageCache;->evictBitmap(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static forceCancel(Ljava/lang/Object;)V
    .locals 2

    .line 232
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/androidnetworking/internal/ANRequestQueue;->cancelRequestWithGivenTag(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static forceCancelAll()V
    .locals 2

    .line 246
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/androidnetworking/internal/ANRequestQueue;->cancelAll(Z)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1

    .line 121
    new-instance v0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentBandwidth()I
    .locals 1

    .line 302
    invoke-static {}, Lcom/androidnetworking/common/ConnectionClassManager;->getInstance()Lcom/androidnetworking/common/ConnectionClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/common/ConnectionClassManager;->getCurrentBandwidth()I

    move-result v0

    return v0
.end method

.method public static getCurrentConnectionQuality()Lcom/androidnetworking/common/ConnectionQuality;
    .locals 1

    .line 311
    invoke-static {}, Lcom/androidnetworking/common/ConnectionClassManager;->getInstance()Lcom/androidnetworking/common/ConnectionClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/common/ConnectionClassManager;->getCurrentConnectionQuality()Lcom/androidnetworking/common/ConnectionQuality;

    move-result-object v0

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$HeadRequestBuilder;
    .locals 1

    .line 131
    new-instance v0, Lcom/androidnetworking/common/ANRequest$HeadRequestBuilder;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest$HeadRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/androidnetworking/internal/InternalNetworking;->setClientWithCache(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->initialize()V

    .line 65
    invoke-static {}, Lcom/androidnetworking/internal/ANImageLoader;->initialize()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lokhttp3/OkHttpClient;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v0, 0xa00000

    const-string v1, "cache_an"

    invoke-static {p0, v0, v1}, Lcom/androidnetworking/utils/Utils;->getCache(Landroid/content/Context;ILjava/lang/String;)Lokhttp3/Cache;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 82
    :cond_0
    invoke-static {p1}, Lcom/androidnetworking/internal/InternalNetworking;->setClient(Lokhttp3/OkHttpClient;)V

    .line 83
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->initialize()V

    .line 84
    invoke-static {}, Lcom/androidnetworking/internal/ANImageLoader;->initialize()V

    return-void
.end method

.method public static isRequestRunning(Ljava/lang/Object;)Z
    .locals 1

    .line 330
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->isRequestRunning(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static options(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$OptionsRequestBuilder;
    .locals 1

    .line 141
    new-instance v0, Lcom/androidnetworking/common/ANRequest$OptionsRequestBuilder;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest$OptionsRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static patch(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PatchRequestBuilder;
    .locals 1

    .line 181
    new-instance v0, Lcom/androidnetworking/common/ANRequest$PatchRequestBuilder;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest$PatchRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1

    .line 151
    new-instance v0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PutRequestBuilder;
    .locals 1

    .line 161
    new-instance v0, Lcom/androidnetworking/common/ANRequest$PutRequestBuilder;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest$PutRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static removeConnectionQualityChangeListener()V
    .locals 1

    .line 111
    invoke-static {}, Lcom/androidnetworking/common/ConnectionClassManager;->getInstance()Lcom/androidnetworking/common/ConnectionClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/common/ConnectionClassManager;->removeListener()V

    return-void
.end method

.method public static request(Ljava/lang/String;I)Lcom/androidnetworking/common/ANRequest$DynamicRequestBuilder;
    .locals 1

    .line 214
    new-instance v0, Lcom/androidnetworking/common/ANRequest$DynamicRequestBuilder;

    invoke-direct {v0, p0, p1}, Lcom/androidnetworking/common/ANRequest$DynamicRequestBuilder;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static setBitmapDecodeOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 94
    invoke-static {}, Lcom/androidnetworking/internal/ANImageLoader;->getInstance()Lcom/androidnetworking/internal/ANImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/androidnetworking/internal/ANImageLoader;->setBitmapDecodeOptions(Landroid/graphics/BitmapFactory$Options;)V

    :cond_0
    return-void
.end method

.method public static setConnectionQualityChangeListener(Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;)V
    .locals 1

    .line 104
    invoke-static {}, Lcom/androidnetworking/common/ConnectionClassManager;->getInstance()Lcom/androidnetworking/common/ConnectionClassManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/androidnetworking/common/ConnectionClassManager;->setListener(Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;)V

    return-void
.end method

.method public static setParserFactory(Lcom/androidnetworking/interfaces/Parser$Factory;)V
    .locals 0

    .line 320
    invoke-static {p0}, Lcom/androidnetworking/utils/ParseUtil;->setParserFactory(Lcom/androidnetworking/interfaces/Parser$Factory;)V

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 293
    invoke-static {p0}, Lcom/androidnetworking/internal/InternalNetworking;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public static shutDown()V
    .locals 1

    .line 337
    invoke-static {}, Lcom/androidnetworking/core/Core;->shutDown()V

    .line 338
    invoke-static {}, Lcom/androidnetworking/AndroidNetworking;->evictAllBitmap()V

    .line 339
    invoke-static {}, Lcom/androidnetworking/common/ConnectionClassManager;->getInstance()Lcom/androidnetworking/common/ConnectionClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/common/ConnectionClassManager;->removeListener()V

    .line 340
    invoke-static {}, Lcom/androidnetworking/common/ConnectionClassManager;->shutDown()V

    .line 341
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->shutDown()V

    return-void
.end method

.method public static upload(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1

    .line 203
    new-instance v0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
