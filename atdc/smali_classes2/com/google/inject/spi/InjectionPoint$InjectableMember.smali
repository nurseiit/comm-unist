.class abstract Lcom/google/inject/spi/InjectionPoint$InjectableMember;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/spi/InjectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InjectableMember"
.end annotation


# instance fields
.field final declaringType:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation
.end field

.field final jsr330:Z

.field next:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

.field final optional:Z

.field previous:Lcom/google/inject/spi/InjectionPoint$InjectableMember;


# direct methods
.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->declaringType:Lcom/google/inject/TypeLiteral;

    .line 433
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljavax/inject/Inject;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 434
    iput-boolean v1, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->optional:Z

    const/4 p1, 0x1

    .line 435
    iput-boolean p1, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->jsr330:Z

    return-void

    .line 439
    :cond_0
    iput-boolean v1, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->jsr330:Z

    .line 440
    check-cast p2, Lcom/google/inject/Inject;

    invoke-interface {p2}, Lcom/google/inject/Inject;->optional()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->optional:Z

    return-void
.end method


# virtual methods
.method abstract toInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
.end method
