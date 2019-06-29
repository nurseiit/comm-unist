.class public interface abstract Lcom/google/inject/spi/ProvidesMethodTargetVisitor;
.super Ljava/lang/Object;
.source "ProvidesMethodTargetVisitor.java"

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


# virtual methods
.method public abstract visit(Lcom/google/inject/spi/ProvidesMethodBinding;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProvidesMethodBinding<",
            "+TT;>;)TV;"
        }
    .end annotation
.end method
