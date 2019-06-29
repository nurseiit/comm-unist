.class public final Lcom/google/inject/spi/ElementSource;
.super Ljava/lang/Object;
.source "ElementSource.java"


# instance fields
.field final declaringSource:Ljava/lang/Object;

.field final moduleSource:Lcom/google/inject/spi/ModuleSource;

.field final originalElementSource:Lcom/google/inject/spi/ElementSource;

.field final partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;


# direct methods
.method constructor <init>(Lcom/google/inject/spi/ElementSource;Ljava/lang/Object;Lcom/google/inject/spi/ModuleSource;[Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "declaringSource cannot be null."

    .line 94
    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "moduleSource cannot be null."

    .line 95
    invoke-static {p3, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "partialCallStack cannot be null."

    .line 96
    invoke-static {p4, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iput-object p1, p0, Lcom/google/inject/spi/ElementSource;->originalElementSource:Lcom/google/inject/spi/ElementSource;

    .line 98
    iput-object p2, p0, Lcom/google/inject/spi/ElementSource;->declaringSource:Ljava/lang/Object;

    .line 99
    iput-object p3, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 100
    invoke-static {p4}, Lcom/google/inject/internal/util/StackTraceElements;->convertToInMemoryStackTraceElement([Ljava/lang/StackTraceElement;)[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/ElementSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    return-void
.end method


# virtual methods
.method public getDeclaringSource()Ljava/lang/Object;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/inject/spi/ElementSource;->declaringSource:Ljava/lang/Object;

    return-object v0
.end method

.method public getModuleClassNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v0}, Lcom/google/inject/spi/ModuleSource;->getModuleClassNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModuleConfigurePositionsInStackTrace()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v0}, Lcom/google/inject/spi/ModuleSource;->size()I

    move-result v0

    .line 151
    new-array v1, v0, [Ljava/lang/Integer;

    .line 152
    iget-object v2, p0, Lcom/google/inject/spi/ElementSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 154
    iget-object v2, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    :goto_0
    if-ge v3, v0, :cond_0

    .line 156
    invoke-virtual {v2}, Lcom/google/inject/spi/ModuleSource;->getPartialCallStackSize()I

    move-result v4

    add-int/lit8 v5, v3, -0x1

    .line 157
    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 158
    invoke-virtual {v2}, Lcom/google/inject/spi/ModuleSource;->getParent()Lcom/google/inject/spi/ModuleSource;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalElementSource()Lcom/google/inject/spi/ElementSource;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/inject/spi/ElementSource;->originalElementSource:Lcom/google/inject/spi/ElementSource;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v0}, Lcom/google/inject/spi/ModuleSource;->getStackTraceSize()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/google/inject/spi/ElementSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    array-length v1, v1

    .line 174
    iget-object v2, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v2}, Lcom/google/inject/spi/ModuleSource;->getStackTraceSize()I

    move-result v2

    add-int/2addr v2, v1

    .line 175
    new-array v2, v2, [Ljava/lang/StackTraceElement;

    .line 176
    iget-object v3, p0, Lcom/google/inject/spi/ElementSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    invoke-static {v3}, Lcom/google/inject/internal/util/StackTraceElements;->convertToStackTraceElement([Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v3, p0, Lcom/google/inject/spi/ElementSource;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v3}, Lcom/google/inject/spi/ModuleSource;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/google/inject/spi/ElementSource;->getDeclaringSource()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
