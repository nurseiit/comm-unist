.class final Lcom/google/inject/internal/WeakKeySet$KeyAndSource;
.super Ljava/lang/Object;
.source "WeakKeySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/WeakKeySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyAndSource"
.end annotation


# instance fields
.field final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "*>;"
        }
    .end annotation
.end field

.field final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/inject/Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->key:Lcom/google/inject/Key;

    .line 134
    iput-object p2, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 148
    :cond_0
    instance-of v1, p1, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 152
    :cond_1
    check-cast p1, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;

    .line 153
    iget-object v1, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->key:Lcom/google/inject/Key;

    iget-object v3, p1, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->key:Lcom/google/inject/Key;

    invoke-static {v1, v3}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->source:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->source:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 139
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->key:Lcom/google/inject/Key;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/inject/internal/WeakKeySet$KeyAndSource;->source:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
