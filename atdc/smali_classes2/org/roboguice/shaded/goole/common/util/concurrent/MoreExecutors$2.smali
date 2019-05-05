.class final Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$2;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/Executor;Lorg/roboguice/shaded/goole/common/base/Supplier;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/roboguice/shaded/goole/common/base/Supplier;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$2;->val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 782
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$2;->val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-static {p1, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lorg/roboguice/shaded/goole/common/base/Supplier;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
