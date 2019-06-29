.class public final Lcom/google/inject/ConfigurationException;
.super Ljava/lang/RuntimeException;
.source "ConfigurationException.java"


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

.field private partialValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/inject/spi/Message;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/google/inject/ConfigurationException;->partialValue:Ljava/lang/Object;

    .line 41
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/ConfigurationException;->messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 42
    iget-object p1, p0, Lcom/google/inject/ConfigurationException;->messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {p1}, Lcom/google/inject/internal/Errors;->getOnlyCause(Ljava/util/Collection;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/ConfigurationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 56
    iget-object v0, p0, Lcom/google/inject/ConfigurationException;->messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    const-string v0, "Guice configuration errors"

    .line 72
    iget-object v1, p0, Lcom/google/inject/ConfigurationException;->messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {v0, v1}, Lcom/google/inject/internal/Errors;->format(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/inject/ConfigurationException;->partialValue:Ljava/lang/Object;

    return-object v0
.end method

.method public withPartialValue(Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/google/inject/ConfigurationException;->partialValue:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Can\'t clobber existing partial value %s with %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/inject/ConfigurationException;->partialValue:Ljava/lang/Object;

    aput-object v5, v4, v1

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    new-instance v0, Lcom/google/inject/ConfigurationException;

    iget-object v1, p0, Lcom/google/inject/ConfigurationException;->messages:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-direct {v0, v1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    .line 50
    iput-object p1, v0, Lcom/google/inject/ConfigurationException;->partialValue:Ljava/lang/Object;

    return-object v0
.end method
