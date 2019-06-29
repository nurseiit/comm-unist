.class public Lcom/androidnetworking/common/ConnectionClassManager;
.super Ljava/lang/Object;
.source "ConnectionClassManager.java"


# static fields
.field private static final BANDWIDTH_LOWER_BOUND:J = 0xaL

.field private static final BYTES_TO_BITS:I = 0x8

.field private static final DEFAULT_GOOD_BANDWIDTH:I = 0x7d0

.field private static final DEFAULT_MODERATE_BANDWIDTH:I = 0x226

.field private static final DEFAULT_POOR_BANDWIDTH:I = 0x96

.field private static final DEFAULT_SAMPLES_TO_QUALITY_CHANGE:I = 0x5

.field private static final MINIMUM_SAMPLES_TO_DECIDE_QUALITY:I = 0x2

.field private static sInstance:Lcom/androidnetworking/common/ConnectionClassManager;


# instance fields
.field private mConnectionQualityChangeListener:Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;

.field private mCurrentBandwidth:I

.field private mCurrentBandwidthForSampling:I

.field private mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

.field private mCurrentNumberOfSample:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/androidnetworking/common/ConnectionQuality;->UNKNOWN:Lcom/androidnetworking/common/ConnectionQuality;

    iput-object v0, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    .line 39
    iput v0, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    .line 40
    iput v0, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/androidnetworking/common/ConnectionClassManager;)Lcom/androidnetworking/common/ConnectionQuality;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    return-object p0
.end method

.method static synthetic access$100(Lcom/androidnetworking/common/ConnectionClassManager;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/androidnetworking/common/ConnectionClassManager;)Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mConnectionQualityChangeListener:Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;

    return-object p0
.end method

.method public static getInstance()Lcom/androidnetworking/common/ConnectionClassManager;
    .locals 2

    .line 44
    sget-object v0, Lcom/androidnetworking/common/ConnectionClassManager;->sInstance:Lcom/androidnetworking/common/ConnectionClassManager;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/androidnetworking/common/ConnectionClassManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/androidnetworking/common/ConnectionClassManager;->sInstance:Lcom/androidnetworking/common/ConnectionClassManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/androidnetworking/common/ConnectionClassManager;

    invoke-direct {v1}, Lcom/androidnetworking/common/ConnectionClassManager;-><init>()V

    sput-object v1, Lcom/androidnetworking/common/ConnectionClassManager;->sInstance:Lcom/androidnetworking/common/ConnectionClassManager;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/androidnetworking/common/ConnectionClassManager;->sInstance:Lcom/androidnetworking/common/ConnectionClassManager;

    return-object v0
.end method

.method public static shutDown()V
    .locals 1

    .line 115
    sget-object v0, Lcom/androidnetworking/common/ConnectionClassManager;->sInstance:Lcom/androidnetworking/common/ConnectionClassManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 116
    sput-object v0, Lcom/androidnetworking/common/ConnectionClassManager;->sInstance:Lcom/androidnetworking/common/ConnectionClassManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentBandwidth()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidth:I

    return v0
.end method

.method public getCurrentConnectionQuality()Lcom/androidnetworking/common/ConnectionQuality;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    return-object v0
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mConnectionQualityChangeListener:Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;

    return-void
.end method

.method public setListener(Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mConnectionQualityChangeListener:Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;

    return-void
.end method

.method public declared-synchronized updateBandwidth(JJ)V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_9

    const-wide/16 v0, 0x4e20

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p1, p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4020000000000000L    # 8.0

    mul-double p1, p1, p3

    const-wide/high16 p3, 0x4024000000000000L    # 10.0

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    goto/16 :goto_1

    .line 60
    :cond_0
    :try_start_0
    iget p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    iget p4, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    mul-int p3, p3, p4

    int-to-double p3, p3

    add-double/2addr p3, p1

    iget p1, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    add-int/lit8 p1, p1, 0x1

    int-to-double p1, p1

    div-double/2addr p3, p1

    double-to-int p1, p3

    iput p1, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    .line 62
    iget p1, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    .line 63
    iget p1, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    sget-object p3, Lcom/androidnetworking/common/ConnectionQuality;->UNKNOWN:Lcom/androidnetworking/common/ConnectionQuality;

    if-ne p1, p3, :cond_8

    iget p1, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_8

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    .line 67
    iget p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    iput p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidth:I

    .line 68
    iget p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    if-gtz p3, :cond_2

    .line 69
    sget-object p3, Lcom/androidnetworking/common/ConnectionQuality;->UNKNOWN:Lcom/androidnetworking/common/ConnectionQuality;

    iput-object p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    goto :goto_0

    .line 70
    :cond_2
    iget p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    const/16 p4, 0x96

    if-ge p3, p4, :cond_3

    .line 71
    sget-object p3, Lcom/androidnetworking/common/ConnectionQuality;->POOR:Lcom/androidnetworking/common/ConnectionQuality;

    iput-object p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    goto :goto_0

    .line 72
    :cond_3
    iget p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    const/16 p4, 0x226

    if-ge p3, p4, :cond_4

    .line 73
    sget-object p3, Lcom/androidnetworking/common/ConnectionQuality;->MODERATE:Lcom/androidnetworking/common/ConnectionQuality;

    iput-object p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    goto :goto_0

    .line 74
    :cond_4
    iget p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    const/16 p4, 0x7d0

    if-ge p3, p4, :cond_5

    .line 75
    sget-object p3, Lcom/androidnetworking/common/ConnectionQuality;->GOOD:Lcom/androidnetworking/common/ConnectionQuality;

    iput-object p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    goto :goto_0

    .line 76
    :cond_5
    iget p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    if-le p3, p4, :cond_6

    .line 77
    sget-object p3, Lcom/androidnetworking/common/ConnectionQuality;->EXCELLENT:Lcom/androidnetworking/common/ConnectionQuality;

    iput-object p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    .line 79
    :cond_6
    :goto_0
    iget p3, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    if-ne p3, p2, :cond_7

    const/4 p2, 0x0

    .line 80
    iput p2, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    .line 81
    iput p2, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    .line 83
    :cond_7
    iget-object p2, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/androidnetworking/common/ConnectionQuality;

    if-eq p2, p1, :cond_8

    iget-object p1, p0, Lcom/androidnetworking/common/ConnectionClassManager;->mConnectionQualityChangeListener:Lcom/androidnetworking/interfaces/ConnectionQualityChangeListener;

    if-eqz p1, :cond_8

    .line 85
    invoke-static {}, Lcom/androidnetworking/core/Core;->getInstance()Lcom/androidnetworking/core/Core;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidnetworking/core/Core;->getExecutorSupplier()Lcom/androidnetworking/core/ExecutorSupplier;

    move-result-object p1

    invoke-interface {p1}, Lcom/androidnetworking/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/androidnetworking/common/ConnectionClassManager$1;

    invoke-direct {p2, p0}, Lcom/androidnetworking/common/ConnectionClassManager$1;-><init>(Lcom/androidnetworking/common/ConnectionClassManager;)V

    .line 86
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0

    throw p1

    .line 57
    :cond_9
    :goto_1
    monitor-exit p0

    return-void
.end method
