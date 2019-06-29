.class public Lroboguice/inject/ViewListener;
.super Ljava/lang/Object;
.source "ViewListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/inject/ViewListener$ViewMembersInjector;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private filter:Lcom/google/inject/HierarchyTraversalFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 131
    iget-object v0, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/inject/InjectView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/inject/InjectFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z

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

.method private prepareViewMembersInjector(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Field;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/TypeEncounter<",
            "TI;>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 82
    const-class v0, Lroboguice/inject/InjectView;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Views may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_0
    const-class v0, Landroid/view/View;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectView on fields that extend View"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    const-class v0, Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectView in Activity contexts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_2
    sget-boolean v0, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    if-eqz v0, :cond_4

    sget-object v0, Lroboguice/fragment/FragmentUtil;->supportActivity:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v0}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    goto :goto_0

    :cond_4
    sget-object v0, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    .line 95
    :goto_0
    new-instance v1, Lroboguice/inject/ViewListener$ViewMembersInjector;

    const-class v2, Lroboguice/inject/InjectView;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {v1, p2, v2, p1, v0}, Lroboguice/inject/ViewListener$ViewMembersInjector;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/google/inject/spi/TypeEncounter;Lroboguice/fragment/FragmentUtil$f;)V

    invoke-interface {p1, v1}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    goto/16 :goto_5

    .line 99
    :cond_5
    const-class v0, Lroboguice/inject/InjectFragment;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 100
    sget-boolean v0, Lroboguice/fragment/FragmentUtil;->hasNative:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    if-nez v0, :cond_6

    .line 101
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/ClassNotFoundException;

    const-string v0, "No fragment classes were available"

    invoke-direct {p2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 102
    :cond_6
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Fragments may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_7
    sget-boolean v0, Lroboguice/fragment/FragmentUtil;->hasNative:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    sget-object v0, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v0}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    .line 107
    :goto_1
    sget-boolean v3, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    if-eqz v3, :cond_9

    sget-object v3, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v3}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    .line 108
    :goto_2
    sget-boolean v4, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    if-eqz v4, :cond_a

    sget-object v4, Lroboguice/fragment/FragmentUtil;->supportActivity:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_b

    .line 109
    const-class v5, Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v1, 0x1

    :cond_b
    if-eqz v1, :cond_c

    if-nez v0, :cond_d

    :cond_c
    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    .line 112
    :cond_d
    new-instance v0, Lroboguice/inject/ViewListener$ViewMembersInjector;

    const-class v2, Lroboguice/inject/InjectFragment;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v1, :cond_e

    sget-object v1, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    goto :goto_4

    :cond_e
    sget-object v1, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    :goto_4
    invoke-direct {v0, p2, v2, p1, v1}, Lroboguice/inject/ViewListener$ViewMembersInjector;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/google/inject/spi/TypeEncounter;Lroboguice/fragment/FragmentUtil$f;)V

    invoke-interface {p1, v0}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    goto :goto_5

    :cond_f
    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    .line 116
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectFragment in native activities if fields are descended from type android.app.Fragment"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    if-nez v4, :cond_11

    if-nez v1, :cond_11

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectFragment in Activity contexts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    if-eqz v4, :cond_12

    if-nez v3, :cond_12

    .line 121
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectFragment in support activities if fields are descended from type android.support.v4.app.Fragment"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This should never happen."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_5
    return-void
.end method


# virtual methods
.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .locals 2
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

    .line 52
    iget-object v0, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v0

    iput-object v0, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v0}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 57
    :goto_0
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 58
    :goto_1
    invoke-direct {p0, p1}, Lroboguice/inject/ViewListener;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/inject/InjectView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 63
    invoke-direct {p0, p2, v1}, Lroboguice/inject/ViewListener;->prepareViewMembersInjector(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 70
    :cond_1
    iget-object v0, p0, Lroboguice/inject/ViewListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/inject/InjectFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 73
    invoke-direct {p0, p2, v1}, Lroboguice/inject/ViewListener;->prepareViewMembersInjector(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Field;)V

    goto :goto_3

    .line 76
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_3
    return-void
.end method
