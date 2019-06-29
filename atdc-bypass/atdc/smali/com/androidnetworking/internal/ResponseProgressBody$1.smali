.class Lcom/androidnetworking/internal/ResponseProgressBody$1;
.super Lokio/ForwardingSource;
.source "ResponseProgressBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/internal/ResponseProgressBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/internal/ResponseProgressBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/androidnetworking/internal/ResponseProgressBody;Lokio/Source;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/androidnetworking/internal/ResponseProgressBody$1;->this$0:Lcom/androidnetworking/internal/ResponseProgressBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 77
    iget-wide v0, p0, Lcom/androidnetworking/internal/ResponseProgressBody$1;->totalBytesRead:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-eqz p3, :cond_0

    move-wide v2, p1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const/4 p3, 0x0

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/androidnetworking/internal/ResponseProgressBody$1;->totalBytesRead:J

    .line 78
    iget-object p3, p0, Lcom/androidnetworking/internal/ResponseProgressBody$1;->this$0:Lcom/androidnetworking/internal/ResponseProgressBody;

    invoke-static {p3}, Lcom/androidnetworking/internal/ResponseProgressBody;->access$000(Lcom/androidnetworking/internal/ResponseProgressBody;)Lcom/androidnetworking/internal/DownloadProgressHandler;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 79
    iget-object p3, p0, Lcom/androidnetworking/internal/ResponseProgressBody$1;->this$0:Lcom/androidnetworking/internal/ResponseProgressBody;

    invoke-static {p3}, Lcom/androidnetworking/internal/ResponseProgressBody;->access$000(Lcom/androidnetworking/internal/ResponseProgressBody;)Lcom/androidnetworking/internal/DownloadProgressHandler;

    move-result-object p3

    const/4 v0, 0x1

    new-instance v1, Lcom/androidnetworking/model/Progress;

    iget-wide v2, p0, Lcom/androidnetworking/internal/ResponseProgressBody$1;->totalBytesRead:J

    iget-object v4, p0, Lcom/androidnetworking/internal/ResponseProgressBody$1;->this$0:Lcom/androidnetworking/internal/ResponseProgressBody;

    .line 81
    invoke-static {v4}, Lcom/androidnetworking/internal/ResponseProgressBody;->access$100(Lcom/androidnetworking/internal/ResponseProgressBody;)Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/androidnetworking/model/Progress;-><init>(JJ)V

    .line 80
    invoke-virtual {p3, v0, v1}, Lcom/androidnetworking/internal/DownloadProgressHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 82
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-wide p1
.end method
