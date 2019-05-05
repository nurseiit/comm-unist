.class Lcom/lotecs/attendcheck/student/AttendActivity$2;
.super Ljava/lang/Object;
.source "AttendActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/student/AttendActivity;
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

    .line 182
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 188
    sget-object v0, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2}, Lcom/lotecs/util/AndroidUtil;->is_network_setting(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$100(Lcom/lotecs/attendcheck/student/AttendActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/util/AndroidUtil;->is_network_setting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$200(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 193
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$300(Lcom/lotecs/attendcheck/student/AttendActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x756fd27

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$300(Lcom/lotecs/attendcheck/student/AttendActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$500(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x756fd28

    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const v4, 0x7f0e00f1

    invoke-virtual {v3, v4}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v1, "isBeacon"

    const/4 v2, 0x0

    .line 201
    invoke-static {v0, v1, v2}, Lcom/lotecs/util/AndroidUtil;->getBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 206
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 211
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$100(Lcom/lotecs/attendcheck/student/AttendActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 212
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$200(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$2;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$108(Lcom/lotecs/attendcheck/student/AttendActivity;)I

    return-void
.end method
