.class public final Lcom/google/inject/spi/InjectionRequest;
.super Ljava/lang/Object;
.source "InjectionRequest.java"

# interfaces
.implements Lcom/google/inject/spi/Element;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/Element;"
    }
.end annotation


# instance fields
.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;

.field private final type:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "source"

    .line 44
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/InjectionRequest;->source:Ljava/lang/Object;

    const-string p1, "type"

    .line 45
    invoke-static {p2, p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/TypeLiteral;

    iput-object p1, p0, Lcom/google/inject/spi/InjectionRequest;->type:Lcom/google/inject/TypeLiteral;

    const-string p1, "instance"

    .line 46
    invoke-static {p3, p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/InjectionRequest;->instance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 78
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/google/inject/spi/InjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/inject/spi/InjectionRequest;->type:Lcom/google/inject/TypeLiteral;

    iget-object v1, p0, Lcom/google/inject/spi/InjectionRequest;->instance:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/google/inject/Binder;->requestInjection(Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V

    return-void
.end method

.method public getInjectionPoints()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/ConfigurationException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/inject/spi/InjectionRequest;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/inject/spi/InjectionRequest;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/inject/spi/InjectionRequest;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/inject/spi/InjectionRequest;->type:Lcom/google/inject/TypeLiteral;

    return-object v0
.end method
