.class Lcom/androidnetworking/interceptors/GzipRequestInterceptor$1;
.super Lokhttp3/RequestBody;
.source "GzipRequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/interceptors/GzipRequestInterceptor;->forceContentLength(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/interceptors/GzipRequestInterceptor;

.field final synthetic val$buffer:Lokio/Buffer;

.field final synthetic val$requestBody:Lokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lcom/androidnetworking/interceptors/GzipRequestInterceptor;Lokhttp3/RequestBody;Lokio/Buffer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/androidnetworking/interceptors/GzipRequestInterceptor$1;->this$0:Lcom/androidnetworking/interceptors/GzipRequestInterceptor;

    iput-object p2, p0, Lcom/androidnetworking/interceptors/GzipRequestInterceptor$1;->val$requestBody:Lokhttp3/RequestBody;

    iput-object p3, p0, Lcom/androidnetworking/interceptors/GzipRequestInterceptor$1;->val$buffer:Lokio/Buffer;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/androidnetworking/interceptors/GzipRequestInterceptor$1;->val$buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/androidnetworking/interceptors/GzipRequestInterceptor$1;->val$requestBody:Lokhttp3/RequestBody;

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

    .line 66
    iget-object v0, p0, Lcom/androidnetworking/interceptors/GzipRequestInterceptor$1;->val$buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    return-void
.end method
