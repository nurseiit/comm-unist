.class public final Lroboguice/RoboGuice$Util;
.super Ljava/lang/Object;
.source "RoboGuice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/RoboGuice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 1

    .line 313
    sget-object v0, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 314
    sget-object v0, Lroboguice/RoboGuice;->resourceListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 315
    sget-object v0, Lroboguice/RoboGuice;->viewListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    const/4 v0, 0x0

    .line 318
    invoke-static {v0}, Lcom/google/inject/Guice;->setAnnotationDatabasePackageNames([Ljava/lang/String;)V

    .line 319
    new-instance v0, Lcom/google/inject/HierarchyTraversalFilterFactory;

    invoke-direct {v0}, Lcom/google/inject/HierarchyTraversalFilterFactory;-><init>()V

    invoke-static {v0}, Lcom/google/inject/Guice;->setHierarchyTraversalFilterFactory(Lcom/google/inject/HierarchyTraversalFilterFactory;)V

    return-void
.end method
