.class Lcom/google/inject/spi/ProviderLookup$1;
.super Ljava/lang/Object;
.source "ProviderLookup.java"

# interfaces
.implements Lcom/google/inject/spi/ProviderWithDependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/spi/ProviderLookup;->getProvider()Lcom/google/inject/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/ProviderWithDependencies<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/spi/ProviderLookup;


# direct methods
.method constructor <init>(Lcom/google/inject/spi/ProviderLookup;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    invoke-static {v0}, Lcom/google/inject/spi/ProviderLookup;->access$000(Lcom/google/inject/spi/ProviderLookup;)Lcom/google/inject/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This Provider cannot be used until the Injector has been created."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    invoke-static {v0}, Lcom/google/inject/spi/ProviderLookup;->access$000(Lcom/google/inject/spi/ProviderLookup;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    invoke-static {v0}, Lcom/google/inject/spi/ProviderLookup;->access$100(Lcom/google/inject/spi/ProviderLookup;)Lcom/google/inject/Key;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    invoke-static {v1}, Lcom/google/inject/spi/ProviderLookup;->access$100(Lcom/google/inject/spi/ProviderLookup;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/util/Types;->providerOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/Key;->ofType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    invoke-static {v1}, Lcom/google/inject/spi/ProviderLookup;->access$100(Lcom/google/inject/spi/ProviderLookup;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
