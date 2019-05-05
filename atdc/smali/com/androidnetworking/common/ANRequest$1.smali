.class Lcom/androidnetworking/common/ANRequest$1;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/DownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/common/ANRequest;->getDownloadProgressListener()Lcom/androidnetworking/interfaces/DownloadProgressListener;
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

    .line 475
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$1;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$1;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/common/ANRequest;->access$6000(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/DownloadProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$1;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/common/ANRequest;->access$6100(Lcom/androidnetworking/common/ANRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$1;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/common/ANRequest;->access$6000(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/DownloadProgressListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/androidnetworking/interfaces/DownloadProgressListener;->onProgress(JJ)V

    :cond_0
    return-void
.end method
