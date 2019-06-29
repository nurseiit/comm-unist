.class Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet$1;
.super Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/TransformedIterator<",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
        "TE;>;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;Ljava/util/Iterator;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 924
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet$1;->transform(Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method transform(Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 927
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
