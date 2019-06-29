.class public interface abstract Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningScheduledExecutorService;
.super Ljava/lang/Object;
.source "ListeningScheduledExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;
.implements Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;


# annotations
.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# virtual methods
.method public abstract schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableScheduledFuture<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableScheduledFuture<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableScheduledFuture<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableScheduledFuture<",
            "*>;"
        }
    .end annotation
.end method
