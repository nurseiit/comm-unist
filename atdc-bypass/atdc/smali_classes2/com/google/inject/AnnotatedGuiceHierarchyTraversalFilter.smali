.class public Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;
.super Lcom/google/inject/HierarchyTraversalFilter;
.source "AnnotatedGuiceHierarchyTraversalFilter.java"


# instance fields
.field private classesContainingInjectionPointsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/google/inject/HierarchyTraversalFilter;

.field private hasHadInjectionPoints:Z

.field private mapAnnotationToMapClassWithInjectionNameToConstructorSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapAnnotationToMapClassWithInjectionNameToFieldSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapAnnotationToMapClassWithInjectionNameToMethodSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/AnnotationDatabaseFinder;Lcom/google/inject/HierarchyTraversalFilter;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/google/inject/HierarchyTraversalFilter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    .line 31
    iput-object p2, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    .line 33
    invoke-virtual {p1}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedFieldSet()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToFieldSet:Ljava/util/HashMap;

    .line 34
    invoke-virtual {p1}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedMethodSet()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToMethodSet:Ljava/util/HashMap;

    .line 35
    invoke-virtual {p1}, Lcom/google/inject/AnnotationDatabaseFinder;->getMapAnnotationToMapClassContainingInjectionToInjectedConstructorSet()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToConstructorSet:Ljava/util/HashMap;

    .line 36
    invoke-virtual {p1}, Lcom/google/inject/AnnotationDatabaseFinder;->getClassesContainingInjectionPointsSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    .line 38
    iget-object p1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to find Annotation Database which should be output as part of annotation processing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public getAllConstructors(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToConstructorSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 192
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 195
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/Class;

    .line 196
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, -0x1

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToFieldSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_1

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 94
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getAllMethods(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToMethodSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 140
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 143
    aget-object v2, v1, v2

    .line 144
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Class;

    .line 145
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    add-int/lit8 v5, v4, -0x1

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 148
    :cond_0
    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public isWorthScanning(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v0, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_3

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    return p1

    .line 58
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v0, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public isWorthScanningForConstructors(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 164
    iget-boolean v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {p1, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 167
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToConstructorSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    return v0

    .line 172
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    return p1

    .line 176
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 177
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v1, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    return v0
.end method

.method public isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object p1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {p1, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 70
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToFieldSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    return v0

    .line 75
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    return p1

    .line 79
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 80
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v1, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    return v0
.end method

.method public isWorthScanningForMethods(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 111
    iget-boolean v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {p1, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 114
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->mapAnnotationToMapClassWithInjectionNameToMethodSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    return v0

    .line 119
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    return p1

    .line 123
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 124
    iget-object v1, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v1, p2}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    return v0
.end method

.method public reset()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->delegate:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v0}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/inject/AnnotatedGuiceHierarchyTraversalFilter;->hasHadInjectionPoints:Z

    return-void
.end method
