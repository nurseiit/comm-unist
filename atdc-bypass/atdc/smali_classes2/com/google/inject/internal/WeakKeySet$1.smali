.class Lcom/google/inject/internal/WeakKeySet$1;
.super Ljava/lang/Object;
.source "WeakKeySet.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/RemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/WeakKeySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/cache/RemovalListener<",
        "Lcom/google/inject/internal/State;",
        "Ljava/util/Set<",
        "Lcom/google/inject/internal/WeakKeySet$KeyAndSource;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/WeakKeySet;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/WeakKeySet;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/inject/internal/WeakKeySet$1;->this$0:Lcom/google/inject/internal/WeakKeySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoval(Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalNotification<",
            "Lcom/google/inject/internal/State;",
            "Ljava/util/Set<",
            "Lcom/google/inject/internal/WeakKeySet$KeyAndSource;",
            ">;>;)V"
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;->getCause()Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(Z)V

    .line 63
    iget-object v0, p0, Lcom/google/inject/internal/WeakKeySet$1;->this$0:Lcom/google/inject/internal/WeakKeySet;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/inject/internal/WeakKeySet;->access$000(Lcom/google/inject/internal/WeakKeySet;Ljava/util/Set;)V

    return-void
.end method
