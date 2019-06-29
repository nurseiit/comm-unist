.class public abstract Lcom/google/inject/spi/DefaultBindingTargetVisitor;
.super Ljava/lang/Object;
.source "DefaultBindingTargetVisitor.java"

# interfaces
.implements Lcom/google/inject/spi/BindingTargetVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/BindingTargetVisitor<",
        "TT;TV;>;"
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
.method public visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ConstructorBinding<",
            "+TT;>;)TV;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultBindingTargetVisitor;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ConvertedConstantBinding<",
            "+TT;>;)TV;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultBindingTargetVisitor;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ExposedBinding<",
            "+TT;>;)TV;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultBindingTargetVisitor;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InstanceBinding<",
            "+TT;>;)TV;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultBindingTargetVisitor;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/LinkedKeyBinding<",
            "+TT;>;)TV;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultBindingTargetVisitor;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ProviderBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderBinding<",
            "+TT;>;)TV;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultBindingTargetVisitor;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderInstanceBinding<",
            "+TT;>;)TV;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultBindingTargetVisitor;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderKeyBinding<",
            "+TT;>;)TV;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultBindingTargetVisitor;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/UntargettedBinding<",
            "+TT;>;)TV;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/DefaultBindingTargetVisitor;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding<",
            "+TT;>;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
