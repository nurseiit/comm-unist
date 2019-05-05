.class Lcom/google/inject/util/Modules$OverrideModule$2;
.super Lcom/google/inject/util/Modules$ModuleWriter;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/util/Modules$OverrideModule;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/util/Modules$OverrideModule;

.field final synthetic val$overriddenKeys:Ljava/util/Set;

.field final synthetic val$scopeBindings:Ljava/util/List;

.field final synthetic val$scopeInstancesInUse:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->this$0:Lcom/google/inject/util/Modules$OverrideModule;

    iput-object p3, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->val$overriddenKeys:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->val$scopeInstancesInUse:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->val$scopeBindings:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/inject/util/Modules$ModuleWriter;-><init>(Lcom/google/inject/Binder;)V

    return-void
.end method


# virtual methods
.method rewrite(Lcom/google/inject/Binder;Lcom/google/inject/spi/PrivateElements;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Lcom/google/inject/spi/PrivateElements;",
            "Ljava/util/Set<",
            "Lcom/google/inject/Key<",
            "*>;>;)V"
        }
    .end annotation

    .line 244
    invoke-interface {p2}, Lcom/google/inject/spi/PrivateElements;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/inject/Binder;->newPrivateBinder()Lcom/google/inject/PrivateBinder;

    move-result-object p1

    .line 247
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 249
    invoke-interface {p2}, Lcom/google/inject/spi/PrivateElements;->getExposedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/Key;

    .line 250
    invoke-interface {p3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_0
    invoke-interface {p2, v2}, Lcom/google/inject/spi/PrivateElements;->getExposedSource(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/inject/PrivateBinder;->expose(Lcom/google/inject/Key;)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-interface {p2}, Lcom/google/inject/spi/PrivateElements;->getElements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/inject/spi/Element;

    .line 258
    instance-of v1, p3, Lcom/google/inject/Binding;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, Lcom/google/inject/Binding;

    invoke-interface {v1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 262
    :cond_2
    instance-of v1, p3, Lcom/google/inject/spi/PrivateElements;

    if-eqz v1, :cond_3

    .line 263
    check-cast p3, Lcom/google/inject/spi/PrivateElements;

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/inject/util/Modules$OverrideModule$2;->rewrite(Lcom/google/inject/Binder;Lcom/google/inject/spi/PrivateElements;Ljava/util/Set;)V

    goto :goto_1

    .line 266
    :cond_3
    invoke-interface {p3, p1}, Lcom/google/inject/spi/Element;->applyTo(Lcom/google/inject/Binder;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$OverrideModule$2;->visit(Lcom/google/inject/Binding;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$OverrideModule$2;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$OverrideModule$2;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/Binding;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding<",
            "TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->val$overriddenKeys:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-super {p0, p1}, Lcom/google/inject/util/Modules$ModuleWriter;->visit(Lcom/google/inject/Binding;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->this$0:Lcom/google/inject/util/Modules$OverrideModule;

    invoke-static {v0, p1}, Lcom/google/inject/util/Modules$OverrideModule;->access$200(Lcom/google/inject/util/Modules$OverrideModule;Lcom/google/inject/Binding;)Lcom/google/inject/Scope;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->val$scopeInstancesInUse:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 233
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->val$scopeInstancesInUse:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    invoke-interface {p1}, Lcom/google/inject/Binding;->getSource()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Void;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->binder:Lcom/google/inject/Binder;

    iget-object v1, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->val$overriddenKeys:Ljava/util/Set;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/inject/util/Modules$OverrideModule$2;->rewrite(Lcom/google/inject/Binder;Lcom/google/inject/spi/PrivateElements;Ljava/util/Set;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Void;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/inject/util/Modules$OverrideModule$2;->val$scopeBindings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method
