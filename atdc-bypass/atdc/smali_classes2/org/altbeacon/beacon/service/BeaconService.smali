.class public Lorg/altbeacon/beacon/service/BeaconService;
.super Landroid/app/Service;
.source "BeaconService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;,
        Lorg/altbeacon/beacon/service/BeaconService$ScanData;,
        Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;,
        Lorg/altbeacon/beacon/service/BeaconService$BeaconBinder;
    }
.end annotation


# static fields
.field public static final MSG_SET_SCAN_PERIODS:I = 0x6

.field public static final MSG_START_MONITORING:I = 0x4

.field public static final MSG_START_RANGING:I = 0x2

.field public static final MSG_STOP_MONITORING:I = 0x5

.field public static final MSG_STOP_RANGING:I = 0x3

.field public static final TAG:Ljava/lang/String; = "BeaconService"


# instance fields
.field private beaconParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation
.end field

.field private betweenScanPeriod:J

.field private bindCount:I

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

.field private defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

.field private handler:Landroid/os/Handler;

.field private lastBeaconDetectionTime:Ljava/util/Date;

.field private lastScanEndTime:J

.field private lastScanStartTime:J

.field private leScanCallback:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field private monitoredRegionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/MonitorState;",
            ">;"
        }
    .end annotation
.end field

.field private nextScanStartTime:J

.field private ongoing_notification_id:I

.field private rangedRegionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RangeState;",
            ">;"
        }
    .end annotation
.end field

.field private scanCyclerStarted:Z

.field private scanPeriod:J

.field private scanStopTime:J

.field private scanning:Z

.field private scanningEnabled:Z

.field private scanningPaused:Z

.field private simulatedScanData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field private trackedBeacons:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field trackedBeaconsPacketCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->lastBeaconDetectionTime:Ljava/util/Date;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    .line 80
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanCyclerStarted:Z

    .line 81
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    const-wide/16 v1, 0x44c

    .line 107
    iput-wide v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanPeriod:J

    const-wide/16 v1, 0x0

    .line 108
    iput-wide v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->betweenScanPeriod:J

    .line 110
    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;

    .line 183
    new-instance v0, Landroid/os/Messenger;

    new-instance v3, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;

    invoke-direct {v3, p0}, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    invoke-direct {v0, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x1

    .line 249
    iput v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->ongoing_notification_id:I

    .line 344
    iput-wide v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->lastScanStartTime:J

    .line 345
    iput-wide v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->lastScanEndTime:J

    .line 346
    iput-wide v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->nextScanStartTime:J

    .line 347
    iput-wide v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanStopTime:J

    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/service/BeaconService;Ljava/lang/Boolean;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService;->scanLeDevice(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->scheduleScanStop()V

    return-void
.end method

.method static synthetic access$300(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconParsers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/Beacon;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService;->processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V

    return-void
.end method

.method static synthetic access$500(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getLeScanCallback()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/altbeacon/beacon/service/BeaconService;)Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    return-object p0
.end method

.method private anyRangingOrMonitoringRegionsActive()Z
    .locals 2

    .line 689
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private finishScanCycle()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 465
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const-string v0, "BeaconService"

    const-string v1, "Not supported prior to API 18."

    .line 466
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "BeaconService"

    const-string v1, "Done with scan cycle"

    .line 469
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->processExpiredMonitors()V

    .line 471
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanning:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 472
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->processRangeData()V

    .line 474
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;

    if-eqz v0, :cond_2

    const-string v0, "BeaconService"

    const-string v2, "Simulated scan data is deprecated and will be removed in a future release. Please use the new BeaconSimulator interface instead."

    .line 477
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_1

    .line 480
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Beacon;

    .line 481
    invoke-direct {p0, v2}, Lorg/altbeacon/beacon/service/BeaconService;->processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_0

    :cond_1
    const-string v0, "BeaconService"

    const-string v2, "Simulated scan data provided, but ignored because we are not running in debug mode.  Please remove simulated scan data for production."

    .line 484
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_2
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 490
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/simulator/BeaconSimulator;->getBeacons()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 491
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_3

    .line 492
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/simulator/BeaconSimulator;->getBeacons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Beacon;

    .line 493
    invoke-direct {p0, v2}, Lorg/altbeacon/beacon/service/BeaconService;->processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_1

    :cond_3
    const-string v0, "BeaconService"

    const-string v2, "Beacon simulations provided, but ignored because we are not running in debug mode.  Please remove beacon simulations for production."

    .line 496
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v0, "BeaconService"

    const-string v2, "getBeacons is returning null. No simulated beacons to report."

    .line 499
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_5
    :goto_2
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 503
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 505
    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getLeScanCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "Internal Android exception scanning for beacons: "

    .line 508
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    :goto_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->lastScanEndTime:J

    goto :goto_4

    :cond_6
    const-string v0, "BeaconService"

    const-string v2, "Bluetooth is disabled.  Cannot scan for beacons."

    .line 512
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_7
    :goto_4
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->anyRangingOrMonitoringRegionsActive()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const-string v0, "BeaconService"

    const-string v1, "Not starting scan because no monitoring or ranging regions are defined."

    .line 517
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iput-boolean v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanCyclerStarted:Z

    goto :goto_5

    :cond_8
    const-string v0, "BeaconService"

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting scan.  Unique beacons seen last cycle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeacons:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Total beacon advertisement packets seen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeaconsPacketCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningPaused:Z

    .line 523
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/altbeacon/beacon/service/BeaconService;->betweenScanPeriod:J

    add-long v7, v3, v5

    iput-wide v7, p0, Lorg/altbeacon/beacon/service/BeaconService;->nextScanStartTime:J

    .line 524
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    if-eqz v0, :cond_9

    .line 525
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/service/BeaconService;->scanLeDevice(Ljava/lang/Boolean;)V

    goto :goto_5

    :cond_9
    const-string v0, "BeaconService"

    const-string v1, "Scanning disabled.  No ranging or monitoring regions are active."

    .line 528
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iput-boolean v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanCyclerStarted:Z

    :cond_a
    :goto_5
    return-void
.end method

.method private getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 694
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const-string v0, "BeaconService"

    const-string v1, "Not supported prior to API 18."

    .line 695
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 698
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 701
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 702
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 704
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private getLeScanCallback()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 538
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->leScanCallback:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Lorg/altbeacon/beacon/service/BeaconService$3;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/BeaconService$3;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->leScanCallback:Ljava/lang/Object;

    .line 551
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->leScanCallback:Ljava/lang/Object;

    return-object v0
.end method

.method private isInBackground()Z
    .locals 3

    const-string v0, "BeaconService"

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bound client count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private matchingRegions(Lorg/altbeacon/beacon/Beacon;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/Beacon;",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 672
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 674
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/Region;->matchesBeacon(Lorg/altbeacon/beacon/Beacon;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 675
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "BeaconService"

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This region does not match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V
    .locals 6

    .line 594
    invoke-static {}, Lorg/altbeacon/beacon/service/Stats;->getInstance()Lorg/altbeacon/beacon/service/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/Stats;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-static {}, Lorg/altbeacon/beacon/service/Stats;->getInstance()Lorg/altbeacon/beacon/service/Stats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/service/Stats;->log(Lorg/altbeacon/beacon/Beacon;)V

    .line 597
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->lastBeaconDetectionTime:Ljava/util/Date;

    .line 598
    iget v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeaconsPacketCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeaconsPacketCount:I

    .line 599
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeacons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BeaconService"

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beacon detected multiple times in scan cycle :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeacons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "BeaconService"

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beacon detected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    monitor-enter v0

    .line 609
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    .line 610
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 609
    invoke-direct {p0, p1, v1}, Lorg/altbeacon/beacon/service/BeaconService;->matchingRegions(Lorg/altbeacon/beacon/Beacon;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 611
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 612
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 613
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 614
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 615
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/service/MonitorState;

    .line 616
    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/MonitorState;->markInside()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 617
    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/MonitorState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v3

    const-string v4, "monitoringData"

    new-instance v5, Lorg/altbeacon/beacon/service/MonitoringData;

    .line 618
    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/MonitorState;->isInside()Z

    move-result v2

    invoke-direct {v5, v2, v1}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(ZLorg/altbeacon/beacon/Region;)V

    .line 617
    invoke-virtual {v3, p0, v4, v5}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z

    goto :goto_0

    :cond_3
    const-string v0, "BeaconService"

    const-string v1, "looking for ranging region matches for this beacon"

    .line 622
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v1

    .line 624
    :try_start_1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/altbeacon/beacon/service/BeaconService;->matchingRegions(Lorg/altbeacon/beacon/Beacon;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 625
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 626
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 627
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Region;

    const-string v3, "BeaconService"

    .line 628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "matches ranging region: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/service/RangeState;

    .line 630
    invoke-virtual {v2, p1}, Lorg/altbeacon/beacon/service/RangeState;->addBeacon(Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_1

    .line 632
    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 611
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private processExpiredMonitors()V
    .locals 7

    .line 580
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    monitor-enter v0

    .line 581
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 582
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Region;

    .line 584
    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/service/MonitorState;

    .line 585
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/MonitorState;->isNewlyOutside()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BeaconService"

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found a monitor that expired: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/MonitorState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v4

    const-string v5, "monitoringData"

    new-instance v6, Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/MonitorState;->isInside()Z

    move-result v3

    invoke-direct {v6, v3, v2}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(ZLorg/altbeacon/beacon/Region;)V

    invoke-virtual {v4, p0, v5, v6}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z

    goto :goto_0

    .line 590
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processRangeData()V
    .locals 7

    .line 568
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 570
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Region;

    .line 572
    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/service/RangeState;

    const-string v4, "BeaconService"

    const-string v5, "Calling ranging callback"

    .line 573
    invoke-static {v4, v5}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RangeState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v4

    const-string v5, "rangingData"

    new-instance v6, Lorg/altbeacon/beacon/service/RangingData;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RangeState;->finalizeBeacons()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v6, v3, v2}, Lorg/altbeacon/beacon/service/RangingData;-><init>(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    invoke-virtual {v4, p0, v5, v6}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z

    goto :goto_0

    .line 576
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scanLeDevice(Ljava/lang/Boolean;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanCyclerStarted:Z

    .line 362
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    const-string p1, "BeaconService"

    const-string v0, "Not supported prior to API 18."

    .line 363
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 366
    :cond_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "BeaconService"

    const-string v2, "No bluetooth adapter.  beaconService cannot scan."

    .line 367
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "BeaconService"

    const-string v0, "exiting"

    .line 369
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "BeaconService"

    const-string v2, "proceeding with simulated scan data"

    .line 372
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 376
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->nextScanStartTime:J

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long p1, v6, v2

    if-lez p1, :cond_4

    const-string p1, "BeaconService"

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waiting to start next bluetooth scan for another "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " milliseconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/altbeacon/beacon/service/BeaconService$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/BeaconService$1;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    const-wide/16 v1, 0x3e8

    cmp-long v3, v6, v1

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    move-wide v1, v6

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 391
    :cond_4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeacons:Ljava/util/HashSet;

    .line 392
    iput v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeaconsPacketCount:I

    .line 393
    iget-boolean p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanning:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningPaused:Z

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, "BeaconService"

    const-string v0, "We are already scanning"

    .line 424
    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 394
    :cond_6
    :goto_1
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanning:Z

    .line 395
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningPaused:Z

    .line 397
    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 398
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 399
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {p1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->isRecoveryInProgress()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "BeaconService"

    const-string v0, "Skipping scan because crash recovery is in progress."

    .line 400
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 403
    :cond_7
    iget-boolean p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_8

    .line 405
    :try_start_1
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getLeScanCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Internal Android exception scanning for beacons: "

    .line 408
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_8
    const-string p1, "BeaconService"

    const-string v0, "Scanning unnecessary - no monitoring or ranging active."

    .line 412
    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_2
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->lastScanStartTime:J

    goto :goto_3

    :cond_9
    const-string p1, "BeaconService"

    const-string v0, "Bluetooth is disabled.  Cannot scan for beacons."

    .line 417
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    const-string p1, "TAG"

    const-string v0, "Exception starting bluetooth scan.  Perhaps bluetooth is disabled or unavailable?"

    .line 421
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_a
    :goto_3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanPeriod:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanStopTime:J

    .line 427
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->scheduleScanStop()V

    const-string p1, "BeaconService"

    const-string v0, "Scan started"

    .line 429
    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const-string p1, "BeaconService"

    const-string v0, "disabling scan"

    .line 431
    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanning:Z

    .line 433
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 435
    :try_start_3
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getLeScanCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    const-string v0, "Internal Android exception scanning for beacons: "

    .line 438
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    :goto_4
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->lastScanEndTime:J

    :cond_c
    :goto_5
    return-void
.end method

.method private scheduleScanStop()V
    .locals 7

    .line 447
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanStopTime:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    const-string v0, "BeaconService"

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting to stop scan for another "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/altbeacon/beacon/service/BeaconService$2;

    invoke-direct {v1, p0}, Lorg/altbeacon/beacon/service/BeaconService$2;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    const-wide/16 v2, 0x3e8

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 457
    :cond_1
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->finishScanCycle()V

    :goto_1
    return-void
.end method


# virtual methods
.method public disableScanning()V
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    return-void
.end method

.method public enableScanning()V
    .locals 2

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    .line 351
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanCyclerStarted:Z

    if-nez v1, :cond_0

    .line 352
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/service/BeaconService;->scanLeDevice(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "BeaconService"

    const-string v0, "binding"

    .line 191
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    .line 193
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "BeaconService"

    const-string v1, "beaconService version adhoc is starting up"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 208
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-direct {v0, p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .line 209
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->start()V

    .line 211
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconParsers:Ljava/util/List;

    .line 212
    new-instance v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getDistanceModelUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 213
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    invoke-static {v0}, Lorg/altbeacon/beacon/Beacon;->setDistanceCalculator(Lorg/altbeacon/beacon/distance/DistanceCalculator;)V

    :try_start_0
    const-string v0, "org.altbeacon.beacon.SimulatedScanData"

    .line 217
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "beacons"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BeaconService"

    const-string v2, "Cannot get simulated Scan data.  Make sure your org.altbeacon.beacon.SimulatedScanData class defines a field with the signature \'public static List<Beacon> beacons\'"

    .line 223
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    const-string v0, "BeaconService"

    const-string v1, "No org.altbeacon.beacon.SimulatedScanData class exists."

    .line 221
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const-string v0, "BeaconService"

    const-string v1, "Not supported prior to API 18."

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->stop()V

    const-string v0, "BeaconService"

    const-string v1, "onDestroy called.  stopping scanning"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 237
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/service/BeaconService;->scanLeDevice(Ljava/lang/Boolean;)V

    .line 238
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 240
    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getLeScanCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Internal Android exception scanning for beacons: "

    .line 243
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->lastScanEndTime:J

    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string p1, "BeaconService"

    const-string v0, "unbinding"

    .line 198
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    const/4 p1, 0x0

    return p1
.end method

.method public setScanPeriods(JJ)V
    .locals 6

    .line 319
    iput-wide p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanPeriod:J

    .line 320
    iput-wide p3, p0, Lorg/altbeacon/beacon/service/BeaconService;->betweenScanPeriod:J

    .line 321
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 322
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->nextScanStartTime:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 326
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->lastScanEndTime:J

    add-long v4, v2, p3

    .line 327
    iget-wide p3, p0, Lorg/altbeacon/beacon/service/BeaconService;->nextScanStartTime:J

    cmp-long v2, v4, p3

    if-gez v2, :cond_0

    .line 328
    iput-wide v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->nextScanStartTime:J

    const-string p3, "BeaconService"

    .line 329
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusted nextScanStartTime to be "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->nextScanStartTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    iget-wide p3, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanStopTime:J

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    .line 336
    iget-wide p3, p0, Lorg/altbeacon/beacon/service/BeaconService;->lastScanStartTime:J

    add-long v0, p3, p1

    .line 337
    iget-wide p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanStopTime:J

    cmp-long p3, v0, p1

    if-gez p3, :cond_1

    .line 338
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanStopTime:J

    const-string p1, "BeaconService"

    .line 339
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Adjusted scanStopTime to be "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/util/Date;

    iget-wide v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanStopTime:J

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .locals 3

    const-string v0, "BeaconService"

    const-string v1, "startMonitoring called"

    .line 291
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BeaconService"

    const-string v2, "Already monitoring that region -- will replace existing region monitor."

    .line 294
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    new-instance v2, Lorg/altbeacon/beacon/service/MonitorState;

    invoke-direct {v2, p2}, Lorg/altbeacon/beacon/service/MonitorState;-><init>(Lorg/altbeacon/beacon/service/Callback;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "BeaconService"

    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Currently monitoring "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " regions."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-boolean p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    if-nez p1, :cond_1

    .line 301
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->enableScanning()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 298
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .locals 3

    .line 264
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BeaconService"

    const-string v2, "Already ranging that region -- will replace existing region."

    .line 266
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    new-instance v2, Lorg/altbeacon/beacon/service/RangeState;

    invoke-direct {v2, p2}, Lorg/altbeacon/beacon/service/RangeState;-><init>(Lorg/altbeacon/beacon/service/Callback;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "BeaconService"

    .line 270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently ranging "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " regions."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-boolean p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    if-nez p1, :cond_1

    .line 273
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->enableScanning()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 271
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 3

    const-string v0, "BeaconService"

    const-string v1, "stopMonitoring called"

    .line 307
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    .line 311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "BeaconService"

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently monitoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " regions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 314
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->disableScanning()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 311
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 4

    .line 279
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const-string v1, "BeaconService"

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently ranging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " regions."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 286
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->disableScanning()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 283
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
