.class public Lcom/google/inject/CreationException;
.super Ljava/lang/RuntimeException;
.source "CreationException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/inject/spi/Message;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 39
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/CreationException;->messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 40
    iget-object p1, p0, Lcom/google/inject/CreationException;->messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 41
    iget-object p1, p0, Lcom/google/inject/CreationException;->messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {p1}, Lcom/google/inject/internal/Errors;->getOnlyCause(Ljava/util/Collection;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/CreationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getErrorMessages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/inject/spi/Message;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/inject/CreationException;->messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    const-string v0, "Unable to create injector, see the following errors"

    .line 50
    iget-object v1, p0, Lcom/google/inject/CreationException;->messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {v0, v1}, Lcom/google/inject/internal/Errors;->format(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
