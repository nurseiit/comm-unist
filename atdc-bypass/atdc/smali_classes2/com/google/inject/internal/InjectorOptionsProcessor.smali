.class Lcom/google/inject/internal/InjectorOptionsProcessor;
.super Lcom/google/inject/internal/AbstractProcessor;
.source "InjectorOptionsProcessor.java"


# instance fields
.field private atInjectRequired:Z

.field private disableCircularProxies:Z

.field private exactBindingAnnotationsRequired:Z

.field private jitDisabled:Z


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    .line 37
    iput-boolean p1, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    .line 38
    iput-boolean p1, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->atInjectRequired:Z

    .line 39
    iput-boolean p1, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->exactBindingAnnotationsRequired:Z

    return-void
.end method


# virtual methods
.method getOptions(Lcom/google/inject/Stage;Lcom/google/inject/internal/InjectorImpl$InjectorOptions;)Lcom/google/inject/internal/InjectorImpl$InjectorOptions;
    .locals 10

    const-string v0, "stage must be set"

    .line 70
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 72
    new-instance p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v3, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    iget-boolean v4, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    iget-boolean v5, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->atInjectRequired:Z

    iget-boolean v6, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->exactBindingAnnotationsRequired:Z

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;-><init>(Lcom/google/inject/Stage;ZZZZ)V

    return-object p2

    .line 79
    :cond_0
    iget-object v0, p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->stage:Lcom/google/inject/Stage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "child & parent stage don\'t match"

    invoke-static {v0, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 80
    new-instance v0, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v3, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    if-nez v3, :cond_3

    iget-boolean v3, p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    :goto_2
    iget-boolean v3, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    if-nez v3, :cond_5

    iget-boolean v3, p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v7, 0x1

    :goto_4
    iget-boolean v3, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->atInjectRequired:Z

    if-nez v3, :cond_7

    iget-boolean v3, p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->atInjectRequired:Z

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v8, 0x1

    :goto_6
    iget-boolean v3, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->exactBindingAnnotationsRequired:Z

    if-nez v3, :cond_9

    iget-boolean p2, p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->exactBindingAnnotationsRequired:Z

    if-eqz p2, :cond_8

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v9, 0x1

    :goto_8
    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;-><init>(Lcom/google/inject/Stage;ZZZZ)V

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->atInjectRequired:Z

    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->exactBindingAnnotationsRequired:Z

    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    .line 54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorOptionsProcessor;->visit(Lcom/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorOptionsProcessor;->visit(Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorOptionsProcessor;->visit(Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorOptionsProcessor;->visit(Lcom/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
