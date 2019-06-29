.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;
.super Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/TransformedIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys;Ljava/util/Iterator;)V
    .locals 0

    .line 1523
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1523
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;->transform(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 1527
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1$1;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;Ljava/util/Map$Entry;)V

    return-object v0
.end method
