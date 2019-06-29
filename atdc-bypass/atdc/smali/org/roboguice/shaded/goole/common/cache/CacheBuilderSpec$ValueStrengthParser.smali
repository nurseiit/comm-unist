.class Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$ValueStrengthParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueStrengthParser"
.end annotation


# instance fields
.field private final strength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;


# direct methods
.method public constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$ValueStrengthParser;->strength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-void
.end method


# virtual methods
.method public parse(Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string v2, "key %s does not take values"

    .line 388
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-static {p3, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 389
    iget-object p3, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    const-string v2, "%s was already set to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    iget-object p2, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    aput-object p2, v3, v1

    invoke-static {p3, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$ValueStrengthParser;->strength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    iput-object p2, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-void
.end method
