.class final Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 389
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 390
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 391
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 395
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 369
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 356
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 409
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;)V

    return-object v0
.end method
