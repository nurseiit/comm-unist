.class final Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;
.super Lcom/google/inject/util/Providers$GuicifiedProvider;
.source "Providers.java"

# interfaces
.implements Lcom/google/inject/spi/ProviderWithDependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/util/Providers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GuicifiedProviderWithDependencies"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/util/Providers$GuicifiedProvider<",
        "TT;>;",
        "Lcom/google/inject/spi/ProviderWithDependencies<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;",
            "Ljavax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p2, v0}, Lcom/google/inject/util/Providers$GuicifiedProvider;-><init>(Ljavax/inject/Provider;Lcom/google/inject/util/Providers$1;)V

    .line 143
    iput-object p1, p0, Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;->dependencies:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Ljavax/inject/Provider;Lcom/google/inject/util/Providers$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;-><init>(Ljava/util/Set;Ljavax/inject/Provider;)V

    return-void
.end method


# virtual methods
.method public getDependencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;->dependencies:Ljava/util/Set;

    return-object v0
.end method

.method initialize(Lcom/google/inject/Injector;)V
    .locals 1
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;->delegate:Ljavax/inject/Provider;

    invoke-interface {p1, v0}, Lcom/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method
