.class public Lorg/altbeacon/beacon/service/RangedBeacon;
.super Ljava/lang/Object;
.source "RangedBeacon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;
    }
.end annotation


# static fields
.field public static DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS:J = 0x7d0L

.field private static TAG:Ljava/lang/String; = "RangedBeacon"

.field private static sampleExpirationMilliseconds:J


# instance fields
.field mBeacon:Lorg/altbeacon/beacon/Beacon;

.field private mMeasurements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private mTracked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    sget-wide v0, Lorg/altbeacon/beacon/service/RangedBeacon;->DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS:J

    sput-wide v0, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Beacon;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->updateBeacon(Lorg/altbeacon/beacon/Beacon;)V

    return-void
.end method

.method private calculateRunningAverage()D
    .locals 8

    .line 102
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->refreshMeasurements()V

    .line 104
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 108
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v3, v1, 0x1

    sub-int v1, v0, v1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    move v2, v3

    :goto_1
    if-gt v2, v1, :cond_1

    .line 115
    iget-object v6, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;

    iget-object v6, v6, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    add-double/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    div-double/2addr v4, v1

    .line 119
    sget-object v1, Lorg/altbeacon/beacon/service/RangedBeacon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running average mRssi based on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " measurements: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4
.end method

.method private declared-synchronized refreshMeasurements()V
    .locals 10

    monitor-enter p0

    .line 85
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 89
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;

    .line 91
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-wide v6, v3, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->timestamp:J

    const/4 v8, 0x0

    sub-long v8, v4, v6

    sget-wide v4, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    cmp-long v6, v8, v4

    if-gez v6, :cond_0

    .line 92
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    iput-object v1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    .line 98
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 84
    monitor-exit p0

    throw v0
.end method

.method public static setSampleExpirationMilliseconds(J)V
    .locals 0

    .line 58
    sput-wide p0, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    return-void
.end method


# virtual methods
.method public addMeasurement(Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    .line 62
    new-instance v0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;-><init>(Lorg/altbeacon/beacon/service/RangedBeacon;Lorg/altbeacon/beacon/service/RangedBeacon$1;)V

    .line 63
    iput-object p1, v0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->rssi:Ljava/lang/Integer;

    .line 64
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->timestamp:J

    .line 66
    iget-object p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public commitMeasurements()V
    .locals 5

    .line 47
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->calculateRunningAverage()D

    move-result-wide v0

    .line 49
    iget-object v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v2, v0, v1}, Lorg/altbeacon/beacon/Beacon;->setRunningAverageRssi(D)V

    .line 50
    sget-object v2, Lorg/altbeacon/beacon/service/RangedBeacon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculated new runningAverageRssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lorg/altbeacon/beacon/service/RangedBeacon;->TAG:Ljava/lang/String;

    const-string v1, "No measurements available to calculate running average"

    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getBeacon()Lorg/altbeacon/beacon/Beacon;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    return-object v0
.end method

.method public isTracked()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    return v0
.end method

.method public noMeasurementsAvailable()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTracked(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    return-void
.end method

.method public updateBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 29
    iget-object p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->addMeasurement(Ljava/lang/Integer;)V

    return-void
.end method
