.class public Lcom/google/inject/Key;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/Key$AnnotationTypeStrategy;,
        Lcom/google/inject/Key$AnnotationInstanceStrategy;,
        Lcom/google/inject/Key$NullAnnotationStrategy;,
        Lcom/google/inject/Key$AnnotationStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

.field private final hashCode:I

.field private final toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeLiteral:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    iput-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 122
    invoke-direct {p0}, Lcom/google/inject/Key;->computeHashCode()I

    move-result v0

    iput v0, p0, Lcom/google/inject/Key;->hashCode:I

    .line 123
    invoke-direct {p0}, Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;",
            "Lcom/google/inject/Key$AnnotationStrategy;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    .line 140
    invoke-static {p1}, Lcom/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 141
    invoke-direct {p0}, Lcom/google/inject/Key;->computeHashCode()I

    move-result p1

    iput p1, p0, Lcom/google/inject/Key;->hashCode:I

    .line 142
    invoke-direct {p0}, Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    invoke-static {p1}, Lcom/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 80
    invoke-direct {p0}, Lcom/google/inject/Key;->computeHashCode()I

    move-result p1

    iput p1, p0, Lcom/google/inject/Key;->hashCode:I

    .line 81
    invoke-direct {p0}, Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    invoke-static {p1}, Lcom/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 102
    invoke-direct {p0}, Lcom/google/inject/Key;->computeHashCode()I

    move-result p1

    iput p1, p0, Lcom/google/inject/Key;->hashCode:I

    .line 103
    invoke-direct {p0}, Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    .line 132
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    invoke-static {p1}, Lcom/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 133
    invoke-direct {p0}, Lcom/google/inject/Key;->computeHashCode()I

    move-result p1

    iput p1, p0, Lcom/google/inject/Key;->hashCode:I

    .line 134
    invoke-direct {p0}, Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/Key;)Lcom/google/inject/TypeLiteral;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/inject/Key;)Lcom/google/inject/Key$AnnotationStrategy;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    return-object p0
.end method

.method private computeHashCode()I
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/google/inject/Key$1;

    invoke-direct {v0, p0}, Lcom/google/inject/Key$1;-><init>(Lcom/google/inject/Key;)V

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Suppliers;->memoize(Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    return-object v0
.end method

.method private static ensureIsBindingAnnotation(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 402
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->isBindingAnnotation(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a binding annotation. Please annotate it with @BindingAnnotation."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static ensureRetainedAtRuntime(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 396
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->isRetainedAtRuntime(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not retained at runtime. Please annotate it with @Retention(RUNTIME)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 287
    new-instance v0, Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 295
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 243
    new-instance v0, Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method static get(Ljava/lang/Class;Lcom/google/inject/Key$AnnotationStrategy;)Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/inject/Key$AnnotationStrategy;",
            ")",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/google/inject/Key;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 258
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/inject/Key<",
            "*>;"
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key<",
            "*>;"
        }
    .end annotation

    .line 273
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key<",
            "*>;"
        }
    .end annotation

    .line 280
    new-instance v0, Lcom/google/inject/Key;

    invoke-static {p1}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method static strategyFor(Ljava/lang/Class;)Lcom/google/inject/Key$AnnotationStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key$AnnotationStrategy;"
        }
    .end annotation

    .line 382
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->canonicalizeIfNamed(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 383
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->isAllDefaultMethods(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->generateAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    invoke-static {p0}, Lcom/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "annotation type"

    .line 387
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-static {p0}, Lcom/google/inject/Key;->ensureRetainedAtRuntime(Ljava/lang/Class;)V

    .line 389
    invoke-static {p0}, Lcom/google/inject/Key;->ensureIsBindingAnnotation(Ljava/lang/Class;)V

    .line 390
    new-instance v0, Lcom/google/inject/Key$AnnotationTypeStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/inject/Key$AnnotationTypeStrategy;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method static strategyFor(Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key$AnnotationStrategy;
    .locals 2

    const-string v0, "annotation"

    .line 366
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 368
    invoke-static {v0}, Lcom/google/inject/Key;->ensureRetainedAtRuntime(Ljava/lang/Class;)V

    .line 369
    invoke-static {v0}, Lcom/google/inject/Key;->ensureIsBindingAnnotation(Ljava/lang/Class;)V

    .line 371
    invoke-static {v0}, Lcom/google/inject/internal/Annotations;->isMarker(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    new-instance v1, Lcom/google/inject/Key$AnnotationTypeStrategy;

    invoke-direct {v1, v0, p0}, Lcom/google/inject/Key$AnnotationTypeStrategy;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v1

    .line 375
    :cond_0
    new-instance v0, Lcom/google/inject/Key$AnnotationInstanceStrategy;

    invoke-static {p0}, Lcom/google/inject/internal/Annotations;->canonicalizeIfNamed(Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/inject/Key$AnnotationInstanceStrategy;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 215
    :cond_0
    instance-of v1, p1, Lcom/google/inject/Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 218
    :cond_1
    check-cast p1, Lcom/google/inject/Key;

    .line 219
    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    iget-object v3, p1, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    iget-object p1, p1, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v1, p1}, Lcom/google/inject/TypeLiteral;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method getAnnotationName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeLiteral()Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    return-object v0
.end method

.method hasAnnotationType()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAttributes()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/google/inject/Key$AnnotationStrategy;->hasAttributes()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/google/inject/Key;->hashCode:I

    return v0
.end method

.method public ofType(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 333
    new-instance v0, Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-direct {v0, p1, v1}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public ofType(Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 313
    new-instance v0, Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-direct {v0, p1, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public ofType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/inject/Key<",
            "*>;"
        }
    .end annotation

    .line 323
    new-instance v0, Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-direct {v0, p1, v1}, Lcom/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method providerKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key<",
            "Lcom/google/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->providerType()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/Key;->ofType(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/google/inject/Key;->toStringSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public withoutAttributes()Lcom/google/inject/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;

    iget-object v2, p0, Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;

    invoke-interface {v2}, Lcom/google/inject/Key$AnnotationStrategy;->withoutAttributes()Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method
