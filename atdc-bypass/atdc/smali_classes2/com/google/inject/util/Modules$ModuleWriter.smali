.class Lcom/google/inject/util/Modules$ModuleWriter;
.super Lcom/google/inject/spi/DefaultElementVisitor;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/util/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/spi/DefaultElementVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final binder:Lcom/google/inject/Binder;


# direct methods
.method constructor <init>(Lcom/google/inject/Binder;)V
    .locals 3

    .line 319
    invoke-direct {p0}, Lcom/google/inject/spi/DefaultElementVisitor;-><init>()V

    const/4 v0, 0x1

    .line 320
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->skipSources([Ljava/lang/Class;)Lcom/google/inject/Binder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/util/Modules$ModuleWriter;->binder:Lcom/google/inject/Binder;

    return-void
.end method


# virtual methods
.method protected bridge synthetic visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;
    .locals 0

    .line 316
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$ModuleWriter;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Void;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/google/inject/util/Modules$ModuleWriter;->binder:Lcom/google/inject/Binder;

    invoke-interface {p1, v0}, Lcom/google/inject/spi/Element;->applyTo(Lcom/google/inject/Binder;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method writeAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/spi/Element;",
            ">;)V"
        }
    .end annotation

    .line 329
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Element;

    .line 330
    invoke-interface {v0, p0}, Lcom/google/inject/spi/Element;->acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
