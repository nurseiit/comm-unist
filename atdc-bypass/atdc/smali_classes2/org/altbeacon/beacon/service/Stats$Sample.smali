.class public Lorg/altbeacon/beacon/service/Stats$Sample;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sample"
.end annotation


# instance fields
.field public detectionCount:J

.field public firstDetectionTime:Ljava/util/Date;

.field public lastDetectionTime:Ljava/util/Date;

.field public maxMillisBetweenDetections:J

.field public sampleStartTime:Ljava/util/Date;

.field public sampleStopTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/Stats$Sample;->detectionCount:J

    return-void
.end method
