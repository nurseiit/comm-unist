.class public Lorg/altbeacon/beacon/startup/RegionBootstrap;
.super Ljava/lang/Object;
.source "RegionBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "AppStarter"


# instance fields
.field private application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

.field private beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

.field private beaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private disabled:Z

.field private regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/startup/BootstrapNotifier;",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 68
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The BootstrapNotifier instance is returning null from its getApplicationContext() method.  Have you implemented this method?"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_0
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 73
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    .line 74
    iput-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    .line 76
    new-instance p1, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    .line 77
    iget-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {p1, p2}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    const-string p1, "AppStarter"

    const-string p2, "Waiting for BeaconService connection"

    .line 78
    invoke-static {p1, p2}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Lorg/altbeacon/beacon/Region;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 49
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The BootstrapNotifier instance is returning null from its getApplicationContext() method.  Have you implemented this method?"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_0
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 54
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    .line 56
    iget-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance p1, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    .line 58
    iget-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {p1, p2}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    const-string p1, "AppStarter"

    const-string p2, "Waiting for BeaconService connection"

    .line 59
    invoke-static {p1, p2}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    return-object p0
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    return-object p0
.end method

.method static synthetic access$300(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public disable()V
    .locals 4

    .line 86
    iget-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 92
    iget-object v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v2, v1}, Lorg/altbeacon/beacon/BeaconManager;->stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppStarter"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t stop bootstrap regions due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->unbind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    return-void
.end method
