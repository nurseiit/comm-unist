.class Lcom/google/inject/spi/Elements$RecordingBinder;
.super Ljava/lang/Object;
.source "Elements.java"

# interfaces
.implements Lcom/google/inject/Binder;
.implements Lcom/google/inject/PrivateBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/spi/Elements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingBinder"
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

.field private moduleSource:Lcom/google/inject/spi/ModuleSource;

.field private final modules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/inject/spi/Elements$RecordingBinder;

.field private final privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

.field private final source:Ljava/lang/Object;

.field private final sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

.field private final stage:Lcom/google/inject/Stage;


# direct methods
.method private constructor <init>(Lcom/google/inject/Stage;)V
    .locals 4

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 154
    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    .line 155
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 156
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 157
    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 158
    sget-object p1, Lcom/google/inject/internal/util/SourceProvider;->DEFAULT_INSTANCE:Lcom/google/inject/internal/util/SourceProvider;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/google/inject/spi/Elements;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/google/inject/spi/Elements$RecordingBinder;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Lcom/google/inject/AbstractModule;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Lcom/google/inject/internal/ConstantBindingBuilderImpl;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-class v2, Lcom/google/inject/internal/AbstractBindingBuilder;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-class v2, Lcom/google/inject/internal/BindingBuilder;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/util/SourceProvider;->plusSkippedClasses([Ljava/lang/Class;)Lcom/google/inject/internal/util/SourceProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    .line 161
    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    .line 162
    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/Stage;Lcom/google/inject/spi/Elements$1;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/Stage;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/spi/Elements$RecordingBinder;Lcom/google/inject/internal/PrivateElementsImpl;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 182
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    .line 183
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 184
    invoke-virtual {p2}, Lcom/google/inject/internal/PrivateElementsImpl;->getElementsMutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 185
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 186
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 187
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    .line 188
    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    .line 189
    iput-object p2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/google/inject/internal/util/SourceProvider;)V
    .locals 3

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    xor-int/2addr v0, v2

    .line 168
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 170
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    .line 171
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 172
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 173
    iput-object p2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 174
    iget-object p2, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    iput-object p2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 175
    iput-object p3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    .line 176
    iget-object p2, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    iput-object p2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    .line 177
    iget-object p1, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    return-void
.end method

.method static synthetic access$100(Lcom/google/inject/spi/Elements$RecordingBinder;)Ljava/util/List;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    return-object p0
.end method

.method private exposeInternal(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedElementBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    if-nez v0, :cond_0

    const-string v0, "Cannot expose %s on a standard binder. Exposed bindings are only applicable to private binders."

    const/4 v1, 0x1

    .line 369
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    new-instance p1, Lcom/google/inject/spi/Elements$RecordingBinder$1;

    invoke-direct {p1, p0}, Lcom/google/inject/spi/Elements$RecordingBinder$1;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;)V

    return-object p1

    .line 377
    :cond_0
    new-instance v0, Lcom/google/inject/internal/ExposureBuilder;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/inject/internal/ExposureBuilder;-><init>(Lcom/google/inject/Binder;Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 378
    iget-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/PrivateElementsImpl;->addExposureBuilder(Lcom/google/inject/internal/ExposureBuilder;)V

    return-object v0
.end method

.method private getElementSource()Lcom/google/inject/spi/ElementSource;
    .locals 7

    const/4 v0, 0x0

    .line 399
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 403
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 404
    instance-of v2, v1, Lcom/google/inject/spi/ElementSource;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 405
    check-cast v1, Lcom/google/inject/spi/ElementSource;

    .line 406
    invoke-virtual {v1}, Lcom/google/inject/spi/ElementSource;->getDeclaringSource()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 408
    :goto_0
    invoke-static {}, Lcom/google/inject/internal/InternalFlags;->getIncludeStackTraceOption()Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    move-result-object v4

    .line 409
    sget-object v5, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-ne v4, v5, :cond_2

    if-nez v1, :cond_2

    .line 412
    :cond_1
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 414
    :cond_2
    sget-object v5, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-ne v4, v5, :cond_3

    .line 415
    invoke-direct {p0, v3}, Lcom/google/inject/spi/Elements$RecordingBinder;->getPartialCallStack([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    :cond_3
    if-nez v1, :cond_6

    .line 419
    sget-object v1, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-eq v4, v1, :cond_5

    sget-object v1, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-ne v4, v1, :cond_4

    goto :goto_1

    .line 425
    :cond_4
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    iget-object v3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v3}, Lcom/google/inject/spi/ModuleSource;->getModuleClassNames()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/inject/internal/util/SourceProvider;->getFromClassNames(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 422
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    invoke-virtual {v1, v3}, Lcom/google/inject/internal/util/SourceProvider;->get([Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 429
    :cond_6
    :goto_2
    new-instance v3, Lcom/google/inject/spi/ElementSource;

    iget-object v4, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-direct {v3, v2, v1, v4, v0}, Lcom/google/inject/spi/ElementSource;-><init>(Lcom/google/inject/spi/ElementSource;Ljava/lang/Object;Lcom/google/inject/spi/ModuleSource;[Ljava/lang/StackTraceElement;)V

    return-object v3
.end method

.method private getModuleSource(Lcom/google/inject/Module;)Lcom/google/inject/spi/ModuleSource;
    .locals 2

    .line 384
    invoke-static {}, Lcom/google/inject/internal/InternalFlags;->getIncludeStackTraceOption()Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    move-result-object v0

    sget-object v1, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    if-ne v0, v1, :cond_0

    .line 385
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getPartialCallStack([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 387
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 389
    :goto_0
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    if-nez v1, :cond_1

    .line 390
    new-instance v1, Lcom/google/inject/spi/ModuleSource;

    invoke-direct {v1, p1, v0}, Lcom/google/inject/spi/ModuleSource;-><init>(Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)V

    return-object v1

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v1, p1, v0}, Lcom/google/inject/spi/ModuleSource;->createChild(Lcom/google/inject/Module;[Ljava/lang/StackTraceElement;)Lcom/google/inject/spi/ModuleSource;

    move-result-object p1

    return-object p1
.end method

.method private getPartialCallStack([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {v0}, Lcom/google/inject/spi/ModuleSource;->getStackTraceSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 444
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v0

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    .line 446
    new-array v3, v2, [Ljava/lang/StackTraceElement;

    .line 447
    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method


# virtual methods
.method public addError(Lcom/google/inject/spi/Message;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/Message;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/google/inject/internal/Errors;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/google/inject/spi/Message;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addError(Ljava/lang/Throwable;)V
    .locals 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An exception was caught and reported. Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v2, Lcom/google/inject/spi/Message;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v3

    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 287
    new-instance v0, Lcom/google/inject/internal/BindingBuilder;

    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/inject/internal/BindingBuilder;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V

    return-object v0
.end method

.method public bind(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 292
    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 296
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bindConstant()Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;
    .locals 3

    .line 300
    new-instance v0, Lcom/google/inject/internal/ConstantBindingBuilderImpl;

    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Lcom/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/google/inject/spi/TypeListener;",
            ")V"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/TypeListenerBinding;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lcom/google/inject/spi/TypeListenerBinding;-><init>(Ljava/lang/Object;Lcom/google/inject/spi/TypeListener;Lcom/google/inject/matcher/Matcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs bindListener(Lcom/google/inject/matcher/Matcher;[Lcom/google/inject/spi/ProvisionListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Lcom/google/inject/Binding<",
            "*>;>;[",
            "Lcom/google/inject/spi/ProvisionListener;",
            ")V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/ProvisionListenerBinding;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/ProvisionListenerBinding;-><init>(Ljava/lang/Object;Lcom/google/inject/matcher/Matcher;[Lcom/google/inject/spi/ProvisionListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ")V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/ScopeBinding;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/ScopeBinding;-><init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/inject/Scope;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public convertToTypes(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Lcom/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/TypeConverterBinding;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/TypeConverterBinding;-><init>(Ljava/lang/Object;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public currentStage()Lcom/google/inject/Stage;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    return-object v0
.end method

.method public disableCircularProxies()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/DisableCircularProxiesOption;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/spi/DisableCircularProxiesOption;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public expose(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/AnnotatedElementBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;)",
            "Lcom/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .line 364
    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedElementBuilder;

    move-result-object p1

    return-object p1
.end method

.method public expose(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedElementBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .line 360
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedElementBuilder;

    move-result-object p1

    return-object p1
.end method

.method public expose(Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)V"
        }
    .end annotation

    .line 356
    invoke-direct {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedElementBuilder;

    return-void
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/google/inject/spi/MembersInjectorLookup;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/inject/spi/MembersInjectorLookup;-><init>(Ljava/lang/Object;Lcom/google/inject/TypeLiteral;)V

    .line 218
    iget-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v0}, Lcom/google/inject/spi/MembersInjectorLookup;->getMembersInjector()Lcom/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 223
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/google/inject/spi/ProviderLookup;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/inject/spi/ProviderLookup;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 305
    iget-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v0}, Lcom/google/inject/spi/ProviderLookup;->getProvider()Lcom/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 310
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method public install(Lcom/google/inject/Module;)V
    .locals 5

    .line 242
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    instance-of v0, p1, Lcom/google/inject/internal/ProviderMethodsModule;

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->getModuleSource(Lcom/google/inject/Module;)Lcom/google/inject/spi/ModuleSource;

    move-result-object v1

    iput-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    .line 248
    :cond_0
    instance-of v1, p1, Lcom/google/inject/PrivateModule;

    if-eqz v1, :cond_1

    .line 249
    invoke-interface {p0}, Lcom/google/inject/Binder;->newPrivateBinder()Lcom/google/inject/PrivateBinder;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 252
    :goto_0
    :try_start_0
    invoke-interface {p1, v1}, Lcom/google/inject/Module;->configure(Lcom/google/inject/Binder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 254
    invoke-static {v2}, Lcom/google/inject/internal/Errors;->getMessagesFromThrowable(Ljava/lang/Throwable;)Ljava/util/Collection;

    move-result-object v3

    .line 255
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 256
    iget-object v2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/inject/spi/Elements$RecordingBinder;->addError(Ljava/lang/Throwable;)V

    .line 261
    :goto_1
    invoke-static {p1}, Lcom/google/inject/internal/ProviderMethodsModule;->forModule(Lcom/google/inject/Module;)Lcom/google/inject/Module;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/inject/Binder;->install(Lcom/google/inject/Module;)V

    if-nez v0, :cond_3

    .line 264
    iget-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    invoke-virtual {p1}, Lcom/google/inject/spi/ModuleSource;->getParent()Lcom/google/inject/spi/ModuleSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->moduleSource:Lcom/google/inject/spi/ModuleSource;

    :cond_3
    return-void
.end method

.method public newPrivateBinder()Lcom/google/inject/PrivateBinder;
    .locals 3

    .line 333
    new-instance v0, Lcom/google/inject/internal/PrivateElementsImpl;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/internal/PrivateElementsImpl;-><init>(Ljava/lang/Object;)V

    .line 334
    new-instance v1, Lcom/google/inject/spi/Elements$RecordingBinder;

    invoke-direct {v1, p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;Lcom/google/inject/internal/PrivateElementsImpl;)V

    .line 335
    iget-object v2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public requestInjection(Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/InjectionRequest;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/InjectionRequest;-><init>(Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestInjection(Ljava/lang/Object;)V
    .locals 1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->requestInjection(Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs requestStaticInjection([Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 236
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 237
    iget-object v3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v4, Lcom/google/inject/spi/StaticInjectionRequest;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/google/inject/spi/StaticInjectionRequest;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requireAtInjectOnConstructors()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requireExactBindingAnnotations()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requireExplicitBindings()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/RequireExplicitBindingsOption;

    invoke-direct {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/spi/RequireExplicitBindingsOption;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic skipSources([Ljava/lang/Class;)Lcom/google/inject/Binder;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->skipSources([Ljava/lang/Class;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic skipSources([Ljava/lang/Class;)Lcom/google/inject/PrivateBinder;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->skipSources([Ljava/lang/Class;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object p1

    return-object p1
.end method

.method public varargs skipSources([Ljava/lang/Class;)Lcom/google/inject/spi/Elements$RecordingBinder;
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object p0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/util/SourceProvider;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/util/SourceProvider;->plusSkippedClasses([Ljava/lang/Class;)Lcom/google/inject/internal/util/SourceProvider;

    move-result-object p1

    .line 329
    new-instance v0, Lcom/google/inject/spi/Elements$RecordingBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/google/inject/internal/util/SourceProvider;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Binder"

    return-object v0
.end method

.method public bridge synthetic withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object p1

    return-object p1
.end method

.method public withSource(Ljava/lang/Object;)Lcom/google/inject/spi/Elements$RecordingBinder;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/inject/spi/Elements$RecordingBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/google/inject/internal/util/SourceProvider;)V

    :goto_0
    return-object v0
.end method
