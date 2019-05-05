.class final Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;
.super Lorg/roboguice/shaded/goole/common/collect/Ordering;
.source "NullsFirstOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    serializable = true
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
            "-TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_2
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 65
    :cond_0
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;

    .line 67
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x39153a74

    xor-int/2addr v0, v1

    return v0
.end method

.method public nullsFirst()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    return-object p0
.end method

.method public nullsLast()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->nullsLast()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->nullsLast()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".nullsFirst()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
