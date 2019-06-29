.class public abstract Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture;
.source "ForwardingListenableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingListenableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture;-><init>()V

    .line 66
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate()Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate()Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    return-object v0
.end method
