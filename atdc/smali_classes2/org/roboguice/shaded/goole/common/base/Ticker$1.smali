.class final Lorg/roboguice/shaded/goole/common/base/Ticker$1;
.super Lorg/roboguice/shaded/goole/common/base/Ticker;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Ticker;-><init>()V

    return-void
.end method


# virtual methods
.method public read()J
    .locals 2

    .line 60
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Platform;->systemNanoTime()J

    move-result-wide v0

    return-wide v0
.end method
