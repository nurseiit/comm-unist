.class final Lcom/androidnetworking/internal/InternalNetworking$1;
.super Ljava/lang/Object;
.source "InternalNetworking.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/internal/InternalNetworking;->performDownloadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$request:Lcom/androidnetworking/common/ANRequest;


# direct methods
.method constructor <init>(Lcom/androidnetworking/common/ANRequest;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/androidnetworking/internal/InternalNetworking$1;->val$request:Lcom/androidnetworking/common/ANRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/androidnetworking/internal/ResponseProgressBody;

    .line 168
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget-object v2, p0, Lcom/androidnetworking/internal/InternalNetworking$1;->val$request:Lcom/androidnetworking/common/ANRequest;

    .line 169
    invoke-virtual {v2}, Lcom/androidnetworking/common/ANRequest;->getDownloadProgressListener()Lcom/androidnetworking/interfaces/DownloadProgressListener;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/androidnetworking/internal/ResponseProgressBody;-><init>(Lokhttp3/ResponseBody;Lcom/androidnetworking/interfaces/DownloadProgressListener;)V

    .line 168
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
