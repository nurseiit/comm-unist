.class final Lcom/google/inject/internal/BindingProcessor;
.super Lcom/google/inject/internal/AbstractBindingProcessor;
.source "BindingProcessor.java"


# instance fields
.field private final initializer:Lcom/google/inject/internal/Initializer;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/Initializer;Lcom/google/inject/internal/ProcessedBindingData;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p3}, Lcom/google/inject/internal/AbstractBindingProcessor;-><init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/ProcessedBindingData;)V

    .line 49
    iput-object p2, p0, Lcom/google/inject/internal/BindingProcessor;->initializer:Lcom/google/inject/internal/Initializer;

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/BindingProcessor;)Lcom/google/inject/internal/Initializer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/inject/internal/BindingProcessor;->initializer:Lcom/google/inject/internal/Initializer;

    return-object p0
.end method

.method private bindExposed(Lcom/google/inject/spi/PrivateElements;Lcom/google/inject/Key;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/PrivateElements;",
            "Lcom/google/inject/Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 192
    new-instance v4, Lcom/google/inject/internal/ExposedKeyFactory;

    invoke-direct {v4, p2, p1}, Lcom/google/inject/internal/ExposedKeyFactory;-><init>(Lcom/google/inject/Key;Lcom/google/inject/spi/PrivateElements;)V

    .line 193
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor;->bindingData:Lcom/google/inject/internal/ProcessedBindingData;

    invoke-virtual {v0, v4}, Lcom/google/inject/internal/ProcessedBindingData;->addCreationListener(Lcom/google/inject/internal/CreationListener;)V

    .line 194
    new-instance v6, Lcom/google/inject/internal/ExposedBindingImpl;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-interface {p1, p2}, Lcom/google/inject/spi/PrivateElements;->getExposedSource(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v6

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/ExposedBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/spi/PrivateElements;)V

    invoke-virtual {p0, v6}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/Binding;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding<",
            "TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 54
    const-class v1, Ljava/lang/Void;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 55
    instance-of v0, p1, Lcom/google/inject/spi/ProviderInstanceBinding;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/inject/spi/ProviderInstanceBinding;

    invoke-interface {p1}, Lcom/google/inject/spi/ProviderInstanceBinding;->getUserSuppliedProvider()Ljavax/inject/Provider;

    move-result-object p1

    instance-of p1, p1, Lcom/google/inject/internal/ProviderMethod;

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->voidProviderMethod()Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->missingConstantValues()Lcom/google/inject/internal/Errors;

    .line 62
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    const-class v1, Lcom/google/inject/Provider;

    if-ne v0, v1, :cond_2

    .line 66
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->bindingToProvider()Lcom/google/inject/internal/Errors;

    .line 67
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 70
    :cond_2
    new-instance v0, Lcom/google/inject/internal/BindingProcessor$1;

    move-object v1, p1

    check-cast v1, Lcom/google/inject/internal/BindingImpl;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/internal/BindingProcessor$1;-><init>(Lcom/google/inject/internal/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V

    invoke-interface {p1, v0}, Lcom/google/inject/Binding;->acceptTargetVisitor(Lcom/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;
    .locals 2

    .line 185
    invoke-interface {p1}, Lcom/google/inject/spi/PrivateElements;->getExposedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Key;

    .line 186
    invoke-direct {p0, p1, v1}, Lcom/google/inject/internal/BindingProcessor;->bindExposed(Lcom/google/inject/spi/PrivateElements;Lcom/google/inject/Key;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 188
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor;->visit(Lcom/google/inject/Binding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
