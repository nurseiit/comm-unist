.class public Lcom/google/inject/AnnotationDatabaseFinder;
.super Ljava/lang/Object;
.source "AnnotationDatabaseFinder.java"


# instance fields
.field private bindableClassesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classesContainingInjectionPointsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet:Ljava/util/HashMap;
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

.field private mapAnnotationToMapClassContainingInjectionToInjectedFieldSet:Ljava/util/HashMap;
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

.field private mapAnnotationToMapClassContainingInjectionToInjectedMethodSet:Ljava/util/HashMap;
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
.method public constructor <init>([Ljava/lang/String;)V
    .locals 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedFieldSet:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedMethodSet:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->bindableClassesSet:Ljava/util/HashSet;

    .line 31
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "AnnotationDatabaseImpl"

    if-eqz v2, :cond_0

    const-string v4, ""

    .line 33
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/inject/AnnotationDatabaseFinder;->getAnnotationDatabaseInstance(Ljava/lang/String;)Lcom/google/inject/AnnotationDatabase;

    move-result-object v2

    .line 37
    invoke-direct {p0, v2}, Lcom/google/inject/AnnotationDatabaseFinder;->addAnnotationDatabase(Lcom/google/inject/AnnotationDatabase;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private addAnnotationDatabase(Lcom/google/inject/AnnotationDatabase;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedFieldSet:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/google/inject/AnnotationDatabase;->fillAnnotationClassesAndFieldsNames(Ljava/util/HashMap;)V

    .line 80
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedMethodSet:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/google/inject/AnnotationDatabase;->fillAnnotationClassesAndMethods(Ljava/util/HashMap;)V

    .line 81
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/google/inject/AnnotationDatabase;->fillAnnotationClassesAndConstructors(Ljava/util/HashMap;)V

    .line 82
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lcom/google/inject/AnnotationDatabase;->fillClassesContainingInjectionPointSet(Ljava/util/HashSet;)V

    .line 83
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->bindableClassesSet:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lcom/google/inject/AnnotationDatabase;->fillBindableClasses(Ljava/util/HashSet;)V

    return-void
.end method

.method private getAnnotationDatabaseInstance(Ljava/lang/String;)Lcom/google/inject/AnnotationDatabase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/AnnotationDatabase;

    return-object p1
.end method


# virtual methods
.method public getBindableClassesSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->bindableClassesSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getClassesContainingInjectionPointsSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getMapAnnotationToMapClassContainingInjectionToInjectedConstructorSet()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMapAnnotationToMapClassContainingInjectionToInjectedFieldSet()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedFieldSet:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMapAnnotationToMapClassContainingInjectionToInjectedMethodSet()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedMethodSet:Ljava/util/HashMap;

    return-object v0
.end method
