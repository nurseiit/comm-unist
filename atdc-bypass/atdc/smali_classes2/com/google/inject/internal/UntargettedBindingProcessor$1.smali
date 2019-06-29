.class Lcom/google/inject/internal/UntargettedBindingProcessor$1;
.super Lcom/google/inject/internal/AbstractBindingProcessor$Processor;
.source "UntargettedBindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/UntargettedBindingProcessor;->visit(Lcom/google/inject/Binding;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/AbstractBindingProcessor$Processor<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/UntargettedBindingProcessor;Lcom/google/inject/internal/BindingImpl;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/AbstractBindingProcessor$Processor;-><init>(Lcom/google/inject/internal/AbstractBindingProcessor;Lcom/google/inject/internal/BindingImpl;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/UntargettedBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->prepareBinding()V

    .line 43
    iget-object p1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->key:Lcom/google/inject/Key;

    invoke-virtual {p1}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    iget-object p1, p1, Lcom/google/inject/internal/UntargettedBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->key:Lcom/google/inject/Key;

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    .line 45
    iget-object p1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    iget-object v1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    iget-object v2, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    iget-object v2, v2, Lcom/google/inject/internal/UntargettedBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v4, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->source:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/inject/internal/UntargettedBindingProcessor;->invalidBinding(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/UntargettedBindingImpl;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/UntargettedBindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    iget-object v1, p1, Lcom/google/inject/internal/UntargettedBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    iget-object v4, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->source:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    iget-object v5, p1, Lcom/google/inject/internal/UntargettedBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/inject/internal/InjectorImpl;->createUninitializedBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/google/inject/internal/Errors;Z)Lcom/google/inject/internal/BindingImpl;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->scheduleInitialization(Lcom/google/inject/internal/BindingImpl;)V

    .line 54
    iget-object v1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    invoke-virtual {v1, p1}, Lcom/google/inject/internal/UntargettedBindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    iget-object v1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/UntargettedBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    .line 57
    iget-object p1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    iget-object v1, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    iget-object v2, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/google/inject/internal/UntargettedBindingProcessor;

    iget-object v2, v2, Lcom/google/inject/internal/UntargettedBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v4, p0, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->source:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/inject/internal/UntargettedBindingProcessor;->invalidBinding(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/UntargettedBindingImpl;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/UntargettedBindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    .line 60
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected visitOther(Lcom/google/inject/Binding;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/UntargettedBindingProcessor$1;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
