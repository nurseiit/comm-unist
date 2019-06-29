.class public final Lorg/roboguice/shaded/goole/common/base/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# annotations
.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# instance fields
.field private elapsedNanos:J

.field private isRunning:Z

.field private startTick:J

.field private final ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Ticker;->systemTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;-><init>(Lorg/roboguice/shaded/goole/common/base/Ticker;)V

    return-void
.end method

.method public constructor <init>(Lorg/roboguice/shaded/goole/common/base/Ticker;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ticker"

    .line 143
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Ticker;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    return-void
.end method

.method private static abbreviate(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 1

    .line 250
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Stopwatch$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 266
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "d"

    return-object p0

    :pswitch_1
    const-string p0, "h"

    return-object p0

    :pswitch_2
    const-string p0, "min"

    return-object p0

    :pswitch_3
    const-string p0, "s"

    return-object p0

    :pswitch_4
    const-string p0, "ms"

    return-object p0

    :pswitch_5
    const-string p0, "\u03bcs"

    return-object p0

    :pswitch_6
    const-string p0, "ns"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static chooseUnit(J)Ljava/util/concurrent/TimeUnit;
    .locals 5

    .line 228
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 229
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    .line 231
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 232
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    .line 234
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 235
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    return-object p0

    .line 237
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 238
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    .line 240
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 241
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    .line 243
    :cond_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    cmp-long v0, p0, v2

    if-lez v0, :cond_5

    .line 244
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    .line 246
    :cond_5
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public static createStarted()Lorg/roboguice/shaded/goole/common/base/Stopwatch;
    .locals 1

    .line 109
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->start()Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    move-result-object v0

    return-object v0
.end method

.method public static createStarted(Lorg/roboguice/shaded/goole/common/base/Ticker;)Lorg/roboguice/shaded/goole/common/base/Stopwatch;
    .locals 1

    .line 119
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;-><init>(Lorg/roboguice/shaded/goole/common/base/Ticker;)V

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->start()Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    move-result-object p0

    return-object p0
.end method

.method public static createUnstarted()Lorg/roboguice/shaded/goole/common/base/Stopwatch;
    .locals 1

    .line 89
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;-><init>()V

    return-object v0
.end method

.method public static createUnstarted(Lorg/roboguice/shaded/goole/common/base/Ticker;)Lorg/roboguice/shaded/goole/common/base/Stopwatch;
    .locals 1

    .line 99
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;-><init>(Lorg/roboguice/shaded/goole/common/base/Ticker;)V

    return-object v0
.end method

.method private elapsedNanos()J
    .locals 6

    .line 196
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->startTick:J

    sub-long v4, v0, v2

    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos:J

    add-long v2, v4, v0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos:J

    :goto_0
    return-wide v2
.end method


# virtual methods
.method public elapsed(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 210
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->isRunning:Z

    return v0
.end method

.method public reset()Lorg/roboguice/shaded/goole/common/base/Stopwatch;
    .locals 2

    const-wide/16 v0, 0x0

    .line 190
    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos:J

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->isRunning:Z

    return-object p0
.end method

.method public start()Lorg/roboguice/shaded/goole/common/base/Stopwatch;
    .locals 3

    .line 162
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->isRunning:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "This stopwatch is already running."

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 163
    iput-boolean v1, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->isRunning:Z

    .line 164
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->startTick:J

    return-object p0
.end method

.method public stop()Lorg/roboguice/shaded/goole/common/base/Stopwatch;
    .locals 8

    .line 176
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v0

    .line 177
    iget-boolean v2, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->isRunning:Z

    const-string v3, "This stopwatch is already stopped."

    invoke-static {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    .line 178
    iput-boolean v2, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->isRunning:Z

    .line 179
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos:J

    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->startTick:J

    sub-long v6, v0, v4

    add-long v0, v2, v6

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "String.format()"
    .end annotation

    .line 218
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos()J

    move-result-wide v0

    .line 220
    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->chooseUnit(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    long-to-double v0, v0

    .line 221
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v0, v3

    const-string v3, "%.4g %s"

    const/4 v4, 0x2

    .line 224
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->abbreviate(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
