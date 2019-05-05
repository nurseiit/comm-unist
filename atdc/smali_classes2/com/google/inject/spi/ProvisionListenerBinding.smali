.class public final Lcom/google/inject/spi/ProvisionListenerBinding;
.super Ljava/lang/Object;
.source "ProvisionListenerBinding.java"

# interfaces
.implements Lcom/google/inject/spi/Element;


# instance fields
.field private final bindingMatcher:Lcom/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Lcom/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/spi/ProvisionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/inject/matcher/Matcher;[Lcom/google/inject/spi/ProvisionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Lcom/google/inject/Binding<",
            "*>;>;[",
            "Lcom/google/inject/spi/ProvisionListener;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/inject/spi/ProvisionListenerBinding;->source:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lcom/google/inject/spi/ProvisionListenerBinding;->bindingMatcher:Lcom/google/inject/matcher/Matcher;

    .line 44
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/ProvisionListenerBinding;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 64
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/ProvisionListenerBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/google/inject/spi/ProvisionListenerBinding;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/inject/spi/ProvisionListenerBinding;->bindingMatcher:Lcom/google/inject/matcher/Matcher;

    iget-object v1, p0, Lcom/google/inject/spi/ProvisionListenerBinding;->listeners:Ljava/util/List;

    iget-object v2, p0, Lcom/google/inject/spi/ProvisionListenerBinding;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/inject/spi/ProvisionListener;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/inject/spi/ProvisionListener;

    invoke-interface {p1, v0, v1}, Lcom/google/inject/Binder;->bindListener(Lcom/google/inject/matcher/Matcher;[Lcom/google/inject/spi/ProvisionListener;)V

    return-void
.end method

.method public getBindingMatcher()Lcom/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Lcom/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/inject/spi/ProvisionListenerBinding;->bindingMatcher:Lcom/google/inject/matcher/Matcher;

    return-object v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/ProvisionListener;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/inject/spi/ProvisionListenerBinding;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/inject/spi/ProvisionListenerBinding;->source:Ljava/lang/Object;

    return-object v0
.end method
