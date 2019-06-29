.class public Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Lcom/androidnetworking/common/RequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnetworking/common/ANRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostRequestBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/androidnetworking/common/RequestBuilder;"
    }
.end annotation


# instance fields
.field private mApplicationJsonString:Ljava/lang/String;

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

.field private mCustomContentType:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFile:Ljava/io/File;

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

.field private mMethod:I

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

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

.field private mPriority:Lcom/androidnetworking/common/Priority;

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

.field private mStringBody:Ljava/lang/String;

.field private mTag:Ljava/lang/Object;

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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    sget-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    const/4 v0, 0x1

    .line 1149
    iput v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mMethod:I

    const/4 v1, 0x0

    .line 1152
    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mApplicationJsonString:Ljava/lang/String;

    .line 1153
    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mStringBody:Ljava/lang/String;

    .line 1154
    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mByte:[B

    .line 1155
    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mFile:Ljava/io/File;

    .line 1156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 1157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    .line 1158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 1159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 1168
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUrl:Ljava/lang/String;

    .line 1169
    iput v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mMethod:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    sget-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    const/4 v0, 0x1

    .line 1149
    iput v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mMethod:I

    const/4 v0, 0x0

    .line 1152
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mApplicationJsonString:Ljava/lang/String;

    .line 1153
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mStringBody:Ljava/lang/String;

    .line 1154
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mByte:[B

    .line 1155
    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mFile:Ljava/io/File;

    .line 1156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 1157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    .line 1158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 1159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 1173
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUrl:Ljava/lang/String;

    .line 1174
    iput p2, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mMethod:I

    return-void
.end method

.method static synthetic access$1500(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)I
    .locals 0

    .line 1146
    iget p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mMethod:I

    return p0
.end method

.method static synthetic access$1600(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Lcom/androidnetworking/common/Priority;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/Object;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mApplicationJsonString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mStringBody:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/io/File;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)[B
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mByte:[B

    return-object p0
.end method

.method static synthetic access$2800(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Lokhttp3/CacheControl;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mCustomContentType:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addApplicationJsonBody(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1372
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v0

    .line 1373
    invoke-virtual {v0, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mApplicationJsonString:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public addBodyParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    .line 1342
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 1343
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1341
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1328
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addByteBody([B)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 1403
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mByte:[B

    return-object p0
.end method

.method public addFileBody(Ljava/io/File;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .line 1398
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1273
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v0

    .line 1274
    invoke-virtual {v0, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1272
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1248
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 1250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1254
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1262
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addJSONArrayBody(Lorg/json/JSONArray;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1387
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mApplicationJsonString:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public addJSONObjectBody(Lorg/json/JSONObject;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1380
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mApplicationJsonString:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 1240
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 1241
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1239
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1224
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1216
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v0

    .line 1217
    invoke-virtual {v0, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1215
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1197
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1205
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addStringBody(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1393
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mStringBody:Ljava/lang/String;

    return-object p0
.end method

.method public addUrlEncodeFormBodyParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 1363
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 1364
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1362
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addUrlEncodeFormBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1349
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public build()Lcom/androidnetworking/common/ANRequest;
    .locals 1

    .line 1413
    new-instance v0, Lcom/androidnetworking/common/ANRequest;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest;-><init>(Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1281
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 1146
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->doNotCacheResponse()Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1293
    sget-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 1146
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->getResponseOnlyFromNetwork()Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1287
    sget-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 1146
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->getResponseOnlyIfCached()Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1408
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mCustomContentType:Ljava/lang/String;

    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 1311
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 1299
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lokhttp3/CacheControl$Builder;->maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 1305
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            ")TT;"
        }
    .end annotation

    .line 1317
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public bridge synthetic setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidnetworking/common/Priority;",
            ")TT;"
        }
    .end annotation

    .line 1179
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1185
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1323
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    return-object p1
.end method
