.class Lorg/roboguice/shaded/goole/common/collect/Iterables$ConsumingQueueIterator;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsumingQueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TT;>;)V"
        }
    .end annotation

    .line 959
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;-><init>()V

    .line 960
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$ConsumingQueueIterator;->queue:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Queue;Lorg/roboguice/shaded/goole/common/collect/Iterables$1;)V
    .locals 0

    .line 956
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables$ConsumingQueueIterator;-><init>(Ljava/util/Queue;)V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 965
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$ConsumingQueueIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 967
    :catch_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Iterables$ConsumingQueueIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
