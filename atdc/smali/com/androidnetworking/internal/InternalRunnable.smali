.class public Lcom/androidnetworking/internal/InternalRunnable;
.super Ljava/lang/Object;
.source "InternalRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final priority:Lcom/androidnetworking/common/Priority;

.field public final request:Lcom/androidnetworking/common/ANRequest;

.field public final sequence:I


# direct methods
.method public constructor <init>(Lcom/androidnetworking/common/ANRequest;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    .line 46
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->sequence:I

    .line 47
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getPriority()Lcom/androidnetworking/common/Priority;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/internal/InternalRunnable;->priority:Lcom/androidnetworking/common/Priority;

    return-void
.end method

.method private deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    .locals 2

    .line 159
    invoke-static {}, Lcom/androidnetworking/core/Core;->getInstance()Lcom/androidnetworking/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/core/Core;->getExecutorSupplier()Lcom/androidnetworking/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/androidnetworking/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/androidnetworking/internal/InternalRunnable$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/androidnetworking/internal/InternalRunnable$1;-><init>(Lcom/androidnetworking/internal/InternalRunnable;Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeDownloadRequest()V
    .locals 4

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/internal/InternalNetworking;->performDownloadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v1, Lcom/androidnetworking/error/ANError;

    invoke-direct {v1}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-static {v1}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 110
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v0}, Lcom/androidnetworking/error/ANError;-><init>(Lokhttp3/Response;)V

    iget-object v3, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    .line 111
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    .line 110
    invoke-static {v2, v3, v0}, Lcom/androidnetworking/utils/Utils;->getErrorForServerResponse(Lcom/androidnetworking/error/ANError;Lcom/androidnetworking/common/ANRequest;I)Lcom/androidnetworking/error/ANError;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest;->updateDownloadCompletion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v0}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    :goto_0
    return-void
.end method

.method private executeSimpleRequest()V
    .locals 6

    const/4 v0, 0x0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1}, Lcom/androidnetworking/internal/InternalNetworking;->performSimpleRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-static {v2}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 77
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest;->getResponseAs()Lcom/androidnetworking/common/ResponseType;

    move-result-object v0

    sget-object v2, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    if-ne v0, v2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->deliverOkHttpResponse(Lokhttp3/Response;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    .line 81
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x190

    if-lt v0, v2, :cond_2

    .line 82
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v1}, Lcom/androidnetworking/error/ANError;-><init>(Lokhttp3/Response;)V

    iget-object v3, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    .line 83
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v4

    .line 82
    invoke-static {v2, v3, v4}, Lcom/androidnetworking/utils/Utils;->getErrorForServerResponse(Lcom/androidnetworking/error/ANError;Lcom/androidnetworking/common/ANRequest;I)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    .line 87
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->parseResponse(Lokhttp3/Response;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/androidnetworking/common/ANResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANResponse;->getError()Lcom/androidnetworking/error/ANError;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    .line 92
    :cond_3
    :try_start_5
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V

    .line 93
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v2, v0}, Lcom/androidnetworking/common/ANRequest;->deliverResponse(Lcom/androidnetworking/common/ANResponse;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 95
    :goto_0
    :try_start_6
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v3, Lcom/androidnetworking/error/ANError;

    invoke-direct {v3, v0}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_2
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v2}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    throw v0
.end method

.method private executeUploadRequest()V
    .locals 6

    const/4 v0, 0x0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1}, Lcom/androidnetworking/internal/InternalNetworking;->performUploadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-static {v2}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 130
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest;->getResponseAs()Lcom/androidnetworking/common/ResponseType;

    move-result-object v0

    sget-object v2, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    if-ne v0, v2, :cond_1

    .line 131
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->deliverOkHttpResponse(Lokhttp3/Response;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    .line 135
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x190

    if-lt v0, v2, :cond_2

    .line 136
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v1}, Lcom/androidnetworking/error/ANError;-><init>(Lokhttp3/Response;)V

    iget-object v3, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    .line 137
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v4

    .line 136
    invoke-static {v2, v3, v4}, Lcom/androidnetworking/utils/Utils;->getErrorForServerResponse(Lcom/androidnetworking/error/ANError;Lcom/androidnetworking/common/ANRequest;I)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    .line 140
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->parseResponse(Lokhttp3/Response;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/androidnetworking/common/ANResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 142
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANResponse;->getError()Lcom/androidnetworking/error/ANError;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    .line 145
    :cond_3
    :try_start_5
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V

    .line 146
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v2, v0}, Lcom/androidnetworking/common/ANRequest;->deliverResponse(Lcom/androidnetworking/common/ANResponse;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 148
    :goto_0
    :try_start_6
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v3, Lcom/androidnetworking/error/ANError;

    invoke-direct {v3, v0}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 150
    :goto_1
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_2
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1, v2}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    throw v0
.end method


# virtual methods
.method public getPriority()Lcom/androidnetworking/common/Priority;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->priority:Lcom/androidnetworking/common/Priority;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->setRunning(Z)V

    .line 53
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest;->getRequestType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-direct {p0}, Lcom/androidnetworking/internal/InternalRunnable;->executeUploadRequest()V

    goto :goto_0

    .line 58
    :pswitch_1
    invoke-direct {p0}, Lcom/androidnetworking/internal/InternalRunnable;->executeDownloadRequest()V

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-direct {p0}, Lcom/androidnetworking/internal/InternalRunnable;->executeSimpleRequest()V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->setRunning(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
