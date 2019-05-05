.class Lcom/google/inject/internal/InjectorShell$Builder;
.super Ljava/lang/Object;
.source "InjectorShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/InjectorShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

.field private parent:Lcom/google/inject/internal/InjectorImpl;

.field private privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

.field private stage:Lcom/google/inject/Stage;

.field private state:Lcom/google/inject/internal/State;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    .line 71
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->modules:Ljava/util/List;

    return-void
.end method

.method private getState()Lcom/google/inject/internal/State;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->state:Lcom/google/inject/internal/State;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/google/inject/internal/InheritingState;

    sget-object v1, Lcom/google/inject/internal/State;->NONE:Lcom/google/inject/internal/State;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/InheritingState;-><init>(Lcom/google/inject/internal/State;)V

    iput-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->state:Lcom/google/inject/internal/State;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->state:Lcom/google/inject/internal/State;

    return-object v0
.end method


# virtual methods
.method addModules(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/inject/Module;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Module;

    .line 104
    iget-object v1, p0, Lcom/google/inject/internal/InjectorShell$Builder;->modules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method build(Lcom/google/inject/internal/Initializer;Lcom/google/inject/internal/ProcessedBindingData;Lcom/google/inject/internal/util/Stopwatch;Lcom/google/inject/internal/Errors;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Initializer;",
            "Lcom/google/inject/internal/ProcessedBindingData;",
            "Lcom/google/inject/internal/util/Stopwatch;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/inject/internal/InjectorShell;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Stage not initialized"

    invoke-static {v0, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->parent:Lcom/google/inject/internal/InjectorImpl;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const-string v3, "PrivateElements with no parent"

    invoke-static {v0, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->state:Lcom/google/inject/internal/State;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const-string v0, "no state. Did you remember to lock() ?"

    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->parent:Lcom/google/inject/internal/InjectorImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->modules:Ljava/util/List;

    new-instance v3, Lcom/google/inject/internal/InjectorShell$RootModule;

    invoke-direct {v3, v1}, Lcom/google/inject/internal/InjectorShell$RootModule;-><init>(Lcom/google/inject/internal/InjectorShell$1;)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    iget-object v2, p0, Lcom/google/inject/internal/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    iget-object v3, p0, Lcom/google/inject/internal/InjectorShell$Builder;->modules:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/inject/spi/Elements;->getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    new-instance v0, Lcom/google/inject/internal/InjectorOptionsProcessor;

    invoke-direct {v0, p4}, Lcom/google/inject/internal/InjectorOptionsProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 139
    iget-object v2, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/InjectorOptionsProcessor;->process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    .line 140
    iget-object v2, p0, Lcom/google/inject/internal/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    iget-object v3, p0, Lcom/google/inject/internal/InjectorShell$Builder;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    invoke-virtual {v0, v2, v3}, Lcom/google/inject/internal/InjectorOptionsProcessor;->getOptions(Lcom/google/inject/Stage;Lcom/google/inject/internal/InjectorImpl$InjectorOptions;)Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    .line 142
    new-instance v0, Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/InjectorShell$Builder;->parent:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/internal/InjectorShell$Builder;->state:Lcom/google/inject/internal/State;

    iget-object v4, p0, Lcom/google/inject/internal/InjectorShell$Builder;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/inject/internal/InjectorImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/State;Lcom/google/inject/internal/InjectorImpl$InjectorOptions;)V

    .line 143
    iget-object v2, p0, Lcom/google/inject/internal/InjectorShell$Builder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    if-eqz v2, :cond_5

    .line 144
    iget-object v2, p0, Lcom/google/inject/internal/InjectorShell$Builder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    invoke-virtual {v2, v0}, Lcom/google/inject/internal/PrivateElementsImpl;->initInjector(Lcom/google/inject/Injector;)V

    .line 148
    :cond_5
    iget-object v2, p0, Lcom/google/inject/internal/InjectorShell$Builder;->parent:Lcom/google/inject/internal/InjectorImpl;

    if-nez v2, :cond_6

    .line 149
    invoke-static {v0}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->prepareBuiltInConverters(Lcom/google/inject/internal/InjectorImpl;)V

    :cond_6
    const-string v2, "Module execution"

    .line 152
    invoke-virtual {p3, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 154
    new-instance v2, Lcom/google/inject/internal/MessageProcessor;

    invoke-direct {v2, p4}, Lcom/google/inject/internal/MessageProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v3, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/google/inject/internal/MessageProcessor;->process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    .line 161
    new-instance v2, Lcom/google/inject/internal/ListenerBindingProcessor;

    invoke-direct {v2, p4}, Lcom/google/inject/internal/ListenerBindingProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v3, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/google/inject/internal/ListenerBindingProcessor;->process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    .line 162
    iget-object v2, v0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2}, Lcom/google/inject/internal/State;->getTypeListenerBindings()Ljava/util/List;

    move-result-object v2

    .line 163
    new-instance v3, Lcom/google/inject/internal/MembersInjectorStore;

    invoke-direct {v3, v0, v2}, Lcom/google/inject/internal/MembersInjectorStore;-><init>(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    iput-object v3, v0, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    .line 164
    iget-object v2, v0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2}, Lcom/google/inject/internal/State;->getProvisionListenerBindings()Ljava/util/List;

    move-result-object v2

    .line 166
    new-instance v3, Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-direct {v3, v2}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    const-string v2, "TypeListeners & ProvisionListener creation"

    .line 168
    invoke-virtual {p3, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 170
    new-instance v2, Lcom/google/inject/internal/ScopeBindingProcessor;

    invoke-direct {v2, p4}, Lcom/google/inject/internal/ScopeBindingProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v3, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/google/inject/internal/ScopeBindingProcessor;->process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    const-string v2, "Scopes creation"

    .line 171
    invoke-virtual {p3, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 173
    new-instance v2, Lcom/google/inject/internal/TypeConverterBindingProcessor;

    invoke-direct {v2, p4}, Lcom/google/inject/internal/TypeConverterBindingProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v3, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    const-string v2, "Converters creation"

    .line 174
    invoke-virtual {p3, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/google/inject/internal/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    invoke-static {v0, v2}, Lcom/google/inject/internal/InjectorShell;->access$100(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Stage;)V

    .line 177
    invoke-static {v0}, Lcom/google/inject/internal/InjectorShell;->access$200(Lcom/google/inject/internal/InjectorImpl;)V

    .line 178
    invoke-static {v0}, Lcom/google/inject/internal/InjectorShell;->access$300(Lcom/google/inject/internal/InjectorImpl;)V

    .line 183
    new-instance v2, Lcom/google/inject/internal/BindingProcessor;

    invoke-direct {v2, p4, p1, p2}, Lcom/google/inject/internal/BindingProcessor;-><init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/Initializer;Lcom/google/inject/internal/ProcessedBindingData;)V

    iget-object v3, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/google/inject/internal/BindingProcessor;->process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    .line 184
    new-instance v2, Lcom/google/inject/internal/UntargettedBindingProcessor;

    invoke-direct {v2, p4, p2}, Lcom/google/inject/internal/UntargettedBindingProcessor;-><init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/ProcessedBindingData;)V

    iget-object v3, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/google/inject/internal/UntargettedBindingProcessor;->process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    const-string v2, "Binding creation"

    .line 185
    invoke-virtual {p3, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 188
    new-instance v3, Lcom/google/inject/internal/InjectorShell;

    iget-object v4, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/google/inject/internal/InjectorShell;-><init>(Lcom/google/inject/internal/InjectorShell$Builder;Ljava/util/List;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InjectorShell$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v1, Lcom/google/inject/internal/PrivateElementProcessor;

    invoke-direct {v1, p4}, Lcom/google/inject/internal/PrivateElementProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 192
    iget-object v3, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v1, v0, v3}, Lcom/google/inject/internal/PrivateElementProcessor;->process(Lcom/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    .line 193
    invoke-virtual {v1}, Lcom/google/inject/internal/PrivateElementProcessor;->getInjectorShellBuilders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/InjectorShell$Builder;

    .line 194
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/inject/internal/InjectorShell$Builder;->build(Lcom/google/inject/internal/Initializer;Lcom/google/inject/internal/ProcessedBindingData;Lcom/google/inject/internal/util/Stopwatch;Lcom/google/inject/internal/Errors;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_7
    const-string p1, "Private environment creation"

    .line 196
    invoke-virtual {p3, p1}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    return-object v2
.end method

.method getStage()Lcom/google/inject/Stage;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-object v0, v0, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->stage:Lcom/google/inject/Stage;

    return-object v0
.end method

.method lock()Ljava/lang/Object;
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/google/inject/internal/InjectorShell$Builder;->getState()Lcom/google/inject/internal/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method parent(Lcom/google/inject/internal/InjectorImpl;)Lcom/google/inject/internal/InjectorShell$Builder;
    .locals 2

    .line 89
    iput-object p1, p0, Lcom/google/inject/internal/InjectorShell$Builder;->parent:Lcom/google/inject/internal/InjectorImpl;

    .line 90
    new-instance v0, Lcom/google/inject/internal/InheritingState;

    iget-object v1, p1, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/InheritingState;-><init>(Lcom/google/inject/internal/State;)V

    iput-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->state:Lcom/google/inject/internal/State;

    .line 91
    iget-object p1, p1, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iput-object p1, p0, Lcom/google/inject/internal/InjectorShell$Builder;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    .line 92
    iget-object p1, p0, Lcom/google/inject/internal/InjectorShell$Builder;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-object p1, p1, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->stage:Lcom/google/inject/Stage;

    iput-object p1, p0, Lcom/google/inject/internal/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    return-object p0
.end method

.method privateElements(Lcom/google/inject/spi/PrivateElements;)Lcom/google/inject/internal/InjectorShell$Builder;
    .locals 1

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/google/inject/internal/PrivateElementsImpl;

    iput-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    .line 98
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-interface {p1}, Lcom/google/inject/spi/PrivateElements;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method stage(Lcom/google/inject/Stage;)Lcom/google/inject/internal/InjectorShell$Builder;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/inject/internal/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    return-object p0
.end method
