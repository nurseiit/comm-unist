.class public Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;
.super Ljava/lang/Object;
.source "BackgroundPowerSaver.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundPowerSaver"


# instance fields
.field private activeActivityCount:I

.field private beaconManager:Lorg/altbeacon/beacon/BeaconManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 33
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge p2, v0, :cond_0

    const-string p1, "BackgroundPowerSaver"

    const-string p2, "BackgroundPowerSaver requires SDK 18 or higher."

    .line 34
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_0
    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_1

    .line 38
    move-object p2, p1

    check-cast p2, Landroid/app/Application;

    invoke-virtual {p2, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_1
    const-string p2, "BackgroundPowerSaver"

    const-string v0, "Context is not an application instance, so we cannot use the BackgroundPowerSaver"

    .line 41
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    iget-object p2, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 77
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    const-string v0, "BackgroundPowerSaver"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity paused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  active activities: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget p1, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    if-ge p1, v1, :cond_0

    const-string p1, "BackgroundPowerSaver"

    const-string v0, "setting background mode"

    .line 80
    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {p1, v1}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundMode(Z)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 66
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 67
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    if-ge v0, v1, :cond_0

    const-string v0, "BackgroundPowerSaver"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset active activity count on resume.  It was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput v1, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundMode(Z)V

    const-string v0, "BackgroundPowerSaver"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  active activities: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
