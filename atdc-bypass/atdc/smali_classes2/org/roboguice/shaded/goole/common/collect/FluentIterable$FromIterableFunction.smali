.class Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FromIterableFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Function<",
        "Ljava/lang/Iterable<",
        "TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction;->apply(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 478
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object p1

    return-object p1
.end method