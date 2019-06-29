.class public interface abstract Lcom/google/inject/spi/ProvisionListener;
.super Ljava/lang/Object;
.source "ProvisionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation;
    }
.end annotation


# virtual methods
.method public abstract onProvision(Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation<",
            "TT;>;)V"
        }
    .end annotation
.end method
