.class final Lorg/roboguice/shaded/goole/common/collect/Iterables$6;
.super Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/lang/Iterable;
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
.field final synthetic val$predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

.field final synthetic val$unfiltered:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$6;->val$unfiltered:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$6;->val$predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

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

    .line 585
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$6;->val$unfiltered:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$6;->val$predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->filter(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
