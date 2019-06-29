.class public final Lcom/google/inject/internal/util/SourceProvider;
.super Ljava/lang/Object;
.source "SourceProvider.java"


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/google/inject/internal/util/SourceProvider;

.field public static final UNKNOWN_SOURCE:Ljava/lang/Object;


# instance fields
.field private final classNamesToSkip:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/inject/internal/util/SourceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[unknown source]"

    .line 33
    sput-object v0, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/google/inject/internal/util/SourceProvider;

    const-class v1, Lcom/google/inject/internal/util/SourceProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/internal/util/SourceProvider;-><init>(Ljava/lang/Iterable;)V

    sput-object v0, Lcom/google/inject/internal/util/SourceProvider;->DEFAULT_INSTANCE:Lcom/google/inject/internal/util/SourceProvider;

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/internal/util/SourceProvider;Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/util/SourceProvider;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/inject/internal/util/SourceProvider;->parent:Lcom/google/inject/internal/util/SourceProvider;

    .line 48
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 49
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 50
    invoke-direct {p1, v1}, Lcom/google/inject/internal/util/SourceProvider;->shouldBeSkipped(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    :cond_1
    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/util/SourceProvider;->classNamesToSkip:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/util/SourceProvider;-><init>(Lcom/google/inject/internal/util/SourceProvider;Ljava/lang/Iterable;)V

    return-void
.end method

.method private static varargs asStrings([Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 72
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private shouldBeSkipped(Ljava/lang/String;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/inject/internal/util/SourceProvider;->parent:Lcom/google/inject/internal/util/SourceProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/util/SourceProvider;->parent:Lcom/google/inject/internal/util/SourceProvider;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/util/SourceProvider;->shouldBeSkipped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/util/SourceProvider;->classNamesToSkip:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public get([Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;
    .locals 4

    const-string v0, "The stack trace elements cannot be null."

    .line 82
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 84
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-direct {p0, v3}, Lcom/google/inject/internal/util/SourceProvider;->shouldBeSkipped(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public getFromClassNames(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "The list of module class names cannot be null."

    .line 97
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-direct {p0, v0}, Lcom/google/inject/internal/util/SourceProvider;->shouldBeSkipped(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance p1, Ljava/lang/StackTraceElement;

    const-string v1, "configure"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 103
    :cond_1
    sget-object p1, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    return-object p1
.end method

.method public varargs plusSkippedClasses([Ljava/lang/Class;)Lcom/google/inject/internal/util/SourceProvider;
    .locals 1

    .line 59
    new-instance v0, Lcom/google/inject/internal/util/SourceProvider;

    invoke-static {p1}, Lcom/google/inject/internal/util/SourceProvider;->asStrings([Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/inject/internal/util/SourceProvider;-><init>(Lcom/google/inject/internal/util/SourceProvider;Ljava/lang/Iterable;)V

    return-object v0
.end method
