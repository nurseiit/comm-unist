.class Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;
.super Ljava/lang/Object;
.source "InjectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/InjectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindingsMultimap"
.end annotation


# instance fields
.field final multimap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/inject/Binding<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/internal/InjectorImpl$1;)V
    .locals 0

    .line 907
    invoke-direct {p0}, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;-><init>()V

    return-void
.end method


# virtual methods
.method getAll(Lcom/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/google/inject/Binding<",
            "TT;>;>;"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method put(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Binding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;",
            "Lcom/google/inject/Binding<",
            "TT;>;)V"
        }
    .end annotation

    .line 911
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 913
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 914
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
