.class public Lcom/androidnetworking/internal/RequestProgressBody;
.super Lokhttp3/RequestBody;
.source "RequestProgressBody.java"


# instance fields
.field private bufferedSink:Lokio/BufferedSink;

.field private final requestBody:Lokhttp3/RequestBody;

.field private uploadProgressHandler:Lcom/androidnetworking/internal/UploadProgressHandler;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/androidnetworking/interfaces/UploadProgressListener;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/androidnetworking/internal/RequestProgressBody;->requestBody:Lokhttp3/RequestBody;

    if-eqz p2, :cond_0

    .line 45
    new-instance p1, Lcom/androidnetworking/internal/UploadProgressHandler;

    invoke-direct {p1, p2}, Lcom/androidnetworking/internal/UploadProgressHandler;-><init>(Lcom/androidnetworking/interfaces/UploadProgressListener;)V

    iput-object p1, p0, Lcom/androidnetworking/internal/RequestProgressBody;->uploadProgressHandler:Lcom/androidnetworking/internal/UploadProgressHandler;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/androidnetworking/internal/RequestProgressBody;)Lcom/androidnetworking/internal/UploadProgressHandler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/androidnetworking/internal/RequestProgressBody;->uploadProgressHandler:Lcom/androidnetworking/internal/UploadProgressHandler;

    return-object p0
.end method

.method private sink(Lokio/Sink;)Lokio/Sink;
    .locals 1

    .line 68
    new-instance v0, Lcom/androidnetworking/internal/RequestProgressBody$1;

    invoke-direct {v0, p0, p1}, Lcom/androidnetworking/internal/RequestProgressBody$1;-><init>(Lcom/androidnetworking/internal/RequestProgressBody;Lokio/Sink;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/androidnetworking/internal/RequestProgressBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/androidnetworking/internal/RequestProgressBody;->requestBody:Lokhttp3/RequestBody;

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

    .line 60
    iget-object v0, p0, Lcom/androidnetworking/internal/RequestProgressBody;->bufferedSink:Lokio/BufferedSink;

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/androidnetworking/internal/RequestProgressBody;->sink(Lokio/Sink;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/internal/RequestProgressBody;->bufferedSink:Lokio/BufferedSink;

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/androidnetworking/internal/RequestProgressBody;->requestBody:Lokhttp3/RequestBody;

    iget-object v0, p0, Lcom/androidnetworking/internal/RequestProgressBody;->bufferedSink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 64
    iget-object p1, p0, Lcom/androidnetworking/internal/RequestProgressBody;->bufferedSink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
