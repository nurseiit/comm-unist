.class public Lroboguice/inject/ViewMembersInjector;
.super Ljava/lang/Object;
.source "ViewMembersInjector.java"

# interfaces
.implements Lcom/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/MembersInjector<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lroboguice/inject/ViewMembersInjector<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected activityProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected annotation:Ljava/lang/annotation/Annotation;

.field protected field:Ljava/lang/reflect/Field;

.field protected fragManager:Lcom/google/inject/Provider;

.field protected fragUtils:Lroboguice/fragment/FragmentUtil$f;

.field protected instanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/inject/ViewMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/google/inject/spi/TypeEncounter;Lroboguice/fragment/FragmentUtil$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/google/inject/spi/TypeEncounter<",
            "TT;>;",
            "Lroboguice/fragment/FragmentUtil$f<",
            "**>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 37
    iput-object p2, p0, Lroboguice/inject/ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    .line 38
    const-class p1, Landroid/app/Activity;

    invoke-interface {p3, p1}, Lcom/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lroboguice/inject/ViewMembersInjector;->activityProvider:Lcom/google/inject/Provider;

    if-eqz p4, :cond_0

    .line 41
    iput-object p4, p0, Lroboguice/inject/ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    .line 42
    invoke-interface {p4}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerType()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lroboguice/inject/ViewMembersInjector;->fragManager:Lcom/google/inject/Provider;

    :cond_0
    return-void
.end method

.method private extractContainerView(Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0

    if-eqz p2, :cond_0

    .line 120
    iget-object p2, p0, Lroboguice/inject/ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {p2, p1}, Lroboguice/fragment/FragmentUtil$f;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 121
    :cond_0
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_1

    .line 122
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 123
    :cond_1
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 125
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1

    .line 127
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Can\'t inject view into something that is not a Fragment, Activity or View."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static injectViews(Ljava/lang/Object;)V
    .locals 3

    .line 173
    const-class v0, Lroboguice/inject/ViewMembersInjector;

    monitor-enter v0

    .line 175
    :try_start_0
    sget-object v1, Lroboguice/inject/ViewMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lroboguice/inject/ViewMembersInjector;

    .line 178
    invoke-virtual {v2, p0}, Lroboguice/inject/ViewMembersInjector;->reallyInjectMembers(Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    const-class v0, Lroboguice/inject/ViewMembersInjector;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/ViewMembersInjector;->activityProvider:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 55
    iget-object v2, p0, Lroboguice/inject/ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lroboguice/inject/ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v2}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 56
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_2

    :cond_1
    move-object v1, p1

    :cond_2
    if-nez v1, :cond_3

    .line 58
    monitor-exit v0

    return-void

    .line 61
    :cond_3
    sget-object v2, Lroboguice/inject/ViewMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    sget-object v3, Lroboguice/inject/ViewMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_4
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lroboguice/inject/ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected reallyInjectMemberFragments(Ljava/lang/Object;)V
    .locals 8

    .line 138
    iget-object v0, p0, Lroboguice/inject/ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    instance-of v1, p1, Landroid/content/Context;

    if-eqz v1, :cond_1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    .line 143
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t inject fragment into a non-Activity context"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 148
    :try_start_0
    iget-object v4, p0, Lroboguice/inject/ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v4, Lroboguice/inject/InjectFragment;

    .line 149
    invoke-interface {v4}, Lroboguice/inject/InjectFragment;->value()I

    move-result v5

    if-ltz v5, :cond_2

    .line 152
    iget-object v4, p0, Lroboguice/inject/ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    iget-object v6, p0, Lroboguice/inject/ViewMembersInjector;->fragManager:Lcom/google/inject/Provider;

    invoke-interface {v6}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lroboguice/fragment/FragmentUtil$f;->findFragmentById(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    move-object p1, v4

    goto :goto_1

    .line 154
    :cond_2
    iget-object v5, p0, Lroboguice/inject/ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    iget-object v6, p0, Lroboguice/inject/ViewMembersInjector;->fragManager:Lcom/google/inject/Provider;

    invoke-interface {v6}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Lroboguice/inject/InjectFragment;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lroboguice/fragment/FragmentUtil$f;->findFragmentByTag(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :goto_1
    if-nez p1, :cond_3

    .line 156
    iget-object v4, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v4}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_3
    iget-object v4, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 160
    iget-object v4, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 166
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t assign %s value %s to %s field %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_2

    :cond_4
    const-string v7, "(null)"

    :goto_2
    aput-object v7, v6, v1

    aput-object p1, v6, v3

    iget-object p1, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v6, v2

    const/4 p1, 0x3

    iget-object v1, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, p1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception p1

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected reallyInjectMemberViews(Ljava/lang/Object;)V
    .locals 8

    .line 84
    iget-object v0, p0, Lroboguice/inject/ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lroboguice/inject/ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v0}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v3, p1

    goto :goto_1

    .line 85
    :cond_1
    iget-object v3, p0, Lroboguice/inject/ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_2

    return-void

    .line 91
    :cond_2
    iget-object v4, p0, Lroboguice/inject/ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v4, Lroboguice/inject/InjectView;

    .line 92
    invoke-interface {v4}, Lroboguice/inject/InjectView;->value()I

    move-result v5

    .line 95
    invoke-direct {p0, p1, v0}, Lroboguice/inject/ViewMembersInjector;->extractContainerView(Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object p1

    if-ltz v5, :cond_3

    .line 98
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    .line 100
    :cond_3
    invoke-interface {v4}, Lroboguice/inject/InjectView;->tag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    :goto_2
    const/4 v0, 0x2

    if-nez p1, :cond_4

    .line 103
    iget-object v4, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v4}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v3, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v1

    iget-object v1, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_4
    :try_start_0
    iget-object v4, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 108
    iget-object v4, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    .line 112
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t assign %s value %s to %s field %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_3

    :cond_5
    const-string v7, "(null)"

    :goto_3
    aput-object v7, v6, v1

    aput-object p1, v6, v2

    iget-object p1, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v6, v0

    const/4 p1, 0x3

    iget-object v0, p0, Lroboguice/inject/ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, p1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception p1

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reallyInjectMembers(Ljava/lang/Object;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lroboguice/inject/ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    instance-of v0, v0, Lroboguice/inject/InjectView;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lroboguice/inject/ViewMembersInjector;->reallyInjectMemberViews(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lroboguice/inject/ViewMembersInjector;->reallyInjectMemberFragments(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
