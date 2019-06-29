.class public final Lorg/roboguice/shaded/goole/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# annotations
.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v13, 0x0

    cmp-long v15, v1, v13

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ltz v15, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 79
    :goto_0
    invoke-static {v15}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v15, v3, v13

    if-ltz v15, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 80
    :goto_1
    invoke-static {v15}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v15, v5, v13

    if-ltz v15, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    .line 81
    :goto_2
    invoke-static {v15}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v15, v7, v13

    if-ltz v15, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 82
    :goto_3
    invoke-static {v15}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v15, v9, v13

    if-ltz v15, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 83
    :goto_4
    invoke-static {v15}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v15, v11, v13

    if-ltz v15, :cond_5

    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 84
    :goto_5
    invoke-static {v13}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 86
    iput-wide v1, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    .line 87
    iput-wide v3, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    .line 88
    iput-wide v5, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    .line 89
    iput-wide v7, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    .line 90
    iput-wide v9, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    .line 91
    iput-wide v11, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    return-void
.end method


# virtual methods
.method public averageLoadPenalty()D
    .locals 6

    .line 200
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    add-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 201
    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    long-to-double v0, v0

    long-to-double v2, v4

    div-double/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 253
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 254
    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    .line 255
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    iget-wide v4, p1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    iget-wide v4, p1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, p1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, p1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, p1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, p1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public evictionCount()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 247
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hitCount()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    return-wide v0
.end method

.method public hitRate()D
    .locals 5

    .line 115
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 116
    :cond_0
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    long-to-double v2, v2

    long-to-double v0, v0

    div-double v0, v2, v0

    :goto_0
    return-wide v0
.end method

.method public loadCount()J
    .locals 6

    .line 149
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    add-long v4, v0, v2

    return-wide v4
.end method

.method public loadExceptionCount()J
    .locals 2

    .line 171
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    return-wide v0
.end method

.method public loadExceptionRate()D
    .locals 6

    .line 180
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    add-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 181
    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    long-to-double v0, v0

    long-to-double v2, v4

    div-double/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public loadSuccessCount()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    return-wide v0
.end method

.method public minus(Lorg/roboguice/shaded/goole/common/cache/CacheStats;)Lorg/roboguice/shaded/goole/common/cache/CacheStats;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 220
    new-instance v14, Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    iget-wide v2, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    sub-long v6, v2, v4

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-wide v6, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    iget-wide v8, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    sub-long v10, v6, v8

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide v8, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v10, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    sub-long v12, v8, v10

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-wide v10, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v12, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    move-wide v15, v8

    sub-long v8, v10, v12

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-wide v10, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v12, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    move-wide/from16 v17, v8

    sub-long v8, v10, v12

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-wide v8, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    iget-wide v12, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    sub-long v0, v8, v12

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object v1, v14

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v15

    move-wide/from16 v8, v17

    invoke-direct/range {v1 .. v13}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v14
.end method

.method public missCount()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    return-wide v0
.end method

.method public missRate()D
    .locals 5

    .line 139
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 140
    :cond_0
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    long-to-double v2, v2

    long-to-double v0, v0

    div-double v0, v2, v0

    :goto_0
    return-wide v0
.end method

.method public plus(Lorg/roboguice/shaded/goole/common/cache/CacheStats;)Lorg/roboguice/shaded/goole/common/cache/CacheStats;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 236
    new-instance v14, Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    iget-wide v2, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    add-long v6, v2, v4

    iget-wide v2, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    iget-wide v4, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    add-long v8, v2, v4

    iget-wide v2, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    add-long v10, v2, v4

    iget-wide v2, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    add-long v12, v2, v4

    iget-wide v2, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    add-long v15, v2, v4

    iget-wide v2, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    add-long v17, v2, v4

    move-object v1, v14

    move-wide v2, v6

    move-wide v4, v8

    move-wide v6, v10

    move-wide v8, v12

    move-wide v10, v15

    move-wide/from16 v12, v17

    invoke-direct/range {v1 .. v13}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v14
.end method

.method public requestCount()J
    .locals 6

    .line 99
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    add-long v4, v0, v2

    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 267
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalLoadTime()J
    .locals 2

    .line 192
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    return-wide v0
.end method
