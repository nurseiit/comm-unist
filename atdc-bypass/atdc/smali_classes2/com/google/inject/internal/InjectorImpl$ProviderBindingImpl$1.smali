.class final Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl$1;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl;->createInternalFactory(Lcom/google/inject/Binding;)Lcom/google/inject/internal/InternalFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory<",
        "Lcom/google/inject/Provider<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$provider:Lcom/google/inject/Provider;


# direct methods
.method constructor <init>(Lcom/google/inject/Provider;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl$1;->val$provider:Lcom/google/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Lcom/google/inject/Provider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency;",
            "Z)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 360
    iget-object p1, p0, Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl$1;->val$provider:Lcom/google/inject/Provider;

    return-object p1
.end method

.method public bridge synthetic get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl$1;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Lcom/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method
