.class final Lorg/roboguice/shaded/goole/common/collect/Iterables$9;
.super Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$numberToSkip:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 846
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$9;->val$list:Ljava/util/List;

    iput p2, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$9;->val$numberToSkip:I

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$9;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$9;->val$numberToSkip:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 851
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$9;->val$list:Ljava/util/List;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$9;->val$list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
