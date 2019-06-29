.class Lcom/androidnetworking/common/ANRequest$6;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/common/ANRequest;->deliverResponse(Lcom/androidnetworking/common/ANResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/common/ANRequest;

.field final synthetic val$response:Lcom/androidnetworking/common/ANResponse;


# direct methods
.method constructor <init>(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/common/ANResponse;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$6;->this$0:Lcom/androidnetworking/common/ANRequest;

    iput-object p2, p0, Lcom/androidnetworking/common/ANRequest$6;->val$response:Lcom/androidnetworking/common/ANResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$6;->this$0:Lcom/androidnetworking/common/ANRequest;

    iget-object v1, p0, Lcom/androidnetworking/common/ANRequest$6;->val$response:Lcom/androidnetworking/common/ANResponse;

    invoke-static {v0, v1}, Lcom/androidnetworking/common/ANRequest;->access$6500(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/common/ANResponse;)V

    return-void
.end method
