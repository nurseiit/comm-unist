.class final Lorg/roboguice/shaded/goole/common/collect/Iterables$8;
.super Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/lang/Iterable;
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
.field final synthetic val$fromIterable:Ljava/lang/Iterable;

.field final synthetic val$function:Lorg/roboguice/shaded/goole/common/base/Function;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$8;->val$fromIterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$8;->val$function:Lorg/roboguice/shaded/goole/common/base/Function;

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

    .line 709
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$8;->val$fromIterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$8;->val$function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
