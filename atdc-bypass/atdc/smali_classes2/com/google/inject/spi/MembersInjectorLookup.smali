.class public final Lcom/google/inject/spi/MembersInjectorLookup;
.super Ljava/lang/Object;
.source "MembersInjectorLookup.java"

# interfaces
.implements Lcom/google/inject/spi/Element;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/Element;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/inject/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;

.field private final type:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/inject/TypeLiteral;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "source"

    .line 43
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/MembersInjectorLookup;->source:Ljava/lang/Object;

    const-string p1, "type"

    .line 44
    invoke-static {p2, p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/TypeLiteral;

    iput-object p1, p0, Lcom/google/inject/spi/MembersInjectorLookup;->type:Lcom/google/inject/TypeLiteral;

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/spi/MembersInjectorLookup;)Lcom/google/inject/MembersInjector;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/inject/spi/MembersInjectorLookup;->delegate:Lcom/google/inject/MembersInjector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/inject/spi/MembersInjectorLookup;)Lcom/google/inject/TypeLiteral;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/inject/spi/MembersInjectorLookup;->type:Lcom/google/inject/TypeLiteral;

    return-object p0
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

    .line 59
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/google/inject/spi/MembersInjectorLookup;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/inject/spi/MembersInjectorLookup;->type:Lcom/google/inject/TypeLiteral;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/spi/MembersInjectorLookup;->initializeDelegate(Lcom/google/inject/MembersInjector;)V

    return-void
.end method

.method public getDelegate()Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/inject/spi/MembersInjectorLookup;->delegate:Lcom/google/inject/MembersInjector;

    return-object v0
.end method

.method public getMembersInjector()Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/google/inject/spi/MembersInjectorLookup$1;

    invoke-direct {v0, p0}, Lcom/google/inject/spi/MembersInjectorLookup$1;-><init>(Lcom/google/inject/spi/MembersInjectorLookup;)V

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/inject/spi/MembersInjectorLookup;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/inject/spi/MembersInjectorLookup;->type:Lcom/google/inject/TypeLiteral;

    return-object v0
.end method

.method public initializeDelegate(Lcom/google/inject/MembersInjector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/inject/spi/MembersInjectorLookup;->delegate:Lcom/google/inject/MembersInjector;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "delegate already initialized"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "delegate"

    .line 69
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/MembersInjector;

    iput-object p1, p0, Lcom/google/inject/spi/MembersInjectorLookup;->delegate:Lcom/google/inject/MembersInjector;

    return-void
.end method
