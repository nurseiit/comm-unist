.class public final Lcom/google/inject/Guice;
.super Ljava/lang/Object;
.source "Guice.java"


# static fields
.field private static annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

.field private static hierarchyTraversalFilterFactory:Lcom/google/inject/HierarchyTraversalFilterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/google/inject/HierarchyTraversalFilterFactory;

    invoke-direct {v0}, Lcom/google/inject/HierarchyTraversalFilterFactory;-><init>()V

    sput-object v0, Lcom/google/inject/Guice;->hierarchyTraversalFilterFactory:Lcom/google/inject/HierarchyTraversalFilterFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;
    .locals 3

    .line 111
    sget-object v0, Lcom/google/inject/Guice;->hierarchyTraversalFilterFactory:Lcom/google/inject/HierarchyTraversalFilterFactory;

    invoke-virtual {v0}, Lcom/google/inject/HierarchyTraversalFilterFactory;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/google/inject/Guice;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    if-nez v1, :cond_0

    return-object v0

    .line 115
    :cond_0
    new-instance v1, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;

    sget-object v2, Lcom/google/inject/Guice;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-direct {v1, v2, v0}, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;-><init>(Lcom/google/inject/AnnotationDatabaseFinder;Lcom/google/inject/HierarchyTraversalFilter;)V

    return-object v1
.end method

.method public static createInjector(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Lcom/google/inject/Injector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Stage;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Lcom/google/inject/Injector;"
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lcom/google/inject/Guice;->doSetAnnotationDatabaseFinderToModules(Ljava/lang/Iterable;)V

    .line 100
    new-instance v0, Lcom/google/inject/internal/InternalInjectorCreator;

    invoke-direct {v0}, Lcom/google/inject/internal/InternalInjectorCreator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/inject/internal/InternalInjectorCreator;->stage(Lcom/google/inject/Stage;)Lcom/google/inject/internal/InternalInjectorCreator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InternalInjectorCreator;->addModules(Ljava/lang/Iterable;)Lcom/google/inject/internal/InternalInjectorCreator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/inject/internal/InternalInjectorCreator;->build()Lcom/google/inject/Injector;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createInjector(Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 0

    .line 87
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/inject/Guice;->createInjector(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Lcom/google/inject/Injector;

    move-result-object p0

    return-object p0
.end method

.method public static createInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Lcom/google/inject/Injector;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/google/inject/Stage;->DEVELOPMENT:Lcom/google/inject/Stage;

    invoke-static {v0, p0}, Lcom/google/inject/Guice;->createInjector(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Lcom/google/inject/Injector;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 0

    .line 65
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/inject/Guice;->createInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;

    move-result-object p0

    return-object p0
.end method

.method private static doSetAnnotationDatabaseFinderToModules(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/Module;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Module;

    .line 145
    instance-of v1, v0, Lcom/google/inject/AbstractModule;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Lcom/google/inject/AbstractModule;

    sget-object v1, Lcom/google/inject/Guice;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-virtual {v0, v1}, Lcom/google/inject/AbstractModule;->setAnnotationDatabaseFinder(Lcom/google/inject/AnnotationDatabaseFinder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getAnnotationDatabaseFinder()Lcom/google/inject/AnnotationDatabaseFinder;
    .locals 1

    .line 140
    sget-object v0, Lcom/google/inject/Guice;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    return-object v0
.end method

.method public static setAnnotationDatabasePackageNames([Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 132
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/google/inject/AnnotationDatabaseFinder;

    invoke-direct {v0, p0}, Lcom/google/inject/AnnotationDatabaseFinder;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/inject/Guice;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 135
    sput-object p0, Lcom/google/inject/Guice;->annotationDatabaseFinder:Lcom/google/inject/AnnotationDatabaseFinder;

    :goto_0
    return-void
.end method

.method public static setHierarchyTraversalFilterFactory(Lcom/google/inject/HierarchyTraversalFilterFactory;)V
    .locals 0

    .line 124
    sput-object p0, Lcom/google/inject/Guice;->hierarchyTraversalFilterFactory:Lcom/google/inject/HierarchyTraversalFilterFactory;

    return-void
.end method
