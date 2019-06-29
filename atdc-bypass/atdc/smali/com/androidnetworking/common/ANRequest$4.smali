.class Lcom/androidnetworking/common/ANRequest$4;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/UploadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/common/ANRequest;->getUploadProgressListener()Lcom/androidnetworking/interfaces/UploadProgressListener;
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

    .line 520
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$4;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$4;->this$0:Lcom/androidnetworking/common/ANRequest;

    const-wide/16 v1, 0x64

    mul-long v1, v1, p1

    div-long/2addr v1, p3

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/androidnetworking/common/ANRequest;->access$6302(Lcom/androidnetworking/common/ANRequest;I)I

    .line 524
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$4;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/common/ANRequest;->access$6400(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/UploadProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$4;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/common/ANRequest;->access$6100(Lcom/androidnetworking/common/ANRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$4;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/common/ANRequest;->access$6400(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/UploadProgressListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/androidnetworking/interfaces/UploadProgressListener;->onProgress(JJ)V

    :cond_0
    return-void
.end method
