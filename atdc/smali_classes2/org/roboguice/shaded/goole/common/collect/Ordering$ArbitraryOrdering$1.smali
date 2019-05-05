.class Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering$1;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Function<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;)V
    .locals 1

    .line 265
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering$1;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 269
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering$1;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering$1;->apply(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
