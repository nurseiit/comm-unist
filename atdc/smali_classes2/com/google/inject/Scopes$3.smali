.class final Lcom/google/inject/Scopes$3;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements Lcom/google/inject/spi/BindingScopingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/Scopes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/BindingScopingVisitor<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitEagerSingleton()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitEagerSingleton()Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/google/inject/Scopes$3;->visitEagerSingleton()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitNoScoping()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNoScoping()Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/google/inject/Scopes$3;->visitNoScoping()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitScope(Lcom/google/inject/Scope;)Ljava/lang/Boolean;
    .locals 1

    .line 135
    sget-object v0, Lcom/google/inject/Scopes;->SINGLETON:Lcom/google/inject/Scope;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitScope(Lcom/google/inject/Scope;)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/inject/Scopes$3;->visitScope(Lcom/google/inject/Scope;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 130
    const-class v0, Lcom/google/inject/Singleton;

    if-eq p1, v0, :cond_1

    const-class v0, Ljavax/inject/Singleton;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/inject/Scopes$3;->visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
