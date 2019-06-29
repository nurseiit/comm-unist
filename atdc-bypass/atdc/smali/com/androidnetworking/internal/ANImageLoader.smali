.class public Lcom/androidnetworking/internal/ANImageLoader;
.super Ljava/lang/Object;
.source "ANImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;,
        Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;,
        Lcom/androidnetworking/internal/ANImageLoader$ImageListener;,
        Lcom/androidnetworking/internal/ANImageLoader$ImageCache;
    }
.end annotation


# static fields
.field private static final cacheSize:I

.field private static final maxMemory:I

.field private static sInstance:Lcom/androidnetworking/internal/ANImageLoader;


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mCache:Lcom/androidnetworking/internal/ANImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/androidnetworking/internal/ANImageLoader;->maxMemory:I

    .line 46
    sget v0, Lcom/androidnetworking/internal/ANImageLoader;->maxMemory:I

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/androidnetworking/internal/ANImageLoader;->cacheSize:I

    return-void
.end method

.method public constructor <init>(Lcom/androidnetworking/internal/ANImageLoader$ImageCache;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 48
    iput v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mBatchResponseDelayMs:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 92
    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader;->mCache:Lcom/androidnetworking/internal/ANImageLoader$ImageCache;

    return-void
.end method

.method static synthetic access$100(Lcom/androidnetworking/internal/ANImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/androidnetworking/internal/ANImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$602(Lcom/androidnetworking/internal/ANImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 334
    new-instance p1, Lcom/androidnetworking/internal/ANImageLoader$3;

    invoke-direct {p1, p0}, Lcom/androidnetworking/internal/ANImageLoader$3;-><init>(Lcom/androidnetworking/internal/ANImageLoader;)V

    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader;->mRunnable:Ljava/lang/Runnable;

    .line 355
    iget-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/androidnetworking/internal/ANImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mBatchResponseDelayMs:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "#H"

    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "#S"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImageListener(Landroid/widget/ImageView;II)Lcom/androidnetworking/internal/ANImageLoader$ImageListener;
    .locals 1

    .line 102
    new-instance v0, Lcom/androidnetworking/internal/ANImageLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/androidnetworking/internal/ANImageLoader$1;-><init>(Landroid/widget/ImageView;II)V

    return-object v0
.end method

.method public static getInstance()Lcom/androidnetworking/internal/ANImageLoader;
    .locals 4

    .line 71
    sget-object v0, Lcom/androidnetworking/internal/ANImageLoader;->sInstance:Lcom/androidnetworking/internal/ANImageLoader;

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcom/androidnetworking/internal/ANImageLoader;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/androidnetworking/internal/ANImageLoader;->sInstance:Lcom/androidnetworking/internal/ANImageLoader;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/androidnetworking/internal/ANImageLoader;

    new-instance v2, Lcom/androidnetworking/cache/LruBitmapCache;

    sget v3, Lcom/androidnetworking/internal/ANImageLoader;->cacheSize:I

    invoke-direct {v2, v3}, Lcom/androidnetworking/cache/LruBitmapCache;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/androidnetworking/internal/ANImageLoader;-><init>(Lcom/androidnetworking/internal/ANImageLoader$ImageCache;)V

    sput-object v1, Lcom/androidnetworking/internal/ANImageLoader;->sInstance:Lcom/androidnetworking/internal/ANImageLoader;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_1
    :goto_0
    sget-object v0, Lcom/androidnetworking/internal/ANImageLoader;->sInstance:Lcom/androidnetworking/internal/ANImageLoader;

    return-object v0
.end method

.method public static initialize()V
    .locals 0

    .line 67
    invoke-static {}, Lcom/androidnetworking/internal/ANImageLoader;->getInstance()Lcom/androidnetworking/internal/ANImageLoader;

    return-void
.end method

.method private throwIfNotOnMainThread()V
    .locals 2

    .line 360
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$ImageListener;)Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/androidnetworking/internal/ANImageLoader;->get(Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$ImageListener;II)Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$ImageListener;II)Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;
    .locals 6

    .line 147
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidnetworking/internal/ANImageLoader;->get(Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p2

    .line 154
    invoke-direct {v6}, Lcom/androidnetworking/internal/ANImageLoader;->throwIfNotOnMainThread()V

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    .line 156
    invoke-static {v8, v9, v10, v11}, Lcom/androidnetworking/internal/ANImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v12

    .line 158
    iget-object v0, v6, Lcom/androidnetworking/internal/ANImageLoader;->mCache:Lcom/androidnetworking/internal/ANImageLoader$ImageCache;

    invoke-interface {v0, v12}, Lcom/androidnetworking/internal/ANImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    .line 160
    new-instance v9, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, v6

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;-><init>(Lcom/androidnetworking/internal/ANImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$ImageListener;)V

    .line 161
    invoke-interface {v7, v9, v13}, Lcom/androidnetworking/internal/ANImageLoader$ImageListener;->onResponse(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;Z)V

    return-object v9

    .line 165
    :cond_0
    new-instance v14, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    const/4 v2, 0x0

    move-object v0, v14

    move-object v1, v6

    move-object v3, v8

    move-object v4, v12

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;-><init>(Lcom/androidnetworking/internal/ANImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$ImageListener;)V

    .line 168
    invoke-interface {v7, v14, v13}, Lcom/androidnetworking/internal/ANImageLoader$ImageListener;->onResponse(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;Z)V

    .line 170
    iget-object v0, v6, Lcom/androidnetworking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0, v14}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->addContainer(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)V

    return-object v14

    :cond_1
    move-object v0, v6

    move-object v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcom/androidnetworking/internal/ANImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest;

    move-result-object v0

    .line 179
    iget-object v1, v6, Lcom/androidnetworking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v2, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;

    invoke-direct {v2, v6, v0, v14}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;-><init>(Lcom/androidnetworking/internal/ANImageLoader;Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)V

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v14
.end method

.method public getImageCache()Lcom/androidnetworking/internal/ANImageLoader$ImageCache;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mCache:Lcom/androidnetworking/internal/ANImageLoader$ImageCache;

    return-object v0
.end method

.method public isCached(Ljava/lang/String;II)Z
    .locals 1

    .line 129
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/androidnetworking/internal/ANImageLoader;->isCached(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z

    move-result p1

    return p1
.end method

.method public isCached(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/androidnetworking/internal/ANImageLoader;->throwIfNotOnMainThread()V

    .line 136
    invoke-static {p1, p2, p3, p4}, Lcom/androidnetworking/internal/ANImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/androidnetworking/internal/ANImageLoader;->mCache:Lcom/androidnetworking/internal/ANImageLoader$ImageCache;

    invoke-interface {p2, p1}, Lcom/androidnetworking/internal/ANImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest;
    .locals 1

    .line 186
    invoke-static {p1}, Lcom/androidnetworking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    const-string v0, "ImageRequestTag"

    .line 187
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    .line 188
    invoke-virtual {p1, p3}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setBitmapMaxHeight(I)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    .line 189
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setBitmapMaxWidth(I)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    .line 190
    invoke-virtual {p1, p4}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 191
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/androidnetworking/internal/ANImageLoader;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 192
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setBitmapOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object p1

    .line 195
    new-instance p2, Lcom/androidnetworking/internal/ANImageLoader$2;

    invoke-direct {p2, p0, p5}, Lcom/androidnetworking/internal/ANImageLoader$2;-><init>(Lcom/androidnetworking/internal/ANImageLoader;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest;->getAsBitmap(Lcom/androidnetworking/interfaces/BitmapRequestListener;)V

    return-object p1
.end method

.method protected onGetImageError(Ljava/lang/String;Lcom/androidnetworking/error/ANError;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p2}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->setError(Lcom/androidnetworking/error/ANError;)V

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/androidnetworking/internal/ANImageLoader;->batchResponse(Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;)V

    :cond_0
    return-void
.end method

.method protected onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mCache:Lcom/androidnetworking/internal/ANImageLoader$ImageCache;

    invoke-interface {v0, p1, p2}, Lcom/androidnetworking/internal/ANImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 222
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    .line 225
    invoke-static {v0, p2}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->access$002(Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/androidnetworking/internal/ANImageLoader;->batchResponse(Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;)V

    :cond_0
    return-void
.end method

.method public setBatchedResponseDelay(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/androidnetworking/internal/ANImageLoader;->mBatchResponseDelayMs:I

    return-void
.end method

.method public setBitmapDecodeOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method
