.class Lcom/google/inject/spi/InjectionPoint$InjectableMethod;
.super Lcom/google/inject/spi/InjectionPoint$InjectableMember;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/spi/InjectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InjectableMethod"
.end annotation


# instance fields
.field final method:Ljava/lang/reflect/Method;

.field overrodeGuiceInject:Z


# direct methods
.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 470
    invoke-direct {p0, p1, p3}, Lcom/google/inject/spi/InjectionPoint$InjectableMember;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)V

    .line 471
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public isFinal()Z
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method toInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
    .locals 4

    .line 476
    new-instance v0, Lcom/google/inject/spi/InjectionPoint;

    iget-object v1, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;->declaringType:Lcom/google/inject/TypeLiteral;

    iget-object v2, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;->method:Ljava/lang/reflect/Method;

    iget-boolean v3, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;->optional:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Method;Z)V

    return-object v0
.end method
