.class Lcom/androidnetworking/common/ANRequest$3;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/common/ANRequest;->updateDownloadCompletion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/common/ANRequest;


# direct methods
.method constructor <init>(Lcom/androidnetworking/common/ANRequest;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$3;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$3;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/common/ANRequest;->access$6200(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$3;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/common/ANRequest;->access$6200(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/DownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/androidnetworking/interfaces/DownloadListener;->onDownloadComplete()V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$3;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest;->finish()V

    return-void
.end method
