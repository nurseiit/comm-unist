.class final Lorg/roboguice/shaded/goole/common/collect/FluentIterable$1;
.super Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.source "FluentIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0

    .line 91
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable$1;->val$iterable:Ljava/lang/Iterable;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable$1;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
