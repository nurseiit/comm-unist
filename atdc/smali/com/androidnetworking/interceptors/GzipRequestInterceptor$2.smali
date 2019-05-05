.class Lcom/androidnetworking/interceptors/GzipRequestInterceptor$2;
.super Lokhttp3/RequestBody;
.source "GzipRequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/interceptors/GzipRequestInterceptor;->gzip(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/interceptors/GzipRequestInterceptor;

.field final synthetic val$body:Lokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lcom/androidnetworking/interceptors/GzipRequestInterceptor;Lokhttp3/RequestBody;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/androidnetworking/interceptors/GzipRequestInterceptor$2;->this$0:Lcom/androidnetworking/interceptors/GzipRequestInterceptor;

    iput-object p2, p0, Lcom/androidnetworking/interceptors/GzipRequestInterceptor$2;->val$body:Lokhttp3/RequestBody;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/androidnetworking/interceptors/GzipRequestInterceptor$2;->val$body:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lokio/GzipSink;

    invoke-direct {v0, p1}, Lokio/GzipSink;-><init>(Lokio/Sink;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/androidnetworking/interceptors/GzipRequestInterceptor$2;->val$body:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 88
    invoke-interface {p1}, Lokio/BufferedSink;->close()V

    return-void
.end method
