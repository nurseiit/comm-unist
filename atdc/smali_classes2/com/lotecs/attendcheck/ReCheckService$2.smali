.class Lcom/lotecs/attendcheck/ReCheckService$2;
.super Ljava/lang/Object;
.source "ReCheckService.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/JSONObjectRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/ReCheckService;->atdcCheckBack(Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/ReCheckService;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/ReCheckService;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/lotecs/attendcheck/ReCheckService$2;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 3

    .line 247
    invoke-static {}, Lcom/lotecs/attendcheck/ReCheckService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " anError.getErrorCode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    const-string v0, "state"

    .line 234
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/lotecs/attendcheck/ReCheckService$2;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-static {p1}, Lcom/lotecs/attendcheck/ReCheckService;->access$000(Lcom/lotecs/attendcheck/ReCheckService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x929

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
