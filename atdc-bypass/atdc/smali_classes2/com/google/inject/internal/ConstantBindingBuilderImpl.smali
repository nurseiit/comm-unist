.class public final Lcom/google/inject/internal/ConstantBindingBuilderImpl;
.super Lcom/google/inject/internal/AbstractBindingBuilder;
.source "ConstantBindingBuilderImpl.java"

# interfaces
.implements Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;
.implements Lcom/google/inject/binder/ConstantBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/AbstractBindingBuilder<",
        "TT;>;",
        "Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;",
        "Lcom/google/inject/binder/ConstantBindingBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->NULL_KEY:Lcom/google/inject/Key;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V

    return-void
.end method

.method private toConstant(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->keyTypeIsSet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    iget-object p1, p0, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->binder:Lcom/google/inject/Binder;

    const-string p2, "Constant value is set more than once."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object p1

    :goto_0
    move-object v4, p1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object p1

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-nez p2, :cond_3

    .line 121
    iget-object p1, p0, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->binder:Lcom/google/inject/Binder;

    const-string v2, "Binding to null instances is not allowed. Use toProvider(Providers.of(null)) if this is your intended behaviour."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_3
    new-instance p1, Lcom/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v5

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v6

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    return-void
.end method


# virtual methods
.method public annotatedWith(Ljava/lang/Class;)Lcom/google/inject/binder/ConstantBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/binder/ConstantBindingBuilder;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->annotatedWithInternal(Ljava/lang/Class;)Lcom/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/google/inject/binder/ConstantBindingBuilder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->annotatedWithInternal(Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public to(B)V
    .locals 1

    .line 87
    const-class v0, Ljava/lang/Byte;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(C)V
    .locals 1

    .line 83
    const-class v0, Ljava/lang/Character;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(D)V
    .locals 1

    .line 71
    const-class v0, Ljava/lang/Double;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(F)V
    .locals 1

    .line 75
    const-class v0, Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(I)V
    .locals 1

    .line 59
    const-class v0, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(J)V
    .locals 1

    .line 63
    const-class v0, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 91
    const-class v0, Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(Ljava/lang/String;)V
    .locals 1

    .line 55
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(S)V
    .locals 1

    .line 79
    const-class v0, Ljava/lang/Short;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(Z)V
    .locals 1

    .line 67
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ConstantBindingBuilder"

    return-object v0
.end method
