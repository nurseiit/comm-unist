.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateCancelledFuture;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateCancelledFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final thrown:Ljava/util/concurrent/CancellationException;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;)V

    .line 195
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Immediate cancelled future."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateCancelledFuture;->thrown:Ljava/util/concurrent/CancellationException;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const-string v0, "Task was cancelled."

    .line 205
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateCancelledFuture;->thrown:Ljava/util/concurrent/CancellationException;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
