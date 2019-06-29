.class public final Lcom/google/inject/spi/DependencyAndSource;
.super Ljava/lang/Object;
.source "DependencyAndSource.java"


# instance fields
.field private final dependency:Lcom/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/Dependency<",
            "*>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/inject/spi/Dependency;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/Dependency<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/inject/spi/DependencyAndSource;->dependency:Lcom/google/inject/spi/Dependency;

    .line 38
    iput-object p2, p0, Lcom/google/inject/spi/DependencyAndSource;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBindingSource()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/inject/spi/DependencyAndSource;->source:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/inject/spi/DependencyAndSource;->source:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/inject/internal/util/StackTraceElements;->forType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/DependencyAndSource;->source:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/inject/spi/DependencyAndSource;->source:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0}, Lcom/google/inject/internal/util/StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/inject/spi/DependencyAndSource;->source:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDependency()Lcom/google/inject/spi/Dependency;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/spi/Dependency<",
            "*>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/inject/spi/DependencyAndSource;->dependency:Lcom/google/inject/spi/Dependency;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/google/inject/spi/DependencyAndSource;->getDependency()Lcom/google/inject/spi/Dependency;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/google/inject/spi/DependencyAndSource;->getBindingSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
