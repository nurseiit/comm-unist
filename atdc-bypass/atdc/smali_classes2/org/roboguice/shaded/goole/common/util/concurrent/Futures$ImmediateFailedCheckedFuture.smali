.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFuture;
.source "Futures.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/util/concurrent/CheckedFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateFailedCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFuture<",
        "TV;>;",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/CheckedFuture<",
        "TV;TX;>;"
    }
.end annotation


# instance fields
.field private final thrown:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TX;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;)V

    .line 216
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    throw v0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 231
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
