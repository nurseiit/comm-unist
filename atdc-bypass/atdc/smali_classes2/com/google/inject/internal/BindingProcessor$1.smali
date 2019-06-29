.class Lcom/google/inject/internal/BindingProcessor$1;
.super Lcom/google/inject/internal/AbstractBindingProcessor$Processor;
.source "BindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/BindingProcessor;->visit(Lcom/google/inject/Binding;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/AbstractBindingProcessor$Processor<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/BindingProcessor;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/AbstractBindingProcessor$Processor;-><init>(Lcom/google/inject/internal/AbstractBindingProcessor;Lcom/google/inject/internal/BindingImpl;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ConstructorBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingProcessor$1;->prepareBinding()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    invoke-interface {p1}, Lcom/google/inject/spi/ConstructorBinding;->getConstructor()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v6, p1, Lcom/google/inject/internal/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/google/inject/internal/ConstructorBindingImpl;->create(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/spi/InjectionPoint;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/Errors;ZZ)Lcom/google/inject/internal/ConstructorBindingImpl;

    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->scheduleInitialization(Lcom/google/inject/internal/BindingImpl;)V

    .line 78
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    .line 81
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/inject/internal/BindingProcessor;->invalidBinding(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/UntargettedBindingImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    :goto_0
    const/4 p1, 0x1

    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ConvertedConstantBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 169
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot apply a non-module element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ExposedBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 164
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot apply a non-module element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InstanceBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingProcessor$1;->prepareBinding()V

    .line 89
    invoke-interface {p1}, Lcom/google/inject/spi/InstanceBinding;->getInjectionPoints()Ljava/util/Set;

    move-result-object v6

    .line 90
    invoke-interface {p1}, Lcom/google/inject/spi/InstanceBinding;->getInstance()Ljava/lang/Object;

    move-result-object v7

    .line 93
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    invoke-static {v0}, Lcom/google/inject/internal/BindingProcessor;->access$000(Lcom/google/inject/internal/BindingProcessor;)Lcom/google/inject/internal/Initializer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    move-object v2, v7

    move-object v3, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/inject/internal/Initializer;->requestInjection(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Binding;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/internal/Initializable;

    move-result-object p1

    .line 95
    new-instance v0, Lcom/google/inject/internal/ConstantFactory;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/ConstantFactory;-><init>(Lcom/google/inject/internal/Initializable;)V

    .line 96
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 98
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    new-instance v8, Lcom/google/inject/internal/InstanceBindingImpl;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    move-object v0, v8

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p1, v8}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    const/4 p1, 0x1

    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/LinkedKeyBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingProcessor$1;->prepareBinding()V

    .line 143
    invoke-interface {p1}, Lcom/google/inject/spi/LinkedKeyBinding;->getLinkedKey()Lcom/google/inject/Key;

    move-result-object v6

    .line 144
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    invoke-virtual {p1, v6}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object p1, p1, Lcom/google/inject/internal/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->recursiveBinding()Lcom/google/inject/internal/Errors;

    .line 148
    :cond_0
    new-instance p1, Lcom/google/inject/internal/FactoryProxy;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v6, v2}, Lcom/google/inject/internal/FactoryProxy;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->bindingData:Lcom/google/inject/internal/ProcessedBindingData;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/ProcessedBindingData;->addCreationListener(Lcom/google/inject/internal/CreationListener;)V

    .line 150
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 152
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    new-instance v7, Lcom/google/inject/internal/LinkedBindingImpl;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    invoke-virtual {p1, v7}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    const/4 p1, 0x1

    .line 154
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ProviderBinding;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 174
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot apply a non-module element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderInstanceBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingProcessor$1;->prepareBinding()V

    .line 106
    invoke-interface {p1}, Lcom/google/inject/spi/ProviderInstanceBinding;->getUserSuppliedProvider()Ljavax/inject/Provider;

    move-result-object v6

    .line 107
    invoke-interface {p1}, Lcom/google/inject/spi/ProviderInstanceBinding;->getInjectionPoints()Ljava/util/Set;

    move-result-object v7

    .line 108
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    invoke-static {v0}, Lcom/google/inject/internal/BindingProcessor;->access$000(Lcom/google/inject/internal/BindingProcessor;)Lcom/google/inject/internal/Initializer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v2, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/inject/internal/Initializer;->requestInjection(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Binding;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/internal/Initializable;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v3, v3, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, v3, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v3, v3, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    const/4 v8, 0x1

    xor-int/2addr v3, v8

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v4, v4, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, v4, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-virtual {v4, p1}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->get(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;-><init>(Lcom/google/inject/internal/Initializable;Ljava/lang/Object;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)V

    .line 116
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 118
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    new-instance v9, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Ljavax/inject/Provider;Ljava/util/Set;)V

    invoke-virtual {p1, v9}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    .line 120
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderKeyBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingProcessor$1;->prepareBinding()V

    .line 126
    invoke-interface {p1}, Lcom/google/inject/spi/ProviderKeyBinding;->getProviderKey()Lcom/google/inject/Key;

    move-result-object v6

    .line 129
    new-instance v7, Lcom/google/inject/internal/BoundProviderFactory;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v0, v0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v0, v0, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    const/4 v8, 0x1

    xor-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v0, v0, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->get(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v5

    move-object v0, v7

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/BoundProviderFactory;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)V

    .line 132
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object p1, p1, Lcom/google/inject/internal/BindingProcessor;->bindingData:Lcom/google/inject/internal/ProcessedBindingData;

    invoke-virtual {p1, v7}, Lcom/google/inject/internal/ProcessedBindingData;->addCreationListener(Lcom/google/inject/internal/CreationListener;)V

    .line 133
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {p1, v0, v7, v1, v2}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 135
    iget-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    new-instance v7, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    invoke-virtual {p1, v7}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    .line 137
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/UntargettedBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 159
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderBinding;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ProviderBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected visitOther(Lcom/google/inject/Binding;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 179
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BindingProcessor should override all visitations"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
