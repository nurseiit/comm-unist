.class public Lcom/google/inject/internal/util/StackTraceElements;
.super Ljava/lang/Object;
.source "StackTraceElements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    }
.end annotation


# static fields
.field private static final EMPTY_INMEMORY_STACK_TRACE:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field private static final UNKNOWN_SOURCE:Ljava/lang/String; = "Unknown Source"

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 36
    new-array v1, v0, [Ljava/lang/StackTraceElement;

    sput-object v1, Lcom/google/inject/internal/util/StackTraceElements;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 37
    new-array v0, v0, [Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    sput-object v0, Lcom/google/inject/internal/util/StackTraceElements;->EMPTY_INMEMORY_STACK_TRACE:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .line 55
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 99
    sget-object v0, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static convertToInMemoryStackTraceElement([Ljava/lang/StackTraceElement;)[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    .locals 4

    .line 107
    array-length v0, p0

    if-nez v0, :cond_0

    .line 108
    sget-object p0, Lcom/google/inject/internal/util/StackTraceElements;->EMPTY_INMEMORY_STACK_TRACE:[Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    return-object p0

    .line 110
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    const/4 v1, 0x0

    .line 112
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 113
    new-instance v2, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;-><init>(Ljava/lang/StackTraceElement;)V

    invoke-static {v2}, Lcom/google/inject/internal/util/StackTraceElements;->weakIntern(Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertToStackTraceElement([Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7

    .line 124
    array-length v0, p0

    if-nez v0, :cond_0

    .line 125
    sget-object p0, Lcom/google/inject/internal/util/StackTraceElements;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    return-object p0

    .line 127
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    .line 129
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 130
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 131
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 132
    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getLineNumber()I

    move-result v4

    .line 133
    new-instance v5, Ljava/lang/StackTraceElement;

    const-string v6, "Unknown Source"

    invoke-direct {v5, v2, v3, v6, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;
    .locals 5

    if-nez p0, :cond_0

    .line 60
    sget-object p0, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    return-object p0

    .line 63
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 76
    invoke-static {p0}, Lcom/google/inject/internal/util/Classes;->memberType(Ljava/lang/reflect/Member;)Ljava/lang/Class;

    move-result-object v3

    .line 77
    const-class v4, Ljava/lang/reflect/Constructor;

    if-ne v3, v4, :cond_1

    const-string p0, "<init>"

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p0

    .line 78
    :goto_0
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p0, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3
.end method

.method public static forType(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "class"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static weakIntern(Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;)Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
    .locals 3

    .line 141
    sget-object v0, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    if-eqz v0, :cond_0

    return-object v0

    .line 146
    :cond_0
    new-instance v0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    invoke-virtual {p0}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/internal/util/StackTraceElements;->weakIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/inject/internal/util/StackTraceElements;->weakIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->getLineNumber()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object p0, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static weakIntern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 155
    sget-object v0, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 159
    :cond_0
    sget-object v0, Lcom/google/inject/internal/util/StackTraceElements;->cache:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
