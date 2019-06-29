.class public final Lroboguice/RoboGuice;
.super Ljava/lang/Object;
.source "RoboGuice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/RoboGuice$Util;
    }
.end annotation


# static fields
.field public static DEFAULT_STAGE:Lcom/google/inject/Stage; = null
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field

.field protected static injectors:Ljava/util/WeakHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lcom/google/inject/Injector;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field

.field protected static resourceListeners:Ljava/util/WeakHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lroboguice/inject/ResourceListener;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field

.field private static useAnnotationDatabases:Z = true

.field protected static viewListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lroboguice/inject/ViewListener;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lcom/google/inject/Stage;->PRODUCTION:Lcom/google/inject/Stage;

    sput-object v0, Lroboguice/RoboGuice;->DEFAULT_STAGE:Lcom/google/inject/Stage;

    .line 56
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/RoboGuice;->resourceListeners:Ljava/util/WeakHashMap;

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/RoboGuice;->viewListeners:Ljava/util/WeakHashMap;

    const-string v0, "roboguice.useAnnotationDatabases"

    .line 68
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lroboguice/RoboGuice;->useAnnotationDatabases:Z

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs createGuiceInjector(Landroid/app/Application;Lcom/google/inject/Stage;Lcom/google/inject/internal/util/Stopwatch;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 1

    .line 185
    :try_start_0
    const-class v0, Lroboguice/RoboGuice;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-static {p1, p3}, Lcom/google/inject/Guice;->createInjector(Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object p1

    .line 187
    sget-object p3, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, "BaseApplicationInjector creation"

    .line 191
    invoke-virtual {p2, p0}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 189
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    const-string p1, "BaseApplicationInjector creation"

    .line 191
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    throw p0
.end method

.method public static destroyInjector(Landroid/content/Context;)V
    .locals 2

    .line 247
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 248
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/event/EventManager;

    invoke-virtual {v0}, Lroboguice/event/EventManager;->destroy()V

    .line 250
    sget-object v0, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static extractModulesFromManifest(Landroid/app/Application;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation

    .line 157
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 160
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "roboguice.modules"

    .line 161
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 162
    :goto_0
    invoke-static {p0}, Lroboguice/RoboGuice;->newDefaultRoboModule(Landroid/app/Application;)Lroboguice/config/DefaultRoboModule;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v4, "[\\s,]"

    .line 163
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-array v1, v3, [Ljava/lang/String;

    .line 165
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 168
    invoke-static {v5}, Lroboguice/util/Strings;->notEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/google/inject/Module;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x1

    .line 171
    :try_start_1
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/app/Application;

    aput-object v8, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 173
    :catch_0
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-object v0

    :catch_1
    move-exception p0

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to instantiate your Module.  Check your roboguice.modules metadata in your AndroidManifest.xml"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;
    .locals 2

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 197
    new-instance v1, Lroboguice/inject/ContextScopedRoboInjector;

    invoke-static {v0}, Lroboguice/RoboGuice;->getOrCreateBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lroboguice/inject/ContextScopedRoboInjector;-><init>(Landroid/content/Context;Lcom/google/inject/Injector;)V

    return-object v1
.end method

.method public static getOrCreateBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;
    .locals 2

    .line 81
    sget-object v0, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Injector;

    if-eqz v0, :cond_0

    return-object v0

    .line 85
    :cond_0
    const-class v0, Lroboguice/RoboGuice;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Injector;

    if-eqz v1, :cond_1

    .line 88
    monitor-exit v0

    return-object v1

    .line 90
    :cond_1
    sget-object v1, Lroboguice/RoboGuice;->DEFAULT_STAGE:Lcom/google/inject/Stage;

    invoke-static {p0, v1}, Lroboguice/RoboGuice;->getOrCreateBaseApplicationInjector(Landroid/app/Application;Lcom/google/inject/Stage;)Lcom/google/inject/Injector;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getOrCreateBaseApplicationInjector(Landroid/app/Application;Lcom/google/inject/Stage;)Lcom/google/inject/Injector;
    .locals 4

    .line 146
    new-instance v0, Lcom/google/inject/internal/util/Stopwatch;

    invoke-direct {v0}, Lcom/google/inject/internal/util/Stopwatch;-><init>()V

    .line 148
    const-class v1, Lroboguice/RoboGuice;

    monitor-enter v1

    .line 149
    :try_start_0
    invoke-static {p0}, Lroboguice/RoboGuice;->initializeAnnotationDatabaseFinderAndHierarchyTraversalFilterFactory(Landroid/app/Application;)V

    .line 150
    invoke-static {p0}, Lroboguice/RoboGuice;->extractModulesFromManifest(Landroid/app/Application;)Ljava/util/List;

    move-result-object v2

    .line 151
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/inject/Module;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/inject/Module;

    invoke-static {p0, p1, v0, v2}, Lroboguice/RoboGuice;->createGuiceInjector(Landroid/app/Application;Lcom/google/inject/Stage;Lcom/google/inject/internal/util/Stopwatch;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs getOrCreateBaseApplicationInjector(Landroid/app/Application;Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 2

    .line 111
    new-instance v0, Lcom/google/inject/internal/util/Stopwatch;

    invoke-direct {v0}, Lcom/google/inject/internal/util/Stopwatch;-><init>()V

    .line 112
    const-class v1, Lroboguice/RoboGuice;

    monitor-enter v1

    .line 113
    :try_start_0
    invoke-static {p0}, Lroboguice/RoboGuice;->initializeAnnotationDatabaseFinderAndHierarchyTraversalFilterFactory(Landroid/app/Application;)V

    .line 114
    invoke-static {p0, p1, v0, p2}, Lroboguice/RoboGuice;->createGuiceInjector(Landroid/app/Application;Lcom/google/inject/Stage;Lcom/google/inject/internal/util/Stopwatch;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected static getResourceListener(Landroid/app/Application;)Lroboguice/inject/ResourceListener;
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "Double check lock"
        value = {
            "NP_LOAD_OF_KNOWN_NULL_VALUE"
        }
    .end annotation

    .line 219
    sget-object v0, Lroboguice/RoboGuice;->resourceListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/inject/ResourceListener;

    if-nez v0, :cond_1

    .line 221
    const-class v1, Lroboguice/RoboGuice;

    monitor-enter v1

    if-nez v0, :cond_0

    .line 223
    :try_start_0
    new-instance v0, Lroboguice/inject/ResourceListener;

    invoke-direct {v0, p0}, Lroboguice/inject/ResourceListener;-><init>(Landroid/app/Application;)V

    .line 224
    sget-object v2, Lroboguice/RoboGuice;->resourceListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 226
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method protected static getViewListener(Landroid/app/Application;)Lroboguice/inject/ViewListener;
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "Double check lock"
        value = {
            "NP_LOAD_OF_KNOWN_NULL_VALUE"
        }
    .end annotation

    .line 234
    sget-object v0, Lroboguice/RoboGuice;->viewListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/inject/ViewListener;

    if-nez v0, :cond_1

    .line 236
    const-class v1, Lroboguice/RoboGuice;

    monitor-enter v1

    if-nez v0, :cond_0

    .line 238
    :try_start_0
    new-instance v0, Lroboguice/inject/ViewListener;

    invoke-direct {v0}, Lroboguice/inject/ViewListener;-><init>()V

    .line 239
    sget-object v2, Lroboguice/RoboGuice;->viewListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 241
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method private static initializeAnnotationDatabaseFinderAndHierarchyTraversalFilterFactory(Landroid/app/Application;)V
    .locals 7

    .line 254
    sget-boolean v0, Lroboguice/RoboGuice;->useAnnotationDatabases:Z

    if-eqz v0, :cond_3

    .line 255
    const-class v0, Lroboguice/RoboGuice;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Using annotation database(s)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 259
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x80

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 263
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v3, "roboguice.annotations.packages"

    .line 264
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string v3, "[\\s,]"

    .line 266
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    .line 267
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 272
    :try_start_2
    const-class v3, Lroboguice/RoboGuice;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to read manifest properly."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 276
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, ""

    .line 278
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p0, "roboguice"

    .line 280
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    const-class p0, Lroboguice/RoboGuice;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using annotation database(s) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 286
    invoke-interface {v2, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 288
    invoke-static {p0}, Lcom/google/inject/Guice;->setAnnotationDatabasePackageNames([Ljava/lang/String;)V

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 290
    const-class p0, Lroboguice/RoboGuice;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time spent loading annotation databases : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to use annotation database(s)"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 295
    :cond_3
    const-class p0, Lroboguice/RoboGuice;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Using full reflection. Try using RoboGuice annotation processor for better performance."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance p0, Lroboguice/RoboGuice$1;

    invoke-direct {p0}, Lroboguice/RoboGuice$1;-><init>()V

    invoke-static {p0}, Lcom/google/inject/Guice;->setHierarchyTraversalFilterFactory(Lcom/google/inject/HierarchyTraversalFilterFactory;)V

    :goto_2
    return-void
.end method

.method public static injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "TT;)TT;"
        }
    .end annotation

    .line 204
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object p0

    invoke-interface {p0, p1}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static newDefaultRoboModule(Landroid/app/Application;)Lroboguice/config/DefaultRoboModule;
    .locals 4

    .line 209
    new-instance v0, Lroboguice/config/DefaultRoboModule;

    new-instance v1, Lroboguice/inject/ContextScope;

    invoke-direct {v1, p0}, Lroboguice/inject/ContextScope;-><init>(Landroid/app/Application;)V

    invoke-static {p0}, Lroboguice/RoboGuice;->getViewListener(Landroid/app/Application;)Lroboguice/inject/ViewListener;

    move-result-object v2

    invoke-static {p0}, Lroboguice/RoboGuice;->getResourceListener(Landroid/app/Application;)Lroboguice/inject/ResourceListener;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lroboguice/config/DefaultRoboModule;-><init>(Landroid/app/Application;Lroboguice/inject/ContextScope;Lroboguice/inject/ViewListener;Lroboguice/inject/ResourceListener;)V

    return-object v0
.end method

.method public static varargs overrideApplicationInjector(Landroid/app/Application;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 5

    .line 133
    const-class v0, Lroboguice/RoboGuice;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-static {p0}, Lroboguice/RoboGuice;->extractModulesFromManifest(Landroid/app/Application;)Ljava/util/List;

    move-result-object v1

    .line 135
    sget-object v2, Lroboguice/RoboGuice;->DEFAULT_STAGE:Lcom/google/inject/Stage;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/inject/Module;

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/google/inject/util/Modules;->override(Ljava/lang/Iterable;)Lcom/google/inject/util/Modules$OverriddenModuleBuilder;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/inject/util/Modules$OverriddenModuleBuilder;->with([Lcom/google/inject/Module;)Lcom/google/inject/Module;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/inject/Guice;->createInjector(Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object p1

    .line 136
    sget-object v1, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setUseAnnotationDatabases(Z)V
    .locals 0

    .line 213
    sput-boolean p0, Lroboguice/RoboGuice;->useAnnotationDatabases:Z

    return-void
.end method
