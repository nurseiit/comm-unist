.class final Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;
.super Lorg/roboguice/shaded/goole/common/base/Equivalence;
.source "FunctionalEquivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
        "TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final function:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "TF;+TT;>;"
        }
    .end annotation
.end field

.field private final resultEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Function;Lorg/roboguice/shaded/goole/common/base/Equivalence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "TF;+TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Equivalence;-><init>()V

    .line 46
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Function;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    .line 47
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->resultEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    return-void
.end method


# virtual methods
.method protected doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)Z"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->resultEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v1, p2}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected doHash(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)I"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->resultEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 62
    :cond_0
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 63
    check-cast p1, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;

    .line 64
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    iget-object v3, p1, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v1, v3}, Lorg/roboguice/shaded/goole/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->resultEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->resultEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->resultEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->resultEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/FunctionalEquivalence;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
