.class public final Lcom/google/inject/spi/InjectionPoint;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/spi/InjectionPoint$Signature;,
        Lcom/google/inject/spi/InjectionPoint$Pair;,
        Lcom/google/inject/spi/InjectionPoint$OverrideIndex;,
        Lcom/google/inject/spi/InjectionPoint$Position;,
        Lcom/google/inject/spi/InjectionPoint$InjectableMembers;,
        Lcom/google/inject/spi/InjectionPoint$InjectableMethod;,
        Lcom/google/inject/spi/InjectionPoint$InjectableField;,
        Lcom/google/inject/spi/InjectionPoint$InjectableMember;
    }
.end annotation


# static fields
.field private static filter:Lcom/google/inject/HierarchyTraversalFilter;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final declaringType:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation
.end field

.field private final dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final member:Ljava/lang/reflect/Member;

.field private final optional:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/inject/spi/InjectionPoint;->logger:Ljava/util/logging/Logger;

    .line 65
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v0

    sput-object v0, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 82
    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    .line 84
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/google/inject/spi/InjectionPoint;->forMember(Ljava/lang/reflect/Member;Lcom/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Field;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Z)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 90
    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    .line 91
    iput-boolean p3, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    .line 93
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p3

    .line 95
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p2}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 98
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/inject/TypeLiteral;->getFieldType(Ljava/lang/reflect/Field;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    invoke-static {p1, p2, p3, v0}, Lcom/google/inject/internal/Annotations;->getKey(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 100
    invoke-virtual {p1}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    :goto_0
    const/4 p1, 0x0

    .line 104
    :goto_1
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 106
    invoke-static {p3}, Lcom/google/inject/internal/Nullability;->allowsNull([Ljava/lang/annotation/Annotation;)Z

    move-result p2

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/spi/InjectionPoint;->newDependency(Lcom/google/inject/Key;ZI)Lcom/google/inject/spi/Dependency;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Method;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Z)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 75
    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    .line 76
    iput-boolean p3, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    .line 77
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcom/google/inject/spi/InjectionPoint;->forMember(Ljava/lang/reflect/Member;Lcom/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lcom/google/inject/spi/InjectionPoint;->overrides(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method

.method private static checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Z
    .locals 4

    .line 398
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 406
    :cond_0
    instance-of v2, p0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 408
    :try_start_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return v1

    .line 415
    :catch_0
    :cond_1
    invoke-virtual {p1, p0, v0}, Lcom/google/inject/internal/Errors;->misplacedBindingAnnotation(Ljava/lang/reflect/Member;Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/Errors;

    const/4 p0, 0x1

    return p0
.end method

.method private static computeInjectableMembers(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;Lcom/google/inject/spi/InjectionPoint$InjectableMembers;Lcom/google/inject/spi/InjectionPoint$OverrideIndex;Lcom/google/inject/HierarchyTraversalFilter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;Z",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/spi/InjectionPoint$InjectableMembers;",
            "Lcom/google/inject/spi/InjectionPoint$OverrideIndex;",
            "Lcom/google/inject/HierarchyTraversalFilter;",
            ")V"
        }
    .end annotation

    .line 718
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 719
    invoke-static {p5, v0}, Lcom/google/inject/spi/InjectionPoint;->isWorthScanning(Lcom/google/inject/HierarchyTraversalFilter;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 724
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 725
    invoke-static {p5, v1}, Lcom/google/inject/spi/InjectionPoint;->isWorthScanning(Lcom/google/inject/HierarchyTraversalFilter;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 726
    invoke-virtual {p0, v1}, Lcom/google/inject/TypeLiteral;->getSupertype(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lcom/google/inject/spi/InjectionPoint;->computeInjectableMembers(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;Lcom/google/inject/spi/InjectionPoint$InjectableMembers;Lcom/google/inject/spi/InjectionPoint$OverrideIndex;Lcom/google/inject/HierarchyTraversalFilter;)V

    .line 727
    sget-object v1, Lcom/google/inject/spi/InjectionPoint$Position;->MIDDLE:Lcom/google/inject/spi/InjectionPoint$Position;

    iput-object v1, p4, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/google/inject/spi/InjectionPoint$Position;

    goto :goto_0

    .line 729
    :cond_1
    sget-object v1, Lcom/google/inject/spi/InjectionPoint$Position;->TOP:Lcom/google/inject/spi/InjectionPoint$Position;

    iput-object v1, p4, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/google/inject/spi/InjectionPoint$Position;

    .line 732
    :goto_0
    const-class v1, Lcom/google/inject/Inject;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1, v0}, Lcom/google/inject/HierarchyTraversalFilter;->getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 734
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 736
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-ne v3, p1, :cond_2

    .line 737
    invoke-static {v2}, Lcom/google/inject/spi/InjectionPoint;->getAtInject(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 740
    new-instance v4, Lcom/google/inject/spi/InjectionPoint$InjectableField;

    invoke-direct {v4, p0, v2, v3}, Lcom/google/inject/spi/InjectionPoint$InjectableField;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 741
    iget-boolean v3, v4, Lcom/google/inject/spi/InjectionPoint$InjectableField;->jsr330:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 742
    invoke-virtual {p2, v2}, Lcom/google/inject/internal/Errors;->cannotInjectFinalField(Ljava/lang/reflect/Field;)Lcom/google/inject/internal/Errors;

    .line 744
    :cond_3
    invoke-virtual {p3, v4}, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->add(Lcom/google/inject/spi/InjectionPoint$InjectableMember;)V

    goto :goto_1

    .line 750
    :cond_4
    const-class v1, Lcom/google/inject/Inject;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1, v0}, Lcom/google/inject/HierarchyTraversalFilter;->getAllMethods(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p5

    if-eqz p5, :cond_a

    .line 752
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_5
    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 753
    invoke-static {v0, p1}, Lcom/google/inject/spi/InjectionPoint;->isEligibleForInjection(Ljava/lang/reflect/Method;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 754
    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->getAtInject(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 756
    new-instance v3, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 758
    invoke-static {v0, p2}, Lcom/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v3, p2}, Lcom/google/inject/spi/InjectionPoint;->isValidMethod(Lcom/google/inject/spi/InjectionPoint$InjectableMethod;Lcom/google/inject/internal/Errors;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 771
    invoke-virtual {p3, v3}, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->add(Lcom/google/inject/spi/InjectionPoint$InjectableMember;)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    .line 775
    invoke-virtual {p4, v0, v1, v3}, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->removeIfOverriddenBy(Ljava/lang/reflect/Method;ZLcom/google/inject/spi/InjectionPoint$InjectableMethod;)Z

    .line 776
    invoke-virtual {p4, v3}, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->add(Lcom/google/inject/spi/InjectionPoint$InjectableMethod;)V

    goto :goto_2

    .line 760
    :cond_8
    :goto_3
    invoke-virtual {p4, v0, v2, v3}, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->removeIfOverriddenBy(Ljava/lang/reflect/Method;ZLcom/google/inject/spi/InjectionPoint$InjectableMethod;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 762
    sget-object v1, Lcom/google/inject/spi/InjectionPoint;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Method: {0} is not a valid injectable method (because it either has misplaced binding annotations or specifies type parameters) but is overriding a method that is valid. Because it is not valid, the method will not be injected. To fix this, make the method a valid injectable method."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    .line 779
    invoke-virtual {p4, v0, v2, v1}, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->removeIfOverriddenBy(Ljava/lang/reflect/Method;ZLcom/google/inject/spi/InjectionPoint$InjectableMethod;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 781
    sget-object v1, Lcom/google/inject/spi/InjectionPoint;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Method: {0} is not annotated with @Inject but is overriding a method that is annotated with @javax.inject.Inject.  Because it is not annotated with @Inject, the method will not be injected. To fix this, annotate the method with @Inject."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    return-void
.end method

.method public static forConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/spi/InjectionPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static forConstructor(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/spi/InjectionPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;",
            "Lcom/google/inject/TypeLiteral<",
            "+TT;>;)",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 227
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/inject/internal/Errors;->constructorNotDefinedByType(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 232
    :cond_0
    new-instance v0, Lcom/google/inject/spi/InjectionPoint;

    invoke-direct {v0, p1, p0}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static forConstructorOf(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/spi/InjectionPoint;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;)",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/google/inject/internal/Errors;

    invoke-direct {v1, v0}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 248
    sget-object v2, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v2}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 250
    sget-object v2, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v3, Lcom/google/inject/Inject;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForConstructors(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 251
    sget-object v2, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v5, Lcom/google/inject/Inject;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lcom/google/inject/HierarchyTraversalFilter;->getAllConstructors(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 253
    const-class v6, Lcom/google/inject/Inject;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/google/inject/Inject;

    if-nez v6, :cond_1

    .line 255
    const-class v6, Ljavax/inject/Inject;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ljavax/inject/Inject;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 261
    :cond_1
    invoke-interface {v6}, Lcom/google/inject/Inject;->optional()Z

    move-result v6

    :goto_1
    if-eqz v6, :cond_2

    .line 265
    invoke-virtual {v1, v5}, Lcom/google/inject/internal/Errors;->optionalConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/internal/Errors;

    :cond_2
    if-eqz v4, :cond_3

    .line 269
    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->tooManyConstructors(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 273
    :cond_3
    invoke-static {v5, v1}, Lcom/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Z

    move-object v4, v5

    goto :goto_0

    .line 277
    :cond_4
    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    if-eqz v4, :cond_5

    .line 280
    new-instance v0, Lcom/google/inject/spi/InjectionPoint;

    invoke-direct {v0, p0, v4}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V

    return-object v0

    .line 285
    :cond_5
    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 290
    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->missingConstructor(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 291
    new-instance p0, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw p0

    .line 294
    :cond_6
    invoke-static {v2, v1}, Lcom/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Z

    .line 295
    new-instance v3, Lcom/google/inject/spi/InjectionPoint;

    invoke-direct {v3, p0, v2}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 297
    :catch_0
    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->missingConstructor(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 298
    new-instance p0, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw p0
.end method

.method public static forConstructorOf(Ljava/lang/Class;)Lcom/google/inject/spi/InjectionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .line 312
    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object p0

    invoke-static {p0}, Lcom/google/inject/spi/InjectionPoint;->forConstructorOf(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/spi/InjectionPoint;

    move-result-object p0

    return-object p0
.end method

.method public static forInstanceMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    const/4 v1, 0x0

    .line 372
    invoke-static {p0, v1, v0}, Lcom/google/inject/spi/InjectionPoint;->getInjectionPoints(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;)Ljava/util/Set;

    move-result-object p0

    .line 373
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    new-instance v1, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v1, p0}, Lcom/google/inject/ConfigurationException;->withPartialValue(Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object p0

    throw p0

    :cond_0
    return-object p0
.end method

.method public static forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 391
    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object p0

    invoke-static {p0}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private forMember(Ljava/lang/reflect/Member;Lcom/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Lcom/google/inject/TypeLiteral<",
            "*>;[[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 113
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 115
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 118
    invoke-virtual {p2, p1}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/TypeLiteral;

    .line 120
    :try_start_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/annotation/Annotation;

    .line 121
    invoke-static {v3, p1, v4, v0}, Lcom/google/inject/internal/Annotations;->getKey(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object v3

    .line 122
    invoke-static {v4}, Lcom/google/inject/internal/Nullability;->allowsNull([Ljava/lang/annotation/Annotation;)Z

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Lcom/google/inject/spi/InjectionPoint;->newDependency(Lcom/google/inject/Key;ZI)Lcom/google/inject/spi/Dependency;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 127
    invoke-virtual {v3}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    :catch_1
    move-exception v3

    .line 125
    invoke-virtual {v3}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 132
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public static forStaticMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 327
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 331
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/inject/internal/Errors;->staticInjectionOnInterface(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 335
    invoke-static {p0, v1, v0}, Lcom/google/inject/spi/InjectionPoint;->getInjectionPoints(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;)Ljava/util/Set;

    move-result-object p0

    .line 338
    :goto_0
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    new-instance v1, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v1, p0}, Lcom/google/inject/ConfigurationException;->withPartialValue(Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object p0

    throw p0

    :cond_1
    return-object p0
.end method

.method public static forStaticMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 356
    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object p0

    invoke-static {p0}, Lcom/google/inject/spi/InjectionPoint;->forStaticMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static getAtInject(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;
    .locals 1

    .line 485
    const-class v0, Ljavax/inject/Inject;

    invoke-interface {p0, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 486
    const-class v0, Lcom/google/inject/Inject;

    invoke-interface {p0, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getInjectionPoints(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;Z",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 682
    new-instance v6, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;

    invoke-direct {v6}, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;-><init>()V

    .line 683
    new-instance v4, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;

    invoke-direct {v4, v6}, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;-><init>(Lcom/google/inject/spi/InjectionPoint$InjectableMembers;)V

    .line 684
    sget-object v0, Lcom/google/inject/spi/InjectionPoint$Position;->BOTTOM:Lcom/google/inject/spi/InjectionPoint$Position;

    iput-object v0, v4, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/google/inject/spi/InjectionPoint$Position;

    .line 686
    sget-object v0, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v0}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 687
    sget-object v5, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcom/google/inject/spi/InjectionPoint;->computeInjectableMembers(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;Lcom/google/inject/spi/InjectionPoint$InjectableMembers;Lcom/google/inject/spi/InjectionPoint$OverrideIndex;Lcom/google/inject/HierarchyTraversalFilter;)V

    .line 689
    invoke-virtual {v6}, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 690
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 693
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object p0

    .line 694
    iget-object p1, v6, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    :goto_0
    if-eqz p1, :cond_2

    .line 697
    :try_start_0
    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->toInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 699
    iget-boolean v1, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->optional:Z

    if-nez v1, :cond_1

    .line 700
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    .line 695
    :cond_1
    :goto_1
    iget-object p1, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    goto :goto_0

    .line 704
    :cond_2
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method private static hierarchyFor(Lcom/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/google/inject/TypeLiteral<",
            "*>;>;"
        }
    .end annotation

    .line 840
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 842
    :goto_0
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 843
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/inject/TypeLiteral;->getSupertype(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isEligibleForInjection(Ljava/lang/reflect/Method;Z)Z
    .locals 1

    .line 817
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidMethod(Lcom/google/inject/spi/InjectionPoint$InjectableMethod;Lcom/google/inject/internal/Errors;)Z
    .locals 3

    .line 825
    iget-boolean v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;->jsr330:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 826
    iget-object p0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;->method:Ljava/lang/reflect/Method;

    .line 827
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p1, p0}, Lcom/google/inject/internal/Errors;->cannotInjectAbstractMethod(Ljava/lang/reflect/Method;)Lcom/google/inject/internal/Errors;

    const/4 v2, 0x0

    .line 831
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 832
    invoke-virtual {p1, p0}, Lcom/google/inject/internal/Errors;->cannotInjectMethodWithTypeParameters(Ljava/lang/reflect/Method;)Lcom/google/inject/internal/Errors;

    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method private static isWorthScanning(Lcom/google/inject/HierarchyTraversalFilter;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/HierarchyTraversalFilter;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 793
    const-class v0, Lcom/google/inject/Inject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private newDependency(Lcom/google/inject/Key;ZI)Lcom/google/inject/spi/Dependency;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;ZI)",
            "Lcom/google/inject/spi/Dependency<",
            "TT;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/google/inject/spi/Dependency;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/inject/spi/Dependency;-><init>(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/Key;ZI)V

    return-object v0
.end method

.method private static overrides(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 855
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 856
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 859
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 863
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 190
    instance-of v0, p1, Lcom/google/inject/spi/InjectionPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    check-cast p1, Lcom/google/inject/spi/InjectionPoint;

    iget-object v1, p1, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    iget-object p1, p1, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0, p1}, Lcom/google/inject/TypeLiteral;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDeclaringType()Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    return-object v0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v1}, Lcom/google/inject/TypeLiteral;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isOptional()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    return v0
.end method

.method public isToolable()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    const-class v1, Lcom/google/inject/spi/Toolable;

    invoke-interface {v0, v1}, Ljava/lang/reflect/AnnotatedElement;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-static {v0}, Lcom/google/inject/internal/util/Classes;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
