.class Lcom/lotecs/attendcheck/student/AttendActivity$7;
.super Ljava/lang/Object;
.source "AttendActivity.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/JSONObjectRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/student/AttendActivity;->getAtdcChk(Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

.field final synthetic val$attend:Lcom/lotecs/attendcheck/domain/AttendInfo;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iput-object p2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->val$attend:Lcom/lotecs/attendcheck/domain/AttendInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 3

    .line 733
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

    .line 735
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 736
    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const v2, 0x7f0e00f1

    invoke-virtual {v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x756fd2b

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 735
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6

    const v0, 0x756fd2b

    :try_start_0
    const-string v1, "sucdata"

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "state"

    .line 706
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 707
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1400(Lcom/lotecs/attendcheck/student/AttendActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 708
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->val$attend:Lcom/lotecs/attendcheck/domain/AttendInfo;

    invoke-static {p1, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2200(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)V

    goto/16 :goto_0

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1200(Lcom/lotecs/attendcheck/student/AttendActivity;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1300(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lotecs/util/StringUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1400(Lcom/lotecs/attendcheck/student/AttendActivity;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 711
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v3}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v4}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1200(Lcom/lotecs/attendcheck/student/AttendActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v5}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1300(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lotecs/attendcheck/student/AttendActivity;->registerRestartAlarm(ZLjava/util/ArrayList;ILjava/lang/String;)V

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 714
    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0x756fd2a

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 713
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 715
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4965e398    # 941625.5f

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 718
    :cond_2
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 719
    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 718
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 722
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 723
    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity$7;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const v4, 0x7f0e00f1

    invoke-virtual {v3, v4}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 722
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 724
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
