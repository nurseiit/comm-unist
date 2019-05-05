.class Lcom/androidnetworking/common/ANRequest$7;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/common/ANRequest;->deliverOkHttpResponse(Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/common/ANRequest;

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/androidnetworking/common/ANRequest;Lokhttp3/Response;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$7;->this$0:Lcom/androidnetworking/common/ANRequest;

    iput-object p2, p0, Lcom/androidnetworking/common/ANRequest$7;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$7;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/common/ANRequest;->access$6600(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/OkHttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$7;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/common/ANRequest;->access$6600(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/interfaces/OkHttpResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest$7;->val$response:Lokhttp3/Response;

    invoke-interface {v0, v1}, Lcom/androidnetworking/interfaces/OkHttpResponseListener;->onResponse(Lokhttp3/Response;)V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$7;->this$0:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest;->finish()V

    return-void
.end method
