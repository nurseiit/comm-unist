.class abstract Lcom/google/inject/internal/AbstractProcessor;
.super Lcom/google/inject/spi/DefaultElementVisitor;
.source "AbstractProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/spi/DefaultElementVisitor<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected errors:Lcom/google/inject/internal/Errors;

.field protected injector:Lcom/google/inject/internal/InjectorImpl;


# direct methods
.method protected constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/inject/spi/DefaultElementVisitor;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/inject/internal/AbstractProcessor;->errors:Lcom/google/inject/internal/Errors;

    return-void
.end method


# virtual methods
.method public process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/inject/internal/AbstractProcessor;->errors:Lcom/google/inject/internal/Errors;

    .line 51
    iput-object p1, p0, Lcom/google/inject/internal/AbstractProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    const/4 p1, 0x0

    .line 53
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/spi/Element;

    .line 55
    invoke-interface {v1}, Lcom/google/inject/spi/Element;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    iput-object v2, p0, Lcom/google/inject/internal/AbstractProcessor;->errors:Lcom/google/inject/internal/Errors;

    .line 56
    invoke-interface {v1, p0}, Lcom/google/inject/spi/Element;->acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :cond_1
    iput-object v0, p0, Lcom/google/inject/internal/AbstractProcessor;->errors:Lcom/google/inject/internal/Errors;

    .line 63
    iput-object p1, p0, Lcom/google/inject/internal/AbstractProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    return-void

    :catchall_0
    move-exception p2

    .line 62
    iput-object v0, p0, Lcom/google/inject/internal/AbstractProcessor;->errors:Lcom/google/inject/internal/Errors;

    .line 63
    iput-object p1, p0, Lcom/google/inject/internal/AbstractProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    throw p2
.end method

.method public process(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/inject/internal/InjectorShell;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/InjectorShell;

    .line 45
    invoke-virtual {v0}, Lcom/google/inject/internal/InjectorShell;->getInjector()Lcom/google/inject/internal/InjectorImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/inject/internal/InjectorShell;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/inject/internal/AbstractProcessor;->process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
