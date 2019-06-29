.class public abstract Lcom/google/inject/AbstractModule;
.super Ljava/lang/Object;
.source "AbstractModule.java"

# interfaces
.implements Lcom/google/inject/Module;


# instance fields
.field private annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

.field protected binder:Lcom/google/inject/Binder;

.field private noOpAnnotatedBindingBuilder:Lcom/google/inject/binder/AnnotatedBindingBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-direct {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/inject/AbstractModule;->noOpAnnotatedBindingBuilder:Lcom/google/inject/binder/AnnotatedBindingBuilder;

    return-void
.end method


# virtual methods
.method protected addError(Lcom/google/inject/spi/Message;)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->addError(Lcom/google/inject/spi/Message;)V

    return-void
.end method

.method protected varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected addError(Ljava/lang/Throwable;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->addError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bind(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/inject/AbstractModule;->isInjectable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/google/inject/AbstractModule;->noOpAnnotatedBindingBuilder:Lcom/google/inject/binder/AnnotatedBindingBuilder;

    return-object p1
.end method

.method protected bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/binder/LinkedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected bindConstant()Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Binder;->bindConstant()Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Lcom/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/google/inject/spi/TypeListener;",
            ")V"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    return-void
.end method

.method protected varargs bindListener(Lcom/google/inject/matcher/Matcher;[Lcom/google/inject/spi/ProvisionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Lcom/google/inject/Binding<",
            "*>;>;[",
            "Lcom/google/inject/spi/ProvisionListener;",
            ")V"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->bindListener(Lcom/google/inject/matcher/Matcher;[Lcom/google/inject/spi/ProvisionListener;)V

    return-void
.end method

.method protected bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V

    return-void
.end method

.method protected binder()Lcom/google/inject/Binder;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The binder can only be used inside configure()"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    return-object v0
.end method

.method protected abstract configure()V
.end method

.method public final declared-synchronized configure(Lcom/google/inject/Binder;)V
    .locals 2

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Re-entry is not allowed."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "builder"

    .line 76
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/Binder;

    iput-object p1, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 78
    :try_start_1
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->configure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    iput-object p1, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 81
    :try_start_3
    iput-object p1, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 73
    monitor-exit p0

    throw p1
.end method

.method protected convertToTypes(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Lcom/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->convertToTypes(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    return-void
.end method

.method protected currentStage()Lcom/google/inject/Stage;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Binder;->currentStage()Lcom/google/inject/Stage;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationDatabaseFinder()Lcom/google/inject/AnnotationDatabaseFinder;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    return-object v0
.end method

.method protected getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method protected getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method protected getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method protected getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method protected hasInjectionPointsForAnnotation(Ljava/lang/Class;)Z
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedConstructorSet()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedMethodSet()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedFieldSet()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected install(Lcom/google/inject/Module;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/inject/AbstractModule;

    if-eqz v0, :cond_0

    .line 153
    move-object v0, p1

    check-cast v0, Lcom/google/inject/AbstractModule;

    iget-object v1, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0, v1}, Lcom/google/inject/AbstractModule;->setAnnotationDatabaseFinder(Lcom/google/inject/AnnotationDatabaseFinder;)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->install(Lcom/google/inject/Module;)V

    return-void
.end method

.method protected isInjectable(Ljava/lang/Class;)Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0}, Lcom/google/inject/AnnotationDatabaseFinder;->getBindableClassesSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected requestInjection(Ljava/lang/Object;)V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->requestInjection(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs requestStaticInjection([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->requestStaticInjection([Ljava/lang/Class;)V

    return-void
.end method

.method protected requireBinding(Lcom/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)V"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    return-void
.end method

.method protected requireBinding(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/google/inject/AbstractModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    return-void
.end method

.method public setAnnotationDatabaseFinder(Lcom/google/inject/AnnotationDatabaseFinder;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/inject/AbstractModule;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    return-void
.end method

.method protected superbind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/inject/AbstractModule;->binder:Lcom/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method
