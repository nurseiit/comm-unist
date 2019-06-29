.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$MappingCheckedFuture;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractCheckedFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappingCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractCheckedFuture<",
        "TV;TX;>;"
    }
.end annotation


# instance fields
.field final mapper:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "Ljava/lang/Exception;",
            "TX;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "Ljava/lang/Exception;",
            "TX;>;)V"
        }
    .end annotation

    .line 1665
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractCheckedFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V

    .line 1667
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Function;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$MappingCheckedFuture;->mapper:Lorg/roboguice/shaded/goole/common/base/Function;

    return-void
.end method


# virtual methods
.method protected mapException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TX;"
        }
    .end annotation

    .line 1672
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$MappingCheckedFuture;->mapper:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    return-object p1
.end method
