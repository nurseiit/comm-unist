.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet$1;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet$1;->get(I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->getEntry(I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method
