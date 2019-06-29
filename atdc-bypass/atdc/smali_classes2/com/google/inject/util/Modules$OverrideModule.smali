.class Lcom/google/inject/util/Modules$OverrideModule;
.super Lcom/google/inject/AbstractModule;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/util/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverrideModule"
.end annotation


# instance fields
.field private final baseModules:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field

.field private final overrides:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/Module;",
            ">;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/Module;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lcom/google/inject/AbstractModule;-><init>()V

    .line 167
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/util/Modules$OverrideModule;->overrides:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 168
    iput-object p2, p0, Lcom/google/inject/util/Modules$OverrideModule;->baseModules:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-void
.end method

.method static synthetic access$200(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binding;)Lcom/google/inject/Scope;
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/google/inject/util/Modules$OverrideModule;->getScopeInstanceOrNull(Lcom/google/inject/Binding;)Lcom/google/inject/Scope;

    move-result-object p0

    return-object p0
.end method

.method private getScopeInstanceOrNull(Lcom/google/inject/Binding;)Lcom/google/inject/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding<",
            "*>;)",
            "Lcom/google/inject/Scope;"
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/google/inject/util/Modules$OverrideModule$4;

    invoke-direct {v0, p0}, Lcom/google/inject/util/Modules$OverrideModule$4;-><init>(Lcom/google/inject/util/Modules$OverrideModule;)V

    invoke-interface {p1, v0}, Lcom/google/inject/Binding;->acceptScopingVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/Scope;

    return-object p1
.end method


# virtual methods
.method public configure()V
    .locals 12

    .line 173
    invoke-virtual {p0}, Lcom/google/inject/util/Modules$OverrideModule;->binder()Lcom/google/inject/Binder;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/google/inject/util/Modules$OverrideModule;->currentStage()Lcom/google/inject/Stage;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/util/Modules$OverrideModule;->baseModules:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {v1, v2}, Lcom/google/inject/spi/Elements;->getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 179
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 180
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/spi/Element;

    .line 181
    instance-of v4, v2, Lcom/google/inject/spi/PrivateElements;

    if-eqz v4, :cond_1

    .line 182
    check-cast v2, Lcom/google/inject/spi/PrivateElements;

    .line 183
    invoke-interface {v0}, Lcom/google/inject/Binder;->newPrivateBinder()Lcom/google/inject/PrivateBinder;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/inject/spi/PrivateElements;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;

    move-result-object v0

    .line 184
    invoke-interface {v2}, Lcom/google/inject/spi/PrivateElements;->getExposedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/inject/Key;

    .line 185
    invoke-interface {v2, v4}, Lcom/google/inject/spi/PrivateElements;->getExposedSource(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/inject/PrivateBinder;->expose(Lcom/google/inject/Key;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {v2}, Lcom/google/inject/spi/PrivateElements;->getElements()Ljava/util/List;

    move-result-object v1

    .line 192
    :cond_1
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/google/inject/Binder;->skipSources([Ljava/lang/Class;)Lcom/google/inject/Binder;

    move-result-object v0

    .line 193
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/inject/util/Modules$OverrideModule;->currentStage()Lcom/google/inject/Stage;

    move-result-object v1

    iget-object v3, p0, Lcom/google/inject/util/Modules$OverrideModule;->overrides:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {v1, v3}, Lcom/google/inject/spi/Elements;->getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 196
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 197
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 201
    new-instance v4, Lcom/google/inject/util/Modules$OverrideModule$1;

    invoke-direct {v4, p0, v0, v8, v3}, Lcom/google/inject/util/Modules$OverrideModule$1;-><init>(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {v4, v1}, Lcom/google/inject/util/Modules$OverrideModule$1;->writeAll(Ljava/lang/Iterable;)V

    .line 221
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 222
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 223
    new-instance v11, Lcom/google/inject/util/Modules$OverrideModule$2;

    move-object v5, v11

    move-object v6, p0

    move-object v7, v0

    move-object v9, v1

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/inject/util/Modules$OverrideModule$2;-><init>(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v11, v2}, Lcom/google/inject/util/Modules$OverrideModule$2;->writeAll(Ljava/lang/Iterable;)V

    .line 283
    new-instance v2, Lcom/google/inject/util/Modules$OverrideModule$3;

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/google/inject/util/Modules$OverrideModule$3;-><init>(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binder;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v2, v4}, Lcom/google/inject/util/Modules$OverrideModule$3;->writeAll(Ljava/lang/Iterable;)V

    return-void
.end method
