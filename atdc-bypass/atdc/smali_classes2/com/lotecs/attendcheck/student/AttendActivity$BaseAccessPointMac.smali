.class Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;
.super Lroboguice/util/RoboAsyncTask;
.source "AttendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/student/AttendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseAccessPointMac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/util/RoboAsyncTask<",
        "Lcom/lotecs/attendcheck/domain/AttendInfo;",
        ">;"
    }
.end annotation


# instance fields
.field attend_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

.field wfm:Landroid/net/wifi/WifiManager;


# direct methods
.method protected constructor <init>(Lcom/lotecs/attendcheck/student/AttendActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;",
            ">;)V"
        }
    .end annotation

    .line 562
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 563
    invoke-direct {p0, p2}, Lroboguice/util/RoboAsyncTask;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 559
    iput-object p2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->wfm:Landroid/net/wifi/WifiManager;

    .line 560
    iput-object p2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->attend_:Ljava/util/ArrayList;

    .line 564
    iput-object p3, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->attend_:Ljava/util/ArrayList;

    const-string p2, "wifi"

    .line 565
    invoke-virtual {p1, p2}, Lcom/lotecs/attendcheck/student/AttendActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->wfm:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public call()Lcom/lotecs/attendcheck/domain/AttendInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 584
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x78

    if-ge v1, v2, :cond_0

    .line 585
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 587
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 590
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 593
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    const-string v2, "SSID : "

    .line 596
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BSSID : "

    .line 599
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->attend_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lotecs/attendcheck/domain/AttendInfo;

    .line 602
    invoke-virtual {v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 604
    invoke-virtual {v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 605
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->call()Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2100(Lcom/lotecs/attendcheck/student/AttendActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->wfm:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 652
    new-instance v3, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const/16 v1, 0xc8

    invoke-direct {v3, v0, v1}, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;I)V

    .line 653
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$202(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 654
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$200(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/Timer;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 657
    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x756fd28

    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const v4, 0x7f0e00f1

    invoke-virtual {v3, v4}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 656
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 658
    invoke-super {p0, p1}, Lroboguice/util/RoboAsyncTask;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 570
    invoke-super {p0}, Lroboguice/util/RoboAsyncTask;->onPreExecute()V

    .line 571
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x756fd26

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->wfm:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 574
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 575
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2102(Lcom/lotecs/attendcheck/student/AttendActivity;Z)Z

    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/lotecs/attendcheck/domain/AttendInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 616
    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2100(Lcom/lotecs/attendcheck/student/AttendActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 618
    new-instance v4, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-direct {v4, v1, v0}, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;I)V

    .line 619
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$202(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 620
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$200(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/Timer;

    move-result-object v3

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 621
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$302(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    goto/16 :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x756fd27

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 624
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v1, "1"

    invoke-static {v0, p1, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$500(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_1
    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2100(Lcom/lotecs/attendcheck/student/AttendActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 628
    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 629
    new-instance v4, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-direct {v4, v2, v0}, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;I)V

    .line 630
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$202(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 631
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$200(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/Timer;

    move-result-object v3

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 634
    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0x756fd28

    iget-object v4, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const v5, 0x7f0e00f1

    invoke-virtual {v4, v5}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 633
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 635
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v2, "isBeacon"

    .line 636
    invoke-static {v0, v2, v1}, Lcom/lotecs/util/AndroidUtil;->getBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 638
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    .line 640
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 641
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 645
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lroboguice/util/RoboAsyncTask;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 557
    check-cast p1, Lcom/lotecs/attendcheck/domain/AttendInfo;

    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;->onSuccess(Lcom/lotecs/attendcheck/domain/AttendInfo;)V

    return-void
.end method
