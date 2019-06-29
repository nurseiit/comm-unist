.class public interface abstract Lcom/google/inject/spi/ProvidesMethodBinding;
.super Ljava/lang/Object;
.source "ProvidesMethodBinding.java"

# interfaces
.implements Lcom/google/inject/spi/HasDependencies;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/HasDependencies;"
    }
.end annotation


# virtual methods
.method public abstract getEnclosingInstance()Ljava/lang/Object;
.end method

.method public abstract getKey()Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getMethod()Ljava/lang/reflect/Method;
.end method
