.class Lorg/altbeacon/beacon/BeaconManager$1;
.super Ljava/lang/Object;
.source "BeaconManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/BeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/BeaconManager;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/BeaconManager;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "BeaconManager"

    const-string v0, "we have a connection to the service now"

    .line 520
    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->access$102(Lorg/altbeacon/beacon/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 522
    iget-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->access$200(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 523
    :try_start_0
    iget-object p2, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {p2}, Lorg/altbeacon/beacon/BeaconManager;->access$200(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 524
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/BeaconConsumer;

    .line 526
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {v1}, Lorg/altbeacon/beacon/BeaconManager;->access$200(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;

    iget-boolean v1, v1, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;->isConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    invoke-interface {v0}, Lorg/altbeacon/beacon/BeaconConsumer;->onBeaconServiceConnect()V

    .line 529
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {v1}, Lorg/altbeacon/beacon/BeaconManager;->access$200(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;

    const/4 v2, 0x1

    .line 530
    iput-boolean v2, v1, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;->isConnected:Z

    .line 531
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {v2}, Lorg/altbeacon/beacon/BeaconManager;->access$200(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 534
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BeaconManager"

    const-string v0, "onServiceDisconnected"

    .line 539
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->access$102(Lorg/altbeacon/beacon/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
