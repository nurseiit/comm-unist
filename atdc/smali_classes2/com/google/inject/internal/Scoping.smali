.class public abstract Lcom/google/inject/internal/Scoping;
.super Ljava/lang/Object;
.source "Scoping.java"


# static fields
.field public static final EAGER_SINGLETON:Lcom/google/inject/internal/Scoping;

.field public static final SINGLETON_ANNOTATION:Lcom/google/inject/internal/Scoping;

.field public static final SINGLETON_INSTANCE:Lcom/google/inject/internal/Scoping;

.field public static final UNSCOPED:Lcom/google/inject/internal/Scoping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/google/inject/internal/Scoping$1;

    invoke-direct {v0}, Lcom/google/inject/internal/Scoping$1;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    .line 62
    new-instance v0, Lcom/google/inject/internal/Scoping$2;

    invoke-direct {v0}, Lcom/google/inject/internal/Scoping$2;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Scoping;->SINGLETON_ANNOTATION:Lcom/google/inject/internal/Scoping;

    .line 80
    new-instance v0, Lcom/google/inject/internal/Scoping$3;

    invoke-direct {v0}, Lcom/google/inject/internal/Scoping$3;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Scoping;->SINGLETON_INSTANCE:Lcom/google/inject/internal/Scoping;

    .line 98
    new-instance v0, Lcom/google/inject/internal/Scoping$4;

    invoke-direct {v0}, Lcom/google/inject/internal/Scoping$4;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/google/inject/internal/Scoping;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/internal/Scoping$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/inject/internal/Scoping;-><init>()V

    return-void
.end method

.method public static forAnnotation(Ljava/lang/Class;)Lcom/google/inject/internal/Scoping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/Scoping;"
        }
    .end annotation

    .line 117
    const-class v0, Lcom/google/inject/Singleton;

    if-eq p0, v0, :cond_1

    const-class v0, Ljavax/inject/Singleton;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Lcom/google/inject/internal/Scoping$5;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Scoping$5;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 119
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/inject/internal/Scoping;->SINGLETON_ANNOTATION:Lcom/google/inject/internal/Scoping;

    return-object p0
.end method

.method public static forInstance(Lcom/google/inject/Scope;)Lcom/google/inject/internal/Scoping;
    .locals 1

    .line 142
    sget-object v0, Lcom/google/inject/Scopes;->SINGLETON:Lcom/google/inject/Scope;

    if-ne p0, v0, :cond_0

    .line 143
    sget-object p0, Lcom/google/inject/internal/Scoping;->SINGLETON_INSTANCE:Lcom/google/inject/internal/Scoping;

    return-object p0

    .line 146
    :cond_0
    new-instance v0, Lcom/google/inject/internal/Scoping$6;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Scoping$6;-><init>(Lcom/google/inject/Scope;)V

    return-object v0
.end method

.method static makeInjectable(Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Scoping;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/google/inject/internal/Scoping;->getScopeAnnotation()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 258
    :cond_0
    iget-object p0, p1, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {p0, v0}, Lcom/google/inject/internal/State;->getScopeBinding(Ljava/lang/Class;)Lcom/google/inject/spi/ScopeBinding;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/google/inject/spi/ScopeBinding;->getScope()Lcom/google/inject/Scope;

    move-result-object p0

    invoke-static {p0}, Lcom/google/inject/internal/Scoping;->forInstance(Lcom/google/inject/Scope;)Lcom/google/inject/internal/Scoping;

    move-result-object p0

    return-object p0

    .line 263
    :cond_1
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->scopeNotFound(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 264
    sget-object p0, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    return-object p0
.end method

.method static scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/internal/InternalFactory<",
            "+TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Scoping;",
            ")",
            "Lcom/google/inject/internal/InternalFactory<",
            "+TT;>;"
        }
    .end annotation

    .line 236
    invoke-virtual {p4}, Lcom/google/inject/internal/Scoping;->isNoScope()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 240
    :cond_0
    invoke-virtual {p4}, Lcom/google/inject/internal/Scoping;->getScopeInstance()Lcom/google/inject/Scope;

    move-result-object p4

    .line 242
    new-instance v0, Lcom/google/inject/internal/ProviderToInternalFactoryAdapter;

    invoke-direct {v0, p1, p2}, Lcom/google/inject/internal/ProviderToInternalFactoryAdapter;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;)V

    invoke-interface {p4, p0, v0}, Lcom/google/inject/Scope;->scope(Lcom/google/inject/Key;Lcom/google/inject/Provider;)Lcom/google/inject/Provider;

    move-result-object p0

    .line 244
    new-instance p1, Lcom/google/inject/internal/InternalFactoryToProviderAdapter;

    invoke-direct {p1, p0, p3}, Lcom/google/inject/internal/InternalFactoryToProviderAdapter;-><init>(Lcom/google/inject/Provider;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public abstract acceptVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingScopingVisitor<",
            "TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 212
    instance-of v0, p1, Lcom/google/inject/internal/Scoping;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 213
    check-cast p1, Lcom/google/inject/internal/Scoping;

    .line 214
    invoke-virtual {p0}, Lcom/google/inject/internal/Scoping;->getScopeAnnotation()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/internal/Scoping;->getScopeAnnotation()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/internal/Scoping;->getScopeInstance()Lcom/google/inject/Scope;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/internal/Scoping;->getScopeInstance()Lcom/google/inject/Scope;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getScopeAnnotation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScopeInstance()Lcom/google/inject/Scope;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 223
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/inject/internal/Scoping;->getScopeAnnotation()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/inject/internal/Scoping;->getScopeInstance()Lcom/google/inject/Scope;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEagerSingleton(Lcom/google/inject/Stage;)Z
    .locals 3

    .line 185
    sget-object v0, Lcom/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/google/inject/internal/Scoping;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 189
    :cond_0
    sget-object v0, Lcom/google/inject/Stage;->PRODUCTION:Lcom/google/inject/Stage;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 190
    sget-object p1, Lcom/google/inject/internal/Scoping;->SINGLETON_ANNOTATION:Lcom/google/inject/internal/Scoping;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/google/inject/internal/Scoping;->SINGLETON_INSTANCE:Lcom/google/inject/internal/Scoping;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public isExplicitlyScoped()Z
    .locals 1

    .line 170
    sget-object v0, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoScope()Z
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/google/inject/internal/Scoping;->getScopeInstance()Lcom/google/inject/Scope;

    move-result-object v0

    sget-object v1, Lcom/google/inject/Scopes;->NO_SCOPE:Lcom/google/inject/Scope;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
