.class public abstract Lcom/google/inject/spi/DefaultElementVisitor;
.super Ljava/lang/Object;
.source "DefaultElementVisitor.java"

# interfaces
.implements Lcom/google/inject/spi/ElementVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/ElementVisitor<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding<",
            "TT;>;)TV;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/DisableCircularProxiesOption;",
            ")TV;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InjectionRequest<",
            "*>;)TV;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/MembersInjectorLookup<",
            "TT;>;)TV;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/Message;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/Message;",
            ")TV;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/PrivateElements;",
            ")TV;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ProviderLookup;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ProviderLookup<",
            "TT;>;)TV;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ProvisionListenerBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProvisionListenerBinding;",
            ")TV;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;",
            ")TV;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;",
            ")TV;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/RequireExplicitBindingsOption;",
            ")TV;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ScopeBinding;",
            ")TV;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/StaticInjectionRequest;",
            ")TV;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/TypeConverterBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ")TV;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/TypeListenerBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ")TV;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultElementVisitor;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/Element;",
            ")TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
