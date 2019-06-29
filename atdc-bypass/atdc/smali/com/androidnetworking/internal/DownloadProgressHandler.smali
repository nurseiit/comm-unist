.class public Lcom/androidnetworking/internal/DownloadProgressHandler;
.super Landroid/os/Handler;
.source "DownloadProgressHandler.java"


# instance fields
.field private final mDownloadProgressListener:Lcom/androidnetworking/interfaces/DownloadProgressListener;


# direct methods
.method public constructor <init>(Lcom/androidnetworking/interfaces/DownloadProgressListener;)V
    .locals 1

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    iput-object p1, p0, Lcom/androidnetworking/internal/DownloadProgressHandler;->mDownloadProgressListener:Lcom/androidnetworking/interfaces/DownloadProgressListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/androidnetworking/internal/DownloadProgressHandler;->mDownloadProgressListener:Lcom/androidnetworking/interfaces/DownloadProgressListener;

    if-eqz v0, :cond_1

    .line 45
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/androidnetworking/model/Progress;

    .line 46
    iget-object v0, p0, Lcom/androidnetworking/internal/DownloadProgressHandler;->mDownloadProgressListener:Lcom/androidnetworking/interfaces/DownloadProgressListener;

    iget-wide v1, p1, Lcom/androidnetworking/model/Progress;->currentBytes:J

    iget-wide v3, p1, Lcom/androidnetworking/model/Progress;->totalBytes:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/androidnetworking/interfaces/DownloadProgressListener;->onProgress(JJ)V

    :cond_1
    :goto_0
    return-void
.end method
