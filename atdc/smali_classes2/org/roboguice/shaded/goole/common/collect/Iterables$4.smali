.class final Lorg/roboguice/shaded/goole/common/collect/Iterables$4;
.super Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterables;->partition(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;I)V
    .locals 0

    .line 537
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$4;->val$iterable:Ljava/lang/Iterable;

    iput p2, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$4;->val$size:I

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$4;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$4;->val$size:I

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->partition(Ljava/util/Iterator;I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
