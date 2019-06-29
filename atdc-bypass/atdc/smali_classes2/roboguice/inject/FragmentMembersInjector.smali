.class public Lroboguice/inject/FragmentMembersInjector;
.super Ljava/lang/Object;
.source "FragmentMembersInjector.java"

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
            "Lroboguice/inject/FragmentMembersInjector<",
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

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/inject/FragmentMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 36
    iput-object p2, p0, Lroboguice/inject/FragmentMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    .line 37
    const-class p1, Landroid/app/Activity;

    invoke-interface {p3, p1}, Lcom/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lroboguice/inject/FragmentMembersInjector;->activityProvider:Lcom/google/inject/Provider;

    if-eqz p4, :cond_0

    .line 40
    iput-object p4, p0, Lroboguice/inject/FragmentMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    .line 41
    invoke-interface {p4}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerType()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lroboguice/inject/FragmentMembersInjector;->fragManager:Lcom/google/inject/Provider;

    :cond_0
    return-void
.end method

.method protected static injectViews(Ljava/lang/Object;)V
    .locals 3

    .line 112
    const-class v0, Lroboguice/inject/FragmentMembersInjector;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lroboguice/inject/FragmentMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lroboguice/inject/FragmentMembersInjector;

    .line 117
    invoke-virtual {v2, p0}, Lroboguice/inject/FragmentMembersInjector;->reallyInjectMembers(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
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

    .line 52
    const-class v0, Lroboguice/inject/FragmentMembersInjector;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lroboguice/inject/FragmentMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lroboguice/inject/FragmentMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v1}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    move-object v1, p1

    goto :goto_1

    .line 54
    :cond_1
    iget-object v1, p0, Lroboguice/inject/FragmentMembersInjector;->activityProvider:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 56
    monitor-exit v0

    return-void

    .line 59
    :cond_2
    sget-object v2, Lroboguice/inject/FragmentMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    sget-object v3, Lroboguice/inject/FragmentMembersInjector;->VIEW_MEMBERS_INJECTORS:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_3
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lroboguice/inject/FragmentMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reallyInjectMembers(Ljava/lang/Object;)V
    .locals 8

    .line 77
    iget-object v0, p0, Lroboguice/inject/FragmentMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    instance-of v1, p1, Landroid/content/Context;

    if-eqz v1, :cond_1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    .line 82
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t inject fragment into a non-Activity context"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 87
    :try_start_0
    iget-object v4, p0, Lroboguice/inject/FragmentMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v4, Lroboguice/inject/InjectFragment;

    .line 88
    invoke-interface {v4}, Lroboguice/inject/InjectFragment;->value()I

    move-result v5

    if-ltz v5, :cond_2

    .line 91
    iget-object v4, p0, Lroboguice/inject/FragmentMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->fragManager:Lcom/google/inject/Provider;

    invoke-interface {v6}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lroboguice/fragment/FragmentUtil$f;->findFragmentById(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    move-object p1, v4

    goto :goto_1

    .line 93
    :cond_2
    iget-object v5, p0, Lroboguice/inject/FragmentMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->fragManager:Lcom/google/inject/Provider;

    invoke-interface {v6}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Lroboguice/inject/InjectFragment;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lroboguice/fragment/FragmentUtil$f;->findFragmentByTag(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :goto_1
    if-nez p1, :cond_3

    .line 95
    iget-object v4, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v4}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_3
    iget-object v4, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 99
    iget-object v4, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 105
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

    iget-object p1, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v6, v2

    const/4 p1, 0x3

    iget-object v1, p0, Lroboguice/inject/FragmentMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, p1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception p1

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
