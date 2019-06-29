.class interface abstract Lcom/google/inject/internal/State;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field public static final NONE:Lcom/google/inject/internal/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/google/inject/internal/State$1;

    invoke-direct {v0}, Lcom/google/inject/internal/State$1;-><init>()V

    sput-object v0, Lcom/google/inject/internal/State;->NONE:Lcom/google/inject/internal/State;

    return-void
.end method


# virtual methods
.method public abstract addConverter(Lcom/google/inject/spi/TypeConverterBinding;)V
.end method

.method public abstract addProvisionListener(Lcom/google/inject/spi/ProvisionListenerBinding;)V
.end method

.method public abstract addTypeListener(Lcom/google/inject/spi/TypeListenerBinding;)V
.end method

.method public abstract blacklist(Lcom/google/inject/Key;Lcom/google/inject/internal/State;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/internal/State;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getConverter(Ljava/lang/String;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/google/inject/spi/TypeConverterBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/google/inject/internal/Errors;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/spi/TypeConverterBinding;"
        }
    .end annotation
.end method

.method public abstract getConvertersThisLevel()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getExplicitBindingsThisLevel()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getProvisionListenerBindings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/ProvisionListenerBinding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScopeBinding(Ljava/lang/Class;)Lcom/google/inject/spi/ScopeBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/spi/ScopeBinding;"
        }
    .end annotation
.end method

.method public abstract getScopes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSourcesForBlacklistedKey(Lcom/google/inject/Key;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypeListenerBindings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBlacklisted(Lcom/google/inject/Key;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract lock()Ljava/lang/Object;
.end method

.method public abstract parent()Lcom/google/inject/internal/State;
.end method

.method public abstract putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/internal/BindingImpl<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract putScopeBinding(Ljava/lang/Class;Lcom/google/inject/spi/ScopeBinding;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/spi/ScopeBinding;",
            ")V"
        }
    .end annotation
.end method
