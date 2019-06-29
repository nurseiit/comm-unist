.class public abstract Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingFuture;
.source "ForwardingListenableFuture.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingFuture<",
        "TV;>;",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture;->delegate()Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture;->delegate()Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture;->delegate()Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation
.end method
