.class final Lroboguice/RoboGuice$1;
.super Lcom/google/inject/HierarchyTraversalFilterFactory;
.source "RoboGuice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lroboguice/RoboGuice;->initializeAnnotationDatabaseFinderAndHierarchyTraversalFilterFactory(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/google/inject/HierarchyTraversalFilterFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;
    .locals 1

    .line 299
    new-instance v0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;

    invoke-direct {v0}, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;-><init>()V

    return-object v0
.end method
