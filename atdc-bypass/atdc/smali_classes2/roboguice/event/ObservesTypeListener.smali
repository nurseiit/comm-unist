.class public Lroboguice/event/ObservesTypeListener;
.super Ljava/lang/Object;
.source "ObservesTypeListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;
    }
.end annotation


# instance fields
.field protected eventManagerProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Lroboguice/event/EventManager;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/google/inject/HierarchyTraversalFilter;

.field protected observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider<",
            "Lroboguice/event/EventManager;",
            ">;",
            "Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lroboguice/event/ObservesTypeListener;->eventManagerProvider:Lcom/google/inject/Provider;

    .line 31
    iput-object p2, p0, Lroboguice/event/ObservesTypeListener;->observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    return-void
.end method

.method private isWorthScanning(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/event/Observes;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForMethods(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected checkMethodParameters(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 91
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Annotation @Observes must only annotate one parameter, which must be the only parameter in the listener method."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method protected findContextObserver(Ljava/lang/reflect/Method;Lcom/google/inject/spi/TypeEncounter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/inject/spi/TypeEncounter<",
            "TI;>;)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 60
    aget-object v3, v0, v2

    .line 61
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 62
    aget-object v4, v4, v2

    .line 64
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 65
    invoke-interface {v7}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lroboguice/event/Observes;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 66
    check-cast v7, Lroboguice/event/Observes;

    invoke-interface {v7}, Lroboguice/event/Observes;->value()Lroboguice/event/EventThread;

    move-result-object v7

    invoke-virtual {p0, p2, p1, v4, v7}, Lroboguice/event/ObservesTypeListener;->registerContextObserver(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Method;Ljava/lang/Class;Lroboguice/event/EventThread;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TI;>;",
            "Lcom/google/inject/spi/TypeEncounter<",
            "TI;>;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v0

    iput-object v0, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v0}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 40
    :goto_0
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 41
    :goto_1
    invoke-direct {p0, p1}, Lroboguice/event/ObservesTypeListener;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    iget-object v0, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/event/Observes;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllMethods(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 43
    invoke-virtual {p0, v1, p2}, Lroboguice/event/ObservesTypeListener;->findContextObserver(Ljava/lang/reflect/Method;Lcom/google/inject/spi/TypeEncounter;)V

    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 46
    iget-object v4, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v5, Lroboguice/event/Observes;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/google/inject/HierarchyTraversalFilter;->getAllMethods(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 47
    invoke-virtual {p0, v4, p2}, Lroboguice/event/ObservesTypeListener;->findContextObserver(Ljava/lang/reflect/Method;Lcom/google/inject/spi/TypeEncounter;)V

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 49
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected registerContextObserver(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Method;Ljava/lang/Class;Lroboguice/event/EventThread;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/TypeEncounter<",
            "TI;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lroboguice/event/EventThread;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p2}, Lroboguice/event/ObservesTypeListener;->checkMethodParameters(Ljava/lang/reflect/Method;)V

    .line 81
    new-instance v6, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;

    iget-object v1, p0, Lroboguice/event/ObservesTypeListener;->eventManagerProvider:Lcom/google/inject/Provider;

    iget-object v2, p0, Lroboguice/event/ObservesTypeListener;->observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    move-object v0, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;-><init>(Lcom/google/inject/Provider;Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;Ljava/lang/reflect/Method;Ljava/lang/Class;Lroboguice/event/EventThread;)V

    invoke-interface {p1, v6}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/spi/InjectionListener;)V

    return-void
.end method
