.class final Lorg/roboguice/shaded/goole/common/collect/Iterables$14;
.super Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterables;->mergeSorted(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Iterable;
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
.field final synthetic val$comparator:Ljava/util/Comparator;

.field final synthetic val$iterables:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$14;->val$iterables:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$14;->val$comparator:Ljava/util/Comparator;

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
            "TT;>;"
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$14;->val$iterables:Ljava/lang/Iterable;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->access$300()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$14;->val$comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->mergeSorted(Ljava/lang/Iterable;Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
