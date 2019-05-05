.class public Lcom/google/inject/HierarchyTraversalFilterFactory;
.super Ljava/lang/Object;
.source "HierarchyTraversalFilterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;
    .locals 1

    .line 11
    new-instance v0, Lcom/google/inject/HierarchyTraversalFilter;

    invoke-direct {v0}, Lcom/google/inject/HierarchyTraversalFilter;-><init>()V

    return-object v0
.end method
