.class Lcom/google/inject/internal/Annotations$AnnotationChecker$1;
.super Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
.source "Annotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/Annotations$AnnotationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
        "Ljava/lang/Class<",
        "+",
        "Ljava/lang/annotation/Annotation;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/Annotations$AnnotationChecker;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Annotations$AnnotationChecker;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker$1;->this$0:Lcom/google/inject/internal/Annotations$AnnotationChecker;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 5
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

    .line 214
    invoke-virtual {p1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 215
    iget-object v4, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker$1;->this$0:Lcom/google/inject/internal/Annotations$AnnotationChecker;

    invoke-static {v4}, Lcom/google/inject/internal/Annotations$AnnotationChecker;->access$400(Lcom/google/inject/internal/Annotations$AnnotationChecker;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    .line 216
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/Annotations$AnnotationChecker$1;->load(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
