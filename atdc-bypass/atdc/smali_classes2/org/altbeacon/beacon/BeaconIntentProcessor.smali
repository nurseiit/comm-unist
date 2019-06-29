.class public Lorg/altbeacon/beacon/BeaconIntentProcessor;
.super Landroid/app/IntentService;
.source "BeaconIntentProcessor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BeaconIntentProcessor"


# instance fields
.field private initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "BeaconIntentProcessor"

    .line 43
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/altbeacon/beacon/BeaconIntentProcessor;->initialized:Z

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "BeaconIntentProcessor"

    const-string v1, "got an intent to process"

    .line 48
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "monitoringData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/MonitoringData;

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "rangingData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/altbeacon/beacon/service/RangingData;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    const-string v1, "BeaconIntentProcessor"

    const-string v2, "got ranging data"

    .line 59
    invoke-static {v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/RangingData;->getBeacons()Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "BeaconIntentProcessor"

    const-string v2, "Ranging data has a null beacons collection"

    .line 61
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    invoke-static {p0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getRangingNotifier()Lorg/altbeacon/beacon/RangeNotifier;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/RangingData;->getBeacons()Ljava/util/Collection;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/RangingData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/altbeacon/beacon/RangeNotifier;->didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    goto :goto_1

    :cond_2
    const-string v1, "BeaconIntentProcessor"

    const-string v3, "but ranging notifier is null, so we\'re dropping it."

    .line 69
    invoke-static {v1, v3}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_1
    invoke-static {p0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getDataRequestNotifier()Lorg/altbeacon/beacon/RangeNotifier;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 73
    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/RangingData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lorg/altbeacon/beacon/RangeNotifier;->didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    :cond_3
    if-eqz v0, :cond_5

    const-string p1, "BeaconIntentProcessor"

    const-string v1, "got monitoring data"

    .line 78
    invoke-static {p1, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->getMonitoringNotifier()Lorg/altbeacon/beacon/MonitorNotifier;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "BeaconIntentProcessor"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling monitoring notifier:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringData;->isInside()Z

    move-result v1

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/altbeacon/beacon/MonitorNotifier;->didDetermineStateForRegion(ILorg/altbeacon/beacon/Region;)V

    .line 83
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringData;->isInside()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/altbeacon/beacon/MonitorNotifier;->didEnterRegion(Lorg/altbeacon/beacon/Region;)V

    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/altbeacon/beacon/MonitorNotifier;->didExitRegion(Lorg/altbeacon/beacon/Region;)V

    :cond_5
    :goto_2
    return-void
.end method
