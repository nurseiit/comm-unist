.class public final Lcom/google/inject/spi/ScopeBinding;
.super Ljava/lang/Object;
.source "ScopeBinding.java"

# interfaces
.implements Lcom/google/inject/spi/Element;


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lcom/google/inject/Scope;

.field private final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/inject/Scope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "source"

    .line 43
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/ScopeBinding;->source:Ljava/lang/Object;

    const-string p1, "annotationType"

    .line 44
    invoke-static {p2, p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/inject/spi/ScopeBinding;->annotationType:Ljava/lang/Class;

    const-string p1, "scope"

    .line 45
    invoke-static {p3, p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/Scope;

    iput-object p1, p0, Lcom/google/inject/spi/ScopeBinding;->scope:Lcom/google/inject/Scope;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 61
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/google/inject/spi/ScopeBinding;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/inject/spi/ScopeBinding;->annotationType:Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/inject/spi/ScopeBinding;->scope:Lcom/google/inject/Scope;

    invoke-interface {p1, v0, v1}, Lcom/google/inject/Binder;->bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V

    return-void
.end method

.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/inject/spi/ScopeBinding;->annotationType:Ljava/lang/Class;

    return-object v0
.end method

.method public getScope()Lcom/google/inject/Scope;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/inject/spi/ScopeBinding;->scope:Lcom/google/inject/Scope;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/inject/spi/ScopeBinding;->source:Ljava/lang/Object;

    return-object v0
.end method
