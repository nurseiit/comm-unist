.class Lcom/lotecs/attendcheck/student/AttendActivity$6;
.super Ljava/lang/Object;
.source "AttendActivity.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/JSONObjectRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/student/AttendActivity;->getAtdcInfoBe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/student/AttendActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 3

    .line 542
    sget-object v0, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

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

    .line 545
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 546
    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const v2, 0x7f0e00f1

    invoke-virtual {v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x756fd25

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 545
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6

    .line 490
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v1, "infoBe"

    invoke-static {v0, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1002(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    sget-object v0, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x756fd25

    :try_start_0
    const-string v1, "state"

    .line 497
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "result"

    .line 501
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 502
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$902(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 506
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 507
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 508
    new-instance v4, Lcom/lotecs/attendcheck/domain/AttendInfo;

    invoke-direct {v4}, Lcom/lotecs/attendcheck/domain/AttendInfo;-><init>()V

    .line 509
    iget-object v5, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v5}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1600(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setIdno(Ljava/lang/String;)V

    const-string v5, "SSID"

    .line 510
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setSsid(Ljava/lang/String;)V

    const-string v5, "MSC"

    .line 511
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setMac(Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v3}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 515
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v2, "BE_CLP_SJNM"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BE_CLP_STTM"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BE_CLP_PRNM"

    .line 516
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BE_CLP_RMNM"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-static {v1, v2, v3, v4, p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1800(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1702(Lcom/lotecs/attendcheck/student/AttendActivity;Z)Z

    .line 522
    :cond_1
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x756fd2e

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 525
    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 524
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 530
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 531
    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity$6;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const v4, 0x7f0e00f1

    invoke-virtual {v3, v4}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 530
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 532
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
