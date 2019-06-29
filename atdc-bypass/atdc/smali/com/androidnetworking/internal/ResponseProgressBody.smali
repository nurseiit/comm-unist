.class public Lcom/androidnetworking/internal/ResponseProgressBody;
.super Lokhttp3/ResponseBody;
.source "ResponseProgressBody.java"


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private downloadProgressHandler:Lcom/androidnetworking/internal/DownloadProgressHandler;

.field private final mResponseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/androidnetworking/interfaces/DownloadProgressListener;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/androidnetworking/internal/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;

    if-eqz p2, :cond_0

    .line 46
    new-instance p1, Lcom/androidnetworking/internal/DownloadProgressHandler;

    invoke-direct {p1, p2}, Lcom/androidnetworking/internal/DownloadProgressHandler;-><init>(Lcom/androidnetworking/interfaces/DownloadProgressListener;)V

    iput-object p1, p0, Lcom/androidnetworking/internal/ResponseProgressBody;->downloadProgressHandler:Lcom/androidnetworking/internal/DownloadProgressHandler;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/androidnetworking/internal/ResponseProgressBody;)Lcom/androidnetworking/internal/DownloadProgressHandler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/androidnetworking/internal/ResponseProgressBody;->downloadProgressHandler:Lcom/androidnetworking/internal/DownloadProgressHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/androidnetworking/internal/ResponseProgressBody;)Lokhttp3/ResponseBody;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/androidnetworking/internal/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1

    .line 70
    new-instance v0, Lcom/androidnetworking/internal/ResponseProgressBody$1;

    invoke-direct {v0, p0, p1}, Lcom/androidnetworking/internal/ResponseProgressBody$1;-><init>(Lcom/androidnetworking/internal/ResponseProgressBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/androidnetworking/internal/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/androidnetworking/internal/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/androidnetworking/internal/ResponseProgressBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/androidnetworking/internal/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidnetworking/internal/ResponseProgressBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/internal/ResponseProgressBody;->bufferedSource:Lokio/BufferedSource;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/androidnetworking/internal/ResponseProgressBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
