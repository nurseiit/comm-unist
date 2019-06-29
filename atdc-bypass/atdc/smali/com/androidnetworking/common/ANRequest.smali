.class public Lcom/androidnetworking/common/ANRequest;
.super Ljava/lang/Object;
.source "ANRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;,
        Lcom/androidnetworking/common/ANRequest$DownloadBuilder;,
        Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;,
        Lcom/androidnetworking/common/ANRequest$DynamicRequestBuilder;,
        Lcom/androidnetworking/common/ANRequest$PatchRequestBuilder;,
        Lcom/androidnetworking/common/ANRequest$DeleteRequestBuilder;,
        Lcom/androidnetworking/common/ANRequest$PutRequestBuilder;,
        Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;,
        Lcom/androidnetworking/common/ANRequest$OptionsRequestBuilder;,
        Lcom/androidnetworking/common/ANRequest$HeadRequestBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidnetworking/common/ANRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final JSON_MEDIA_TYPE:Lokhttp3/MediaType;

.field private static final MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

.field private static final TAG:Ljava/lang/String; = "ANRequest"

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private call:Lokhttp3/Call;

.field private customMediaType:Lokhttp3/MediaType;

.field private future:Ljava/util/concurrent/Future;

.field private isCancelled:Z

.field private isDelivered:Z

.field private isRunning:Z

.field private mAnalyticsListener:Lcom/androidnetworking/interfaces/AnalyticsListener;

.field private mApplicationJsonString:Ljava/lang/String;

.field private mBitmapRequestListener:Lcom/androidnetworking/interfaces/BitmapRequestListener;

.field private mBodyParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mByte:[B

.field private mCacheControl:Lokhttp3/CacheControl;

.field private mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private mDirPath:Ljava/lang/String;

.field private mDownloadListener:Lcom/androidnetworking/interfaces/DownloadListener;

.field private mDownloadProgressListener:Lcom/androidnetworking/interfaces/DownloadProgressListener;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFile:Ljava/io/File;

.field private mFileName:Ljava/lang/String;

.field private mHeadersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mJSONArrayRequestListener:Lcom/androidnetworking/interfaces/JSONArrayRequestListener;

.field private mJSONObjectRequestListener:Lcom/androidnetworking/interfaces/JSONObjectRequestListener;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMethod:I

.field private mMultiPartFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiPartParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mOkHttpResponseAndBitmapRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndBitmapRequestListener;

.field private mOkHttpResponseAndJSONArrayRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

.field private mOkHttpResponseAndJSONObjectRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

.field private mOkHttpResponseAndParsedRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;

.field private mOkHttpResponseAndStringRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndStringRequestListener;

.field private mOkHttpResponseListener:Lcom/androidnetworking/interfaces/OkHttpResponseListener;

.field private mParsedRequestListener:Lcom/androidnetworking/interfaces/ParsedRequestListener;

.field private mPathParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPercentageThresholdForCancelling:I

.field private mPriority:Lcom/androidnetworking/common/Priority;

.field private mProgress:I

.field private mQueryParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRequestType:I

.field private mResponseType:Lcom/androidnetworking/common/ResponseType;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mStringBody:Ljava/lang/String;

.field private mStringRequestListener:Lcom/androidnetworking/interfaces/StringRequestListener;

.field private mTag:Ljava/lang/Object;

.field private mType:Ljava/lang/reflect/Type;

.field private mUploadProgressListener:Lcom/androidnetworking/interfaces/UploadProgressListener;

.field private mUrl:Ljava/lang/String;

.field private mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAgent:Ljava/lang/String;

.field private sequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    .line 103
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/androidnetworking/common/ANRequest;->JSON_MEDIA_TYPE:Lokhttp3/MediaType;

    const-string v0, "text/x-markdown; charset=utf-8"

    .line 105
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/androidnetworking/common/ANRequest;->MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/androidnetworking/common/ANRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mApplicationJsonString:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringBody:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mByte:[B

    .line 101
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mFile:Ljava/io/File;

    .line 106
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    const/4 v1, 0x0

    .line 115
    iput v1, p0, Lcom/androidnetworking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 136
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mCacheControl:Lokhttp3/CacheControl;

    .line 137
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 138
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 139
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    const/4 v0, 0x1

    .line 186
    iput v0, p0, Lcom/androidnetworking/common/ANRequest;->mRequestType:I

    .line 187
    iput v1, p0, Lcom/androidnetworking/common/ANRequest;->mMethod:I

    .line 188
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$3300(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Lcom/androidnetworking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPriority:Lcom/androidnetworking/common/Priority;

    .line 189
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$3400(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUrl:Ljava/lang/String;

    .line 190
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$3500(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mTag:Ljava/lang/Object;

    .line 191
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$3600(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mDirPath:Ljava/lang/String;

    .line 192
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$3700(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mFileName:Ljava/lang/String;

    .line 193
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$3800(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 194
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$3900(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 195
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$4000(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 196
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$4100(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mCacheControl:Lokhttp3/CacheControl;

    .line 197
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$4200(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)I

    move-result v0

    iput v0, p0, Lcom/androidnetworking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 198
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$4300(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 199
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$4400(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 200
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->access$4500(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mApplicationJsonString:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringBody:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mByte:[B

    .line 101
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mFile:Ljava/io/File;

    .line 106
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    const/4 v1, 0x0

    .line 115
    iput v1, p0, Lcom/androidnetworking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 136
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mCacheControl:Lokhttp3/CacheControl;

    .line 137
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 138
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 139
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 143
    iput v1, p0, Lcom/androidnetworking/common/ANRequest;->mRequestType:I

    .line 144
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$000(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/androidnetworking/common/ANRequest;->mMethod:I

    .line 145
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$100(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Lcom/androidnetworking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPriority:Lcom/androidnetworking/common/Priority;

    .line 146
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$200(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUrl:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$300(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mTag:Ljava/lang/Object;

    .line 148
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$400(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 149
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$500(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 150
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$600(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/androidnetworking/common/ANRequest;->mMaxHeight:I

    .line 151
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$700(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/androidnetworking/common/ANRequest;->mMaxWidth:I

    .line 152
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$800(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 153
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$900(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 154
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$1000(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 155
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$1100(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mCacheControl:Lokhttp3/CacheControl;

    .line 156
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$1200(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 157
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$1300(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 158
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->access$1400(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)V
    .locals 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mApplicationJsonString:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringBody:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mByte:[B

    .line 101
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mFile:Ljava/io/File;

    .line 106
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    const/4 v1, 0x0

    .line 115
    iput v1, p0, Lcom/androidnetworking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 136
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mCacheControl:Lokhttp3/CacheControl;

    .line 137
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 138
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 139
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    const/4 v0, 0x2

    .line 204
    iput v0, p0, Lcom/androidnetworking/common/ANRequest;->mRequestType:I

    const/4 v0, 0x1

    .line 205
    iput v0, p0, Lcom/androidnetworking/common/ANRequest;->mMethod:I

    .line 206
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$4600(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Lcom/androidnetworking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPriority:Lcom/androidnetworking/common/Priority;

    .line 207
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$4700(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUrl:Ljava/lang/String;

    .line 208
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$4800(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mTag:Ljava/lang/Object;

    .line 209
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$4900(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 210
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5000(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 211
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5100(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 212
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5200(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 213
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5300(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 214
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5400(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mCacheControl:Lokhttp3/CacheControl;

    .line 215
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5500(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)I

    move-result v0

    iput v0, p0, Lcom/androidnetworking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 216
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5600(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 217
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5700(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 218
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5800(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 219
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5900(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->access$5900(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mApplicationJsonString:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringBody:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mByte:[B

    .line 101
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mFile:Ljava/io/File;

    .line 106
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    const/4 v1, 0x0

    .line 115
    iput v1, p0, Lcom/androidnetworking/common/ANRequest;->mPercentageThresholdForCancelling:I

    .line 136
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mCacheControl:Lokhttp3/CacheControl;

    .line 137
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 138
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 139
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 162
    iput v1, p0, Lcom/androidnetworking/common/ANRequest;->mRequestType:I

    .line 163
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$1500(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/androidnetworking/common/ANRequest;->mMethod:I

    .line 164
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$1600(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Lcom/androidnetworking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPriority:Lcom/androidnetworking/common/Priority;

    .line 165
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$1700(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUrl:Ljava/lang/String;

    .line 166
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$1800(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mTag:Ljava/lang/Object;

    .line 167
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$1900(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    .line 168
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$2000(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    .line 169
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$2100(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 170
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$2200(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    .line 171
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$2300(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    .line 172
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$2400(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mApplicationJsonString:Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$2500(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringBody:Ljava/lang/String;

    .line 174
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$2600(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mFile:Ljava/io/File;

    .line 175
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$2700(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mByte:[B

    .line 176
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$2800(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mCacheControl:Lokhttp3/CacheControl;

    .line 177
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$2900(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    .line 178
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$3000(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 179
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$3100(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$3200(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->access$3200(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    :cond_0
    return-void
.end method

.method static synthetic access$6000(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/DownloadProgressListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest;->mDownloadProgressListener:Lcom/androidnetworking/interfaces/DownloadProgressListener;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/androidnetworking/common/ANRequest;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/androidnetworking/common/ANRequest;->isCancelled:Z

    return p0
.end method

.method static synthetic access$6200(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/DownloadListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest;->mDownloadListener:Lcom/androidnetworking/interfaces/DownloadListener;

    return-object p0
.end method

.method static synthetic access$6302(Lcom/androidnetworking/common/ANRequest;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/androidnetworking/common/ANRequest;->mProgress:I

    return p1
.end method

.method static synthetic access$6400(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/UploadProgressListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest;->mUploadProgressListener:Lcom/androidnetworking/interfaces/UploadProgressListener;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/common/ANResponse;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/androidnetworking/common/ANRequest;->deliverSuccessResponse(Lcom/androidnetworking/common/ANResponse;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/OkHttpResponseListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseListener:Lcom/androidnetworking/interfaces/OkHttpResponseListener;

    return-object p0
.end method

.method private deliverErrorResponse(Lcom/androidnetworking/error/ANError;)V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mJSONObjectRequestListener:Lcom/androidnetworking/interfaces/JSONObjectRequestListener;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mJSONObjectRequestListener:Lcom/androidnetworking/interfaces/JSONObjectRequestListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/JSONObjectRequestListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto/16 :goto_0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mJSONArrayRequestListener:Lcom/androidnetworking/interfaces/JSONArrayRequestListener;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mJSONArrayRequestListener:Lcom/androidnetworking/interfaces/JSONArrayRequestListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/JSONArrayRequestListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto/16 :goto_0

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringRequestListener:Lcom/androidnetworking/interfaces/StringRequestListener;

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringRequestListener:Lcom/androidnetworking/interfaces/StringRequestListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/StringRequestListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mBitmapRequestListener:Lcom/androidnetworking/interfaces/BitmapRequestListener;

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mBitmapRequestListener:Lcom/androidnetworking/interfaces/BitmapRequestListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/BitmapRequestListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mParsedRequestListener:Lcom/androidnetworking/interfaces/ParsedRequestListener;

    if-eqz v0, :cond_4

    .line 758
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mParsedRequestListener:Lcom/androidnetworking/interfaces/ParsedRequestListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/ParsedRequestListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 759
    :cond_4
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseListener:Lcom/androidnetworking/interfaces/OkHttpResponseListener;

    if-eqz v0, :cond_5

    .line 760
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseListener:Lcom/androidnetworking/interfaces/OkHttpResponseListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 761
    :cond_5
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndJSONObjectRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

    if-eqz v0, :cond_6

    .line 762
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndJSONObjectRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONObjectRequestListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 763
    :cond_6
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndJSONArrayRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

    if-eqz v0, :cond_7

    .line 764
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndJSONArrayRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONArrayRequestListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 765
    :cond_7
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndStringRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndStringRequestListener;

    if-eqz v0, :cond_8

    .line 766
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndStringRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndStringRequestListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseAndStringRequestListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 767
    :cond_8
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndBitmapRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndBitmapRequestListener;

    if-eqz v0, :cond_9

    .line 768
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndBitmapRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndBitmapRequestListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseAndBitmapRequestListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 769
    :cond_9
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;

    if-eqz v0, :cond_a

    .line 770
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 771
    :cond_a
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mDownloadListener:Lcom/androidnetworking/interfaces/DownloadListener;

    if-eqz v0, :cond_b

    .line 772
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mDownloadListener:Lcom/androidnetworking/interfaces/DownloadListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/DownloadListener;->onError(Lcom/androidnetworking/error/ANError;)V

    :cond_b
    :goto_0
    return-void
.end method

.method private deliverSuccessResponse(Lcom/androidnetworking/common/ANResponse;)V
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mJSONObjectRequestListener:Lcom/androidnetworking/interfaces/JSONObjectRequestListener;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mJSONObjectRequestListener:Lcom/androidnetworking/interfaces/JSONObjectRequestListener;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/JSONObjectRequestListener;->onResponse(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mJSONArrayRequestListener:Lcom/androidnetworking/interfaces/JSONArrayRequestListener;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mJSONArrayRequestListener:Lcom/androidnetworking/interfaces/JSONArrayRequestListener;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/JSONArrayRequestListener;->onResponse(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringRequestListener:Lcom/androidnetworking/interfaces/StringRequestListener;

    if-eqz v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringRequestListener:Lcom/androidnetworking/interfaces/StringRequestListener;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/StringRequestListener;->onResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mBitmapRequestListener:Lcom/androidnetworking/interfaces/BitmapRequestListener;

    if-eqz v0, :cond_3

    .line 731
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mBitmapRequestListener:Lcom/androidnetworking/interfaces/BitmapRequestListener;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/BitmapRequestListener;->onResponse(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 732
    :cond_3
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mParsedRequestListener:Lcom/androidnetworking/interfaces/ParsedRequestListener;

    if-eqz v0, :cond_4

    .line 733
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mParsedRequestListener:Lcom/androidnetworking/interfaces/ParsedRequestListener;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/ParsedRequestListener;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 734
    :cond_4
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndJSONObjectRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

    if-eqz v0, :cond_5

    .line 735
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndJSONObjectRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getOkHttpResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-interface {v0, v1, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONObjectRequestListener;->onResponse(Lokhttp3/Response;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 736
    :cond_5
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndJSONArrayRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

    if-eqz v0, :cond_6

    .line 737
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndJSONArrayRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getOkHttpResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-interface {v0, v1, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONArrayRequestListener;->onResponse(Lokhttp3/Response;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 738
    :cond_6
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndStringRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndStringRequestListener;

    if-eqz v0, :cond_7

    .line 739
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndStringRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndStringRequestListener;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getOkHttpResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseAndStringRequestListener;->onResponse(Lokhttp3/Response;Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_7
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndBitmapRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndBitmapRequestListener;

    if-eqz v0, :cond_8

    .line 741
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndBitmapRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndBitmapRequestListener;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getOkHttpResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseAndBitmapRequestListener;->onResponse(Lokhttp3/Response;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 742
    :cond_8
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;

    if-eqz v0, :cond_9

    .line 743
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getOkHttpResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;->onResponse(Lokhttp3/Response;Ljava/lang/Object;)V

    .line 745
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->finish()V

    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 549
    :try_start_0
    iget p1, p0, Lcom/androidnetworking/common/ANRequest;->mPercentageThresholdForCancelling:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/androidnetworking/common/ANRequest;->mProgress:I

    iget v0, p0, Lcom/androidnetworking/common/ANRequest;->mPercentageThresholdForCancelling:I

    if-ge p1, v0, :cond_3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 551
    iput-boolean p1, p0, Lcom/androidnetworking/common/ANRequest;->isCancelled:Z

    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isRunning:Z

    .line 553
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->call:Lokhttp3/Call;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 559
    :cond_2
    iget-boolean p1, p0, Lcom/androidnetworking/common/ANRequest;->isDelivered:Z

    if-nez p1, :cond_3

    .line 560
    new-instance p1, Lcom/androidnetworking/error/ANError;

    invoke-direct {p1}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest;->deliverError(Lcom/androidnetworking/error/ANError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 564
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public declared-synchronized deliverError(Lcom/androidnetworking/error/ANError;)V
    .locals 1

    monitor-enter p0

    .line 679
    :try_start_0
    iget-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isDelivered:Z

    if-nez v0, :cond_1

    .line 680
    iget-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->setCancellationMessageInError()V

    const/4 v0, 0x0

    .line 682
    invoke-virtual {p1, v0}, Lcom/androidnetworking/error/ANError;->setErrorCode(I)V

    .line 684
    :cond_0
    invoke-direct {p0, p1}, Lcom/androidnetworking/common/ANRequest;->deliverErrorResponse(Lcom/androidnetworking/error/ANError;)V

    :cond_1
    const/4 p1, 0x1

    .line 686
    iput-boolean p1, p0, Lcom/androidnetworking/common/ANRequest;->isDelivered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 688
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    :goto_0
    monitor-exit p0

    return-void

    .line 678
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public deliverOkHttpResponse(Lokhttp3/Response;)V
    .locals 2

    const/4 v0, 0x1

    .line 778
    :try_start_0
    iput-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isDelivered:Z

    .line 779
    iget-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isCancelled:Z

    if-nez v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/androidnetworking/common/ANRequest$7;

    invoke-direct {v1, p0, p1}, Lcom/androidnetworking/common/ANRequest$7;-><init>(Lcom/androidnetworking/common/ANRequest;Lokhttp3/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 791
    :cond_0
    invoke-static {}, Lcom/androidnetworking/core/Core;->getInstance()Lcom/androidnetworking/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/core/Core;->getExecutorSupplier()Lcom/androidnetworking/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/androidnetworking/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/androidnetworking/common/ANRequest$8;

    invoke-direct {v1, p0, p1}, Lcom/androidnetworking/common/ANRequest$8;-><init>(Lcom/androidnetworking/common/ANRequest;Lokhttp3/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 801
    :cond_1
    new-instance p1, Lcom/androidnetworking/error/ANError;

    invoke-direct {p1}, Lcom/androidnetworking/error/ANError;-><init>()V

    .line 802
    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->setCancellationMessageInError()V

    const/4 v0, 0x0

    .line 803
    invoke-virtual {p1, v0}, Lcom/androidnetworking/error/ANError;->setErrorCode(I)V

    .line 804
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseListener:Lcom/androidnetworking/interfaces/OkHttpResponseListener;

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseListener:Lcom/androidnetworking/interfaces/OkHttpResponseListener;

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/OkHttpResponseListener;->onError(Lcom/androidnetworking/error/ANError;)V

    .line 807
    :cond_2
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 810
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deliverResponse(Lcom/androidnetworking/common/ANResponse;)V
    .locals 2

    const/4 v0, 0x1

    .line 695
    :try_start_0
    iput-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isDelivered:Z

    .line 696
    iget-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isCancelled:Z

    if-nez v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/androidnetworking/common/ANRequest$5;

    invoke-direct {v1, p0, p1}, Lcom/androidnetworking/common/ANRequest$5;-><init>(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/common/ANResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 705
    :cond_0
    invoke-static {}, Lcom/androidnetworking/core/Core;->getInstance()Lcom/androidnetworking/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/core/Core;->getExecutorSupplier()Lcom/androidnetworking/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/androidnetworking/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/androidnetworking/common/ANRequest$6;

    invoke-direct {v1, p0, p1}, Lcom/androidnetworking/common/ANRequest$6;-><init>(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/common/ANResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 712
    :cond_1
    new-instance p1, Lcom/androidnetworking/error/ANError;

    invoke-direct {p1}, Lcom/androidnetworking/error/ANError;-><init>()V

    .line 713
    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->setCancellationMessageInError()V

    const/4 v0, 0x0

    .line 714
    invoke-virtual {p1, v0}, Lcom/androidnetworking/error/ANError;->setErrorCode(I)V

    .line 715
    invoke-direct {p0, p1}, Lcom/androidnetworking/common/ANRequest;->deliverErrorResponse(Lcom/androidnetworking/error/ANError;)V

    .line 716
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 719
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 597
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mJSONArrayRequestListener:Lcom/androidnetworking/interfaces/JSONArrayRequestListener;

    .line 598
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mJSONObjectRequestListener:Lcom/androidnetworking/interfaces/JSONObjectRequestListener;

    .line 599
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringRequestListener:Lcom/androidnetworking/interfaces/StringRequestListener;

    .line 600
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mBitmapRequestListener:Lcom/androidnetworking/interfaces/BitmapRequestListener;

    .line 601
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mParsedRequestListener:Lcom/androidnetworking/interfaces/ParsedRequestListener;

    .line 602
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mDownloadProgressListener:Lcom/androidnetworking/interfaces/DownloadProgressListener;

    .line 603
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUploadProgressListener:Lcom/androidnetworking/interfaces/UploadProgressListener;

    .line 604
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mDownloadListener:Lcom/androidnetworking/interfaces/DownloadListener;

    .line 605
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mAnalyticsListener:Lcom/androidnetworking/interfaces/AnalyticsListener;

    return-void
.end method

.method public executeForBitmap()Lcom/androidnetworking/common/ANResponse;
    .locals 1

    .line 352
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->BITMAP:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 353
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->execute(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeForDownload()Lcom/androidnetworking/common/ANResponse;
    .locals 1

    .line 375
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->execute(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeForJSONArray()Lcom/androidnetworking/common/ANResponse;
    .locals 1

    .line 337
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->JSON_ARRAY:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 338
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->execute(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeForJSONObject()Lcom/androidnetworking/common/ANResponse;
    .locals 1

    .line 332
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->JSON_OBJECT:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 333
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->execute(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeForObject(Ljava/lang/Class;)Lcom/androidnetworking/common/ANResponse;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 364
    sget-object p1, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 365
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->execute(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1

    return-object p1
.end method

.method public executeForObjectList(Ljava/lang/Class;)Lcom/androidnetworking/common/ANResponse;
    .locals 3

    .line 369
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 370
    sget-object p1, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 371
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->execute(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1

    return-object p1
.end method

.method public executeForOkHttpResponse()Lcom/androidnetworking/common/ANResponse;
    .locals 1

    .line 347
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 348
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->execute(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeForParsed(Lcom/google/gson/reflect/TypeToken;)Lcom/androidnetworking/common/ANResponse;
    .locals 0

    .line 357
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 358
    sget-object p1, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 359
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->execute(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1

    return-object p1
.end method

.method public executeForString()Lcom/androidnetworking/common/ANResponse;
    .locals 1

    .line 342
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->STRING:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 343
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->execute(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->destroy()V

    .line 610
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->finish(Lcom/androidnetworking/common/ANRequest;)V

    return-void
.end method

.method public getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mAnalyticsListener:Lcom/androidnetworking/interfaces/AnalyticsListener;

    return-object v0
.end method

.method public getAsBitmap(Lcom/androidnetworking/interfaces/BitmapRequestListener;)V
    .locals 1

    .line 249
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->BITMAP:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 250
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mBitmapRequestListener:Lcom/androidnetworking/interfaces/BitmapRequestListener;

    .line 251
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsJSONArray(Lcom/androidnetworking/interfaces/JSONArrayRequestListener;)V
    .locals 1

    .line 231
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->JSON_ARRAY:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 232
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mJSONArrayRequestListener:Lcom/androidnetworking/interfaces/JSONArrayRequestListener;

    .line 233
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V
    .locals 1

    .line 225
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->JSON_OBJECT:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 226
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mJSONObjectRequestListener:Lcom/androidnetworking/interfaces/JSONObjectRequestListener;

    .line 227
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsObject(Ljava/lang/Class;Lcom/androidnetworking/interfaces/ParsedRequestListener;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 263
    sget-object p1, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 264
    iput-object p2, p0, Lcom/androidnetworking/common/ANRequest;->mParsedRequestListener:Lcom/androidnetworking/interfaces/ParsedRequestListener;

    .line 265
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsObjectList(Ljava/lang/Class;Lcom/androidnetworking/interfaces/ParsedRequestListener;)V
    .locals 3

    .line 269
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 270
    sget-object p1, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 271
    iput-object p2, p0, Lcom/androidnetworking/common/ANRequest;->mParsedRequestListener:Lcom/androidnetworking/interfaces/ParsedRequestListener;

    .line 272
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsOkHttpResponse(Lcom/androidnetworking/interfaces/OkHttpResponseListener;)V
    .locals 1

    .line 243
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 244
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseListener:Lcom/androidnetworking/interfaces/OkHttpResponseListener;

    .line 245
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsOkHttpResponseAndBitmap(Lcom/androidnetworking/interfaces/OkHttpResponseAndBitmapRequestListener;)V
    .locals 1

    .line 295
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->BITMAP:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 296
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndBitmapRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndBitmapRequestListener;

    .line 297
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsOkHttpResponseAndJSONArray(Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONArrayRequestListener;)V
    .locals 1

    .line 282
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->JSON_ARRAY:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 283
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndJSONArrayRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONArrayRequestListener;

    .line 284
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsOkHttpResponseAndJSONObject(Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONObjectRequestListener;)V
    .locals 1

    .line 276
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->JSON_OBJECT:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 277
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndJSONObjectRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndJSONObjectRequestListener;

    .line 278
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsOkHttpResponseAndObject(Ljava/lang/Class;Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 309
    sget-object p1, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 310
    iput-object p2, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;

    .line 311
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsOkHttpResponseAndObjectList(Ljava/lang/Class;Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;)V
    .locals 3

    .line 315
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 316
    sget-object p1, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 317
    iput-object p2, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;

    .line 318
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsOkHttpResponseAndParsed(Lcom/google/gson/reflect/TypeToken;Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;)V
    .locals 0

    .line 301
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 302
    sget-object p1, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 303
    iput-object p2, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndParsedRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;

    .line 304
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsOkHttpResponseAndString(Lcom/androidnetworking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 1

    .line 288
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->STRING:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 289
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpResponseAndStringRequestListener:Lcom/androidnetworking/interfaces/OkHttpResponseAndStringRequestListener;

    .line 290
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsParsed(Lcom/google/gson/reflect/TypeToken;Lcom/androidnetworking/interfaces/ParsedRequestListener;)V
    .locals 0

    .line 255
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 256
    sget-object p1, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 257
    iput-object p2, p0, Lcom/androidnetworking/common/ANRequest;->mParsedRequestListener:Lcom/androidnetworking/interfaces/ParsedRequestListener;

    .line 258
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getAsString(Lcom/androidnetworking/interfaces/StringRequestListener;)V
    .locals 1

    .line 237
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->STRING:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 238
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mStringRequestListener:Lcom/androidnetworking/interfaces/StringRequestListener;

    .line 239
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public getCacheControl()Lokhttp3/CacheControl;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mCacheControl:Lokhttp3/CacheControl;

    return-object v0
.end method

.method public getCall()Lokhttp3/Call;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->call:Lokhttp3/Call;

    return-object v0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadProgressListener()Lcom/androidnetworking/interfaces/DownloadProgressListener;
    .locals 1

    .line 475
    new-instance v0, Lcom/androidnetworking/common/ANRequest$1;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest$1;-><init>(Lcom/androidnetworking/common/ANRequest;)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getHeaders()Lokhttp3/Headers;
    .locals 5

    .line 876
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 878
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 880
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 881
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 882
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 884
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 885
    invoke-virtual {v0, v3, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 891
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 893
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/androidnetworking/common/ANRequest;->mMethod:I

    return v0
.end method

.method public getMultiPartRequestBody()Lokhttp3/RequestBody;
    .locals 11

    .line 852
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    if-nez v1, :cond_0

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    .line 854
    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartParameterMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 857
    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Content-Disposition"

    aput-object v6, v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "form-data; name=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 857
    invoke-static {v5}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v3

    const/4 v4, 0x0

    .line 859
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 857
    invoke-virtual {v0, v3, v2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_1

    .line 861
    :cond_1
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mMultiPartFileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 862
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 863
    invoke-static {v6}, Lcom/androidnetworking/utils/Utils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7

    .line 864
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 863
    invoke-static {v7, v8}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 865
    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "Content-Disposition"

    aput-object v9, v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "form-data; name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"; filename=\""

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v3

    .line 865
    invoke-static {v8}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 870
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 872
    :cond_2
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    return-object v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public getPriority()Lcom/androidnetworking/common/Priority;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mPriority:Lcom/androidnetworking/common/Priority;

    return-object v0
.end method

.method public getRequestBody()Lokhttp3/RequestBody;
    .locals 4

    .line 815
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mApplicationJsonString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mApplicationJsonString:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 819
    :cond_0
    sget-object v0, Lcom/androidnetworking/common/ANRequest;->JSON_MEDIA_TYPE:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mApplicationJsonString:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mStringBody:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 821
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_2

    .line 822
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mStringBody:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 824
    :cond_2
    sget-object v0, Lcom/androidnetworking/common/ANRequest;->MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mStringBody:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 825
    :cond_3
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mFile:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 826
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_4

    .line 827
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mFile:Ljava/io/File;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 829
    :cond_4
    sget-object v0, Lcom/androidnetworking/common/ANRequest;->MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mFile:Ljava/io/File;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 830
    :cond_5
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mByte:[B

    if-eqz v0, :cond_7

    .line 831
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_6

    .line 832
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->customMediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mByte:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 834
    :cond_6
    sget-object v0, Lcom/androidnetworking/common/ANRequest;->MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mByte:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 836
    :cond_7
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 839
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 841
    :cond_8
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 842
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 847
    :cond_9
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .line 451
    iget v0, p0, Lcom/androidnetworking/common/ANRequest;->mRequestType:I

    return v0
.end method

.method public getResponseAs()Lcom/androidnetworking/common/ResponseType;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/androidnetworking/common/ANRequest;->sequenceNumber:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUploadProgressListener()Lcom/androidnetworking/interfaces/UploadProgressListener;
    .locals 1

    .line 520
    new-instance v0, Lcom/androidnetworking/common/ANRequest$4;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest$4;-><init>(Lcom/androidnetworking/common/ANRequest;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUrl:Ljava/lang/String;

    .line 407
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_0
    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 413
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 414
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 415
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 417
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 418
    invoke-virtual {v0, v3, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_1

    .line 423
    :cond_2
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isCancelled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isRunning:Z

    return v0
.end method

.method public parseNetworkError(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;
    .locals 1

    .line 666
    :try_start_0
    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->getResponse()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->getResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->getResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->getResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    .line 668
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 669
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {p1, v0}, Lcom/androidnetworking/error/ANError;->setErrorBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 672
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p1
.end method

.method public parseResponse(Lokhttp3/Response;)Lcom/androidnetworking/common/ANResponse;
    .locals 5

    .line 614
    sget-object v0, Lcom/androidnetworking/common/ANRequest$9;->$SwitchMap$com$androidnetworking$common$ResponseType:[I

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    invoke-virtual {v1}, Lcom/androidnetworking/common/ResponseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 655
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    const-string p1, "prefetch"

    .line 656
    invoke-static {p1}, Lcom/androidnetworking/common/ANResponse;->success(Ljava/lang/Object;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 658
    new-instance v0, Lcom/androidnetworking/error/ANError;

    invoke-direct {v0, p1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/androidnetworking/utils/Utils;->getErrorForParse(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object p1

    invoke-static {p1}, Lcom/androidnetworking/common/ANResponse;->failed(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1

    return-object p1

    .line 648
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    .line 649
    invoke-virtual {v0, v1}, Lcom/androidnetworking/interfaces/Parser$Factory;->responseBodyParser(Ljava/lang/reflect/Type;)Lcom/androidnetworking/interfaces/Parser;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/androidnetworking/interfaces/Parser;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 648
    invoke-static {p1}, Lcom/androidnetworking/common/ANResponse;->success(Ljava/lang/Object;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 651
    new-instance v0, Lcom/androidnetworking/error/ANError;

    invoke-direct {v0, p1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/androidnetworking/utils/Utils;->getErrorForParse(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object p1

    invoke-static {p1}, Lcom/androidnetworking/common/ANResponse;->failed(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1

    return-object p1

    .line 638
    :pswitch_2
    sget-object v0, Lcom/androidnetworking/common/ANRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_2
    iget v1, p0, Lcom/androidnetworking/common/ANRequest;->mMaxWidth:I

    iget v2, p0, Lcom/androidnetworking/common/ANRequest;->mMaxHeight:I

    iget-object v3, p0, Lcom/androidnetworking/common/ANRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iget-object v4, p0, Lcom/androidnetworking/common/ANRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/androidnetworking/utils/Utils;->decodeBitmap(Lokhttp3/Response;IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 643
    new-instance v1, Lcom/androidnetworking/error/ANError;

    invoke-direct {v1, p1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/androidnetworking/utils/Utils;->getErrorForParse(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object p1

    invoke-static {p1}, Lcom/androidnetworking/common/ANResponse;->failed(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 645
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 633
    :pswitch_3
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    .line 632
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    .line 633
    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object p1

    .line 632
    invoke-static {p1}, Lcom/androidnetworking/common/ANResponse;->success(Ljava/lang/Object;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    .line 635
    new-instance v0, Lcom/androidnetworking/error/ANError;

    invoke-direct {v0, p1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/androidnetworking/utils/Utils;->getErrorForParse(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object p1

    invoke-static {p1}, Lcom/androidnetworking/common/ANResponse;->failed(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1

    return-object p1

    .line 624
    :pswitch_4
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    .line 625
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    .line 624
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    .line 625
    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 626
    invoke-static {v0}, Lcom/androidnetworking/common/ANResponse;->success(Ljava/lang/Object;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    return-object p1

    :catch_4
    move-exception p1

    .line 628
    new-instance v0, Lcom/androidnetworking/error/ANError;

    invoke-direct {v0, p1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/androidnetworking/utils/Utils;->getErrorForParse(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object p1

    invoke-static {p1}, Lcom/androidnetworking/common/ANResponse;->failed(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1

    return-object p1

    .line 617
    :pswitch_5
    :try_start_6
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-static {v0}, Lcom/androidnetworking/common/ANResponse;->success(Ljava/lang/Object;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 620
    new-instance v0, Lcom/androidnetworking/error/ANError;

    invoke-direct {v0, p1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/androidnetworking/utils/Utils;->getErrorForParse(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object p1

    invoke-static {p1}, Lcom/androidnetworking/common/ANResponse;->failed(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prefetch()V
    .locals 1

    .line 327
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->PREFETCH:Lcom/androidnetworking/common/ResponseType;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    .line 328
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public setAnalyticsListener(Lcom/androidnetworking/interfaces/AnalyticsListener;)Lcom/androidnetworking/common/ANRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidnetworking/interfaces/AnalyticsListener;",
            ")TT;"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mAnalyticsListener:Lcom/androidnetworking/interfaces/AnalyticsListener;

    return-object p0
.end method

.method public setCall(Lokhttp3/Call;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->call:Lokhttp3/Call;

    return-void
.end method

.method public setDownloadProgressListener(Lcom/androidnetworking/interfaces/DownloadProgressListener;)Lcom/androidnetworking/common/ANRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidnetworking/interfaces/DownloadProgressListener;",
            ")TT;"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mDownloadProgressListener:Lcom/androidnetworking/interfaces/DownloadProgressListener;

    return-object p0
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 435
    iput p1, p0, Lcom/androidnetworking/common/ANRequest;->mProgress:I

    return-void
.end method

.method public setResponseAs(Lcom/androidnetworking/common/ResponseType;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mResponseType:Lcom/androidnetworking/common/ResponseType;

    return-void
.end method

.method public setRunning(Z)V
    .locals 0

    .line 577
    iput-boolean p1, p0, Lcom/androidnetworking/common/ANRequest;->isRunning:Z

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 431
    iput p1, p0, Lcom/androidnetworking/common/ANRequest;->sequenceNumber:I

    return-void
.end method

.method public setType(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mType:Ljava/lang/reflect/Type;

    return-void
.end method

.method public setUploadProgressListener(Lcom/androidnetworking/interfaces/UploadProgressListener;)Lcom/androidnetworking/common/ANRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidnetworking/interfaces/UploadProgressListener;",
            ")TT;"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mUploadProgressListener:Lcom/androidnetworking/interfaces/UploadProgressListener;

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public startDownload(Lcom/androidnetworking/interfaces/DownloadListener;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest;->mDownloadListener:Lcom/androidnetworking/interfaces/DownloadListener;

    .line 323
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/androidnetworking/internal/ANRequestQueue;->addRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANRequest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANRequest{sequenceNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/androidnetworking/common/ANRequest;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/androidnetworking/common/ANRequest;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mPriority:Lcom/androidnetworking/common/Priority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/androidnetworking/common/ANRequest;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDownloadCompletion()V
    .locals 2

    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isDelivered:Z

    .line 487
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mDownloadListener:Lcom/androidnetworking/interfaces/DownloadListener;

    if-eqz v0, :cond_2

    .line 488
    iget-boolean v0, p0, Lcom/androidnetworking/common/ANRequest;->isCancelled:Z

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/androidnetworking/common/ANRequest$2;

    invoke-direct {v1, p0}, Lcom/androidnetworking/common/ANRequest$2;-><init>(Lcom/androidnetworking/common/ANRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-static {}, Lcom/androidnetworking/core/Core;->getInstance()Lcom/androidnetworking/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/core/Core;->getExecutorSupplier()Lcom/androidnetworking/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/androidnetworking/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/androidnetworking/common/ANRequest$3;

    invoke-direct {v1, p0}, Lcom/androidnetworking/common/ANRequest$3;-><init>(Lcom/androidnetworking/common/ANRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 511
    :cond_1
    new-instance v0, Lcom/androidnetworking/error/ANError;

    invoke-direct {v0}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidnetworking/common/ANRequest;->deliverError(Lcom/androidnetworking/error/ANError;)V

    .line 512
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->finish()V

    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->finish()V

    :goto_0
    return-void
.end method
