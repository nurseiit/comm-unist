.class public Lroboguice/inject/PreferenceListener;
.super Ljava/lang/Object;
.source "PreferenceListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;
    }
.end annotation


# instance fields
.field protected application:Landroid/app/Application;

.field protected contextProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/google/inject/HierarchyTraversalFilter;

.field protected preferencesForInjection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lroboguice/inject/PreferenceListener$PreferenceMembersInjector<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lroboguice/inject/PreferenceListener;->contextProvider:Lcom/google/inject/Provider;

    .line 50
    iput-object p2, p0, Lroboguice/inject/PreferenceListener;->application:Landroid/app/Application;

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

    .line 78
    iget-object v0, p0, Lroboguice/inject/PreferenceListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/inject/InjectPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .locals 5
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

    .line 54
    iget-object v0, p0, Lroboguice/inject/PreferenceListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v0

    iput-object v0, p0, Lroboguice/inject/PreferenceListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lroboguice/inject/PreferenceListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v0}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 60
    :goto_1
    invoke-direct {p0, p1}, Lroboguice/inject/PreferenceListener;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lroboguice/inject/PreferenceListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/inject/InjectPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 65
    const-class v2, Lroboguice/inject/InjectPreference;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Preferences may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance v2, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;

    iget-object v3, p0, Lroboguice/inject/PreferenceListener;->contextProvider:Lcom/google/inject/Provider;

    const-class v4, Lroboguice/inject/InjectPreference;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lroboguice/inject/InjectPreference;

    invoke-direct {v2, p0, v1, v3, v4}, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;-><init>(Lroboguice/inject/PreferenceListener;Ljava/lang/reflect/Field;Lcom/google/inject/Provider;Lroboguice/inject/InjectPreference;)V

    invoke-interface {p2, v2}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public injectPreferenceViews()V
    .locals 2

    .line 86
    iget-object v0, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 87
    iget-object v1, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;

    invoke-virtual {v1}, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->reallyInjectMembers()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerPreferenceForInjection(Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lroboguice/inject/PreferenceListener$PreferenceMembersInjector<",
            "*>;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
