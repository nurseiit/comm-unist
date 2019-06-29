.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Keys;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Keys;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 585
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Keys;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 590
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Keys;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 591
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_0
    return p1
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Keys;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Keys;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 607
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 601
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Keys;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
