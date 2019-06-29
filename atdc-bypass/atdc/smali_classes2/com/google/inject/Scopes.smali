.class public Lcom/google/inject/Scopes;
.super Ljava/lang/Object;
.source "Scopes.java"


# static fields
.field private static final IS_SINGLETON_VISITOR:Lcom/google/inject/spi/BindingScopingVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/BindingScopingVisitor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_SCOPE:Lcom/google/inject/Scope;

.field private static final NULL:Ljava/lang/Object;

.field public static final SINGLETON:Lcom/google/inject/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->NULL:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/google/inject/Scopes$1;

    invoke-direct {v0}, Lcom/google/inject/Scopes$1;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->SINGLETON:Lcom/google/inject/Scope;

    .line 114
    new-instance v0, Lcom/google/inject/Scopes$2;

    invoke-direct {v0}, Lcom/google/inject/Scopes$2;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->NO_SCOPE:Lcom/google/inject/Scope;

    .line 123
    new-instance v0, Lcom/google/inject/Scopes$3;

    invoke-direct {v0}, Lcom/google/inject/Scopes$3;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->IS_SINGLETON_VISITOR:Lcom/google/inject/spi/BindingScopingVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/inject/Scopes;->NULL:Ljava/lang/Object;

    return-object v0
.end method

.method public static isCircularProxy(Ljava/lang/Object;)Z
    .locals 0

    .line 243
    instance-of p0, p0, Lcom/google/inject/internal/CircularDependencyProxy;

    return p0
.end method

.method public static isScoped(Lcom/google/inject/Binding;Lcom/google/inject/Scope;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding<",
            "*>;",
            "Lcom/google/inject/Scope;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 192
    :goto_0
    new-instance v0, Lcom/google/inject/Scopes$4;

    invoke-direct {v0, p2, p1}, Lcom/google/inject/Scopes$4;-><init>(Ljava/lang/Class;Lcom/google/inject/Scope;)V

    invoke-interface {p0, v0}, Lcom/google/inject/Binding;->acceptScopingVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 214
    :cond_0
    instance-of v0, p0, Lcom/google/inject/internal/LinkedBindingImpl;

    if-eqz v0, :cond_1

    .line 215
    check-cast p0, Lcom/google/inject/internal/LinkedBindingImpl;

    .line 216
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getInjector()Lcom/google/inject/internal/InjectorImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getLinkedKey()Lcom/google/inject/Key;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p0

    goto :goto_0

    .line 221
    :cond_1
    instance-of v0, p0, Lcom/google/inject/spi/ExposedBinding;

    if-eqz v0, :cond_2

    .line 222
    check-cast p0, Lcom/google/inject/spi/ExposedBinding;

    .line 223
    invoke-interface {p0}, Lcom/google/inject/spi/ExposedBinding;->getPrivateElements()Lcom/google/inject/spi/PrivateElements;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/spi/PrivateElements;->getInjector()Lcom/google/inject/Injector;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 225
    invoke-interface {p0}, Lcom/google/inject/spi/ExposedBinding;->getKey()Lcom/google/inject/Key;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isSingleton(Lcom/google/inject/Binding;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding<",
            "*>;)Z"
        }
    .end annotation

    .line 153
    :goto_0
    sget-object v0, Lcom/google/inject/Scopes;->IS_SINGLETON_VISITOR:Lcom/google/inject/spi/BindingScopingVisitor;

    invoke-interface {p0, v0}, Lcom/google/inject/Binding;->acceptScopingVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 158
    :cond_0
    instance-of v0, p0, Lcom/google/inject/internal/LinkedBindingImpl;

    if-eqz v0, :cond_1

    .line 159
    check-cast p0, Lcom/google/inject/internal/LinkedBindingImpl;

    .line 160
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getInjector()Lcom/google/inject/internal/InjectorImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedBindingImpl;->getLinkedKey()Lcom/google/inject/Key;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p0

    goto :goto_0

    .line 165
    :cond_1
    instance-of v0, p0, Lcom/google/inject/spi/ExposedBinding;

    if-eqz v0, :cond_2

    .line 166
    check-cast p0, Lcom/google/inject/spi/ExposedBinding;

    .line 167
    invoke-interface {p0}, Lcom/google/inject/spi/ExposedBinding;->getPrivateElements()Lcom/google/inject/spi/PrivateElements;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/spi/PrivateElements;->getInjector()Lcom/google/inject/Injector;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 169
    invoke-interface {p0}, Lcom/google/inject/spi/ExposedBinding;->getKey()Lcom/google/inject/Key;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
