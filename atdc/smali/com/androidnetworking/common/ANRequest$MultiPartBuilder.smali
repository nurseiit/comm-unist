.class public Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
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
    name = "MultiPartBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/androidnetworking/common/RequestBuilder;"
    }
.end annotation


# instance fields
.field private mCacheControl:Lokhttp3/CacheControl;

.field private mCustomContentType:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;

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

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1601
    sget-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    .line 1604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 1605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 1606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 1608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mMultiPartFileMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 1610
    iput v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPercentageThresholdForCancelling:I

    .line 1617
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4600(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Lcom/androidnetworking/common/Priority;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/lang/Object;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mHeadersMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPathParameterMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mMultiPartParameterMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mMultiPartFileMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Lokhttp3/CacheControl;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)I
    .locals 0

    .line 1599
    iget p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPercentageThresholdForCancelling:I

    return p0
.end method

.method static synthetic access$5600(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)Ljava/lang/String;
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mCustomContentType:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1716
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v0

    .line 1717
    invoke-virtual {v0, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1715
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1691
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 1693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1694
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1697
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
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

    .line 1705
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

    .line 1706
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addMultipartFile(Ljava/lang/String;Ljava/io/File;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .line 1792
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mMultiPartFileMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addMultipartFile(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mMultiPartFileMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addMultipartParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 1785
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 1786
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1784
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1771
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mMultiPartParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addMultipartParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
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

    .line 1777
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mMultiPartParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 1683
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 1684
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1682
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1667
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
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

    .line 1674
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1659
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v0

    .line 1660
    invoke-virtual {v0, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1658
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1634
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 1636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1637
    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1640
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
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

    .line 1648
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

    .line 1649
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/androidnetworking/common/ANRequest;
    .locals 1

    .line 1814
    new-instance v0, Lcom/androidnetworking/common/ANRequest;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest;-><init>(Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1724
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 1599
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->doNotCacheResponse()Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1736
    sget-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 1599
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->getResponseOnlyFromNetwork()Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1730
    sget-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 1599
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->getResponseOnlyIfCached()Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1809
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mCustomContentType:Ljava/lang/String;

    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 1754
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 1742
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lokhttp3/CacheControl$Builder;->maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 1748
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            ")TT;"
        }
    .end annotation

    .line 1760
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public bridge synthetic setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPercentageThresholdForCancelling(I)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1804
    iput p1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPercentageThresholdForCancelling:I

    return-object p0
.end method

.method public setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidnetworking/common/Priority;",
            ")TT;"
        }
    .end annotation

    .line 1622
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1628
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1766
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1599
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;->setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$MultiPartBuilder;

    move-result-object p1

    return-object p1
.end method
