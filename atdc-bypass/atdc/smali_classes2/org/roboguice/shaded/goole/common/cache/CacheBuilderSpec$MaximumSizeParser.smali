.class Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$MaximumSizeParser;
.super Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$LongParser;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaximumSizeParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$LongParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseLong(Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;J)V
    .locals 6

    .line 332
    iget-object v0, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "maximum size was already set to "

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v0, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "maximum weight was already set to "

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 336
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    return-void
.end method
