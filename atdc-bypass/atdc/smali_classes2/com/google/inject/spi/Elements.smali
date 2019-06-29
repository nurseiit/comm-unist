.class public final Lcom/google/inject/spi/Elements;
.super Ljava/lang/Object;
.source "Elements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/spi/Elements$RecordingBinder;,
        Lcom/google/inject/spi/Elements$ElementsAsModule;
    }
.end annotation


# static fields
.field private static final GET_INSTANCE_VISITOR:Lcom/google/inject/spi/BindingTargetVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/BindingTargetVisitor<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/google/inject/spi/Elements$1;

    invoke-direct {v0}, Lcom/google/inject/spi/Elements$1;-><init>()V

    sput-object v0, Lcom/google/inject/spi/Elements;->GET_INSTANCE_VISITOR:Lcom/google/inject/spi/BindingTargetVisitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Stage;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/google/inject/spi/Elements$RecordingBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/Stage;Lcom/google/inject/spi/Elements$1;)V

    .line 106
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/Module;

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->install(Lcom/google/inject/Module;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lcom/google/inject/internal/util/StackTraceElements;->clearCache()V

    .line 111
    invoke-static {v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->access$100(Lcom/google/inject/spi/Elements$RecordingBinder;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getElements(Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Stage;",
            "[",
            "Lcom/google/inject/Module;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/inject/spi/Elements;->getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getElements(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/google/inject/Stage;->DEVELOPMENT:Lcom/google/inject/Stage;

    invoke-static {v0, p0}, Lcom/google/inject/spi/Elements;->getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getElements([Lcom/google/inject/Module;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/inject/Module;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/google/inject/Stage;->DEVELOPMENT:Lcom/google/inject/Stage;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/inject/spi/Elements;->getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getInstanceVisitor()Lcom/google/inject/spi/BindingTargetVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/inject/spi/BindingTargetVisitor<",
            "TT;TT;>;"
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/google/inject/spi/Elements;->GET_INSTANCE_VISITOR:Lcom/google/inject/spi/BindingTargetVisitor;

    return-object v0
.end method

.method public static getModule(Ljava/lang/Iterable;)Lcom/google/inject/Module;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/spi/Element;",
            ">;)",
            "Lcom/google/inject/Module;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/google/inject/spi/Elements$ElementsAsModule;

    invoke-direct {v0, p0}, Lcom/google/inject/spi/Elements$ElementsAsModule;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method
