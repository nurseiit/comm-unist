.class Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingCollection;
.source "FilteredKeyMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->filter(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 192
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 193
    check-cast p1, Ljava/util/Map$Entry;

    .line 194
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
