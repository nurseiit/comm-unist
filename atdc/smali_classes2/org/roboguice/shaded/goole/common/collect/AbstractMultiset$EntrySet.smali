.class Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset$EntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/Multisets$EntrySet;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Multisets$EntrySet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;->distinctElements()I

    move-result v0

    return v0
.end method
