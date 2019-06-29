.class final Lcom/google/inject/internal/Scoping$6;
.super Lcom/google/inject/internal/Scoping;
.source "Scoping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/Scoping;->forInstance(Lcom/google/inject/Scope;)Lcom/google/inject/internal/Scoping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$scope:Lcom/google/inject/Scope;


# direct methods
.method constructor <init>(Lcom/google/inject/Scope;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/google/inject/internal/Scoping$6;->val$scope:Lcom/google/inject/Scope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/inject/internal/Scoping;-><init>(Lcom/google/inject/internal/Scoping$1;)V

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingScopingVisitor<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/inject/internal/Scoping$6;->val$scope:Lcom/google/inject/Scope;

    invoke-interface {p1, v0}, Lcom/google/inject/spi/BindingScopingVisitor;->visitScope(Lcom/google/inject/Scope;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/inject/internal/Scoping$6;->val$scope:Lcom/google/inject/Scope;

    invoke-interface {p1, v0}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Lcom/google/inject/Scope;)V

    return-void
.end method

.method public getScopeInstance()Lcom/google/inject/Scope;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/inject/internal/Scoping$6;->val$scope:Lcom/google/inject/Scope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/inject/internal/Scoping$6;->val$scope:Lcom/google/inject/Scope;

    invoke-interface {v0}, Lcom/google/inject/Scope;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
