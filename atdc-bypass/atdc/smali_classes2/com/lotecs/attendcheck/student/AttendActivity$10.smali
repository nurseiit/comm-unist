.class Lcom/lotecs/attendcheck/student/AttendActivity$10;
.super Landroid/os/Handler;
.source "AttendActivity.java"


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

    .line 872
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 875
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 878
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x756fd2e

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    const v4, 0x756fd4e

    if-eq v0, v4, :cond_3

    const v4, 0x4965e398    # 941625.5f

    if-eq v0, v4, :cond_2

    const/16 v1, 0xc

    const/16 v4, 0xb

    const v5, 0x7f0e00bc

    const v6, 0x7f07005a

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1026
    :pswitch_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1027
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1029
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2600(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    .line 1030
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2700(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-virtual {v0, v5}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v0, "isBeacon"

    .line 1034
    invoke-static {p1, v0, v3}, Lcom/lotecs/util/AndroidUtil;->getBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1036
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 1037
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 1038
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 1039
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_3

    .line 995
    :pswitch_1
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 996
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 997
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "result"

    .line 1000
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, ":B1"

    .line 1001
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$3200(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2700(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1008
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1011
    :goto_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$3300(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1013
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$000(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1015
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v0, "isBeacon"

    .line 1016
    invoke-static {p1, v0, v3}, Lcom/lotecs/util/AndroidUtil;->getBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1018
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 1019
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 1020
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 1021
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_3

    .line 989
    :pswitch_2
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 990
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 991
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0e0033

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 980
    :pswitch_3
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 983
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2600(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    .line 984
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2700(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-virtual {v0, v5}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 975
    :pswitch_4
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 912
    :pswitch_5
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 913
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 914
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0e00c3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 902
    :pswitch_6
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v0, v0, Lcom/lotecs/attendcheck/student/AttendActivity;->infomation_group_:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 906
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2600(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    .line 907
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2700(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-virtual {v0, v5}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 890
    :pswitch_7
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 891
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 892
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0e007f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 885
    :pswitch_8
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 886
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0e0035

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 880
    :pswitch_9
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 881
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1047
    :cond_2
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x3e8

    .line 1048
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1049
    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1052
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$000(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    .line 920
    :cond_3
    sget-object p1, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC_CHECK_RUN = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2800(Lcom/lotecs/attendcheck/student/AttendActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    sget-object p1, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goplusBeacons = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 924
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 927
    sget-object p1, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    const-string v0, "if (goplusBeacons != null && goplusBeacons.size() > 0)"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x756fd27

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 930
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$3000(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/util/List;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object p1

    .line 932
    new-instance v0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v3}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    .line 936
    :try_start_1
    invoke-virtual {v0}, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->call()Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 938
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_1
    if-nez p1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    .line 960
    :cond_5
    new-instance p1, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 961
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->execute()V

    goto/16 :goto_3

    .line 941
    :cond_6
    :goto_2
    sget-object v1, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    const-string v2, "if (info != null || info2 != null)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1000(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lotecs/util/StringUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1000(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "infoBe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v0, :cond_7

    .line 944
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$3100(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)V

    goto :goto_3

    .line 946
    :cond_7
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$3100(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)V

    goto :goto_3

    .line 949
    :cond_8
    sget-object v1, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    const-string v2, " if (info != null) else"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_9

    .line 953
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v1, "1"

    invoke-static {v0, p1, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$500(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V

    goto :goto_3

    .line 955
    :cond_9
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v1, "1"

    invoke-static {p1, v0, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$500(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V

    goto :goto_3

    .line 964
    :cond_a
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2800(Lcom/lotecs/attendcheck/student/AttendActivity;)I

    move-result p1

    if-le p1, v1, :cond_b

    .line 965
    new-instance p1, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 966
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->execute()V

    goto :goto_3

    .line 968
    :cond_b
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2808(Lcom/lotecs/attendcheck/student/AttendActivity;)I

    .line 969
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 897
    :cond_c
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 898
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$10;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0e007e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x756fd22
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
