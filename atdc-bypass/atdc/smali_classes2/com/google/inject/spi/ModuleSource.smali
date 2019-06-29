.class final Lcom/google/inject/spi/ModuleSource;
.super Ljava/lang/Object;
.source "ModuleSource.java"


# instance fields
.field private final moduleClassName:Ljava/lang/String;

.field private final parent:Lcom/google/inject/spi/ModuleSource;

.field private final partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;


# direct methods
.method constructor <init>(Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0, p1, p2}, Lcom/google/inject/spi/ModuleSource;-><init>(Lcom/google/inject/spi/ModuleSource;Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/spi/ModuleSource;Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "module cannot be null."

    .line 73
    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "partialCallStack cannot be null."

    .line 74
    invoke-static {p3, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/ModuleSource;->moduleClassName:Ljava/lang/String;

    .line 77
    invoke-static {p3}, Lcom/google/inject/internal/util/StackTraceElements;->convertToInMemoryStackTraceElement([Ljava/lang/StackTraceElement;)[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    return-void
.end method


# virtual methods
.method createChild(Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)Lcom/google/inject/spi/ModuleSource;
    .locals 1

    .line 114
    new-instance v0, Lcom/google/inject/spi/ModuleSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/inject/spi/ModuleSource;-><init>(Lcom/google/inject/spi/ModuleSource;Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)V

    return-object v0
.end method

.method getModuleClassName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->moduleClassName:Ljava/lang/String;

    return-object v0
.end method

.method getModuleClassNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    .line 133
    iget-object v2, v1, Lcom/google/inject/spi/ModuleSource;->moduleClassName:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    .line 135
    iget-object v1, v1, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method getParent()Lcom/google/inject/spi/ModuleSource;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    return-object v0
.end method

.method getPartialCallStack()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    invoke-static {v0}, Lcom/google/inject/internal/util/StackTraceElements;->convertToStackTraceElement([Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method getPartialCallStackSize()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    array-length v0, v0

    return v0
.end method

.method getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 6

    .line 168
    invoke-virtual {p0}, Lcom/google/inject/spi/ModuleSource;->getStackTraceSize()I

    move-result v0

    .line 169
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    move-object v2, p0

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 173
    iget-object v4, v2, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    invoke-static {v4}, Lcom/google/inject/internal/util/StackTraceElements;->convertToStackTraceElement([Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 175
    array-length v5, v4

    .line 176
    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v2, v2, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getStackTraceSize()I
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    array-length v0, v0

    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v0}, Lcom/google/inject/spi/ModuleSource;->getStackTraceSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/inject/spi/ModuleSource;->partialCallStack:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method size()I
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/ModuleSource;->parent:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v0}, Lcom/google/inject/spi/ModuleSource;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
