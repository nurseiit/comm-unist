.class final Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;
.super Lcom/google/inject/internal/ProviderMethod;
.source "ProviderMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/ProviderMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectionProviderMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ProviderMethod<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;",
            "Ljava/util/List<",
            "Lcom/google/inject/Provider<",
            "*>;>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 245
    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ProviderMethod;-><init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;Lcom/google/inject/internal/ProviderMethod$1;)V

    return-void
.end method


# virtual methods
.method doProvision([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
