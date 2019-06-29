.class Lcom/google/inject/internal/FailableCache$1;
.super Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
.source "FailableCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/FailableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/FailableCache;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/FailableCache;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/google/inject/internal/FailableCache$1;->this$0:Lcom/google/inject/internal/FailableCache;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/FailableCache$1;->this$0:Lcom/google/inject/internal/FailableCache;

    invoke-virtual {v1, p1, v0}, Lcom/google/inject/internal/FailableCache;->create(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    const/4 p1, 0x0

    .line 41
    :goto_0
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method
