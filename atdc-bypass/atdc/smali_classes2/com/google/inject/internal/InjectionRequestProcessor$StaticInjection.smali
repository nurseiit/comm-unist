.class Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;
.super Ljava/lang/Object;
.source "InjectionRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/InjectionRequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaticInjection"
.end annotation


# instance fields
.field final injector:Lcom/google/inject/internal/InjectorImpl;

.field memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lcom/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation
.end field

.field final request:Lcom/google/inject/spi/StaticInjectionRequest;

.field final source:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/inject/internal/InjectionRequestProcessor;


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectionRequestProcessor;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/StaticInjectionRequest;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/google/inject/internal/InjectionRequestProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 92
    invoke-virtual {p3}, Lcom/google/inject/spi/StaticInjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->source:Ljava/lang/Object;

    .line 93
    iput-object p3, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->request:Lcom/google/inject/spi/StaticInjectionRequest;

    return-void
.end method


# virtual methods
.method injectMembers()V
    .locals 2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injector:Lcom/google/inject/internal/InjectorImpl;

    new-instance v1, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection$1;

    invoke-direct {v1, p0}, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection$1;-><init>(Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;)V

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/InjectorImpl;->callInContext(Lcom/google/inject/internal/ContextualCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 130
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method validate()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/google/inject/internal/InjectionRequestProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/InjectionRequestProcessor;->errors:Lcom/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->request:Lcom/google/inject/spi/StaticInjectionRequest;

    invoke-virtual {v1}, Lcom/google/inject/spi/StaticInjectionRequest;->getInjectionPoints()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 102
    invoke-virtual {v1}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    .line 103
    invoke-virtual {v1}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    :goto_0
    if-eqz v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-virtual {v2, v1, v0}, Lcom/google/inject/internal/MembersInjectorStore;->getInjectors(Ljava/util/Set;Lcom/google/inject/internal/Errors;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    goto :goto_1

    .line 109
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 112
    :goto_1
    iget-object v1, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/google/inject/internal/InjectionRequestProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/InjectionRequestProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    return-void
.end method
