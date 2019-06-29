.class final Lcom/google/inject/internal/Annotations$2;
.super Ljava/lang/Object;
.source "Annotations.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/Annotations;->generateAnnotationImpl(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$annotationType:Ljava/lang/Class;

.field final synthetic val$members:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/inject/internal/Annotations$2;->val$annotationType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/inject/internal/Annotations$2;->val$members:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "annotationType"

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 103
    iget-object p1, p0, Lcom/google/inject/internal/Annotations$2;->val$annotationType:Ljava/lang/Class;

    return-object p1

    :cond_0
    const-string p2, "toString"

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 105
    iget-object p1, p0, Lcom/google/inject/internal/Annotations$2;->val$annotationType:Ljava/lang/Class;

    iget-object p2, p0, Lcom/google/inject/internal/Annotations$2;->val$members:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/google/inject/internal/Annotations;->access$100(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, "hashCode"

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 107
    iget-object p1, p0, Lcom/google/inject/internal/Annotations$2;->val$annotationType:Ljava/lang/Class;

    iget-object p2, p0, Lcom/google/inject/internal/Annotations$2;->val$members:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/google/inject/internal/Annotations;->access$200(Ljava/lang/Class;Ljava/util/Map;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p2, "equals"

    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 109
    iget-object p1, p0, Lcom/google/inject/internal/Annotations$2;->val$annotationType:Ljava/lang/Class;

    iget-object p2, p0, Lcom/google/inject/internal/Annotations$2;->val$members:Ljava/util/Map;

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lcom/google/inject/internal/Annotations;->access$300(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 111
    :cond_3
    iget-object p2, p0, Lcom/google/inject/internal/Annotations$2;->val$members:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
