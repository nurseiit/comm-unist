.class Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList$1;
.super Lorg/roboguice/shaded/goole/common/collect/TransformedListIterator;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/TransformedListIterator<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/TransformedListIterator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
