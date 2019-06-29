.class public interface abstract Lcom/androidnetworking/common/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# virtual methods
.method public abstract addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/androidnetworking/common/RequestBuilder;"
        }
    .end annotation
.end method

.method public abstract addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/androidnetworking/common/RequestBuilder;"
        }
    .end annotation
.end method

.method public abstract addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/androidnetworking/common/RequestBuilder;"
        }
    .end annotation
.end method

.method public abstract doNotCacheResponse()Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract getResponseOnlyFromNetwork()Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract getResponseOnlyIfCached()Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
.end method

.method public abstract setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
.end method
