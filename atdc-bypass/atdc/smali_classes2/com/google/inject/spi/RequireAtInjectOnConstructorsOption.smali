.class public final Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;
.super Ljava/lang/Object;
.source "RequireAtInjectOnConstructorsOption.java"

# interfaces
.implements Lcom/google/inject/spi/Element;


# instance fields
.field private final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "source"

    .line 34
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 46
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/inject/Binder;->requireAtInjectOnConstructors()V

    return-void
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;->source:Ljava/lang/Object;

    return-object v0
.end method
