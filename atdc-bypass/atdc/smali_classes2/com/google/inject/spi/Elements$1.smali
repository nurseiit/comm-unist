.class final Lcom/google/inject/spi/Elements$1;
.super Lcom/google/inject/spi/DefaultBindingTargetVisitor;
.source "Elements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/spi/Elements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/spi/DefaultBindingTargetVisitor<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/google/inject/spi/DefaultBindingTargetVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InstanceBinding<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lcom/google/inject/spi/InstanceBinding;->getInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
