.class Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;
.super Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$IntegerParser;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConcurrencyLevelParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$IntegerParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseInteger(Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;I)V
    .locals 5

    .line 356
    iget-object v0, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "concurrency level was already set to "

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    return-void
.end method
