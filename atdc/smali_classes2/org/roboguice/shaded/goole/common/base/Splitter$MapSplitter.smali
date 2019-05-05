.class public final Lorg/roboguice/shaded/goole/common/base/Splitter$MapSplitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapSplitter"
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# static fields
.field private static final INVALID_ENTRY_MESSAGE:Ljava/lang/String; = "Chunk [%s] is not a valid entry"


# instance fields
.field private final entrySplitter:Lorg/roboguice/shaded/goole/common/base/Splitter;

.field private final outerSplitter:Lorg/roboguice/shaded/goole/common/base/Splitter;


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/base/Splitter;Lorg/roboguice/shaded/goole/common/base/Splitter;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$MapSplitter;->outerSplitter:Lorg/roboguice/shaded/goole/common/base/Splitter;

    .line 481
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Splitter;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$MapSplitter;->entrySplitter:Lorg/roboguice/shaded/goole/common/base/Splitter;

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/base/Splitter;Lorg/roboguice/shaded/goole/common/base/Splitter;Lorg/roboguice/shaded/goole/common/base/Splitter$1;)V
    .locals 0

    .line 473
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Splitter$MapSplitter;-><init>(Lorg/roboguice/shaded/goole/common/base/Splitter;Lorg/roboguice/shaded/goole/common/base/Splitter;)V

    return-void
.end method


# virtual methods
.method public split(Ljava/lang/CharSequence;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 501
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$MapSplitter;->outerSplitter:Lorg/roboguice/shaded/goole/common/base/Splitter;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$MapSplitter;->entrySplitter:Lorg/roboguice/shaded/goole/common/base/Splitter;

    invoke-static {v2, v1}, Lorg/roboguice/shaded/goole/common/base/Splitter;->access$000(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v2

    .line 504
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "Chunk [%s] is not a valid entry"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v4, v6}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 505
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 506
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    const-string v6, "Duplicate key [%s] found."

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v7

    invoke-static {v4, v6, v8}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 508
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v6, "Chunk [%s] is not a valid entry"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v1, v8, v7

    invoke-static {v4, v6, v8}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 509
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 510
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/2addr v2, v5

    const-string v3, "Chunk [%s] is not a valid entry"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 514
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
